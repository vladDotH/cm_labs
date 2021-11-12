function y = f(x)
  y = polyval([7.7, -2.5, -15.1], x) - 9.2 .* sin(2.7 .* x .+ 3.8);
endfunction
