(define (problem basic-3habitaciones3reservas)
   (:domain hotel-basic)
   (:objects H1 H2 H3 - habitacion
             R1 R2 R3 - reserva
    )

    (:init

        (= (capacidadH H1) 1)
        (= (capacidadH H2) 1)
        (= (capacidadH H3) 4)

        (= (capacidadR R1) 2)
        (= (capacidadR R2) 4)
        (= (capacidadR R3) 3)

        (= (diaI R1) 2)
        (= (diaF R1) 4)

        (= (diaI R2) 18)
        (= (diaF R2) 30)

        (= (diaI R3) 11)
        (= (diaF R3) 19)

        (libreR R1)
        (libreR R2)
        (libreR R3)

        (= (num_reservas_asignadas) 0)
    )

    (:goal (forall (?r - reserva) (not (libreR ?r))))

    (:metric maximize (num_reservas_asignadas))
)