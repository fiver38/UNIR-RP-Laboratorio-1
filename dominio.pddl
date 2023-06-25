(define (domain transportacion)
    (:requirements :adl :typing :equality :negative-preconditions)

    (:types
        carga
        transporte
        localizacion
        capacidad
    )

    (:predicates
        (via ?x ?y - localizacion)
        (estacionado ?x - transporte ?y - localizacion)
        (cargado ?obj - carga ?x - localizacion)
        (lleva ?obj - carga ?x - transporte)
        (espacio ?obj - localizacion ?x - capacidad)
        (secuencia ?x ?y - capacidad)
    )

    (:action moverTransporte
        :parameters (?obj - transporte ?x ?y - localizacion)
        :precondition (and
            (estacionado ?obj ?x)
            (via ?x ?y))
        :effect (and
            (estacionado ?obj ?y)
            (not (estacionado ?obj ?x))
        )
    )

    (:action cargarContenedor
        :parameters (?obj - carga ?x - transporte ?y - localizacion ?z1 ?z2 - capacidad)
        :precondition (and
            (lleva ?obj ?x)
            (estacionado ?x ?y)
            (secuencia ?z1 ?z2)
            (espacio ?y ?z2)
        )
        :effect (and
            (cargado ?obj ?y)
            (not (lleva ?obj ?x))
            (espacio ?y ?z2)
            (not (espacio ?y ?z1))
        )
    )

    (:action descargarContenedor
        :parameters (?obj - carga ?y - localizacion ?x - transporte)
        :precondition (and
            (cargado ?obj ?y)
            (estacionado ?x ?y)
        )
        :effect (and
            (lleva ?obj ?x)
            (not (cargado ?obj ?y))
        )
    )
)