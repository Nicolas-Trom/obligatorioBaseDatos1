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
AND C.metodoPago = 'Débito'
AND OC.precio = (SELECT MIN(OC2.precio)
                FROM OpcionCompra OC2 
                WHERE OC2.idJuego = J.idJuego);