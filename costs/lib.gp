\\ Maximum plausible number of sequential queries.
seq_q_max = 2^55;

\\ Find the best divisor d for the p-1 attack.
best_pm1_d(p, q_max) = {
    my (d_best = 0);
    fordiv (p - 1, d,
        if (d < d_best, next ());
        if (d > q_max, next ());
        d_best = d;
    );
    return (d_best);
};

\\ Find the best divisor d for the p+1 attack.
best_pp1_d(p, q_max) = {
    my (d_best = 0);
    fordiv (p + 1, d,
        if (d < d_best, next ());
        if (2*d > q_max, next ());
        d_best = d;
    );
    return (d_best);
};

\\ log (e^a + e^b)
logaddexp(a, b) = {
    return (max(a, b) + log1p(exp(-abs(a - b))));
};

\\ Estimate the log computational cost of a p-1 attack with divisor d.
log_pm1_cost(p, d) = {
    if ((p - 1) % d != 0, error("must have d | (p - 1)"));
    \\ log (sqrt{p/d} + sqrt d)
    return (logaddexp(log(p/d)/2, log(d)/2));
};

\\ Estimate the log computational cost of a p+1 attack with divisor d.
log_pp1_cost(p, d) = {
    if ((p + 1) % d != 0, error("must have d | (p + 1)"));
    \\ log (sqrt{p/d} + d)
    return (logaddexp(log(p/d)/2, log(d)));
};

\\ Estimate the log rho cost of an attack on a curve of order p.
log_rho(p) = {
    return (log(Pi*p/4)/2);
};

\\ Print factorization of n neatly formatted.
printfactors(name, n) = {
    my(s = strprintf("%s = ", name));
    my(cont = 0);
    foreach (factor(n)~, fe,
        my(f = fe[1]);
        my(e = fe[2]);
        my(s1 = "");
        if (cont,
            s = strprintf("%s *", s);
            s1 = strprintf(" %s", s1);
        );
        s1 = strprintf("%s%d", s1, f);
        if (e != 1, s1 = strprintf("%s^%d", s1, e));
        if (length(s) + length(s1) >= 72,
            printf("%s\n ", s);
            s = s1;
        ,\\else
            s = strprintf("%s%s", s, s1);
        );
        cont = 1;
    );
    printf("%s\n", s);
};

\\ Print rho, p-1, and p+1 costs against a group of order p.
printrhopm1pp1costs(p) = {
    if (!isprime(p),
        error("use Pohlig-Hellman, not rho, for composite order");
    );
    printf("%-55s ~2^%.1f\n", "baseline rho cost:", log_rho(p)/log(2));
    d = best_pm1_d(p, seq_q_max);
    printf("%-55s ~2^%.1f\n",
        strprintf("best p-1 attack cost after %d queries:", d),
        log_pm1_cost(p, d)/log(2));
    d = best_pp1_d(p, seq_q_max);
    printf("%-55s ~2^%.1f\n",
        strprintf("best p+1 attack cost after %d queries:", 2*d),
        log_pp1_cost(p, d)/log(2));
};

\\ Print Granger10 costs against a curve over F_{q^n}.
\\ https://link.springer.com/chapter/10.1007/978-3-642-17373-8_17
printgrangercosts(q, n) = {
    printf("%-55s ~2^%.1f\n",
        "Granger (parallelizable) query cost:",
        (1 - 1/(n + 1))*log(q)/log(2));
    printf("%-55s >2^%.1f\n",
        "Granger computational cost:",
        (1 - 1/(n + 1))*log(q)/log(2));
}
