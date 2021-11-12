function [x, X] = newtone(x0, e, f = @f, dfdx = @dfdx)
  x = x0;
  X = [];
  do
    x0 = x;
    #disp(f(x)), disp(dfdx(x)), disp(-f(x) / dfdx(x)), disp('----------------');
    x = x - f(x) / dfdx(x);
    X = [X; x];
  until (abs(x - x0) <= e);
  #disp(f(x)), disp(dfdx(x)), disp(-f(x) / dfdx(x)), disp('------------------');
endfunction
