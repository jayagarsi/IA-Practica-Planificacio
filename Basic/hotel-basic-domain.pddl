;; Nivell Basic del planificador per repartir Habitacions d'Hotels 

(define (domain hotel-basic)
    (:requirements :fluents :typing :adl)
    (:types habitacion reserva - object)

    (:functions 
        (capacidadH ?ch - habitacion)
        (capacidadR ?cr - reserva)
        (diaI ?ir - reserva)
        (diaF ?fr - reserva)
    )

    (:predicates 
        (libreR ?r - reserva)
        (asignada ?r - reserva ?h - habitacion)
        ;(ocupada ?h - habitacion ?ir - diaI ?fr - diaF)
    )

    (:action asignar_reserva
        :parameters(?h - habitacion ?r - reserva)
        :precondition (and  (libreR ?r)
                            (<= (capacidadR ?r) (capacidadH ?h))
                            ;(not (ocupada ?h diaI ?r diaF ?r))

                            (forall (?r2 - reserva)
                                    (or     (libreR ?r2)
                                            (and (not (libreR ?r2))
                                                (asignada ?r2 ?h)
                                                (or (and (< (diaI ?r) (diaI ?r2)) 
                                                        (< (diaF ?r) (diaI ?r2))
                                                    )

                                                    (and (> (diaI ?r) (diaF ?r2)) 
                                                        (> (diaF ?r) (diaF ?r2)) 
                                                    )
                                                )
                                            )
                                    )
                            )
                      )

        :effect (and (not (libreR ?r))
                     (asignada ?r ?h)
                     ;(ocupada ?h diaI ?r diaF ?r)
                )
    )
)