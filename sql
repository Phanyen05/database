create database bookingg;
use bookingg;
drop database bookingg;
CREATE TABLE CUSTOMER1(
		ID numeric,
		NAME varchar(500),
		DOB date,
		GENDER varchar(500),
		NATIONALITY varchar(500) not null,
		ADDRESS varchar(500),
		PRIMARY KEY (ID)
		);

CREATE TABLE PAYMENT_CARD (
    CardNumber varchar (500),  
    Holder’sName varchar (500),
    Expired_Date date, 
	ID numeric,
    PRIMARY KEY (CardNumber),
	FOREIGN KEY (ID) REFERENCES CUSTOMER1(ID)  
    );

CREATE TABLE CUSTOMER_ACC(
		DisplayName varchar(500),
        Password varchar(20),
        Email varchar(500),
        ID numeric,
        PRIMARY KEY (DisplayName),
        FOREIGN KEY (ID) REFERENCES CUSTOMER1(ID)  
       );

CREATE TABLE BOOKING(
    BookingId numeric,
    DisplayName varchar(500),
    CheckInDate date,
    CheckOutDate date,
    Primary Key (BookingID, DisplayName),
	Foreign Key (DisplayName) references CUSTOMER_ACC (DisplayName)
    );

CREATE TABLE PURPOSE (
	BookingID numeric,
	DisplayName varchar(500),
	Work varchar(500),
	Others varchar(500),
	Primary Key (BookingID, DisplayName),
    Foreign Key (BookingID) references BOOKING (BookingID),
    Foreign Key (DisplayName) references CUSTOMER_ACC (DisplayName)
);

CREATE TABLE AREA (
	PlaceID numeric,
    BookingID numeric,
	DisplayName varchar(500),
    Description varchar (500),
    Primary Key (PlaceID, BookingID, DisplayName),
    Foreign Key (BookingID) references BOOKING (BookingID),
	Foreign Key (DisplayName) references CUSTOMER_ACC (DisplayName)
);

CREATE TABLE HOTEL (
	HotelName varchar (200),
	location varchar(500), 
    No_empty_Room numeric,
    Convenience varchar (500),
    Rating varchar (30),
	PlaceID numeric,
	BookingID numeric,
	DisplayName varchar(500),
    Primary Key (HotelName, Location),
	Foreign Key (BookingID) references BOOKING (BookingID),
    Foreign Key (DisplayName) references CUSTOMER_ACC (DisplayName),
	Foreign Key (PlaceID) references AREA (PlaceID)
);

CREATE TABLE ROOM (
	HotelName varchar (200),
	location varchar(500), 
    RoomNumber varchar (50),
    NoAdult int,
    NoChhildren int,
    Price float,
    Primary Key (HotelName, Location, RoomNumber),
	Foreign Key (HotelName, Location) references HOTEL(HotelName, Location)
);
  
 

CREATE TABLE SERVICES (
	ServiceName varchar (50),
    Price float,
    Decription varchar(500),
    Primary Key (ServiceName)
   );

CREATE TABLE EXTRA_PAYMENT (
	HotelName varchar (200),
	location varchar(500), 
	RoomNumber varchar (10),
    ServiceName varchar(50),
    Quantity varchar (500),
	Primary Key (HotelName, Location, RoomNumber, ServiceName),
	Foreign Key (HotelName, Location, RoomNumber) references ROOM (HotelName, Location, RoomNumber),
	Foreign Key (ServiceName) references SERVICES (ServiceName)
);

