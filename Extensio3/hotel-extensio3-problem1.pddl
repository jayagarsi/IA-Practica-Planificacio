(define (problem extensio1-hotel1)
   (:domain hotel)
   (:objects H1 - habitacion
             R1 R2 R3 R4 - reserva
    )
    (:init

        (= (capacidadH H1) 3)


        (= (capacidadR R1) 2)
        (= (diaI R1) 3)
        (= (diaF R1) 14)

        (= (capacidadR R2) 3)
        (= (diaI R2) 12)
        (= (diaF R2) 17)

        (= (capacidadR R3) 1)
        (= (diaI R3) 8)
        (= (diaF R3) 23)

        (= (capacidadR R4) 4)
        (= (diaI R4) 24)
        (= (diaF R4) 29)
  
        (libreR R1)
        (libreR R2)
        (libreR R3)
        (libreR R4)

        (= (penalizacion) 0)
    )

    (:goal (forall (?r2 - reserva) (not(libreR ?r2))))

    (:metric minimize (penalizacion))
)