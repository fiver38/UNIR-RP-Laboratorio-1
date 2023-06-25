(define (problem valida-puerto)
    (:domain transportacion)
    (:objects
        Pto-1 - localizacion
        Alm-1 - localizacion
        Ciu-1 - localizacion
        Fab-1 Fab-2 - localizacion
        Tren-1 - transporte
        Ctn-1 Ctn-2 Ctn-3 Ctn-4 Ctn-5 Ctn-6 Ctn-7 Ctn-8 - carga
        Cap-0 Cap-1 Cap-2 Cap-3 Cap-4 - capacidad
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
        (cargado Ctn-1 Alm-1)
        (estacionado Tren-1 Alm-1)
        (secuencia Cap-0 Cap-1)
        (secuencia Cap-1 Cap-2)
        (secuencia Cap-2 Cap-3)
        (secuencia Cap-3 Cap-4)
        (espacio Pto-1 Cap-0)
        (espacio Ciu-1 Cap-0)
        (espacio Fab-2 Cap-1)
        (espacio Fab-1 Cap-3)
        (espacio Alm-1 Cap-3)
    )

    (:goal
        (and
            (cargado Ctn-1 Pto-1)
        )
    )
)