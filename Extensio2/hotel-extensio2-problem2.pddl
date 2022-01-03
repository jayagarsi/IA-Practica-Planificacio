(define (problem extensio1-hotel2)
   (:domain hotel)
   (:objects H1 H2 H3 - habitacion
             R1 R2 R3 R4 - reserva
    )
    (:init

        (= (capacidadH H1) 4)
        (= (orientacionH H1) 0)

        (= (capacidadH H2) 4)
        (= (orientacionH H2) 1)

        (= (capacidadH H3) 4)
        (= (orientacionH H3) 0)

        (= (capacidadR R1) 4)
        (= (diaI R1) 2)
        (= (diaF R1) 4)
        (= (orientacionR R1) 2)

        (= (capacidadR R2) 4)
        (= (diaI R2) 2)
        (= (diaF R2) 4)
        (= (orientacionR R2) 0)

        (= (capacidadR R3) 4)
        (= (diaI R3) 2)
        (= (diaF R3) 4)
        (= (orientacionR R3) 1)

        (= (capacidadR R4) 4)
        (= (diaI R4) 2)
        (= (diaF R4) 4)
        (= (orientacionR R4) 0)
  
        (libreR R1)
        (libreR R2)
        (libreR R3)
        (libreR R4)

        (= (penalizacion) 0)
    )

    (:goal (forall (?r2 - reserva) (not(libreR ?r2))))

    (:metric minimize (penalizacion))
)