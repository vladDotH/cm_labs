function [X, r] = siters(X0, e, F = @F, dFdX = @dFdX)
  L = -inv(dFdX(X0));
  X = X0;
  r = [];
  do
    X0 = X;
    Phi(L, X, F)
    disp('----------')
    X = Phi(L, X, F);
    r = [r; X.'];
  until (norm(X - X0) <= e);
  Phi(L, X, F)
  disp('----------')
endfunction
