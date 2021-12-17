function r = R(Q, t)
  r = f(t) .- polyval(flip(Q), t);
endfunction
