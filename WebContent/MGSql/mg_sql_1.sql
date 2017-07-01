INSERT INTO MGSales(VIN, Total, Price, TradeIn, LicenseFee, Gasoline, Others, Tax)
	values('1GTGG25V761149521', 467, 400, 0, 15, 0, 0, 52);

INSERT INTO MGSales(VIN, Total, Price, TradeIn, LicenseFee, Gasoline, Others, Tax)
	values('WDDGF8HB8AF409868', 19300, 17000, 0, 90, 0, 0, 2210);	
	
INSERT INTO MGSales(VIN, Total, Price, TradeIn, LicenseFee, Gasoline, Others, Tax)
	values('JTJBK1BA4A2401665', 20300, 17900, 0, 73, 0, 0, 2327);	
	
INSERT INTO MGSales(VIN, Total, Price, TradeIn, LicenseFee, Gasoline, Others, Tax)
	values('KMHGC46E89U025536', 10185, 11000, -2000, 15, 0, 0, 1170);	
	
INSERT INTO MGSales(VIN, Total, Price, TradeIn, LicenseFee, Gasoline, Others, Tax)
	values('KNAFU6A23A5281374', 10400, 9100, 0, 117, 0, 0, 1183);	

INSERT INTO MGSales(VIN, Total, Price, TradeIn, LicenseFee, Gasoline, Others, Tax)
	values('WDDGF4HB6CA644391', 20500, 18000, 0, 160, 0, 0, 2340);	
	
	
	
select * from mgsales;	
	
	
INSERT INTO MGClient (cId, cName, cGender, cAddress, cCity, cProvince, cPostal, cVin)
	values(MGClient_seq.nextval, 'YUN BANG HYUN', 'Male', '3700 ANDERSON ST., W.', 'WHITBY', 'ON', 'L1R3J1', '1GTGG25V761149521');

INSERT INTO MGClient (cId, cName, cGender, cAddress, cCity, cProvince, cPostal, cVin)
	values(MGClient_seq.nextval, 'KIM HYUNG KOOK', 'Male', '2ND FL - 2050 DERRY RD. W.', 'MISSISAUGA', 'ON', 'L5N0B9', 'WDDGF8HB8AF409868');

INSERT INTO MGClient (cId, cName, cGender, cAddress, cCity, cProvince, cPostal, cVin)
	values(MGClient_seq.nextval, 'KIM HYUNG KOOK', 'Male', '2ND FL - 2050 DERRY RD. W.', 'MISSISAUGA', 'ON', 'L5N0B9', 'JTJBK1BA4A2401665');

INSERT INTO MGClient (cId, cName, cGender, cAddress, cCity, cProvince, cPostal, cPhone, cVin)
	values(MGClient_seq.nextval, 'FESTINO ANTONIO', 'Male', '58 ELANA DR.', 'TORONTO', 'ON', 'M3N2C2', '416-741-1423', 'KMHGC46E89U025536');

INSERT INTO MGClient (cId, cName, cGender, cAddress, cCity, cProvince, cPostal, cPhone, cVin)
	values(MGClient_seq.nextval, 'OH SUNGMIN', 'Male', '275-325 BOGERT AVE.', 'TORONTO', 'ON', 'M2N1L8', '416-906-1587', 'KNAFU6A23A5281374');

select * from MGClient;
	
	
	
	
	
	
	
CREATE TABLE MGSales(
	VIN VARCHAR2(30) PRIMARY KEY,
	Total Number(6),
	Price NUMBER(6),
	TradeIn NUMBER(6),
	LicenseFee NUMBER(4),
	Gasoline NUMBER(4),
	Others NUMBER(4),
	Tax NUMBER(5)
);

CREATE TABLE MGClient(
	cId NUMBER(6) PRIMARY KEY,
	cName VARCHAR2(30) NOT NULL,
	cGender VARCHAR2(10),
	cAddress VARCHAR2(40),
	cCity VARCHAR2(20),
	cProvince VARCHAR2(20),
	cPostal VARCHAR2(7),
	cPhone VARCHAR2(12),
	cEmail VARCHAR2(30),
	cVin VARCHAR2(30) REFERENCES MGSales(Vin)
);

create sequence MGClient_seq
	INCREMENT BY 1
	START WITH 100000
	MAXVALUE 499999;
create sequence MGBuyer_seq
	INCREMENT BY 1
	START WITH 500000
	MAXVALUE 999999;
	
	
INSERT INTO MGInventory(VIN, Brand, Model, Year, InDate)
	values('1GTGG25V761149521', 'GMC', ' SAVANA WHITE', '2006', '20150926');	

INSERT INTO MGInventory(VIN, Brand, Model, Year, InDate)
	values('WDDGF8HB8AF409868', 'MERCEDEZ', 'C350 WHITE', '2010', '20151212');	

INSERT INTO MGInventory(VIN, Brand, Model, Year, InDate)
	values('JTJBK1BA4A2401665', 'LEXUS', 'RX350 WHITE', '2010', '20160124');	

INSERT INTO MGInventory(VIN, Brand, Model, Year, InDate)
	values('KMHGC46E89U025536', 'HYUNDAI', 'GENESIS GRAY', '2009', '20130501');	
	
INSERT INTO MGInventory(VIN, Brand, Model, Year, InDate)
	values('KNAFU6A23A5281374', 'KIA', 'FEX BLACK', '2010', '20151201');	
	
select * from mginventory;
	
	
	
CREATE TABLE MGInventory(
	VIN VARCHAR2(30) PRIMARY KEY,
	Brand VARCHAR2(20),
	Model VARCHAR2(20),
	Year NUMBER(4),
	Mileage NUMBER(6),
	InDate DATE
);

INSERT INTO MGBuyer(bId, bName, bVin)
	values(MGBuyer_seq.nextval, ' ', '1GTGG25V761149521');

CREATE TABLE MGBuyer(
	bId NUMBER(6) PRIMARY KEY,
	bName VARCHAR2(30) NOT NULL,
	bGender VARCHAR2(10),
	bAddress VARCHAR2(40),
	bCity VARCHAR2(20),
	bProvince VARCHAR2(20),
	bPostal VARCHAR2(7),
	bPhone VARCHAR2(12),
	bEmail VARCHAR2(30),
	bVin VARCHAR2(30) REFERENCES MGInventory(Vin)
);

INSERT INTO MGPurchase(VIN, Total, bId)
	values('1GTGG25V761149521', 339, 500000);


CREATE TABLE MGPurchase(
	VIN VARCHAR2(30) PRIMARY KEY,
	Total NUMBER(6),
	Price NUMBER(6),
	BuyerFee NUMBER(4),
	Others NUMBER(4),
	BuyerAdj NUMBER(4),
	Tax NUMBER(5),
	bId NUMBER(6) REFERENCES MGBuyer(bId)
);



SELECT * FROM MGINVENTORY;

DROP TABLE EMPLOYEES;
CREATE TABLE Employees(
	ID VARCHAR2(20) PRIMARY KEY,
	PW VARCHAR2(20),
	Name VARCHAR2(20));

INSERT INTO Employees(ID, PW, Name) VALUES('mgmotors', 'dufferin4630', 'admin');




