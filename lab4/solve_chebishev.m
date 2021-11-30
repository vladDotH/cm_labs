function solve_chebishev(n = 2)
  a = 1; b = 10;
  R = arrayfun(@(k) chebishev(a, b, n, k), 1:n);
  L = lagrange(R, @f);
  
  scatter(R, f(R)), hold on;
   
  X = linspace(a, b, 1000);
  Y1 = f(X);
  Y2 = polyval(L, X);
  
  plot(X, Y1, "r--;f(x);");
  plot(X, Y2, "b;Ln(x);"), hold off;
  polyout(L, 'x');
  
  M = max(df(X, n))
  w = max(arrayfun(@(x) prod(x .- R), X))
  nfact = factorial(n)
  Qn = M * w / nfact
  Rn = max(abs(Y1 - Y2))
  
endfunction

