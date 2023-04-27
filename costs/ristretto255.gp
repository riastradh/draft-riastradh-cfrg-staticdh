read("lib.gp");

\\ https://cr.yp.to/papers.html#curve25519
\\ https://www.rfc-editor.org/info/rfc7748
\\ https://datatracker.ietf.org/doc/draft-irtf-cfrg-ristretto255-decaf448/07/
curve25519 = ellinit([0, 486662, 0, 1, 0], 2^255 - 19);
L = ellcard(curve25519);
p = L/8;

printf("p = %d\n", p);
printfactors("p - 1", p - 1);
printfactors("p + 1", p + 1);
printf("\n");
printecrhopm1pp1costs(p);

quit();
