(define (problem extensio4-hotel2)
    (:domain hotel)
    (:objects H1 H2 H4 - habitacion
              R1 R2 R3 R4 R5 - reserva
    )

    (:init

        (= (capacidadH H1) 2)
        (= (numAssig H1) 0)

        (= (capacidadH H2) 3)
        (= (numAssig H2) 0)

        (= (capacidadH H4) 2)
        (= (numAssig H4) 0)



        (= (capacidadR R1) 2)
        (= (diaI R1) 10)
        (= (diaF R1) 14)

        (= (capacidadR R2) 3)
        (= (diaI R2) 12)
        (= (diaF R2) 17)

        (= (capacidadR R3) 2)
        (= (diaI R3) 16)
        (= (diaF R3) 18)

        (= (capacidadR R4) 2)
        (= (diaI R4) 5)
        (= (diaF R4) 29)

        (= (capacidadR R5) 1)
        (= (diaI R5) 17)
        (= (diaF R5) 23)

        (libreR R1)
        (libreR R2)
        (libreR R3)
        (libreR R4)
        (libreR R5)

        (= (penalizacion) 0)

    )

    (:goal (forall (?r2 - reserva) (not(libreR ?r2))))

    (:metric minimize (penalizacion))
)