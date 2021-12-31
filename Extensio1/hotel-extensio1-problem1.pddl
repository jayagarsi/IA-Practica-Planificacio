(define (problem extensio1-hotel1)
   (:domain hotel)
   (:objects H1 H2 H3 - habitacion
             R1 R2 R3 - reserva
    )

    (:init

        (= (capacidadH H1) 4)
        (= (capacidadH H2) 4)
        (= (capacidadH H3) 4)

        (= (capacidadR R1) 2)
        (= (capacidadR R2) 4)
        (= (capacidadR R3) 3)

        (= (diaI R1) 2)
        (= (diaF R1) 4)

        (= (diaI R2) 18)
        (= (diaF R2) 30)

        (= (diaI R3) 11)
        (= (diaF R3) 17)

        (libreR R1)
        (libreR R2)
        (libreR R3)

        (= (num_reservas_asignadas) 0)
    )

    (:goal (exists (?r2 - reserva) (not(libreR ?r2))))

    (:metric maximize (num_reservas_asignadas))
),