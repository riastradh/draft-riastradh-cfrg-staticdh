read("lib.gp");

\\ https://www.secg.org/sec2-v2.pdf#page=13
E = ellinit([0, 7], 2^256 - 2^32 - 977);
p = ellcard(E);

printf("p = %d\n", p);
printfactors("p - 1", p - 1);
printfactors("p + 1", p + 1);
printf("\n");
printecrhopm1pp1costs(p);

quit();
