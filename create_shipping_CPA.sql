DROP DATABASE IF EXISTS shipping;

CREATE DATABASE shipping;

use shipping;

CREATE TABLE Ports (portName VARCHAR(20) NOT NULL, 
	city VARCHAR(15) NOT NULL, 
    country VARCHAR(15) NOT NULL, 
    PRIMARY KEY (portName, city));

CREATE TABLE Ships (shipName VARCHAR(20) NOT NULL PRIMARY KEY, 
    displacement DECIMAL(10, 2) NOT NULL, 
    captainName VARCHAR(15) NOT NULL, 
    crewNumber SMALLINT NOT NULL, 
    homePort VARCHAR(20) NOT NULL, 
    year SMALLINT NOT NULL,
    FOREIGN KEY (homePort) REFERENCES Ports (portName));

CREATE TABLE Containers (containerID VARCHAR(4) NOT NULL, 
    height DECIMAL(6,2) NOT NULL, 
    width DECIMAL(6,2) NOT NULL, 
    length DECIMAL(6,2) NOT NULL, 
    shipID VARCHAR(20), 
    weight DECIMAL(8,2) NOT NULL, 
    PRIMARY KEY (containerID), FOREIGN KEY (shipID) REFERENCES Ships (shipName));