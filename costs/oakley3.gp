read("lib.gp");

\\ https://www.rfc-editor.org/rfc/rfc2409#section-6.3
\\ https://www.rfc-editor.org/rfc/rfc2412#page-37
u = 'u;
u = ffgen(Mod(u^155 + u^62 + 1, 2));
a = 0;
\\ 0x07338f
b = 1 + u + u^2 + u^3 \
    + u^7 \
    + u^8 + u^9 \
    + u^12 + u^13 \
    + u^16 + u^17 + u^18;
E = ellinit([1, a, 0, 0, b], u);
L = ellcard(E);
p = L/12;

printf("p = %d\n", p);
printfactors("p - 1", p - 1);
printfactors("p + 1", p + 1);
printf("\n");
printecrhopm1pp1costs(p);
printf("\n");

\\ https://link.springer.com/chapter/10.1007/978-3-642-55220-5_3
printf("%-55s ~2^%.1f\n", \
    "index calculus (parallelizable) query cost:", \
    30.0);
printf("%-55s ~2^%.1f\n", \
    "index calculus computational cost (i7-4650U cycles):", \
    39.0);

quit();
