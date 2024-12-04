l:read0`:input.txt;
l:{"J"$(first x;last x)}each " " vs'l;
// part 1
sum {abs x-y}'[asc l[;0];asc l[;1]];
// part 2
sum {x*count where x=y}[;l[;1]]each l[;0];
