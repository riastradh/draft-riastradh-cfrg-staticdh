print_nfs(lg_q) = {
    log_q = lg_q * log(2);
    log_L = log_q^(1/3) * log(log_q)^(2/3);
    lg_L = log_L / log(2);
    baseline = lg_L * (64/9)^(1/3);
    queries = lg_L * (4/9)^(1/3);
    precomp = lg_L * (32/9)^(1/3);
    per_target = lg_L * 3^(1/3);
    printf("%-4d  %9s %9s %9s  %9s\n", lg_q,
        strprintf("~2^%.1f", baseline),
        strprintf("~2^%.1f", queries),
        strprintf("~2^%.1f", precomp),
        strprintf("~2^%.1f", per_target));
};

printf("%-4s  %9s %9s %9s   %9s\n", \
    "bits", "baseline", "queries", "precomp", "per-target");
printf("\n");
print_nfs(1024);
print_nfs(1536);
print_nfs(2048);
print_nfs(3072);
print_nfs(4096);
print_nfs(6144);
print_nfs(8192);

quit();
