use gradilisteOp;

--zaposljavanje tri radnika
INSERT INTO PocetakRada(JMBG, IdZM, DatumVreme)
VALUES
('1102995710022', 1, getdate()),
('1102995710022', 2, getdate()),
('1102995710022', 3, getdate());

--otpustanje jednog radnika
INSERT INTO KrajRada(JMBG, IdZM, DatumVreme)
VALUES ('1102995710022', 1, getdate());

INSERT INTO Nabavka(PIB, IdMat, IdZM, Kolicina, JedinicnaCena, DatumVreme)
VALUES 
('123', 1, 1, 111, 150.0, getdate()),
('123', 1, 1, 222, 140.0, getdate()),
('123', 2, 1, 333, 200.0, getdate()),
('234', 2, 1, 50, 250.0, getdate());

INSERT INTO Potrosnja(IdN, Kolicina)
VALUES
(1 , 1), 
(1 , 2);

--ovo je za resetovanje, ne izvrsavati uvek!
DELETE FROM PocetakRada WHERE IdPr = 31;
DELETE FROM PocetakRada WHERE IdPr = 32;
DELETE FROM PocetakRada WHERE IdPr = 33;