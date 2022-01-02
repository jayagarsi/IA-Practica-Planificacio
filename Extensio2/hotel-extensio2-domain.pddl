;; Extensio 2 del planificador per repartir Habitacions d'Hotels 

(define (domain hotel)
    (:requirements :fluents :typing :adl)
    (:types habitacion reserva - object)

    (:functions 
        (capacidadH ?ch - habitacion)
        (capacidadR ?cr - reserva)
        (diaI ?ir - reserva)
        (diaF ?fr - reserva)
        (orientacionR ?or - reserva)
        (orientacionH ?oh - habitacion)
        (coste)
    )

    (:predicates 
        (libreR ?r - reserva)
        (asignada ?r - reserva ?h - habitacion)
    )

    (:action asignar_reserva_con_orientacion
        :parameters(?h - habitacion ?r - reserva)
        :precondition (and  (libreR ?r)
                            (<= (capacidadR ?r) (capacidadH ?h))
                            (= (orientacionR ?r) (orientacionH ?h))
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
                )
    )

    (:action asignar_reserva_sin_orientacion
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
                     (increase (coste) 1)
                )
    )

    (:action descartar_reserva
        :parameters (?r - reserva)
        :precondition (libreR ?r)
        :effect (and (not (libreR ?r))
                     (increase (coste) 2)
                )
    )
)