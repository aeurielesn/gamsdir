* Network with 6 nodes used in:
*  - Maximum Flow Model.
*  - Minimum Cut Model.

* set V.
set i nodes /1*6/;
alias (i,j);

* set V/{s,t}.
set k(i) nodes /2*5/;

* source node.
set src(i) nodes /1/;

* sink node.
set snk(i) nodes /6/;

* capacities.
table c(i,j) capacities
   1  2  3  4  5  6
1  0  3  0  3  0  0
2  0  0  3  2  0  0
3  0  0  0  0  4  2
4  0  0  0  0  2  0
5  0  0  0  0  0  3
6  0  0  0  0  0  0