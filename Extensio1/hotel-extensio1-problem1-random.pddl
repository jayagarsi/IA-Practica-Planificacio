(define (problem random-extensio1)
   (:domain hotel)
   (:objects H0 - habitacion
             R0 R1 R2 - reserva
	)

   (:init
        (= (capacidadH H0) 3)


        (= (diaI R0) 23)
        (= (diaF R0) 27)
        (= (capacidadR R0) 3)

        (= (diaI R1) 2)
        (= (diaF R1) 24)
        (= (capacidadR R1) 3)

        (= (diaI R2) 12)
        (= (diaF R2) 22)
        (= (capacidadR R2) 4)


        (libreR R0)
        (libreR R1)
        (libreR R2)
        (= (penalizacion) 0)

    )

	(:goal (forall (?r - reserva) (not (libreR ?r))))
	(:metric minimize (penalizacion))

)