INSERT INTO CUSTOMER1 (ID, NAME, DOB, GENDER, NATIONALITY, ADDRESS) values 
(2,"Ernest Barnes","1987-07-28,","MALE","UK","Residential Single Family"),
(3,"Andrea Baker","1987-07-28,","FEMALE","US","99A Single Family"), 
(4,"Rebecca Parker","1977-07-28,","","UK","195Street Family"),
(5,"Laura Murray","1957-07-28,","MALE","UK","4319 E Cricket KNL"),
(6,"Linda Hines","1967-07-28,","FEMALE","UK"," 47408Bloomington "),
(7,"Jasmine Fletcher","1957-07-28,","","UK","46 Church Lane LondonN45 9Z"),
(8,"Dylan Rangel","1937-07-28,","MALE","UK","9001 New StreetLondon"),
(9,"William Velez","1967-09-18,","MALE","UK","800 Kings RoadLondon"),
(10,"Steven Murphy","1987-07-9,","MALE","UK",""),
(11,"Michael Moore","1987-07-28,","FEMALE","UK","(901) 324-31273448 Ile De France St #242Fort Wainwright, Alaska(AK), 99703"),
(12,"Priscilla Collins PhD","1987-07-28,","MALE","UK","907) 220-1980257 Fireweed LnKetchikan, Alaska(AK), 99901"),
(13,"Laurie Smith","1987-07-28,","MALE","UK","95 School LaneLondo"),
(15,"Dylan Rangel","1987-07-28,","","UK"," New StreetLondon"),
(16,"Robert Chung","1992-05-07","","US","Ridge Top Cir Anchorage, Alaska(AK),"),
(21,"John Matthews","1987-07-28,","MALE","UK","Anchorage, Alaska(AK),"),
(17,"Stephanie Schmidt","1987-07-28,","MALE","UK","Seward, Alaska(AK),Seward, Alaska(AK), 99664"),
(18,"Dr. Victor Martin","1987-07-28,","MALE","UK","1 County Government Education Prog"),
(19,"Edward Torress","1987-07-28,","MALE","UK","2625 Townsgate Rd Westlake Village, California(CA),"),
(20,"Casey Thomass","1987-07-28,","MALE","UK","Residential Single Family"),
(22,"Casey Thomass","1987-07-28,","FEMALE","UK"," Single Family"),
(23,"Casey Thomass","1987-07-28,","FEMALE","UK"," Family");
 
INSERT INTO PAYMENT_CARD (CardNumber, Holder’sName, Expired_Date, ID) VALUES
("************9157","Ernest Barnes","2015-07-05,",23);
INSERT INTO PAYMENT_CARD (CardNumber, Holder’sName, Expired_Date, ID) VALUES
("************3734","Andrea Baker","2021-06-09,",2);
INSERT INTO PAYMENT_CARD (CardNumber, Holder’sName, Expired_Date, ID) VALUES	
("************5891","Andrea Baker","2021-06-09,",3);
INSERT INTO PAYMENT_CARD (CardNumber, Holder’sName, Expired_Date, ID) VALUES
("************5498","Laura Murray","2021-09-07,",4);
INSERT INTO PAYMENT_CARD (CardNumber, Holder’sName, Expired_Date, ID) VALUES
("************9263","Linda Hines","2019-07-19,",5);
INSERT INTO PAYMENT_CARD (CardNumber, Holder’sName, Expired_Date, ID) VALUES
("************6994","Jasmine Fletcher","2017-09-08,",6);
INSERT INTO PAYMENT_CARD (CardNumber, Holder’sName, Expired_Date, ID) VALUES
("************8729","Dylan Rangel","2018-07-06,",7);
INSERT INTO PAYMENT_CARD (CardNumber, Holder’sName, Expired_Date, ID) VALUES
("************3639","William Velez","2021-05-04,",8);
INSERT INTO PAYMENT_CARD (CardNumber, Holder’sName, Expired_Date, ID) VALUES
("************9190","Steven Murphy","2021-05-04,",9);
INSERT INTO PAYMENT_CARD (CardNumber, Holder’sName, Expired_Date, ID) VALUES
("************4642","Michael Moore","2021-05-04,",10);
INSERT INTO PAYMENT_CARD (CardNumber, Holder’sName, Expired_Date, ID) VALUES
("************5450","Priscilla Collins PhD","2021-05-04,",11);
INSERT INTO PAYMENT_CARD (CardNumber, Holder’sName, Expired_Date, ID) VALUES
("************8518","Laurie Smith","2015-07-05,",12);
INSERT INTO PAYMENT_CARD (CardNumber, Holder’sName, Expired_Date, ID) VALUES
("************9767","Casey Thomas","2018-07-06,",13);
INSERT INTO PAYMENT_CARD (CardNumber, Holder’sName, Expired_Date, ID) VALUES
("************7719","Rachel Friedman","2018-07-06,",22);
INSERT INTO PAYMENT_CARD (CardNumber, Holder’sName, Expired_Date, ID) VALUES
("************7612","Edward Torres","2018-07-06,",15);
INSERT INTO PAYMENT_CARD (CardNumber, Holder’sName, Expired_Date, ID) VALUES
("************6279","Samuel Zavala","2018-07-06,",16);
INSERT INTO PAYMENT_CARD (CardNumber, Holder’sName, Expired_Date, ID) VALUES
("************8950","Dr. Victor Martin","2015-07-08,",17);
INSERT INTO PAYMENT_CARD (CardNumber, Holder’sName, Expired_Date, ID) VALUES
("************1179","Sara Lee","2015-11-05,",18);
INSERT INTO PAYMENT_CARD (CardNumber, Holder’sName, Expired_Date, ID) VALUES
("************1811","Curtis Rodriguez","2019-07-05,",19);
INSERT INTO PAYMENT_CARD (CardNumber, Holder’sName, Expired_Date, ID) VALUES
("************18191","Curtis Rodriguez","2019-07-05,",21);
INSERT INTO PAYMENT_CARD (CardNumber, Holder’sName, Expired_Date, ID) VALUES
("************9111","Rodriguez","2021-01-05,",20);


