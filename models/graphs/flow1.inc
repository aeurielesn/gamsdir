* Network with 4 nodes used in:
*  - Maximum Flow Model.
*  - Minimum Cut Model.

* set V.
set i nodes /1*4/;
alias (i,j);

* set V/{s,t}.
set k(i) nodes /2*3/;

* source node.
set src(i) nodes /1/;

* sink node.
set snk(i) nodes /4/;

* capacities.
table c(i,j) capacities
     1   2   3   4
1    0   4   3   0
2    0   0   3   4
3    0   0   0   5
4    0   0   0   0