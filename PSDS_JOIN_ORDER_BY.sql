CREATE TABLE DW_Mahasiswa 
(	
	NIM		VARCHAR (10),
	Nama	VARCHAR (30)
)

INSERT INTO DW_Mahasiswa
VALUES
("2100015049","Wisnu Catur R"),
("2100015041", "Sindy Maranekan"),
("1800015053",NULL),
("2100015037",NULL),
("2215015035","Hasan Darmawan"),
("2100015051","Saiful Andhika")

SELECT * FROM DW_Mahasiswa

CREATE TABLE DW_Awal
(
	NIM			VARCHAR (10),
	Daerah_Asal	VARCHAR (25)
)

INSERT INTO DW_Awal
VALUES
("2100015049","Pasuruan"),("2100015041","Oku Timur"),("1800015053","Ciamis"),("2100015037","Bandung"),("2100015030",NULL),("2100015002",NULL),
("2100015030","Kudus"),
("2100015002","Bogor")

SELECT * FROM DW_Awal

SELECT M.NIM, M.Nama, A.Daerah_Asal
FROM DW_Mahasiswa M
LEFT JOIN DW_Awal A
ON M.NIM = A.NIM
ORDER BY A.Daerah_Asal ASC

SELECT M.NIM, M.Nama, A.Daerah_Asal
FROM DW_Mahasiswa M
RIGHT JOIN DW_Awal A
ON M.NIM = A.NIM;

SELECT A.NIM, M.Nama, A.Daerah_Asal
FROM DW_Mahasiswa M
INNER JOIN DW_Awal A
ON M.NIM = A.NIM
ORDER BY M.NIM

SELECT A.NIM, M.Nama, A.Daerah_Asal
FROM DW_Mahasiswa M
FULL OUTER JOIN DW_Awal A
ON M.NIM = A.NIM
ORDER BY M.NIM

SELECT A.NIM, M.Nama, A.Daerah_Asal
FROM DW_Mahasiswa M
FULL JOIN DW_Awal A
ON M.NIM = A.NIM
ORDER BY M.NIM