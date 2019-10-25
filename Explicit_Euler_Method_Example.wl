(*  Solving u'(t) = -10*u(t), u(0) = 1  in (0,1] *)

n = 100;
uo = 1
Ys = Table[0, {n + 1}];
Ys[[1]] = uo
h = 1/n
For[i = 2, i <= n + 1, i++, Ys[[i]] = Ys[[i - 1]] - 10*h*Ys[[i - 1]]]
Xs = Table[i*1/n, {i, 0, n}];
p2 = ListPlot[Transpose[{Xs, Ys}]]

(* Compare with the real solution *)
Solution[t_] = Exp[-10*t]
p = Plot[{Solution[t]}, {t, 0, 1}]
Show[p, p2]
