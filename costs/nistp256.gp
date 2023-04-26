read("lib.gp");

\\ https://www.secg.org/sec2-v2.pdf#page=13
\\ https://nvlpubs.nist.gov/nistpubs/fips/nist.fips.186-4.pdf#page=101
\\ a.k.a. secp256r1
B = 0x5AC635D8AA3A93E7B3EBBD55769886BC651D06B0CC53B0F63BCE3C3E27D2604B;
E = ellinit([-3, B], 2^256 - 2^224 + 2^192 + 2^96 - 1);
p = ellcard(E);

printf("p = %d\n", p);
printfactors("p - 1", p - 1);
printfactors("p + 1", p + 1);
printf("\n");
printrhopm1pp1costs(p);

quit();