INSERT INTO customer_acc (DisplayName, Password, Email, ID) values 
("a","******","Robert.Chung47@yandex.com",2),
("b","******","MGarcia16@comcast.net",3),
("c","******","BrandonTaylor@hotmail.com",4),
("d","******","Angie_Sanchez@att.com",5),
("e","******","King_Alexis70@hotmail.com",6),
("f","******","MichaelDavidson82@att.com",7),
("g","******","JaimeFlynn29@gmail.com",8),
("h","******","Mrs..W61@yandex.com",9),
("j","******","Heather.H@xfinity.com",10),
("k","******","Wilson.Diamond@comcast.net",11),
("l","******","Williams_Paul@xfinity.com",12),
("m","******","Reginald_C57@outlook.com",13),
("n","******","Willie_S@yahoo.com",15),
("o","******","Alex.B@zoho.com",16),
("p","******","Virginia.H@aol.com",17),
("q","******","John_Smith@xfinity.com",18),
("r","******","JBarton@hotmail.com",19),
("u","******","Richard.Holt@hotmail.com",20),
("i","******","Amy.Green56@gmail.com",21),
("y","******","Perez.Kimberly84@hotmail.com",22),
("t","******","CArmstrong@mail.com",23);


insert into booking (BookingId, DisplayName, CheckInDate, CheckOutDate) values 
("100","a", "2020-06-05,", " 2020-06-07,");
insert into booking (BookingId, DisplayName, CheckInDate, CheckOutDate) values 
("101","b"," 2020-06-06,", "2020-06-09,");
insert into booking (BookingId, DisplayName, CheckInDate, CheckOutDate) values 
("102","c"," 2020-06-07,", "2020-06-09,");
insert into booking (BookingId, DisplayName, CheckInDate, CheckOutDate) values 
("103","d","2020-06-09,", " 2020-06-19,");
insert into booking (BookingId, DisplayName, CheckInDate, CheckOutDate) values 
("104","e"," 2020-06-09,", "2020-07-09,");
insert into booking (BookingId, DisplayName, CheckInDate, CheckOutDate) values 
("105","f"," 2021-6-08,", "2021-06-14,");
insert into booking (BookingId, DisplayName, CheckInDate, CheckOutDate) values 
("106","g"," 2020-06-09,", "2020-06-13,");
insert into booking (BookingId, DisplayName, CheckInDate, CheckOutDate) values 
("107","h"," 2019-06-09,", " 2020-06-09,");
insert into booking (BookingId, DisplayName, CheckInDate, CheckOutDate) values 
("108","j","2021-03-05  ,", " 2021-03-08,");
insert into booking (BookingId, DisplayName, CheckInDate, CheckOutDate) values 
("109","k","2021-03-07  ,", " 2021-06-09,");
insert into booking (BookingId, DisplayName, CheckInDate, CheckOutDate) values 
("110","l","2020-05-07  ,", "2020-07-04,");
insert into booking (BookingId, DisplayName, CheckInDate, CheckOutDate) values 
("111","m","2020-03-09  ,", " 2020-04-09,");
insert into booking (BookingId, DisplayName, CheckInDate, CheckOutDate) values 
("112","n"," 2020-06-09,", "2020-08-13,");
insert into booking (BookingId, DisplayName, CheckInDate, CheckOutDate) values 
("113","o"," 2020-01-02,", "2020-04-30,");
insert into booking (BookingId, DisplayName, CheckInDate, CheckOutDate) values 
("114","p","2020-12-24 ,", "2021-01-05,");
insert into booking (BookingId, DisplayName, CheckInDate, CheckOutDate) values 
("115","q"," 2020-12-24,", " 2021-01-07,");
insert into booking (BookingId, DisplayName, CheckInDate, CheckOutDate) values 
("116","r"," 2020-12-25,", "2021-01-05,");
insert into booking (BookingId, DisplayName, CheckInDate, CheckOutDate) values 
("117","u","2020-12-25 ,", " 2021-06-09,");
insert into booking (BookingId, DisplayName, CheckInDate, CheckOutDate) values 
("118","i"," 2020-12-24,", "2021-06-09,");
insert into booking (BookingId, DisplayName, CheckInDate, CheckOutDate) values 
("119","y"," 2020-12-24,", "2021-06-09,");



