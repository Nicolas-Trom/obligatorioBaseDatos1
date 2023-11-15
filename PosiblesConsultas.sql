-- CONSULTA 1
SELECT U.*
FROM USUARIO U, COMPRA C, OPCIONCOMPRA OP, JUEGO J
WHERE C.idJuego = OP.idJuego AND C.opComp = OP.opComp AND J.idJuego = C.idJuego AND U.email = C.email AND OP.opComp = 'Standard'
MINUS
SELECT U.*
FROM USUARIO U, COMPRA C, OPCIONCOMPRA OP, JUEGO J
WHERE C.idJuego = OP.idJuego AND C.opComp = OP.opComp AND J.idJuego = C.idJuego AND U.email = C.email AND J.categoria = 'Estrategia' 

-- CONSULTA 2
SELECT J.*
FROM JUEGO J, COMPRA C, OPCIONCOMPRA OC
WHERE C.IDJUEGO = OC.IDJUEGO AND C.OPCOMP = OC.OPCOMP AND J.IDJUEGO = C.IDJUEGO
MINUS
SELECT J.*
FROM JUEGO J, COMPRA C, OPCIONCOMPRA OC
WHERE C.IDJUEGO = OC.IDJUEGO AND C.OPCOMP = OC.OPCOMP AND J.IDJUEGO = C.IDJUEGO AND C.OPCOMP = 'Deluxe';

--CONSULTA 3
SELECT U.email, U.nickname
FROM Usuario U
WHERE U.email IN (
    SELECT R.email
    FROM Regalo R, Compra C
    WHERE R.email = C.email
    AND R.fechaHora >= TO_DATE('2023-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS')
    AND R.fechaHora < TO_DATE('2024-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS')
    GROUP BY R.email
    HAVING COUNT(DISTINCT C.metodoPago) = (
        SELECT COUNT(*)
        FROM MetodoPago M
        WHERE M.habilitado = 'S'
    )
)
AND U.email NOT IN (
    SELECT R.emailDestinatario
    FROM Regalo R, Compra C
    WHERE R.emailDestinatario = C.email
    AND R.fechaHora >= TO_DATE('2023-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS')
    AND R.fechaHora < TO_DATE('2024-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS')
);

-- CONSULTA 4

SELECT U.NICKNAME, U.PAIS
FROM Usuario U, Compra C, OpcionCompra OC, Juego J
WHERE C.idJuego = OC.idJuego
AND C.opComp = OC.opComp
AND C.idJuego = J.idJuego
AND C.email = U.email
AND J.categoria = 'Aventura'
AND (J.so = 'Windows' OR J.so = 'Linux')
AND C.metodoPago = 'Debito'
AND OC.precio = (SELECT MIN(OC2.precio)
                FROM OpcionCompra OC2 ,  Juego J2
                WHERE OC2.idJuego = J2.idJuego
                AND (J2.so = 'Windows' OR J2.so = 'Linux') 
                AND J2.categoria = 'Aventura');


-- Consulta 5 
SELECT J.descripcion, C.opComp, J.categoria
FROM JUEGO J, COMPRA C, OPCIONCOMPRA OC, REGALO R
WHERE OC.idJuego = C.idJuego
AND C.idJuego = J.idJuego
AND C.idJuego = R.idJuego
AND C.opComp = R.opComp
AND C.opComp = OC.opComp
AND (C.metodoPago = 'Debito' OR C.metodoPago = 'Credito')
AND R.fechaHora >= TO_DATE('2023-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS')
AND R.fechaHora < TO_DATE('2023-03-31 23:59:59', 'YYYY-MM-DD HH24:MI:SS')
MINUS
SELECT J1.descripcion, OC1.opComp, J1.categoria
FROM JUEGO J1, COMPRA C1, COMPRA C2, REGALO R1, REGALO R2, OPCIONCOMPRA OC1
WHERE OC1.idJuego = C1.idJuego
AND OC1.idJuego = C2.idJuego
AND C1.idJuego = J1.idJuego
AND C2.idJuego = J1.idJuego
AND C1.opComp = OC1.opComp
AND C2.opComp = OC1.opComp
AND OC1.idJuego = R1.idJuego
AND OC1.opComp = R1.opComp
AND OC1.idJuego = R2.idJuego
AND OC1.opComp = R2.opComp
AND C2.metodoPago = 'Debito'
AND C1.metodoPago = 'Credito'
AND R1.fechaHora >= TO_DATE('2023-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS')
AND R1.fechaHora < TO_DATE('2023-03-31 23:59:59', 'YYYY-MM-DD HH24:MI:SS')
AND R2.fechaHora >= TO_DATE('2023-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS')
AND R2.fechaHora < TO_DATE('2023-03-31 23:59:59', 'YYYY-MM-DD HH24:MI:SS')

-- Consulta 6 (Discriminante por OPCOMPRA?????)

SELECT U.nickname, U.pais, count (J.categoria),C.opComp
FROM USUARIO U, REGALO R, JUEGO J, COMPRA C
WHERE  C.email = R.email
AND C.idJuego = R.idJuego
AND C.email = U.email
AND C.idJuego = J.idJuego
AND R.opComp = C.opComp
AND (J.categoria = 'Aventura' OR J.categoria = 'Estrategia')
GROUP BY U.nickname, U.pais,C.opComp
HAVING (U.pais = 'Uruguay' OR U.pais = 'Argentina' OR U.pais = 'Brasil')
ORDER BY U.nickname

----7777777777777777777777
SELECT J.descripcion, U.nickname, Trunc(C.fechaHora,'dd') 
FROM Juego J, Usuario U, Compra C, OpcionCompra OC   
WHERE C.idJuego = OC.idJuego     
AND OC.idJuego = J.idJuego   
AND C.email = U.email
GROUP BY Trunc(C.fechaHora,'dd'), J.descripcion, U.nickname 
HAVING COUNT(C.fechaHora)>2 

-- Conulta 8
SELECT U.pais, SUM (OC.precio), Trunc(C.fechaHora,'dd') 
FROM Usuario U, OpcionCompra OC, Compra C 
WHERE OC.idJuego = C.idJuego 
AND OC.opComp = C.opComp 
AND C.email = U.email 
and OC.precio > (SELECT SUM (OC1.precio)/30 
                    FROM Usuario U1, OpcionCompra OC1, Compra C1 
                    WHERE OC1.idJuego = C1.idJuego 
                    AND OC1.opComp = C1.opComp 
                    AND C1.email = U1.email 
                    AND U1.pais = U.pais 
                    AND Trunc(C1.fechaHora,'mm') = Trunc(C.fechaHora,'mm') 
                    GROUP BY U1.pais, Trunc(C1.fechaHora,'mm') 
                ) 
GROUP BY U.pais, Trunc(C.fechaHora,'dd') 
ORDER BY U.pais, Trunc(C.fechaHora,'dd')



