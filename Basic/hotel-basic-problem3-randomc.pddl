(define (problem random-basic)
   (:domain hotel)
   (:objects H0 H1 - habitacion
             R0 R1 R2 R3 - reserva
	)

   (:init
        (= (capacidadH H0) 1)

        (= (capacidadH H1) 4)


        (= (diaI R0) 16)
        (= (diaF R0) 20)
        (= (capacidadR R0) 1)

        (= (diaI R1) 21)
        (= (diaF R1) 30)
        (= (capacidadR R1) 2)

        (= (diaI R2) 25)
        (= (diaF R2) 26)
        (= (capacidadR R2) 1)

        (= (diaI R3) 21)
        (= (diaF R3) 22)
        (= (capacidadR R3) 2)


        (libreR R0)
        (libreR R1)
        (libreR R2)
        (libreR R3)
    )

	(:goal (forall (?r - reserva) (not (libreR ?r))))
)

