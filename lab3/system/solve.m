function solve()
  ezplot(@f1), hold on;
  ezplot(@f2), hold off;
  
  #{
  E = 10 .^ [-1:-1:-6];
  for i = E
    [X, r] = newts([-3.2; 1], i);
    length(r)
    [X, r] = newts([2.4; 1.7], i);
    length(r)
  endfor
  disp('---------------');
  for i = E
    [X, r] = siters([-3.2; 1], i);
    length(r)
    [X, r] = siters([2.4; 1.7], i);
    length(r)
  endfor
  #}
  
  [X, r] = siters([-3.2; 1], 0.000001);
  r
endfunction
