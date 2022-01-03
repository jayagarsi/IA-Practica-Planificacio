(define (problem basic-hotel2)
   (:domain hotel)
   (:objects H1 - habitacion
             R1 R2 - reserva
    )

    (:init

        (= (capacidadH H1) 4)

        (= (capacidadR R1) 4)
        (= (capacidadR R2) 4)

        (= (diaI R1) 2)
        (= (diaF R1) 4)

        (= (diaI R2) 4)
        (= (diaF R2) 6)


        (libreR R1)
        (libreR R2)
    )

    (:goal (forall (?r - reserva) (not (libreR ?r))))
    
)

