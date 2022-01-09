(define (problem basic-hotel1)
   (:domain hotel)
   (:objects H1 - habitacion
             R1 - reserva
    )

    (:init

        (= (capacidadH H1) 2)

        (= (capacidadR R1) 4)

        (= (diaI R1) 2)
        (= (diaF R1) 4)

        (libreR R1)
    )

    (:goal (forall (?r - reserva) (not (libreR ?r))))
    
)

