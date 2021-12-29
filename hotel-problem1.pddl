(define (problem basic-3habitaciones3reservas)
   (:domain hotel-basic)
   (:objects H1 H2 H3 - habitacion
             R1 R2 R3 - reserva
    )


(:init

    (= (capacidadH H1) 1)
    (= (capacidadH H2) 2)
    (= (capacidadH H3) 3)

    (= (capacidadR R1) 2)
    (= (capacidadR R2) 2)
    (= (capacidadR R3) 1)

    (libreH H1)
    (libreH H2)
    (libreH H3)

    (libreR R1)
    (libreR R2)
    (libreR R3)
)


(:goal (forall (?r - reserva) (not (libreR ?r))))
)