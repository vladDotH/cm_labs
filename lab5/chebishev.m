function x = chebishev(b, a, n)
  x = (a + b) / 2 + (b - a) * cos(pi * (2 * [1:n] - 1) / (2 * n)) / 2;
endfunction
