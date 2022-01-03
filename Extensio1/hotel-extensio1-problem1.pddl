(define (problem extensio1-hotel1)
   (:domain hotel)
   (:objects H1 - habitacion
             R1 R2 R3 - reserva
    )

    (:init

       a modificar

        (= (penalizacion) 0)
    )

    (:goal (forall (?r2 - reserva) (not(libreR ?r2))))

    (:metric minimize (penalizacion))
)
