function [x, X, q, cnd] = siter(range, x0, e, f = @f, dfdx = @dfdx, phi = @phi, dphidx = @dphidx)
  r = range(1):e:range(2);
  M = max(dfdx(r));
  m = min(dfdx(r));
  l = 2 / (M + m);
  q = abs((M - m) / (M + m));
  x = x0;
  X = [];
  do
    x0 = x;
    #disp(phi(l, x, f)), disp('-------');
    x = phi(l, x, f);
    X = [X; x];
  until (abs(x - x0) <= ifelse(dphidx(l, x, dfdx) < 0, (1 - q) / q, 1) * e);
  #disp(phi(l, x, f)), disp('-------');
  cnd = all((abs(dphidx(l, r)) .- q) <= e);
endfunction
