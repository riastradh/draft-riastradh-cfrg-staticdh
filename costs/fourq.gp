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
printfactors("p - 1", p - 1);
printfactors("p + 1", p + 1);
printf("\n");
printecrhopm1pp1costs(p);
printf("\n");
printgrangercosts(q, 2);

quit();
