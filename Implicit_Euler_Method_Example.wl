n = 100;
h = 1/n;
y = Table[0, {n + 1}];

y[[1]] = 1;
For[i = 1, i < n + 1, i++,
  y[[i + 1]] = 
   yNew /. FindRoot[yNew ==  y[[i]] + h*(-10) yNew, {yNew, 0}]
  ];