insert into purpose(BookingID, DisplayName, Work, Others) values 
("100","a","x",""),
("101","b","x","x"),
("102","c","","x"),
("103","d","x","x"),
("104","e","","x"),
("105","f","","x"),
("106","g","",""),
("107","h","x",""),
("108","j","",""),
("109","k","","x"),
("110","l","","x"),
("111","m","x",""),
("112","n","","x"),
("113","o","",""),
("114","p","","x"),
("115","q","x",""),
("116","r","","x"),
("117","u","x",""),
("118","i","","x"),
("119","y","x","");




insert into area (PlaceID, BookingID, DisplayName, Description) values
(22000,119,"a","Tuyên Quang");
insert into area (PlaceID, BookingID, DisplayName, Description) values
(85000,118,"b","Vĩnh Long");
insert into area (PlaceID, BookingID, DisplayName, Description) values
(15000,117,"c","Vĩnh Phúc"),
(33000,116,"d","Yên Bái"),
(20000,115,"e","Hà Giang"),
(10000,114,"f","Hà Nội"),
(3000,113,"g","Hải Dương"),
(36000,112,"h","Hòa Bình"),
(57000,111,"j","Khánh Hoà"),
(43000,110,"k","Nghệ An"),
(8000,109,"l","Ninh Bình"),
(56000,108,"m","Phú Yên"),
(47000,107,"n","Quảng Bình"),
(34000,106,"o","Sơn La"),
(90000,105,"p","An Giang"),
(78000,104,"q","Bà Rịa-Vũng Tàu"),
(97000,103,"r","Bạc Liêu"),
(23000,102,"u","Bắc Kạn"),
(26000,101,"i","Bắc Giang"),
(16000,100,"y","Bắc Ninh");


