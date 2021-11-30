function L = lagrange(X, f = @f)
  L = 0;
  for i = 1:length(X)
    x = X(X != X(i));
    li = [1, -x(1)];
    for j = 2:length(x)
      li = conv(li, [1, -x(j)]);
    endfor
    li = f(X(i)) .* li ./ prod(X(i) .- x);
    L = L + li;
  endfor
endfunction
