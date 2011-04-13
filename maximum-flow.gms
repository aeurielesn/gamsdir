$title Maximum Flow Problem.
$eolcom //
$ontext
Alexander Enrique Urieles Nieto.
$offtext

$include models\graphs\flow1.inc
*$include models\graphs\flow2.inc

positive variables f(i,j);
variables z;

equations
capacity(i,j)
flow(k)
cost
;

capacity(i,j).. f(i,j) =l= c(i,j);
flow(k)..       sum(i, f(i,k)) =e= sum(j, f(k,j));
cost(src)..     z =e= sum(j, f(src,j));

model MF /ALL/;

solve MF USING LP MAXIMIZING z;

display f.l;