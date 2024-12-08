l:raze read0`:input.txt;

// add check for do+don't in same index

// part 1
f:{sum prd each "J"$j where all each in[;string til 1000] each j:"," vs'first each ")" vs'"mul(" vs x};
p1:f l;
// part 2
g:{ 
  i:")" vs'm:"mul(" vs x; 
  d:where sum each like[;"*do()*"]each m; 
  dnt:where sum each like[;"*don't()*"]each m;
  k:where all each in[;string til 1000] each n:"," vs'first each i;
  j:"J"$n;
  r:raze {[d;dnt;x] if[first o=max o:(dnt last where x>dnt;d last where x>d);:()];x}[d;dnt]each k;
  sum prd each j r
  };
p2:g l;