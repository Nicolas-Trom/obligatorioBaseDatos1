-- Usuarios
Insert into usuario(email,pais,nickname,telefono) 
values ('nicolas@gmail','Argentina','Nicolas','09254168');
Insert into usuario(email,pais,nickname,telefono) 
values ('joaquin@gmail','Uruguay','Joaquin','09354164');
Insert into usuario(email,pais,nickname,telefono) 
values ('agustin@gmail','Uruguay','Agustin','09156169');
Insert into usuario(email,pais,nickname,telefono) 
values ('carlos@gmail','Brasil','Carlos','0621416802');
Insert into usuario(email,pais,nickname,telefono) 
values ('martin@gmail','Venezuela','Martin','0985716465');
Insert into usuario(email,pais,nickname,telefono) 
values ('juan@gmail','Colombia','Juan','6508158163');
Insert into usuario(email,pais,nickname,telefono) 
values ('pablo@gmail','Brasil','Pablo','6558178161');

--Juegos

Insert into juego(idJuego,descripcion,fecha,desarrollador,SO,categoria) 
values ('1','Juego 1',TO_DATE('2023-03-23', 'YYYY-MM-DD'),'Desarollador1','Windows','Aventura');
Insert into juego(idJuego,descripcion,fecha,desarrollador,SO,categoria) 
values ('2','Juego 2',TO_DATE('2023-02-17', 'YYYY-MM-DD'),'Desarollador2','Windows','Estrategia');
Insert into juego(idJuego,descripcion,fecha,desarrollador,SO,categoria) 
values ('3','Juego 3',TO_DATE('2023-01-29', 'YYYY-MM-DD'),'Desarollador3','Linux','Aventura');
Insert into juego(idJuego,descripcion,fecha,desarrollador,SO,categoria) 
values ('4','Juego 4',TO_DATE('2023-02-15', 'YYYY-MM-DD'),'Desarollador4','Linux','Terror');
Insert into juego(idJuego,descripcion,fecha,desarrollador,SO,categoria) 
values ('5','Juego 5',TO_DATE('2023-04-13', 'YYYY-MM-DD'),'Desarollador5','Mac','Estrategia');
Insert into juego(idJuego,descripcion,fecha,desarrollador,SO,categoria) 
values ('6','Juego 6',TO_DATE('2022-03-23', 'YYYY-MM-DD'),'Desarollador1','Windows','AcciÃ³n');

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
VALUES (3,'Deluxe',200);

INSERT INTO OPCIONCOMPRA (IDJUEGO,OPCOMP,PRECIO)
VALUES (3,'Standard',150);

INSERT INTO OPCIONCOMPRA (IDJUEGO,OPCOMP,PRECIO)
VALUES (4,'Deluxe',50);

INSERT INTO OPCIONCOMPRA (IDJUEGO,OPCOMP,PRECIO)
VALUES (5,'Deluxe',100);

INSERT INTO OPCIONCOMPRA (IDJUEGO,OPCOMP,PRECIO)
VALUES (5,'Standard',50);

INSERT INTO OPCIONCOMPRA (IDJUEGO,OPCOMP,PRECIO)
VALUES (6,'Deluxe',500);

INSERT INTO OPCIONCOMPRA (IDJUEGO,OPCOMP,PRECIO)
VALUES (6,'Standard',450);

-- METODO PAGO

INSERT INTO MetodoPago (metodoPago, habilitado) 
VALUES ('redCobranza', 'S');
INSERT INTO MetodoPago (metodoPago, habilitado) 
VALUES ('Credito', 'S');
INSERT INTO MetodoPago (metodoPago, habilitado) 
VALUES ('cheques', 'N');
INSERT INTO MetodoPago (metodoPago, habilitado) 
VALUES ('Debito', 'S');

