read("lib.gp");

\\ https://cr.yp.to/papers.html#curve25519
\\ https://www.rfc-editor.org/info/rfc7748
\\ https://datatracker.ietf.org/doc/draft-irtf-cfrg-ristretto255-decaf448/07/
curve25519 = ellinit([0, 486662, 0, 1, 0], 2^255 - 19);
L = ellcard(curve25519);
p = L/8;

printf("p = %d\n", p);
printf("p - 1 = ");
printfactors(p - 1);
printf("\n");
printf("p + 1 = ");
printfactors(p + 1);
printf("\n");

printf("\n");

printf("%-47s ~2^%.1f\n", "baseline rho cost:", log_rho(p)/log(2));

d = best_pm1_d(p, seq_q_max);
printf("%-47s ~2^%.1f\n", \
    strprintf("best p-1 attack cost after %d queries:", d), \
    log_pm1_cost(p, d)/log(2));

d = best_pp1_d(p, seq_q_max);
printf("%-47s ~2^%.1f\n", \
    strprintf("best p+1 attack cost after %d queries:", 2*d), \
    log_pp1_cost(p, d)/log(2));

quit();
