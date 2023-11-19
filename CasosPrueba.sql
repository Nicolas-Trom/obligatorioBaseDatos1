
-- Consulta 3 ---------------------------------------------------------------------------------------------
-- Esta consulta debe dar Joaquin y Agustin
    
    -- Usuarios
    Insert into usuario(email,pais,nickname,telefono) 
    values ('nicolas@gmail','Argentina','Nicolas','09254168');
    Insert into usuario(email,pais,nickname,telefono) 
    values ('joaquin@gmail','Uruguay','Joaquin','09354164');
    Insert into usuario(email,pais,nickname,telefono) 
    values ('agustin@gmail','Uruguay','Agustin','09156169');

    --Juegos
    Insert into juego(idJuego,descripcion,fecha,desarrollador,SO,categoria) 
    values ('1','Juego 1',TO_DATE('2023-03-23', 'YYYY-MM-DD'),'Desarollador1','Windows','Aventura');
    Insert into juego(idJuego,descripcion,fecha,desarrollador,SO,categoria) 
    values ('2','Juego 2',TO_DATE('2023-02-17', 'YYYY-MM-DD'),'Desarollador2','Windows','Estrategia');

    -- OPCIONCOMPRA
    INSERT INTO OPCIONCOMPRA (IDJUEGO,OPCOMP,PRECIO)
    VALUES (1,'Deluxe',100);
    INSERT INTO OPCIONCOMPRA (IDJUEGO,OPCOMP,PRECIO)
    VALUES (1,'Standard',50);
    INSERT INTO OPCIONCOMPRA (IDJUEGO,OPCOMP,PRECIO)
    VALUES (2,'Deluxe',150);
    INSERT INTO OPCIONCOMPRA (IDJUEGO,OPCOMP,PRECIO)
    VALUES (2,'Standard',100);

    -- METODO PAGO
    INSERT INTO MetodoPago (metodoPago, habilitado) 
    VALUES ('redCobranza', 'S');
    INSERT INTO MetodoPago (metodoPago, habilitado) 
    VALUES ('Credito', 'S');
    INSERT INTO MetodoPago (metodoPago, habilitado) 
    VALUES ('cheques', 'N');
    INSERT INTO MetodoPago (metodoPago, habilitado) 
    VALUES ('Debito', 'S');

    -- COMPRAS
    INSERT INTO  Compra (email,idJuego,opComp,fechaHora,metodoPago)  
    VALUES ('agustin@gmail',1,'Standard',TO_DATE('2023-01-30 14:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Credito');

    INSERT INTO  Compra (email,idJuego,opComp,fechaHora,metodoPago)  
    VALUES ('agustin@gmail',1,'Deluxe',TO_DATE('2023-03-10 10:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Debito');

    INSERT INTO  Compra (email,idJuego,opComp,fechaHora,metodoPago)  
    VALUES ('agustin@gmail',2,'Deluxe',TO_DATE('2023-02-28 14:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'redCobranza');

    INSERT INTO  Compra (email,idJuego,opComp,fechaHora,metodoPago)  
    VALUES ('agustin@gmail',2,'Standard',TO_DATE('2023-01-10 15:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'redCobranza');

    INSERT INTO  Compra (email,idJuego,opComp,fechaHora,metodoPago)  
    VALUES ('joaquin@gmail',1,'Standard',TO_DATE('2023-02-05 11:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'redCobranza');

    INSERT INTO  Compra (email,idJuego,opComp,fechaHora,metodoPago)  
    VALUES ('joaquin@gmail',2,'Standard',TO_DATE('2023-01-10 10:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Credito');

    INSERT INTO  Compra (email,idJuego,opComp,fechaHora,metodoPago)  
    VALUES ('joaquin@gmail',1,'Deluxe',TO_DATE('2023-01-30 04:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Debito');

    INSERT INTO  Compra (email,idJuego,opComp,fechaHora,metodoPago)  
    VALUES ('nicolas@gmail',1,'Deluxe',TO_DATE('2023-03-25 18:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Debito');

    INSERT INTO  Compra (email,idJuego,opComp,fechaHora,metodoPago)  
    VALUES ('nicolas@gmail',2,'Deluxe',TO_DATE('2023-03-30 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Debito');

    INSERT INTO  Compra (email,idJuego,opComp,fechaHora,metodoPago)  
    VALUES ('nicolas@gmail',1,'Standard',TO_DATE('2023-03-15 08:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Debito');

    -- REGALO

    INSERT INTO  Regalo (email,idJuego,opComp,fechaHora,emailDestinatario)   
    VALUES ('joaquin@gmail',1,'Deluxe',TO_DATE('2023-01-30 04:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'nicolas@gmail');

    INSERT INTO  Regalo (email,idJuego,opComp,fechaHora,emailDestinatario)   
    VALUES ('joaquin@gmail',1,'Standard',TO_DATE('2023-02-05 11:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'nicolas@gmail');

    INSERT INTO  Regalo (email,idJuego,opComp,fechaHora,emailDestinatario)  
    VALUES ('joaquin@gmail',2,'Standard',TO_DATE('2023-01-10 10:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'nicolas@gmail');

    INSERT INTO  Regalo (email,idJuego,opComp,fechaHora,emailDestinatario)  
    VALUES ('agustin@gmail',1,'Standard',TO_DATE('2023-01-30 14:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'nicolas@gmail');

    INSERT INTO  Regalo (email,idJuego,opComp,fechaHora,emailDestinatario)  
    VALUES ('agustin@gmail',1,'Deluxe',TO_DATE('2023-03-10 10:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'nicolas@gmail');

    INSERT INTO  Regalo (email,idJuego,opComp,fechaHora,emailDestinatario)  
    VALUES ('agustin@gmail',2,'Deluxe',TO_DATE('2023-02-28 14:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'nicolas@gmail');

    INSERT INTO  Regalo (email,idJuego,opComp,fechaHora,emailDestinatario)   
    VALUES ('agustin@gmail',2,'Standard',TO_DATE('2023-01-10 15:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'nicolas@gmail');



-- CONSULTA 7-------------------------------------------------------------------------------------------------------------------------

 -- Usuarios
    Insert into usuario(email,pais,nickname,telefono) 
    values ('nicolas@gmail','Argentina','Nicolas','09254168');
    Insert into usuario(email,pais,nickname,telefono) 
    values ('joaquin@gmail','Uruguay','Joaquin','09354164');
    Insert into usuario(email,pais,nickname,telefono) 
    values ('agustin@gmail','Uruguay','Agustin','09156169');

    --Juegos
    Insert into juego(idJuego,descripcion,fecha,desarrollador,SO,categoria) 
    values ('1','Juego 1',TO_DATE('2023-03-23', 'YYYY-MM-DD'),'Desarollador1','Windows','Aventura');
    Insert into juego(idJuego,descripcion,fecha,desarrollador,SO,categoria) 
    values ('2','Juego 2',TO_DATE('2023-02-17', 'YYYY-MM-DD'),'Desarollador2','Windows','Estrategia');

    -- OPCIONCOMPRA
    INSERT INTO OPCIONCOMPRA (IDJUEGO,OPCOMP,PRECIO)
    VALUES (1,'Deluxe',100);
    INSERT INTO OPCIONCOMPRA (IDJUEGO,OPCOMP,PRECIO)
    VALUES (1,'Standard',50);
    INSERT INTO OPCIONCOMPRA (IDJUEGO,OPCOMP,PRECIO)
    VALUES (2,'Deluxe',150);
    INSERT INTO OPCIONCOMPRA (IDJUEGO,OPCOMP,PRECIO)
    VALUES (2,'Standard',100);

    -- METODO PAGO
    INSERT INTO MetodoPago (metodoPago, habilitado) 
    VALUES ('redCobranza', 'S');
    INSERT INTO MetodoPago (metodoPago, habilitado) 
    VALUES ('Credito', 'S');
    INSERT INTO MetodoPago (metodoPago, habilitado) 
    VALUES ('cheques', 'N');
    INSERT INTO MetodoPago (metodoPago, habilitado) 
    VALUES ('Debito', 'S');

    -- COMPRAS
    INSERT INTO  Compra (email,idJuego,opComp,fechaHora,metodoPago)  
    VALUES ('agustin@gmail',1,'Standard',TO_DATE('2023-01-30 14:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Credito');

    INSERT INTO  Compra (email,idJuego,opComp,fechaHora,metodoPago)  
    VALUES ('agustin@gmail',1,'Standard',TO_DATE('2023-01-30 18:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'redCobranza');

    INSERT INTO  Compra (email,idJuego,opComp,fechaHora,metodoPago)  
    VALUES ('agustin@gmail',1,'Deluxe',TO_DATE('2023-01-30 10:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Debito');

    INSERT INTO  Compra (email,idJuego,opComp,fechaHora,metodoPago)  
    VALUES ('joaquin@gmail',2,'Deluxe',TO_DATE('2023-02-28 14:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'redCobranza');

    INSERT INTO  Compra (email,idJuego,opComp,fechaHora,metodoPago)  
    VALUES ('nicolas@gmail',2,'Standard',TO_DATE('2023-01-10 15:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'redCobranza');




-- CONSULTA 8 ------------------------------------------------------------------------------------------------------------

     -- Usuarios
    Insert into usuario(email,pais,nickname,telefono) 
    values ('nicolas@gmail','Argentina','Nicolas','09254168');
    Insert into usuario(email,pais,nickname,telefono) 
    values ('joaquin@gmail','Uruguay','Joaquin','09354164');
    Insert into usuario(email,pais,nickname,telefono) 
    values ('agustin@gmail','Uruguay','Agustin','09156169');

    --Juegos
    Insert into juego(idJuego,descripcion,fecha,desarrollador,SO,categoria) 
    values ('1','Juego 1',TO_DATE('2023-03-23', 'YYYY-MM-DD'),'Desarollador1','Windows','Aventura');
    Insert into juego(idJuego,descripcion,fecha,desarrollador,SO,categoria) 
    values ('2','Juego 2',TO_DATE('2023-02-17', 'YYYY-MM-DD'),'Desarollador2','Windows','Estrategia');
    Insert into juego(idJuego,descripcion,fecha,desarrollador,SO,categoria) 
    values ('3','Juego 3',TO_DATE('2023-02-17', 'YYYY-MM-DD'),'Desarollador2','Linux','Estrategia');

    -- OPCIONCOMPRA
    INSERT INTO OPCIONCOMPRA (IDJUEGO,OPCOMP,PRECIO)
    VALUES (1,'Deluxe',100);
    INSERT INTO OPCIONCOMPRA (IDJUEGO,OPCOMP,PRECIO)
    VALUES (1,'Standard',50);
    INSERT INTO OPCIONCOMPRA (IDJUEGO,OPCOMP,PRECIO)
    VALUES (2,'Deluxe',150);
    INSERT INTO OPCIONCOMPRA (IDJUEGO,OPCOMP,PRECIO)
    VALUES (2,'Standard',100);
    INSERT INTO OPCIONCOMPRA (IDJUEGO,OPCOMP,PRECIO)
    VALUES (3,'Standard',5);

    -- METODO PAGO
    INSERT INTO MetodoPago (metodoPago, habilitado) 
    VALUES ('redCobranza', 'S');
    INSERT INTO MetodoPago (metodoPago, habilitado) 
    VALUES ('Credito', 'S');
    INSERT INTO MetodoPago (metodoPago, habilitado) 
    VALUES ('cheques', 'N');
    INSERT INTO MetodoPago (metodoPago, habilitado) 
    VALUES ('Debito', 'S');

    -- COMPRA
    INSERT INTO  Compra (email,idJuego,opComp,fechaHora,metodoPago)  
    VALUES ('nicolas@gmail',1,'Deluxe',TO_DATE('2023-03-25 18:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Debito');

    INSERT INTO  Compra (email,idJuego,opComp,fechaHora,metodoPago)  
    VALUES ('nicolas@gmail',1,'Deluxe',TO_DATE('2023-03-30 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Debito');

    INSERT INTO  Compra (email,idJuego,opComp,fechaHora,metodoPago)  
    VALUES ('nicolas@gmail',1,'Deluxe',TO_DATE('2023-03-15 08:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Debito');

    INSERT INTO  Compra (email,idJuego,opComp,fechaHora,metodoPago)  
    VALUES ('nicolas@gmail',3,'Standard',TO_DATE('2023-03-20 08:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Credito');

    INSERT INTO  Compra (email,idJuego,opComp,fechaHora,metodoPago)  
    VALUES ('joaquin@gmail',2,'Deluxe',TO_DATE('2023-01-30 04:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Credito');

    INSERT INTO  Compra (email,idJuego,opComp,fechaHora,metodoPago)  
    VALUES ('joaquin@gmail',3,'Standard',TO_DATE('2023-01-10 15:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Credito');


-- CONSULTA 10-----------------------------------------------------------------------------------------------

    -- Usuarios
    Insert into usuario(email,pais,nickname,telefono) 
    values ('nicolas@gmail','Chile','Nicolas','09254168');
    Insert into usuario(email,pais,nickname,telefono) 
    values ('marcos@gmail','Venezuela','Marcos','09654178');
    Insert into usuario(email,pais,nickname,telefono) 
    values ('joaquin@gmail','Uruguay','Joaquin','09354164');
    Insert into usuario(email,pais,nickname,telefono) 
    values ('agustin@gmail','Uruguay','Agustin','09156169');

    --Juegos
    Insert into juego(idJuego,descripcion,fecha,desarrollador,SO,categoria) 
    values ('1','Juego 1',TO_DATE('2023-03-23', 'YYYY-MM-DD'),'Desarollador1','Windows','Aventura');
    Insert into juego(idJuego,descripcion,fecha,desarrollador,SO,categoria) 
    values ('2','Juego 2',TO_DATE('2023-02-17', 'YYYY-MM-DD'),'Desarollador2','Windows','Estrategia');

    -- OPCIONCOMPRA
    INSERT INTO OPCIONCOMPRA (IDJUEGO,OPCOMP,PRECIO)
    VALUES (1,'Deluxe',100);
    INSERT INTO OPCIONCOMPRA (IDJUEGO,OPCOMP,PRECIO)
    VALUES (1,'Standard',50);
    INSERT INTO OPCIONCOMPRA (IDJUEGO,OPCOMP,PRECIO)
    VALUES (2,'Deluxe',150);
    INSERT INTO OPCIONCOMPRA (IDJUEGO,OPCOMP,PRECIO)
    VALUES (2,'Standard',100);

    -- METODO PAGO
    INSERT INTO MetodoPago (metodoPago, habilitado) 
    VALUES ('redCobranza', 'S');
    INSERT INTO MetodoPago (metodoPago, habilitado) 
    VALUES ('Credito', 'S');
    INSERT INTO MetodoPago (metodoPago, habilitado) 
    VALUES ('cheques', 'N');
    INSERT INTO MetodoPago (metodoPago, habilitado) 
    VALUES ('Debito', 'S');

    -- COMPRAS
    INSERT INTO  Compra (email,idJuego,opComp,fechaHora,metodoPago)  
    VALUES ('agustin@gmail',1,'Standard',TO_DATE('2023-01-30 14:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Credito');

    INSERT INTO  Compra (email,idJuego,opComp,fechaHora,metodoPago)  
    VALUES ('agustin@gmail',1,'Deluxe',TO_DATE('2023-03-10 10:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Debito');

    INSERT INTO  Compra (email,idJuego,opComp,fechaHora,metodoPago)  
    VALUES ('agustin@gmail',2,'Deluxe',TO_DATE('2023-02-28 14:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'redCobranza');

    INSERT INTO  Compra (email,idJuego,opComp,fechaHora,metodoPago)  
    VALUES ('agustin@gmail',2,'Standard',TO_DATE('2023-01-10 15:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'redCobranza');

    INSERT INTO  Compra (email,idJuego,opComp,fechaHora,metodoPago)  
    VALUES ('joaquin@gmail',1,'Standard',TO_DATE('2023-02-05 11:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'redCobranza');

    INSERT INTO  Compra (email,idJuego,opComp,fechaHora,metodoPago)  
    VALUES ('joaquin@gmail',2,'Standard',TO_DATE('2023-01-10 10:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Credito');

    INSERT INTO  Compra (email,idJuego,opComp,fechaHora,metodoPago)  
    VALUES ('joaquin@gmail',1,'Deluxe',TO_DATE('2023-01-30 04:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Debito');

    INSERT INTO  Compra (email,idJuego,opComp,fechaHora,metodoPago)  
    VALUES ('nicolas@gmail',1,'Deluxe',TO_DATE('2023-03-25 18:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Debito');

    INSERT INTO  Compra (email,idJuego,opComp,fechaHora,metodoPago)  
    VALUES ('nicolas@gmail',2,'Deluxe',TO_DATE('2023-03-30 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Debito');

    INSERT INTO  Compra (email,idJuego,opComp,fechaHora,metodoPago)  
    VALUES ('nicolas@gmail',1,'Standard',TO_DATE('2023-03-15 08:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Debito');

    INSERT INTO  Compra (email,idJuego,opComp,fechaHora,metodoPago)  
    VALUES ('marcos@gmail',2,'Deluxe',TO_DATE('2023-01-30 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Debito');

    INSERT INTO  Compra (email,idJuego,opComp,fechaHora,metodoPago)  
    VALUES ('marcos@gmail',1,'Deluxe',TO_DATE('2023-03-30 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Credito');

    -- REGALO

    INSERT INTO  Regalo (email,idJuego,opComp,fechaHora,emailDestinatario)   
    VALUES ('joaquin@gmail',1,'Deluxe',TO_DATE('2023-01-30 04:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'nicolas@gmail');

    INSERT INTO  Regalo (email,idJuego,opComp,fechaHora,emailDestinatario)   
    VALUES ('joaquin@gmail',1,'Standard',TO_DATE('2023-02-05 11:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'nicolas@gmail');

    INSERT INTO  Regalo (email,idJuego,opComp,fechaHora,emailDestinatario)  
    VALUES ('joaquin@gmail',2,'Standard',TO_DATE('2023-01-10 10:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'nicolas@gmail');

    INSERT INTO  Regalo (email,idJuego,opComp,fechaHora,emailDestinatario)  
    VALUES ('agustin@gmail',1,'Standard',TO_DATE('2023-01-30 14:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'nicolas@gmail');

    INSERT INTO  Regalo (email,idJuego,opComp,fechaHora,emailDestinatario)  
    VALUES ('agustin@gmail',1,'Deluxe',TO_DATE('2023-03-10 10:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'nicolas@gmail');

    INSERT INTO  Regalo (email,idJuego,opComp,fechaHora,emailDestinatario)  
    VALUES ('agustin@gmail',2,'Deluxe',TO_DATE('2023-02-28 14:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'nicolas@gmail');

    INSERT INTO  Regalo (email,idJuego,opComp,fechaHora,emailDestinatario)   
    VALUES ('agustin@gmail',2,'Standard',TO_DATE('2023-01-10 15:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'nicolas@gmail');

    INSERT INTO  Regalo (email,idJuego,opComp,fechaHora,emailDestinatario)   
    VALUES ('marcos@gmail',2,'Deluxe',TO_DATE('2023-01-30 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'nicolas@gmail');

    INSERT INTO  Regalo (email,idJuego,opComp,fechaHora,emailDestinatario)   
    VALUES ('nicolas@gmail',2,'Deluxe',TO_DATE('2023-03-30 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'marcos@gmail');

    INSERT INTO  Regalo (email,idJuego,opComp,fechaHora,emailDestinatario)   
    VALUES ('nicolas@gmail',1,'Deluxe',TO_DATE('2023-03-25 18:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'marcos@gmail');

    INSERT INTO  Regalo (email,idJuego,opComp,fechaHora,emailDestinatario)   
    VALUES ('nicolas@gmail',1,'Standard',TO_DATE('2023-03-15 08:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'marcos@gmail');





