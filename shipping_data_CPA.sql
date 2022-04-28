use shipping;

#Ports

INSERT INTO Ports VALUES ('Port of Lome', 'Lome', 'Togo');
INSERT INTO Ports VALUES ('Port of Milan', 'Milan', 'Italy');
INSERT INTO Ports VALUES ('Port of Abidjan', 'Abidjan', 'Cote d''Ivoire');
INSERT INTO Ports VALUES ('The Darsena', 'Milan', 'Italy');
INSERT INTO Ports VALUES ('Port of Munich', 'Munich', 'Germany');
INSERT INTO Ports VALUES ('Port Hercules', 'Monaco', 'Monaco');
INSERT INTO Ports VALUES ('Port Barcelona', 'Barcelona', 'Spain');
INSERT INTO Ports VALUES ('Coslada Dry Port', 'Madrid', 'Spain');
INSERT INTO Ports VALUES ('Port of Marseille', 'Marseille', 'France');
INSERT INTO Ports VALUES ('Port of London', 'London', 'England');
    
#Ships

INSERT INTO Ships VALUES ('La pinta', 260000, 'John Terry', 492, 'Port of London', 1998);
INSERT INTO Ships VALUES ('Marseille Maersk', 280000, 'Azpilicueta', 318, 'Port of Marseille', 2012);
INSERT INTO Ships VALUES ('Madrid Maersk', 40000, 'Ramos', 469, 'Coslada Dry Port', 2005);
INSERT INTO Ships VALUES ('Santa Maria', 100000, 'Messi', 520, 'Port Barcelona', 2004);
INSERT INTO Ships VALUES ('Milan Maersk', 30000, 'Maldini', 647, 'Port of Milan', 1984);
INSERT INTO Ships VALUES ('Munich Maersk', 10000, 'Neuer', 308, 'Port of Munich', 2011);
INSERT INTO Ships VALUES ('Ever Glory', 90000, 'Weah', 413, 'The Darsena', 1995);
INSERT INTO Ships VALUES ('Monaco Maersk', 100000, 'Ben Yedder', 91, 'Port Hercules', 2019);
INSERT INTO Ships VALUES ('MSC CI', 110000, 'Didier Drogba', 497, 'Port of Abidjan', 1998);
INSERT INTO Ships VALUES ('Monaco Varna', 40000, 'Adebayor', 448, 'Port of Lome', 2001);

#Containers

INSERT INTO Containers VALUES ('0001', 1000, 1000, 1000, null, 30000);
INSERT INTO Containers VALUES ('0002', 4000, 1000, 1000, 'Marseille Maersk', 15000);
INSERT INTO Containers VALUES ('0015', 4000, 4000, 4000, 'Marseille Maersk', 30000);
INSERT INTO Containers VALUES ('0035', 3000, 3000, 2000, 'MSC CI', 50000);
INSERT INTO Containers VALUES ('0017', 2000, 6000, 3000, 'MSC CI', 70000);

INSERT INTO Containers VALUES ('0010', 8000, 6000, 3000, 'Monaco Varna', 70000);
INSERT INTO Containers VALUES ('0011', 9000, 5000, 5000, 'Ever Glory', 100000);
INSERT INTO Containers VALUES ('0018', 4000, 4000, 4000, 'Marseille Maersk', 30000);
INSERT INTO Containers VALUES ('0025', 3000, 4000, 4000, 'Monaco Varna', 50000);
INSERT INTO Containers VALUES ('0023', 2000, 6000, 3000, 'Munich Maersk', 70000);

INSERT INTO Containers VALUES ('0200', 1000, 1000, 1000, null, 100000);
INSERT INTO Containers VALUES ('0007', 4000, 1000, 1000, 'Madrid Maersk', 15000);
INSERT INTO Containers VALUES ('1000', 4000, 4000, 4000, 'Marseille Maersk', 80000);
INSERT INTO Containers VALUES ('0300', 5000, 5000, 5000, 'Milan Maersk', 150000);
INSERT INTO Containers VALUES ('0117', 2000, 6000, 3000, 'Milan Maersk', 70000);

INSERT INTO Containers VALUES ('CU10', 8000, 6000, 3000, 'Monaco Varna', 20000);
INSERT INTO Containers VALUES ('NO25', 9000, 5000, 5000, 'Ever Glory', 100000);
INSERT INTO Containers VALUES ('ZA15', 4000, 4000, 4000, 'Marseille Maersk', 30000);
INSERT INTO Containers VALUES ('HT10', 3000, 4000, 4000, 'Monaco Varna', 50000);
INSERT INTO Containers VALUES ('BICU', 2000, 6000, 3000, 'Munich Maersk', 70000);