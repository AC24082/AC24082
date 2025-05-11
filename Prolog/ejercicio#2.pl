padece(manuel, gripe).
padece(manuel, hepatitis).
padece(jose, hepatitis).
padece(guadalune, gripe).
padece(claudia, intoxicacion).

sintoma(fiebre, gripe).
sintoma(cansancio, hepatitis).
sintoma(diarrea, intoxicacion).
sintoma(cansancio, gripe).

suprime(aspirina, fiebre).
suprime(intestonomicina, diarrea).

%X farmaco
%Y enfermedad
%Z dolencia
alivia(X,Y):-
    sintoma(Z,Y),
    suprime(X,Z).

%X persona
%Y farmaco
%Z enfermedad
tomar(X,Y):-
    padece(X,Z),
    alivia(Y,Z).

%X persona
%Y sintoma
%Z dolencia
sintomas(X,Y):-
    padece(X,Z),
    sintoma(Y,Z).

%X persona1
%Y persona2
%Z sintoma en comun
comparten(X,Y,Z):-
    sintomas(X,Z),
    sintomas(Y,A),
    X\==Y,
    Z\==A.





















