function x = chebishev(a, b, n, k)
  x = (a + b) / 2 + (b - a) * cos(pi * (2*k - 1) / (2*n)) / 2;
endfunction
