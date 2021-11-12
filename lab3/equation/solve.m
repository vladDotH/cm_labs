function solve()
  ezplot(@f), hold on, grid on;
  ezplot(@(x) 0 * x), hold off;
  E = 10 .^ [-1:-1:-6]
  for i = E
    disp(i)
    [x, X] = newtone(-2, i);
    disp(length(X));
    [x, X] = newtone(1.5, i);
    disp(length(X));
    disp('------------------');
  endfor
  
  for i = E
    disp(i)
    [x, X, q, cnd] = siter([-2, -1], -2, i);
    disp(length(X));
    cnd
    [x, X, q, cnd] = siter([1.5, 2], 1.5, i);
    disp(length(X));
    cnd
    disp('------------------');
  endfor
endfunction
