(define (domain transportacion)
    (:requirements :adl :typing :equality :negative-preconditions)

    (:types
        contenedor - carga
        tren - transporte
        tren almacen fabrica puerto ciudad - localizacion
    )

    (:predicates 
        (via ?x ?y - localizacion)
        (estacionado ?x - transporte ?y - localizacion)
        (cargado ?obj - carga ?x - localizacion)
    )

    (:action mover
        :parameters (?obj - transporte ?x ?y - localizacion)
        :precondition (and 
            (estacionado ?obj ?x) 
            (via ?x ?y))
        :effect (and 
            (estacionado ?obj ?y)
            (not (estacionado ?obj ?x))
        )
    )   
    
    (:action cargar
        :parameters (?obj - carga ?x ?y - localizacion)
        :precondition (and 
            (cargado ?obj ?x)
            (estacionado ?x ?y)
        )
        :effect (and 
            (cargado ?obj ?y)
            (not (cargado ?obj ?x))
        )
    )

    (:action descargar
        :parameters (?obj - carga ?x ?y - localizacion)
        :precondition (and 
            (cargado ?obj ?x)
            (estacionado ?x ?y)
        )
        :effect (and 
            (cargado ?obj ?y)
            (not (cargado ?obj ?x))
        )
    )
)