l:read0`:input.txt;

// part 1
f:{-1+count "XMAS" vs x};
// horizontal
h:f each l,l1:reverse each l;
// vertical
v:f each (reverse each fl),fl:flip l;
// diagonal
c:count l;
d1:{l'[til c;x+til c]}each 1+til c-1;
d2:{l'[x+til c;til c]}each 1+til c-1;
d3:l'[til c;til c];
d4:{l1'[til c;x+til c]}each 1+til c-1;
d5:{l1'[x+til c;til c]}each 1+til c-1;
d6:l1'[til c;til c];
d:d1,d2,d4,d5,enlist[d6],enlist d3;
d:d,reverse each d;
d:f each d;
p1:sum h,v,d;

// part 2
al:raze {x,'where "A"=l x}each 1+til c-2;
g:{
  r1:all (l[x-1;y-1],l[x+1;y+1]) in ("MS";"SM");
  r2:all (l[x-1;y+1],l[x+1;y-1]) in ("MS";"SM");
  $[r1 and r2;1;0]
  };
p2:sum g .' al;