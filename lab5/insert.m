function [newT, index] = insert(t, nt, R)
  m = t(t > nt);
  l = t(t < nt);
  r = R(nt);
  
  if length(m) == 0 
    if sign(r) != sign(R(l(end)))
      l(1:end-1) = l(2:end);
    endif
    l(end) = nt;
    
  elseif length(l) == 0
    if sign(r) != sign(R(m(1)))
      m(2:end) = m(1:end-1);
    endif
    m(1) = nt;
    
  else
    
    if sign(r) == sign(R(l(end)))
      l(end) = nt;
    else
      m(1) = nt;
    endif
    
  endif
  
  index = length(l);
  newT = [l, m];
  
endfunction
