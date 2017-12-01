function T=ehrenfest(n) 
  // construit la matrice de transition pour l'urne d'Ehrenfest
  // T = zeros(n+1,n+1) // sans diagonale
  T = eye(n+1,n+1)      // la diagonale
  for k=1:n
    T(k,k+1)=k          // sous-diagonale
    T(k+1,k)=n-k+1      // sur-diagonale
  end
  T=T/(n+1)
endfunction
//// test de la fonction 
//n=5
//disp((n+1)*ehrenfest(n))

//// vérification des valeurs propres
//n=3
//[P,D]=spec(ehrenfest(n))
//clean(P*D*inv(P))
////format(3)

//// étude graphique de la convergence
//n = 10 // nombre de boules dans l'urne
//N = 40 // duree de simulation
//T = ehrenfest(n)
//X = [1;(zeros(n,1))]
//clf()
//sleep(1000)
//for k=1:N
//  e=gce()
//  drawlater()
//    delete(e)
//    plot(0:n,X')
//  drawnow()
//  X = T*X
//end
