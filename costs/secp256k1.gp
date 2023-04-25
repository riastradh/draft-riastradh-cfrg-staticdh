read("lib.gp");

\\ https://www.secg.org/sec2-v2.pdf#page=13
E = ellinit([0, 7], 2^256 - 2^32 - 977);
p = ellcard(E);

printf("p = %d\n", p);
printf("p - 1 = ");
printfactors(p - 1);
printf("\n");
printf("p + 1 = ");
printfactors(p + 1);
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

quit();
