(define (problem basic-3habitaciones3reservas)
   (:domain hotel-basic)
   (:objects H1 H2 H3 - habitacion
             R1 R2 R3 - reserva
    )


    (:init

        (= (capacidadH H1) 1)
        (= (capacidadH H2) 2)
        (= (capacidadH H3) 3)

        (= (capacidadR R1) 1)
        (= (capacidadR R2) 1)
        (= (capacidadR R3) 1)

        
        (= (diaI R1) 2)
        (= (diaF R1) 4)

        (= (diaI R2) 18)
        (= (diaF R2) 30)

        (= (diaI R3) 11)
        (= (diaF R3) 12)

        (libreR R1)
        (libreR R2)
        (libreR R3)
    )


    (:goal (forall (?r - reserva) (not (libreR ?r))))
)