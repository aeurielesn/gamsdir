$title Maximum Matching Problem
$eolcom //
$ontext
 Maximum Matching Problem.

Alexander Enrique Urieles Nieto.
$offtext

$include models\graphs\n8.inc
* $include models\graphs\n9.inc

binary variables x(i,j);
variable z;

equations
once(i)
cost
;

once(i)..  sum(j, x(i,j)) + sum(j, x(j,i)) =l= 1;
cost..     z =e= sum((i,j), x(i,j)$edge(i,j));

model matching /all/;

option optcr=0;

solve matching using mip maximizing z;

display x.l, z.l;