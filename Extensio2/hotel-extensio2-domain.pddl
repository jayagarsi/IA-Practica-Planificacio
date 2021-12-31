;; Nivell Basic del planificador per repartir Habitacions d'Hotels 

(define (domain hotel-basic)
    (:requirements :fluents :typing :adl)
    (:types habitacion reserva - object)

    (:functions 
        (capacidadH ?ch - habitacion)
        (capacidadR ?cr - reserva)
        (diaI ?ir - reserva)
        (diaF ?fr - reserva)
        (num_reservas_asignadas)
    )

    (:predicates 
        (libreR ?r - reserva)
        (asignada ?r - reserva ?h - habitacion)
        ;(ocupada ?h - habitacion ?ir - diaI ?fr - diaF)
    )
)