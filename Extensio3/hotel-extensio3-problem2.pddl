(define (problem extensio1-hotel2)
   (:domain hotel)
   (:objects H1 - habitacion
             R1 R2 R3 - reserva
    )
    (:init

        (= (capacidadH H1) 4)


        (= (capacidadR R1) 3)
        (= (diaI R1) 10)
        (= (diaF R1) 16)

        (= (capacidadR R2) 4)
        (= (diaI R2) 15)
        (= (diaF R2) 24)

        (= (capacidadR R3) 2)
        (= (diaI R3) 20)
        (= (diaF R3) 30)
  
        (libreR R1)
        (libreR R2)
        (libreR R3)

        (= (penalizacion) 0)
    )

    (:goal (forall (?r2 - reserva) (not(libreR ?r2))))

    (:metric minimize (penalizacion))
)