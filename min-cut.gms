$title Min Cut Problem.
$eolcom //
$ontext
Alexander Enrique Urieles Nieto.
$offtext

$include models\graphs\flow1.inc
*$include models\graphs\flow2.inc

positive variables e(i,j);
positive variables n(i);
variables z;

equations
constraint(i,j)
source(src)
sink(snk)
cost
;

constraint(i,j)$c(i,j).. n(j) - n(i) + e(i,j) =g= 0;
source(src)..            n(src) =e= 1;
sink(snk)..              n(snk) =e= 0;
cost..                   z =e= sum((i,j), c(i,j) * e(i,j));

model MC /ALL/;

solve MC USING LP MINIMIZING z;

display n.l, e.l;