(define (problem valida-tren_progressed)
(:domain transportacion)
(:objects
pto-1 - localizacion
alm-1 - localizacion
ciu-1 - localizacion
fab-1 - localizacion
fab-2 - localizacion
tren-1 - transporte
)

(:init
(via fab-2 fab-1)
(via alm-1 pto-1)
(via fab-2 ciu-1)
(via ciu-1 pto-1)
(via ciu-1 fab-2)
(via pto-1 alm-1)
(via pto-1 ciu-1)
(via fab-1 fab-2)
(via fab-1 alm-1)
(via alm-1 fab-1)
(estacionado tren-1 fab-2)
)

(:goal
(and  (estacionado tren-1 fab-2))))