insert into hotel (HotelName, Location, No_empty_Room, Convenience, Rating, PlaceID, BookingID, DisplayName) values
("Trang Trang Boutique Hotel","Hai Nham Hamlet, Ninh Hai Commune, Ninh Binh, Vietnam ","10","Garden view","8.9*","8000","100","a");
insert into hotel (HotelName, Location, No_empty_Room, Convenience, Rating, PlaceID, BookingID, DisplayName) values
("Hanoi Sunshine Hotel","98 Pham Huy Thong, ha noi","2","Mountain view","10*","10000","101","b");
insert into hotel (HotelName, Location, No_empty_Room, Convenience, Rating, PlaceID, BookingID, DisplayName) values
("Muong Thanh Grand Tuyen Quang Hotel","1049 Ma May Str, Hoan Kiem District, Hoan Kiem, Hanoi, Vietnam","4","Pool with a view","9.0*","10000","102","a");
insert into hotel (HotelName, Location, No_empty_Room, Convenience, Rating, PlaceID, BookingID, DisplayName) values
("Lavender Hotel","87 Hang Hom Street, Hoan Kiem, Hanoi, Vietnam","9","Pool with a view,Barbecue","5.0*","10000","103","b");
insert into hotel (HotelName, Location, No_empty_Room, Convenience, Rating, PlaceID, BookingID, DisplayName) values
("Royal Palace Hotel","2 Duong Dong, Phu Quoc","2","Free WiFi","8.9*","90000","104","a");
insert into hotel (HotelName, Location, No_empty_Room, Convenience, Rating, PlaceID, BookingID, DisplayName) values
("Nam Phong Hotel Ham Yen","An Thoi, Phu Quoc","15","Minibar,Safety deposit box","9.6*","90000","105","b");
insert into hotel (HotelName, Location, No_empty_Room, Convenience, Rating, PlaceID, BookingID, DisplayName) values
("Vu Linh Homestay"," Group 30 Hamlet Cua Lap Phu Quoc District, Kien Giang Province, Duong Dong, Phu Quoc, Vietnam","25","Pool with a view,Barbecue,Socket near the bed","7.9*","90000","106","a");
insert into hotel (HotelName, Location, No_empty_Room, Convenience, Rating, PlaceID, BookingID, DisplayName) values
("Pài Bjooc homestay","9 Chùa Ông, Cửa Lấp xã Dương Tơ, Duong Dong, Phu Quoc, Vietnam","30","Electric kettle","5*","90000","107","c");
insert into hotel (HotelName, Location, No_empty_Room, Convenience, Rating, PlaceID, BookingID, DisplayName) values
("Le Forest Resort","Khu Bảo tồn Vân Long, Xã Gia Vân, Huyện Gia Viễn, Ninh Bình 430000, Việt Nam","11","Outdoor dining area","5.9*","8000","108","d");
insert into hotel (HotelName, Location, No_empty_Room, Convenience, Rating, PlaceID, BookingID, DisplayName) values
("Hong Hao Hostel and Motorbikes","3, Xóm Hòa Bình, Ninh Hai, Việt Nam","1","Outdoor dining area","9.9*","8000","109","d");
insert into hotel (HotelName, Location, No_empty_Room, Convenience, Rating, PlaceID, BookingID, DisplayName) values
("Lalita Boutique Hotel & Spa Ninh Binh","Thôn Văn Lâm, Ninh Hai 430000, Việt Nam","10","Outdoor dining area","10*","8000","111","b");
insert into hotel (HotelName, Location, No_empty_Room, Convenience, Rating, PlaceID, BookingID, DisplayName) values
("Chez Beo Homestay","Xóm Đại Đồng, Đội 1, Thôn Văn Lâm, Ninh Hai 430000, Việt Nam","6","Outdoor dining area","8.6*","8000","112","c");
insert into hotel (HotelName, Location, No_empty_Room, Convenience, Rating, PlaceID, BookingID, DisplayName) values
("Mountain Side Homestay & Cafe","104 Ma May Str, Hoan Kiem District, Hoan Kiem, Hanoi, Vietnam","3","Outdoor dining area","7.9*","10000","113","d");
insert into hotel (HotelName, Location, No_empty_Room, Convenience, Rating, PlaceID, BookingID, DisplayName) values
("SECRET GARDEN","No 3, Van Lam, Ninh Hai, Hoa Lu, Ninh Binh, Vietnam","2","Outdoor dining area","6.9*","8000","114","m");
insert into hotel (HotelName, Location, No_empty_Room, Convenience, Rating, PlaceID, BookingID, DisplayName) values
("Mai Chau Xanh Bungalow","2 Bản Lác, Mai Châu, Việt Nam","3","Safety deposit box","6.9*","36000","115","n");
insert into hotel (HotelName, Location, No_empty_Room, Convenience, Rating, PlaceID, BookingID, DisplayName) values
("Mai Chau Green Rice Field Hotel","1 Bản Lác số 1A, Mai Châu, Việt Nam","4","Socket near the bed","6.9*","36000","116","b");
insert into hotel (HotelName, Location, No_empty_Room, Convenience, Rating, PlaceID, BookingID, DisplayName) values
("mai Chau Dreams Homestay","Bản Lác - Pom Coong, Mai Châu, Việt Nam ","5","Seating Area","8.1*","36000","117","e");
insert into hotel (HotelName, Location, No_empty_Room, Convenience, Rating, PlaceID, BookingID, DisplayName) values
("Mai Chau Ecolodge","Na Thia Village, Na Phon Commune, Mai Châu, Việt Nam ","1","TV","8.9*","36000","118","c");
insert into hotel (HotelName, Location, No_empty_Room, Convenience, Rating, PlaceID, BookingID, DisplayName) values
("Hoa Dao Hotel","88 Thinh Ward - Comercial Area, Hòa Bình, Việt Nam ","7","Entire unit wheelchair accessible","9.9*","36000","119","i");
insert into hotel (HotelName, Location, No_empty_Room, Convenience, Rating, PlaceID, BookingID, DisplayName) values
("HANZ Regal Hotel Hanoi","72, Ninh Hai 430000, Việt Nam","0","Outdoor dining area","8.9*","8000","110","a");


