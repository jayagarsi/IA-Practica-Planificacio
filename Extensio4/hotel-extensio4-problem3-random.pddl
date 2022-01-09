(define (problem random-extensio4)
   (:domain hotel)
   (:objects H0 H1 - habitacion
             R0 R1 R2 - reserva
	)

   (:init
        (= (capacidadH H0) 1)
        (= (numAssig H0) 0)

        (= (capacidadH H1) 4)
        (= (numAssig H1) 0)


        (= (diaI R0) 16)
        (= (diaF R0) 20)
        (= (capacidadR R0) 1)

        (= (diaI R1) 20)
        (= (diaF R1) 30)
        (= (capacidadR R1) 2)

        (= (diaI R2) 25)
        (= (diaF R2) 26)
        (= (capacidadR R2) 1)


        (libreR R0)
        (libreR R1)
        (libreR R2)
        (= (penalizacion) 0)

    )

	(:goal (forall (?r - reserva) (not (libreR ?r))))
	(:metric minimize (penalizacion))

)

