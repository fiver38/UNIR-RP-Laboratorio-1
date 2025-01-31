(define (problem valida-tren)
    (:domain transportacion)
    (:objects
        Pto-1 - localizacion
        Alm-1 - localizacion
        Ciu-1 - localizacion
        Fab-1 Fab-2 - localizacion
        Tren-1 - transporte
    )

    (:init
        (via Alm-1 Pto-1)
        (via Pto-1 Alm-1)
        (via Pto-1 Ciu-1)
        (via Ciu-1 Pto-1)
        (via Ciu-1 Fab-2)
        (via Fab-2 Ciu-1)
        (via Fab-2 Fab-1)
        (via Fab-1 Fab-2)
        (via Fab-1 Alm-1)
        (via Alm-1 Fab-1)
        (estacionado Tren-1 Pto-1)
    )

    (:goal
        (and
            (estacionado Tren-1 Fab-2)
        )
    )
)