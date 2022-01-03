(define (problem extensio1-hotel2)
   (:domain hotel)
   (:objects H1 - habitacion
             R1 R2 R3 - reserva
    )
    (:init

        (= (capacidadH H1) 4)

        (= (capacidadR R1) 4)
        (= (capacidadR R2) 4)
        (= (capacidadR R3) 4)

        (= (diaI R1) 2)
        (= (diaF R1) 18)

        (= (diaI R2) 4)
        (= (diaF R2) 6)

        (= (diaI R3) 8)
        (= (diaF R3) 10)

        (libreR R1)
        (libreR R2)
        (libreR R3)

        (= (penalizacion) 0)
    )

    (:goal (forall (?r2 - reserva) (not(libreR ?r2))))

    (:metric minimize (penalizacion))
)