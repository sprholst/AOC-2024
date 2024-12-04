l:"J"$" " vs'read0`:input.txt;
f:{if[not (x~asc x) or x~desc x;:0]; d:abs 1_deltas x; $[(all 4>d) and all 0<d;1;0]};
// part 1
p1:sum fl:f each l;
// part 2
i:where not fl;
p2:p1+sum {any f each x _/:til count x} each l i;


// clunkier
// p2:p1+sum {any f each {neg[y] rotate 1_y rotate x}[x]each til count x} each l i;