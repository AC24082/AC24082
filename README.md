% Hechos sobre experiencia en lenguajes de programación
experto(david, java).
experto(raul, prolog).
experto(luis, prolog).
experto(marta, java).
experto(fernanda, java).

% Hechos sobre disponibilidad de las personas
disponible(david, manana).
disponible(raul, manana).
disponible(luis, manana).
disponible(marta, tarde).
disponible(fernanda, manana).

% Regla para determinar si dos personas pueden tener una reunión
pueden_reunirse(X, Y) :-
    X \= Y,
    experto(X, Tema),
    experto(Y, Tema),
    disponible(X, Tiempo),
    disponible(Y, Tiempo).

% Consulta ejemplo:
% ?- pueden_reunirse(X, Y).
