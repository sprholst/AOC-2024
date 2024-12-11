l:raze read0`:input.txt;
//l:"2333133121414131402";
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
  fwd:first where (cdx:count d x)<=1 _ deltas {where not 1=0,1 _ deltas x}d`.;
  if[null fwd;:(nl;d)];
  i:d[`.] ifwd:fwd+til cdx;
  nl[i]:x;
  nl[d x]:`.;
  d[`.]:d[`.] except i;
  (nl;d)
  };
nl2:first g/[(nl2;d);reverse key[d] except `.];
p2:f nl2;
//nl2:g\[(nl2;d);reverse key[d] except `.];
