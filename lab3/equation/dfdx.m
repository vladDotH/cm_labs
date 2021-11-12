function y = dfdx(x)
  y = polyval([2 * 7.7, -2.5], x) - 9.2 * 2.7 .* cos(2.7 .* x .+ 3.8);
endfunction
