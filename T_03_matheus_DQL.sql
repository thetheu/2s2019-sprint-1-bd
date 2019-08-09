USE T_Gufos

SELECT * FROM Categorias ORDER BY IdCategoria ASC
SELECT * FROM Eventos ORDER BY IdEvento ASC
SELECT * FROM Usuarios ORDER BY IdUsuario ASC
SELECT * FROM Presencas

SELECT E.*, C.*
FROM Eventos AS E
JOIN Categorias AS C
ON E.IdCategoria = C.IdCategoria

SELECT P.*, U.*, E.*
FROM Presencas AS P
JOIN Usuarios AS U
ON P.IdUsuario = U.IdUsuario
JOIN Eventos AS E
ON P.IdEvento = E.IdEvento

SELECT P.*, U.*, E.*, C.*
FROM Presencas AS P
INNER JOIN Usuarios AS U
ON P.IdUsuario = U.IdUsuario
INNER JOIN Eventos AS E
ON P.IdEvento = E.IdEvento
INNER JOIN Categorias AS C
ON E.IdCategoria = C.IdCategoria;
