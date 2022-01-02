;; Extensio 3 del planificador per repartir Habitacions d'Hotels 

(define (domain hotel)
    (:requirements :fluents :typing :adl)
    (:types habitacion reserva - object)

    (:functions 
        (capacidadH ?ch - habitacion)
        (capacidadR ?cr - reserva)
        (diaI ?ir - reserva)
        (diaF ?fr - reserva)
        (coste)
    )

    (:predicates 
        (libreR ?r - reserva)
        (asignada ?r - reserva ?h - habitacion)
    )

    (:action asignar_reserva
        :parameters(?h - habitacion ?r - reserva)
        :precondition (and  (libreR ?r)
                            (<= (capacidadR ?r) (capacidadH ?h))
                            (forall (?r2 - reserva)
                                    (or     (libreR ?r2)                        ; si la reserva r2 no s'ha assignat encara, podem assignar r
                                            (not (asignada ?r2 ?h))             ; si la reserva r2 no esta assignada a l'habitacio h, podem assignar r a h
                                            (or (and (< (diaI ?r) (diaI ?r2))   ; si la reserva r2 esta assignada a l'habitacio h pero r i r2 no es solapen,
                                                    (< (diaF ?r) (diaI ?r2))    ; podem assignar r a h
                                                )

                                                (and (> (diaI ?r) (diaF ?r2)) 
                                                        (> (diaF ?r) (diaF ?r2)) 
                                                )
                                            )    
                                    )
                            )
                      )

        :effect (and (not (libreR ?r))
                     (asignada ?r ?h)
                     (increase (coste) (- (capacidadH ?h) (capacidadR ?r)))
                )
    )

    (:action descartar_reserva
        :parameters (?r - reserva)
        :precondition (libreR ?r)
        :effect (and (not (libreR ?r))
                     (increase (coste) 5)
                )
    )
)