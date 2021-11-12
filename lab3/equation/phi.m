function x = phi(l, x, f = @f)
  x = x - l .* f(x);
endfunction
