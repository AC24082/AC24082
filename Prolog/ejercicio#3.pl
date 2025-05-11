experto(david, java).
experto(raul, prolog).
experto(luis, prolog).
experto(marta, java).
experto(fernanda, java).

disponibilidad(david, ma�ana).
disponibilidad(raul, ma�ana).
disponibilidad(luis, ma�ana).
disponibilidad(marta, tarde).
disponibilidad(fernanda, ma�ana).

pueden_tener_reunion(X, Y) :-
    disponibilidad(X, Tiempo),
    disponibilidad(Y, Tiempo),
    experto(X, Tema),
    experto(Y, Tema),
    X \== Y.
