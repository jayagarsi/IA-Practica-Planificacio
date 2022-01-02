(define (problem extensio1-hotel1)
   (:domain hotel)
   (:objects H1 H2 H3 - habitacion
             R1 R2 R3 R4 - reserva
    )

    (:init

        (= (capacidadH H1) 2)
        (= (capacidadH H2) 2)
        (= (capacidadH H3) 3)

        (= (capacidadR R1) 2)
        (= (capacidadR R2) 3)
        (= (capacidadR R3) 3)
        (= (capacidadR R4) 3)

        (= (diaI R1) 2)
        (= (diaF R1) 4)

        (= (diaI R2) 18)
        (= (diaF R2) 30)

        (= (diaI R3) 11)
        (= (diaF R3) 17)

        (= (diaI R4) 11)
        (= (diaF R4) 17)

        (libreR R1)
        (libreR R2)
        (libreR R3)
        (libreR R4)

        (= (coste) 0)
    )

    (:goal (forall (?r2 - reserva) (not(libreR ?r2))))

    (:metric minimize (coste))
)