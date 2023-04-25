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
    \\ log (sqrt{p/d} + sqrt d)
    return (logaddexp(log(p/d)/2, log(d)/2));
};

\\ Estimate the log computational cost of a p+1 attack with divisor d.
log_pp1_cost(p, d) = {
    \\ log (sqrt{p/d} + d)
    return (logaddexp(log(p/d)/2, log(d)));
};

\\ Estimate the log rho cost of an attack on a curve of order p.
log_rho(p) = {
    return (log(Pi*p/4)/2);
};

\\ Print factorization of n neatly formatted.
printfactors(n) = {
    my(cont = 0);
    foreach (factor(n)~, fe,
        my(f = fe[1]);
        my(e = fe[2]);
        if (cont, printf(" * "));
        printf("%d", f);
        if (e != 1, printf("^%d", e));
        cont = 1;
    );
};
