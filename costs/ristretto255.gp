read("lib.gp");

\\ https://cr.yp.to/papers.html#curve25519
\\ https://www.rfc-editor.org/info/rfc7748
\\ https://datatracker.ietf.org/doc/draft-irtf-cfrg-ristretto255-decaf448/07/
E = ellinit([0, 486662, 0, 1, 0], 2^255 - 19);
L = ellcard(E);
p = L/8;

printf("p = 2^252 + %d\n", p - 2^252);
printfactors("p - 1", p - 1);
printfactors("p + 1", p + 1);
printf("\n");
printecrhopm1pp1costs(p);

quit();
