function J = dFdX(X)
  x = X(1);
  y = X(2);
  J = [
    -4 + 2 * 0.7 * exp(-0.7 * x), -9 * 0.2 * exp(-0.2 * y) + 6;
    3 * 6 * x .^ 5 + 426, 4 * 6 * y .^ 5 - 704
  ];
endfunction
