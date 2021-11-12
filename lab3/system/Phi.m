function X = Phi(L, X, F = @F)
  X = X + L * F(X);
endfunction