insert into room (HotelName, location, RoomNumber, NoAdult, NoChhildren, Price) values
("Trang Trang Boutique Hotel","Hai Nham Hamlet, Ninh Hai Commune, Ninh Binh, Vietnam ","29","16","0","144.895");
insert into room (HotelName, location, RoomNumber, NoAdult, NoChhildren, Price) values
("Hanoi Sunshine Hotel","98 Pham Huy Thong, ha noi","30","20","0","143.88");
insert into room (HotelName, location, RoomNumber, NoAdult, NoChhildren, Price) values
("Muong Thanh Grand Tuyen Quang Hotel","1049 Ma May Str, Hoan Kiem District, Hoan Kiem, Hanoi, Vietnam","30","20","5","141.4");
insert into room (HotelName, location, RoomNumber, NoAdult, NoChhildren, Price) values
("Lavender Hotel","87 Hang Hom Street, Hoan Kiem, Hanoi, Vietnam","19","11","7","143.25");
insert into room (HotelName, location, RoomNumber, NoAdult, NoChhildren, Price) values
("Royal Palace Hotel","2 Duong Dong, Phu Quoc","20","14","9","144.81");
insert into room (HotelName, location, RoomNumber, NoAdult, NoChhildren, Price) values
("Nam Phong Hotel Ham Yen","An Thoi, Phu Quoc","7","14","3","144.1781");
insert into room (HotelName, location, RoomNumber, NoAdult, NoChhildren, Price) values
("Vu Linh Homestay"," Group 30 Hamlet Cua Lap Phu Quoc District, Kien Giang Province, Duong Dong, Phu Quoc, Vietnam","27","7","1","144.215");
insert into room (HotelName, location, RoomNumber, NoAdult, NoChhildren, Price) values
("Pài Bjooc homestay","9 Chùa Ông, Cửa Lấp xã Dương Tơ, Duong Dong, Phu Quoc, Vietnam","30","5","0","142.15");
insert into room (HotelName, location, RoomNumber, NoAdult, NoChhildren, Price) values
("Le Forest Resort","Khu Bảo tồn Vân Long, Xã Gia Vân, Huyện Gia Viễn, Ninh Bình 430000, Việt Nam","22","7","2","142.24");
insert into room (HotelName, location, RoomNumber, NoAdult, NoChhildren, Price) values
("Hong Hao Hostel and Motorbikes","3, Xóm Hòa Bình, Ninh Hai, Việt Nam","11","9","3","142.21");
insert into room (HotelName, location, RoomNumber, NoAdult, NoChhildren, Price) values
("Lalita Boutique Hotel & Spa Ninh Binh","Thôn Văn Lâm, Ninh Hai 430000, Việt Nam","7","5","0","141.51");
insert into room (HotelName, location, RoomNumber, NoAdult, NoChhildren, Price) values
("Chez Beo Homestay","Xóm Đại Đồng, Đội 1, Thôn Văn Lâm, Ninh Hai 430000, Việt Nam","8","5","0","139.2");
insert into room (HotelName, location, RoomNumber, NoAdult, NoChhildren, Price) values
("Mountain Side Homestay & Cafe","104 Ma May Str, Hoan Kiem District, Hoan Kiem, Hanoi, Vietnam","9","6","0","141.0401");
insert into room (HotelName, location, RoomNumber, NoAdult, NoChhildren, Price) values
("SECRET GARDEN","No 3, Van Lam, Ninh Hai, Hoa Lu, Ninh Binh, Vietnam","12","3","0","141.81");
insert into room (HotelName, location, RoomNumber, NoAdult, NoChhildren, Price) values
("Mai Chau Xanh Bungalow","2 Bản Lác, Mai Châu, Việt Nam","15","2","0","142.56");
insert into room (HotelName, location, RoomNumber, NoAdult, NoChhildren, Price) values
("Mai Chau Green Rice Field Hotel","1 Bản Lác số 1A, Mai Châu, Việt Nam","15","1","0","142.72");
insert into room (HotelName, location, RoomNumber, NoAdult, NoChhildren, Price) values
("mai Chau Dreams Homestay","Bản Lác - Pom Coong, Mai Châu, Việt Nam ","13","5","0","138.37");
insert into room (HotelName, location, RoomNumber, NoAdult, NoChhildren, Price) values
("Mai Chau Ecolodge","Na Thia Village, Na Phon Commune, Mai Châu, Việt Nam ","22","6","0","139.36");
insert into room (HotelName, location, RoomNumber, NoAdult, NoChhildren, Price) values
("Hoa Dao Hotel","88 Thinh Ward - Comercial Area, Hòa Bình, Việt Nam ","11","7","0","138.27");
insert into room (HotelName, location, RoomNumber, NoAdult, NoChhildren, Price) values
("HANZ Regal Hotel Hanoi","72, Ninh Hai 430000, Việt Nam","10","8","0","500");

  
select *from room;
select *from booking;
select *from area;
select *from customer1;
select *From customer_acc;
select *from hotel;
select *from purpose;
select *from extra_payment;
select *from payment_Card;
select *from services;


