
persona(maria).
persona(alfredo).
persona(tomas).
persona(susana).
persona(juan).
lee_libro(alfredo).
lee_libro(maria).
asiste_a_clases(alfredo).
asiste_a_clases(maria).
realiza_ejercicios(alfredo).
realiza_ejercicios(maria).
sabe_todo(tomas).
tutor(maria,juan).
tutor(juan,susana).
prueba_examen(X):-preparado_para_examen(X).
preparado_para_examen:-sabe_todo(X).
preparado_para_examen(X):-asiste_a_clases(X),realiza_ejercicios(X),lee_libro(X).
preparado_para_examen(X):-preparado_para_examen(Y),tutor(Y,X).

