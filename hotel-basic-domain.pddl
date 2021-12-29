;; Nivell Basic del planificador per repartir Habitacions d'Hotels
;; 

(define (domain hotel-basic)
    (:requirements :fluents :typing :adl :strips)
    (:types habitacion reserva - object)

    (:functions 
        (capacidadH ?ch - habitacion)
        (capacidadR ?cr - reserva)
    )

    (:predicates 
        (libreH ?h - habitacion)
        (libreR ?r - reserva)
    )

    (:action asignar_reserva
        :parameters(?h - habitacion ?r - reserva)
        :precondition (and (libreH ?h) (libreR ?r)
                            (<= (capacidadR ?r) (capacidadH ?h) )
                      )
        :effect (and (not (libreH ?h))
                        (not (libreR ?r))

        )
    )
)