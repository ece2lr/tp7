funcprot(0)
function A = circulante(n)
  A = zeros(n,n)
  A(1,n)=1     // coef en haut à droite
  for k=1:n-1
    A(k+1,k)=1 // sous-diagonale
  end
endfunction

//n=6
//p=.8
//A = circulante(n)
//I = eye(n,n)
//transition = p * A + (1-p) * I
////disp(transition)
