(define (domain transportacion)
    (:requirements :adl :typing :equality :negative-preconditions)

    (:types
        contenedor - carga
        tren - transporte
        tren almacen fabrica puerto - descargable ; localizaciones desde donde puedo descargar
        tren almacen fabrica - cargable ; localizaciones desde donde puedo cargar
        tren almacen fabrica puerto ciudad - localizacion
        espacio
    )

    (:predicates 
        (via ?x ?y - localizacion)
        (estacionado ?x - transporte ?y - localizacion)
        ; (cargado ?x - carga ?y - cargable)
        ; (permite_carga ?x - cargable)
        ; (permite_descarga ?x - descargable)
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

    ;Cargar un contenedor en cualquier localización donde haya fábrica, almacén o puerto, siempre y cuando no se exceda el espacio disponible en el tren.
    ; (:action cargar
    ;     :parameters (?obj - carga ?x - localizacion ?y - cargable)
    ;     :precondition (and 
    ;         (cargado ?obj ?x)
    ;         (estacionado ?x ?y)
    ;         (permite_carga ?y)
    ;     )
    ;     :effect (and 
    ;         (cargado ?obj ?y)
    ;         (not (cargado ?obj ?x))
    ;     )
    ; )

    ;Descargar un contenedor en cualquier localización donde haya fábrica o almacén. En este caso no se puede exceder la capacidad de la localización.
    ; (:action descargar
    ;     :parameters (?obj - carga ?x - localizacion ?y - descargable)
    ;     :precondition (and 
    ;         (cargado ?obj ?x)
    ;         (estacionado ?x ?y)
    ;         (permite_descarga ?y)
    ;     )
    ;     :effect (and 
    ;         (cargado ?obj ?y)
    ;         (not (cargado ?obj ?x))
    ;     )
    ; )
    
)