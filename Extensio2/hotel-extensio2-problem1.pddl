(define (problem extensio1-hotel1)
   (:domain hotel)
   (:objects H1 H2 H3 - habitacion
             R1 R2 R3 R4 - reserva
    )
    ; La orientacio la equivalem a 4 nombres --> N = 0, S = 1, E = 2, O = 3
    (:init

        (= (capacidadH H1) 2)
        (= (orientacionH H1) 0)

        (= (capacidadH H2) 2)
        (= (orientacionH H2) 3)

        (= (capacidadH H3) 3)
        (= (orientacionH H3) 2)

        (= (capacidadR R1) 2)
        (= (diaI R1) 2)
        (= (diaF R1) 4)
        (= (orientacionR R1) 0)

        (= (capacidadR R2) 3)
        (= (diaI R2) 18)
        (= (diaF R2) 30)
        (= (orientacionR R2) 1)

        (= (capacidadR R3) 3)
        (= (diaI R3) 11)
        (= (diaF R3) 17)
        (= (orientacionR R3) 2)

        (= (capacidadR R4) 3)
        (= (diaI R4) 11)
        (= (diaF R4) 17)
        (= (orientacionR R4) 3)
  
        (libreR R1)
        (libreR R2)
        (libreR R3)
        (libreR R4)

        (= (coste) 0)
    )

    (:goal (forall (?r2 - reserva) (not(libreR ?r2))))

    (:metric minimize (coste))
)