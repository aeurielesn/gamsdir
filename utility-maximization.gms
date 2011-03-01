$title Utility Maximization Problem.
$eolcom //
$ontext
 Exercise 3.3 from Introduction to Nonlinear and Global Optimization
 by Eligius M.T. Hendrix and Boglárka G.-Tóth.

Alexander Enrique Urieles Nieto.
$offtext

positive variables X1, X2;
variables NUT;

equations
BUDGET
NUTD
;

BUDGET.. X1 + 2 * X2 =E= 6;
NUTD..   NUT =E= X1 * X1 + X2 * X2;

model VBNLP /ALL/;

solve VBNLP USING NLP MAXIMIZING NUT;

display X1.l, X2.l, NUT.l;