insert into services (ServiceName, Price, Decription) values 
("SILVER SERVICE STYLE","700"," server moves counter-clockwise while serving food"),
(" AMERICAN SERVICE STYLE","4500","dishes are neatly plated in the kitchen by the kitchen staff and placed at the guest’s cover from the right-hand side"),
("Robotic Service ","700000","Casino's and Luxury Cruise Liners"),
("BUFFET SERVICE STYLE","45000","self-service"),
("FRENCH SERVICE STYLE","90000","Family service"),
("Snak Bar Service","12357"," Tall stool is placed on a counter "),
("RUSSIAN SERVICE STYLE","3456","elaborate service "),
("GUERIDON SERVICE STYLE","7890","Trolley service"),
("plate service","100","used in Canteens, Industries, Staff Cafeterias"),
("Sngle Point Service","6700","guest pays for the food and beverage over the counter."),
("TRAY SERVICE STYLE","200","rooms/beds/seats by waiters."),
("SELF SERVICE","135","simplest form of service method where"),
("CAFETERIA SERVICE","20","raditional Cafeteria Service"),
("Breakfast","50","open-buffet breakfast and is directly accessible from guestroom corridors."),
("Parking","500"," car park and guests can easily reach the shopping mall by using the elevators"),
("Immediate Vicinity","1","Banks and ATM Machines"),
("Room Service","50"," provides 24-hour room service."),
("Nature and Types of Services","340","provided in the guest room"),
("Mobile Pantries ","200"," food preparation pantries installed in service elevators."),
("Blue Plate Service ","130","Normally the table and dining area is small in service.");

select *from extra_payment;


