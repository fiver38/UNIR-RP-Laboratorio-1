(define (problem problema_transportacion)
    (:domain transportacion)    

    (:objects 
        P - puerto
        A - almacen
        C - ciudad
        F1 F2 - fabrica
        T - tren
        Ctn-1 Ctn-2 Ctn-3 Ctn-4 Ctn-5 Ctn-6 Ctn-7 Ctn-8 - contenedor
    )

    (:init
        (via A P) (via P A)
        (via P C) (via C P)
        (via C F2) (via F2 C)
        (via F2 F1) (via F1 F2)
        (via F1 A) (via A F1)
        (estacionado T P)
        ; (cargado Ctn-1 T)
        ; (cargado Ctn-2 P)
        ; (cargado Ctn-3 P)
        ; (cargado Ctn-4 P)
        ; (cargado Ctn-5 P)
        ; (cargado Ctn-6 P)
        ; (cargado Ctn-7 P)
        ; (cargado Ctn-8 P)
    )

    (:goal (and 
        ; (cargado Ctn-1 P)
        ; (cargado Ctn-1 A)
        ; (cargado Ctn-2 A)
        ; (cargado Ctn-3 A)
        ; (cargado Ctn-4 A)
        ; (cargado Ctn-5 A)
        ; (cargado Ctn-6 A)
        ; (cargado Ctn-7 A)
        ; (cargado Ctn-8 A)
        (estacionado T A)
    ))
)
