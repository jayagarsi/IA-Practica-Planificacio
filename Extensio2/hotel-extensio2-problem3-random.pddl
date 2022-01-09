(define (problem random-extensio2)
   (:domain hotel)
   (:objects H0 H1 - habitacion
             R0 R1 R2 - reserva
	)

   (:init
        (= (capacidadH H0) 1)
        (= (orientacionH H0) 0)

        (= (capacidadH H1) 4)
        (= (orientacionH H1) 2)


        (= (diaI R0) 16)
        (= (diaF R0) 20)
        (= (capacidadR R0) 1)
        (= (orientacionR R0) 2)

        (= (diaI R1) 21)
        (= (diaF R1) 30)
        (= (capacidadR R1) 2)
        (= (orientacionR R1) 2)

        (= (diaI R2) 25)
        (= (diaF R2) 26)
        (= (capacidadR R2) 1)
        (= (orientacionR R2) 2)


        (libreR R0)
        (libreR R1)
        (libreR R2)
        (= (penalizacion) 0)

    )

	(:goal (forall (?r - reserva) (not (libreR ?r))))
	(:metric minimize (penalizacion))

)

