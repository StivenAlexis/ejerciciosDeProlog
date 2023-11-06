

padre(marcelo, raul).
padre(marcelo, rita).
padre(juan, marcelo).
padre(juan, maria).
padre(raul, sergio).
lindo(marta).
lindo(rita).
madre(marta, brus).
madre(rita, victor).
madre(rita, veronica).
casado()


abuelos_o_nietos(Abuelo, Nieto) :- padre(Abuelo, Hijo), madre(Hijo, Nieto); padre(Abuelo, Hijo), padre(Hijo, Nieto).
hermana(Hermano1,Hermano2):- madre(Madres,Hermano1), madre(Madres,Hermano2), Hermano1 \= Hermano2.
hijo(Hijo,Madre):- madre(Madre,Hijo).


:- initialization(main).
main:- write('Quien es el abuelo de victor?'),
    abuelos_o_nietos(Abuelo, victor),nl,
    write(Abuelo),nl,
    write('Quienes son los nietos de marcelo?'),nl,
    bagof(Nieto,abuelos_o_nietos(marcelo,Nieto),Nietos),
    write(Nietos),nl,
    write('Quien es la hermana de victor?'),nl,
    hermana(H,victor),
    write(H),nl,
    write('Quien es el hermano de veronica?'),
    hermana(H2,veronica),nl,
    write(H2),nl,
    write('De quien es hija veronica?'),
    hijo(veronica,Madre),nl,
    write(Madre).
    
    