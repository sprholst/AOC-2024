l:raze read0`:input.txt;
nl:raze {x:"I"$x;x#`$$[y mod 2;".";string y%2]}'[l;til count l];
nl2:nl1:nl;

//part 1
while[not (wnnl:last where not nl=`.)<wnl:first where nl=`.;
  nl[wnl]:nl wnnl;
  nl[wnnl]:`.;
  ];
f:{sum (til count x)*"J"$string x};
p1:f nl;

// part 2
d:group nl2;
g:{[nld;x]
  (nl;d):nld;
  fwd:first wd where (cdx:count d x)<=1 _ deltas wd:{where not 1=0,1 _ deltas x}d`.;
  if[null fwd;:(nl;d)];
  i:d[`.] ifwd:fwd+til cdx;
  if[first[i]>=first d[x];:(nl;d)];
  nl[i]:x;
  nl[d x]:count[d x]#`.;
  d[`.]:d[`.] except i;
  (nl;d)
  };
nl2:first g/[(nl2;d);reverse key[d] except `.];
p2:f nl2;

-1"Solution to part 1 is: ",string p1;
-1"Solution to part 2 is: ",string p2;
-1"";
exit 1;