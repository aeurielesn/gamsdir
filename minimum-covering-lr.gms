$title Minimum Covering Problem
$eolcom //
$ontext
 Linear Programming Relaxation for the Minimum Covering Problem.

Alexander Enrique Urieles Nieto.
$offtext

$include models\graphs\n8.inc
* $include models\graphs\n9.inc

positive variables x(i);
variable z;

equations
chosen(i,j)
cost
;

chosen(i,j)$edge(i,j).. x(i) + x(j) =g= 1;
cost..                  z =e= sum(i, x(i));

model matching /all/;

option optcr=0;

solve matching using lp minimizing z;

display x.l, z.l;