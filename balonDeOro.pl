
juega_en_la_scaloneta(julian).
juega_en_la_scaloneta(lautaro).
juega_en_la_scaloneta(messi).

es_goleador(haaland).

es_frances(mbape).

juegan_en_inglaterra(haaland).
juegan_en_inglaterra(julian).

campeones_del_mundo(julian).
campeones_del_mundo(messi).
campeones_del_mundo(lautaro).
|
goat(messi).

balon_de_oro(X):- campeones_del_mundo(X),juega_en_la_scaloneta(X),goat(X).


:- initialization(main).
main :- write('Quien es el ganador del balon?'),nl,
    balon_de_oro(X),
    write(X).
  