-- Compras
INSERT INTO  Compra (email,idJuego,opComp,fechaHora,metodoPago)  
VALUES ('nicolas@gmail',1,'Deluxe',TO_DATE('2023-03-25 18:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Debito');

INSERT INTO  Compra (email,idJuego,opComp,fechaHora,metodoPago)  
VALUES ('nicolas@gmail',5,'Deluxe',TO_DATE('2023-03-30 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Debito');

INSERT INTO  Compra (email,idJuego,opComp,fechaHora,metodoPago)  
VALUES ('nicolas@gmail',1,'Standard',TO_DATE('2023-03-15 08:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Debito');

INSERT INTO  Compra (email,idJuego,opComp,fechaHora,metodoPago)  
VALUES ('nicolas@gmail',2,'Standard',TO_DATE('2023-01-05 15:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Debito');

INSERT INTO  Compra (email,idJuego,opComp,fechaHora,metodoPago)  
VALUES ('nicolas@gmail',3,'Deluxe',TO_DATE('2023-01-29 02:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Debito');

INSERT INTO  Compra (email,idJuego,opComp,fechaHora,metodoPago)  
VALUES ('nicolas@gmail',6,'Standard',TO_DATE('2023-02-20 19:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Debito');

INSERT INTO  Compra (email,idJuego,opComp,fechaHora,metodoPago)  
VALUES ('agustin@gmail',3,'Standard',TO_DATE('2023-01-30 14:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Credito');

INSERT INTO  Compra (email,idJuego,opComp,fechaHora,metodoPago)  
VALUES ('agustin@gmail',2,'Deluxe',TO_DATE('2023-03-10 10:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Debito');

INSERT INTO  Compra (email,idJuego,opComp,fechaHora,metodoPago)  
VALUES ('agustin@gmail',4,'Deluxe',TO_DATE('2023-02-28 14:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'redCobranza');

INSERT INTO  Compra (email,idJuego,opComp,fechaHora,metodoPago)  
VALUES ('agustin@gmail',1,'Deluxe',TO_DATE('2023-01-10 15:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'redCobranza');

INSERT INTO  Compra (email,idJuego,opComp,fechaHora,metodoPago)  
VALUES ('joaquin@gmail',1,'Standard',TO_DATE('2023-02-05 11:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Credito');

INSERT INTO  Compra (email,idJuego,opComp,fechaHora,metodoPago)  
VALUES ('joaquin@gmail',2,'Standard',TO_DATE('2023-01-10 10:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Credito');

INSERT INTO  Compra (email,idJuego,opComp,fechaHora,metodoPago)  
VALUES ('joaquin@gmail',4,'Deluxe',TO_DATE('2023-01-30 04:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Credito');

INSERT INTO  Compra (email,idJuego,opComp,fechaHora,metodoPago)  
VALUES ('joaquin@gmail',3,'Deluxe',TO_DATE('2023-01-10 15:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Credito');

-- Regalos

INSERT INTO  Regalo (email,idJuego,opComp,fechaHora,emailDestinatario)  
VALUES ('nicolas@gmail',1,'Standard',TO_DATE('2023-03-15 08:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'carlos@gmail');

INSERT INTO  Regalo (email,idJuego,opComp,fechaHora,emailDestinatario)   
VALUES ('joaquin@gmail',4,'Deluxe',TO_DATE('2023-01-30 04:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'nicolas@gmail');

INSERT INTO  Regalo (email,idJuego,opComp,fechaHora,emailDestinatario)   
VALUES ('joaquin@gmail',1,'Standard',TO_DATE('2023-02-05 11:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'nicolas@gmail');

INSERT INTO  Regalo (email,idJuego,opComp,fechaHora,emailDestinatario)  
VALUES ('joaquin@gmail',2,'Standard',TO_DATE('2023-01-10 10:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'martin@gmail');

INSERT INTO  Regalo (email,idJuego,opComp,fechaHora,emailDestinatario)  
VALUES ('joaquin@gmail',3,'Deluxe',TO_DATE('2023-01-10 15:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'juan@gmail');

INSERT INTO  Regalo (email,idJuego,opComp,fechaHora,emailDestinatario)  
VALUES ('nicolas@gmail',2,'Standard',TO_DATE('2023-01-05 15:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'juan@gmail');

INSERT INTO  Regalo (email,idJuego,opComp,fechaHora,emailDestinatario)  
VALUES ('agustin@gmail',3,'Standard',TO_DATE('2023-01-30 14:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'martin@gmail');

INSERT INTO  Regalo (email,idJuego,opComp,fechaHora,emailDestinatario)  
VALUES ('agustin@gmail',1,'Deluxe',TO_DATE('2023-01-10 15:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'juan@gmail');

INSERT INTO  Regalo (email,idJuego,opComp,fechaHora,emailDestinatario)  
VALUES ('agustin@gmail',2,'Deluxe',TO_DATE('2023-03-10 10:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'juan@gmail');

INSERT INTO  Regalo (email,idJuego,opComp,fechaHora,emailDestinatario)   
VALUES ('agustin@gmail',4,'Deluxe',TO_DATE('2023-02-28 14:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'nicolas@gmail');

-- Para Probar consulta 1
INSERT INTO  Compra (email,idJuego,opComp,fechaHora,metodoPago)
VALUES ('agustin@gmail',1,'Standard',TO_DATE('2023-01-10 10:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Debito');



-- Pruebas para consulta 3

INSERT INTO  Compra (email,idJuego,opComp,fechaHora,metodoPago)  
VALUES ('martin@gmail',3,'Standard',TO_DATE('2023-01-30 14:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Credito');

INSERT INTO  Compra (email,idJuego,opComp,fechaHora,metodoPago)  
VALUES ('martin@gmail',2,'Deluxe',TO_DATE('2023-03-10 10:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Debito');

INSERT INTO  Compra (email,idJuego,opComp,fechaHora,metodoPago)  
VALUES ('martin@gmail',4,'Deluxe',TO_DATE('2023-02-28 14:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'redCobranza');

INSERT INTO  Compra (email,idJuego,opComp,fechaHora,metodoPago)  
VALUES ('martin@gmail',1,'Deluxe',TO_DATE('2022-01-10 15:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'redCobranza');

INSERT INTO  Regalo (email,idJuego,opComp,fechaHora,emailDestinatario)  
VALUES ('martin@gmail',3,'Standard',TO_DATE('2023-01-30 14:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'martin@gmail');

INSERT INTO  Regalo (email,idJuego,opComp,fechaHora,emailDestinatario)  
VALUES ('martin@gmail',1,'Deluxe',TO_DATE('2022-01-10 15:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'juan@gmail');

INSERT INTO  Regalo (email,idJuego,opComp,fechaHora,emailDestinatario)  
VALUES ('martin@gmail',2,'Deluxe',TO_DATE('2023-03-10 10:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'juan@gmail');

INSERT INTO  Regalo (email,idJuego,opComp,fechaHora,emailDestinatario)   
VALUES ('martin@gmail',4,'Deluxe',TO_DATE('2023-02-28 14:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'nicolas@gmail');

-- Otras pruebas

INSERT INTO  Compra (email,idJuego,opComp,fechaHora,metodoPago)  
VALUES ('pablo@gmail',3,'Standard',TO_DATE('2023-01-30 14:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Credito');

INSERT INTO  Compra (email,idJuego,opComp,fechaHora,metodoPago)  
VALUES ('pablo@gmail',2,'Deluxe',TO_DATE('2023-03-10 10:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Debito');

INSERT INTO  Compra (email,idJuego,opComp,fechaHora,metodoPago)  
VALUES ('pablo@gmail',4,'Deluxe',TO_DATE('2023-02-28 14:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'redCobranza');

INSERT INTO  Compra (email,idJuego,opComp,fechaHora,metodoPago)  
VALUES ('pablo@gmail',1,'Deluxe',TO_DATE('2023-01-10 15:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'redCobranza');

INSERT INTO  Regalo (email,idJuego,opComp,fechaHora,emailDestinatario)  
VALUES ('pablo@gmail',3,'Standard',TO_DATE('2023-01-30 14:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'martin@gmail');

INSERT INTO  Regalo (email,idJuego,opComp,fechaHora,emailDestinatario)  
VALUES ('pablo@gmail',1,'Deluxe',TO_DATE('2023-01-10 15:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'juan@gmail');

INSERT INTO  Regalo (email,idJuego,opComp,fechaHora,emailDestinatario)  
VALUES ('pablo@gmail',2,'Deluxe',TO_DATE('2023-03-10 10:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'juan@gmail');

INSERT INTO  Regalo (email,idJuego,opComp,fechaHora,emailDestinatario)   
VALUES ('pablo@gmail',4,'Deluxe',TO_DATE('2023-02-28 14:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'nicolas@gmail');









