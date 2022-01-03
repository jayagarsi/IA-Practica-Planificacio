(define (problem extensio1-hotel1)
   (:domain hotel)
   (:objects H1 H2 - habitacion
             R1 R2 - reserva
    )
        (:init

        (= (capacidadH H1) 4)
        (= (orientacionH H1) 0)

        (= (capacidadH H2) 4)
        (= (orientacionH H2) 3)

        (= (capacidadR R1) 4)
        (= (diaI R1) 7)
        (= (diaF R1) 14)
        (= (orientacionR R1) 1)

        (= (capacidadR R2) 4)
        (= (diaI R2) 10)
        (= (diaF R2) 23)
        (= (orientacionR R2) 0)
  
        (libreR R1)
        (libreR R2)

        (= (penalizacion) 0)
    )

    (:goal (forall (?r2 - reserva) (not(libreR ?r2))))

    (:metric minimize (penalizacion))
)