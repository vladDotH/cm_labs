function x = dphidx(l, x, dfdx = @dfdx)
  x = 1 .- l .* dfdx(x);
endfunction
