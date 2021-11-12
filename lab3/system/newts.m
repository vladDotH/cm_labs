function [X, r] = newts(X0, e, F = @F, dFdX = @dFdX)
  X = X0;
  r = [];
  do
    X0 = X;
    #F(X), disp(- inv(dFdX(X)) * F(X)), disp('----------------');
    X = X - inv(dFdX(X)) * F(X);
    r = [r; X.'];
  until (norm(X - X0) <= e);
  #F(X), disp(- inv(dFdX(X)) * F(X)), disp('----------------');
endfunction
