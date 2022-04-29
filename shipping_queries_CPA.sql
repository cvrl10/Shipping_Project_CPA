use shipping;

#Queries 

SELECT shipName, crewNumber
FROM Ships
WHERE crewNumber > 400
ORDER BY crewNumber ASC;

#One (1) query must include an aggregate query with grouping. 
SELECT shipID, COUNT(shipID) AS 'number of containers on ship'
FROM Containers
WHERE shipID IS NOT NULL
GROUP BY shipID;

#One (1) query must include a sub-query.
SELECT containerID
FROM Containers
WHERE weight > (SELECT AVG(weight)
		FROM Containers);
        
#One (1) query must include calculating the volume of a container or group of containers.
SELECT containerID, height*width*length AS volume
FROM Containers
ORDER BY volume ASC;

#One (1) query must include calculating the volume of a container or group of containers.
SELECT shipID, AVG (height*width*length) AS 'Average volume of containers'
FROM Containers
WHERE shipID IS NOT NULL
GROUP BY shipID;

#Five (5) queries must include multi-table JOINS.
SELECT shipName, homePort, city, country
FROM Ships, Ports
WHERE homePort = portName;

#Five (5) queries must include multi-table JOINS.
#Ships and their containers
SELECT shipName, containerID
FROM Ships JOIN Containers ON shipName = shipID;

#Five (5) queries must include multi-table JOINS.
#What ships don't contain cargo
SELECT shipName, captainName, crewNumber
FROM Ships
WHERE shipName NOT IN (SELECT shipName
FROM Ships JOIN Containers ON shipName = shipID);

#Five (5) queries must include multi-table JOINS.
#What is the number of container(s) in each city
SELECT city, COUNT(containerID) AS 'number of containers'
FROM Ships, Ports, Containers
WHERE shipName = shipID AND homePort = portName
GROUP BY city

UNION

SELECT city, 0
FROM Ports
WHERE city NOT IN (SELECT city
	FROM Ships, Ports, Containers
	WHERE shipName = shipID AND homePort = portName);
    
#Five (5) queries must include multi-table JOINS.
#Total crew number in each city
SELECT crewNumber, city
FROM Ships, Ports
WHERE homePort = portName
GROUP BY city;

#Ship with the max displacement
SELECT shipName, homePort, displacement
FROM Ships
WHERE displacement = (SELECT MAX(displacement) FROM Ships);