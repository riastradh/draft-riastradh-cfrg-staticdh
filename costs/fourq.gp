read("lib.gp");

\\ https://eprint.iacr.org/2015/565
q = 2^127 - 1;
i = 'i;
i = ffgen(Mod(i^2 + 1, q));
dx = 4205857648805777768770;
dy = 125317048443780598345676279555970305165;
d = dy*i + dx;
a = -1;
E = ellinit(ellfromeqn(a*x^2 + y^2 - 1 - d*x^2*y^2), i);
L = ellcard(E);
p = L/(2^3 * 7^2);

printf("p = %d\n", p);
printf("p - 1 = ");
printfactors(p - 1);
printf("\n");
printf("p + 1 = ");
printfactors(p + 1);
printf("\n");

printf("\n");

printf("%-55s ~2^%.1f\n", "baseline rho cost:", log_rho(p)/log(2));

d = best_pm1_d(p, seq_q_max);
printf("%-55s ~2^%.1f\n", \
    strprintf("best p-1 attack cost after %d queries:", d), \
    log_pm1_cost(p, d)/log(2));

d = best_pp1_d(p, seq_q_max);
printf("%-55s ~2^%.1f\n", \
    strprintf("best p+1 attack cost after %d queries:", 2*d), \
    log_pp1_cost(p, d)/log(2));

printf("\n");

printf("%-55s ~2^%.1f\n", \
    "Granger (parallelizable) query cost:", \
    (2/3)*log(q)/log(2));
printf("%-55s >2^%.1f\n", \
    "Granger computational cost:", \
    (2/3)*log(q)/log(2));

quit();
