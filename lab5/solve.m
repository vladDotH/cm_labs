function solve(n)
  a = 1;
  b = 10
  N = 100_000;
  T = linspace(a, b, N);
  
  switch (n)
    case 5
      e = 0.0001;
      steps = [1, 2, 3, 4, 6, 7];
    case 10
      e = 0.00000005;
      steps = [1, 2, 3, 5, 7, 10, 11];
  endswitch
  
  [Q, S, R, E, I] = remez(n, e, a, b, N);
  format long g
  Q
  format short g
  S 
  R 
  E 
  I
  
  plot(T, f(T), "r--;function;"), hold on;
  
  for i = steps
    plot(T, polyval(flip(Q(i, :)), T), [";" num2str(i) ";"]);
  endfor
  hold off;

endfunction
