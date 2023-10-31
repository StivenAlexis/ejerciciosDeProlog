

padre(marcelo, raul).
padre(marcelo, rita).
padre(juan, marcelo).
padre(juan, maria).
padre(raul, sergio).
lindo(marta).
lindo(rita).
madre(marta, brus).
madre(rita, victor).
madre(rita, vernica).


abuelos_o_nietos(Abuelo, Nieto) :- padre(Abuelo, Hijo), madre(Hijo, Nieto); padre(Abuelo, Hijo), padre(Hijo, Nieto).


:- initialization(main).
main:- write('Quien es el abuelo de victor?'),
    abuelos_o_nietos(Abuelo, victor),nl,
    write(Abuelo),nl,
    write('Quienes son los nietos'),nl,
    bagof(Nieto,abuelos_o_nietos(marcelo,Nieto),Nietos),
    write(Nietos).