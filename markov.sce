T = .5 * (ones(3,3)-eye(3,3))
trajectoire = grand(20,"markov",T',ones(1,2))
scf(0)
clf()
plot(trajectoire')

//scf(1)
//clf()
//subplot(121)
//premiere=trajectoire(:,1)
//histplot(0:3,premiere)
//subplot(122)
//derniere=trajectoire(:,20)
//histplot(0:3,derniere)