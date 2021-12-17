function [
  polynoms, s_arr, R_arr, eps_arr, i_arr ...
  ] = remez(n, e, a = 1, b = 10, N = 100_000)
  
  t = chebishev(a, b, n + 2);
  T = linspace(a, b, N);
  
  polynoms = [];
  s_arr = [];
  R_arr = [];
  eps_arr = [];
  i_arr = [];
  
  do  
    solve = [ (ones(n+2, n+1) .* t.') .^ [0:n], [(-ones(1, n+2)) .^ [0:n+1].'] ] \ f(t).';
    Q = solve(1:n+1);
    s = solve(end);
    [h, i] = max(abs(R(Q, T)));
    nt = T(i);
    d = h - abs(s);
    
    polynoms = [polynoms; Q.'];
    s_arr(end + 1) = s;
    R_arr(end + 1) = R(Q, T)(i);
    eps_arr(end + 1) = d;
    
    [t, i] = insert(t, nt, @(x) R(Q, x));
    
    i_arr(end + 1) = i;
  until d < e;
  
endfunction
