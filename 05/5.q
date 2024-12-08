l:read0`:input.txt;
//l:read0`:tst.txt;
r:"I"$"|" vs'l til i:first where all each null l;
u:"I"$"," vs'l i+1+til count[l]-i+1;

g:{
  if[not all y in x;:1b];
  all where[y[0]=x]<where y[1]=x
  };

f:{
  $[all g[x]each r;x "i"$0.5*-1+count x;0]
  };

p1:sum f each u;




// incorrectly-ordered updates
iou:u where 0=f each u;
grb:group r[;0]!r[;1];
gra:group r[;1]!r[;0];

f2:{
  placed:();
  while[0<count x;
    $[any grb[fx:first x] in x;
      x:1 rotate x;
      [placed,:fx; x:x _ 0]
      ];
    ];
  placed "i"$0.5*-1+count placed
  };

p2:sum f2 each iou;



