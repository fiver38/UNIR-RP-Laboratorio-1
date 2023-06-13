(define (problem valida-tren_progressed)
(:domain transportacion)
(:objects
pto-1 - puerto
alm-1 - almacen
ciu-1 - ciudad
fab-1 - fabrica
fab-2 - fabrica
tren-1 - tren
)

(:init
(via pto-1 alm-1)
(via pto-1 ciu-1)
(via ciu-1 pto-1)
(via fab-2 fab-1)
(via fab-1 alm-1)
(via fab-1 fab-2)
(via ciu-1 fab-2)
(via alm-1 pto-1)
(via fab-2 ciu-1)
(via alm-1 fab-1)
(estacionado tren-1 alm-1)
)

(:goal
(and  (estacionado tren-1 fab-2))))