insert into EXTRA_PAYMENT( HotelName, location, RoomNumber, ServiceName, Quantity) values
("Trang Trang Boutique Hotel","Hai Nham Hamlet, Ninh Hai Commune, Ninh Binh, Vietnam ","29","SILVER SERVICE STYLE","30"); 
insert into EXTRA_PAYMENT( HotelName, location, RoomNumber, ServiceName, Quantity) values
("Hanoi Sunshine Hotel","98 Pham Huy Thong, ha noi","30"," AMERICAN SERVICE STYLE","40");
insert into EXTRA_PAYMENT( HotelName, location, RoomNumber, ServiceName, Quantity) values
("Lavender Hotel","87 Hang Hom Street, Hoan Kiem, Hanoi, Vietnam","19","BUFFET SERVICE STYLE","1000");
insert into EXTRA_PAYMENT( HotelName, location, RoomNumber, ServiceName, Quantity) values
("Royal Palace Hotel","2 Duong Dong, Phu Quoc","20","FRENCH SERVICE STYLE","400");
insert into EXTRA_PAYMENT( HotelName, location, RoomNumber, ServiceName, Quantity) values
("Nam Phong Hotel Ham Yen","An Thoi, Phu Quoc","7","Snak Bar Service","300");
insert into EXTRA_PAYMENT( HotelName, location, RoomNumber, ServiceName, Quantity) values
("Vu Linh Homestay"," Group 30 Hamlet Cua Lap Phu Quoc District, Kien Giang Province, Duong Dong, Phu Quoc, Vietnam","27","RUSSIAN SERVICE STYLE","250");
insert into EXTRA_PAYMENT( HotelName, location, RoomNumber, ServiceName, Quantity) values
("Pài Bjooc homestay","9 Chùa Ông, Cửa Lấp xã Dương Tơ, Duong Dong, Phu Quoc, Vietnam","30","GUERIDON SERVICE STYLE","400");
insert into EXTRA_PAYMENT( HotelName, location, RoomNumber, ServiceName, Quantity) values
("Le Forest Resort","Khu Bảo tồn Vân Long, Xã Gia Vân, Huyện Gia Viễn, Ninh Bình 430000, Việt Nam","22","Breakfast","50");
insert into EXTRA_PAYMENT( HotelName, location, RoomNumber, ServiceName, Quantity) values
("Hong Hao Hostel and Motorbikes","3, Xóm Hòa Bình, Ninh Hai, Việt Nam","11","Parking","7");
insert into EXTRA_PAYMENT( HotelName, location, RoomNumber, ServiceName, Quantity) values
("Lalita Boutique Hotel & Spa Ninh Binh","Thôn Văn Lâm, Ninh Hai 430000, Việt Nam","7","Immediate Vicinity","25");
insert into EXTRA_PAYMENT( HotelName, location, RoomNumber, ServiceName, Quantity) values
("Chez Beo Homestay","Xóm Đại Đồng, Đội 1, Thôn Văn Lâm, Ninh Hai 430000, Việt Nam","8","Room Service","70");
insert into EXTRA_PAYMENT( HotelName, location, RoomNumber, ServiceName, Quantity) values
("Mountain Side Homestay & Cafe","104 Ma May Str, Hoan Kiem District, Hoan Kiem, Hanoi, Vietnam","9","Nature and Types of Services","45");
insert into EXTRA_PAYMENT( HotelName, location, RoomNumber, ServiceName, Quantity) values
("SECRET GARDEN","No 3, Van Lam, Ninh Hai, Hoa Lu, Ninh Binh, Vietnam","12","Mobile Pantries ","200");
insert into EXTRA_PAYMENT( HotelName, location, RoomNumber, ServiceName, Quantity) values
("Mai Chau Xanh Bungalow","2 Bản Lác, Mai Châu, Việt Nam","15","Blue Plate Service ","900");
insert into EXTRA_PAYMENT( HotelName, location, RoomNumber, ServiceName, Quantity) values
("Mai Chau Green Rice Field Hotel","1 Bản Lác số 1A, Mai Châu, Việt Nam","15","Breakfast","500");
insert into EXTRA_PAYMENT( HotelName, location, RoomNumber, ServiceName, Quantity) values
("mai Chau Dreams Homestay","Bản Lác - Pom Coong, Mai Châu, Việt Nam ","13","Parking","50");
insert into EXTRA_PAYMENT( HotelName, location, RoomNumber, ServiceName, Quantity) values
("Mai Chau Ecolodge","Na Thia Village, Na Phon Commune, Mai Châu, Việt Nam ","22","Immediate Vicinity","37");
insert into EXTRA_PAYMENT( HotelName, location, RoomNumber, ServiceName, Quantity) values
("Hoa Dao Hotel","88 Thinh Ward - Comercial Area, Hòa Bình, Việt Nam ","11","Room Service","70");
insert into EXTRA_PAYMENT( HotelName, location, RoomNumber, ServiceName, Quantity) values
("HANZ Regal Hotel Hanoi","72, Ninh Hai 430000, Việt Nam","10","Nature and Types of Services","40");

a. SELECT * FROM bookingg.extra_payment
where LOCATION LIKE '%Ninh%';
b.SELECT * FROM bookingg.hotel 
where LOCATION LIKE '%Phu Quoc%'
ORDER BY rating DESC;
c. SELECT customer_acc.DisplayName,email,CheckInDate,CheckOutDate
FROM customer_acc
INNER JOIN booking on Customer_acc.DisplayName = Booking.DisplayName
order by DisplayName asc;
d. select * FROM bookingg.hotel 
where LOCATION LIKE '%ha%';
SELECT HotelName, No_empty_Room 
FROM hotel
GROUP BY No_empty_Room
HAVING  No_empty_Room >20
ORDER BY No_empty_Room DESC;
e. CREATE VIEW service_hotel as
SELECT ServiceName, price
FROM services
where Price <100
f.  update CUSTOMER
set DOB ="2001-03-04"
WHERE DOB ="1987-07-28";
commit;
g. select DisplayName from booking
where CheckInDate between "2021-6-08"
and "2021-06-14";
h. SELECT WORK, COUNT(WORK) AS "NUMBER"
from purpose
GROUP BY WORK;
i.SELECT NAME, GENDER, COUNT(3)
FROM CUSTOMER
WHERE NAME="Casey Thomass"
GROUP BY GENDER
HAVING GENDER="FEMALE";
j. UPDATE area 
SET 
    Description = 'Tuyênn Quang'
WHERE
   BookingID =113;

