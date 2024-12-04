l:raze read0`:input.txt;

// clean up part 1 with "til 1000" check
// add check for do+don't in same index

// part 1
f:{sum prd each j where not any each null j:"J"$"," vs'first each ")" vs'"mul(" vs x};
p1:f l;
// part 2
g:{ 
  i:")" vs'm:"mul(" vs x; 
  d:where sum each like[;"*do()*"]each m; 
  dnt:where sum each like[;"*don't()*"]each m;
   "," vs'first each i;
  k:where all each in[;string til 1000] each n:"," vs'first each i;
  j:"J"$n;
  r:raze {[d;dnt;x] if[first o=max o:(dnt last where x>dnt;d last where x>d);:()];x}[d;dnt]each k;
  sum prd each j r
  };
p2:g l;