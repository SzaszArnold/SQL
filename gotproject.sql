drop table Csata cascade constraints;
drop table Epizod cascade constraints;
drop table Evad cascade constraints;
drop table Kiraly cascade constraints;
drop table Konyv cascade constraints;
drop table Nemesihaz cascade constraints;
drop table Szereplo cascade constraints;
drop table Szinesz cascade constraints;
drop table Terulet cascade constraints;
drop table Varos cascade constraints;

CREATE TABLE Csata (
    csataID int NOT NULL,
    teruletID int NOT NULL,
    evadID int NOT NULL,
    epizodID int NOT NULL,
    nev varchar(40) NOT NULL,
    gyoztes varchar(40) NOT NULL,
    vesztes varchar(40) NOT NULL,
    CONSTRAINT Csata_pk PRIMARY KEY (csataID)
);

-- Table: Epizod
CREATE TABLE Epizod (
    epizodID int NOT NULL,
    evadID int NOT NULL,
    nev varchar(50) NOT NULL,
    koltsegvetes int NOT NULL,
    ertekeles int NOT NULL,
    nezettseg int NOT NULL,
    CONSTRAINT Epizod_pk PRIMARY KEY (epizodID)
);

-- Table: Evad
CREATE TABLE Evad (
    evadID int NOT NULL,
    premier date NOT NULL,
    epizidok int NOT NULL,
    koltsegvetes int NOT NULL,
    ertekeles int NOT NULL,
    CONSTRAINT Evad_pk PRIMARY KEY (evadID)
);

-- Table: Kiraly
CREATE TABLE Kiraly (
    kiralyID int NOT NULL,
    csaladID int NOT NULL,
    szereploID int NOT NULL,
    nev varchar(40) NOT NULL,
    evek int NOT NULL,
    CONSTRAINT Kiraly_pk PRIMARY KEY (kiralyID)
);

-- Table: Konyv
CREATE TABLE Konyv (
    konyvID int NOT NULL,
    evadID int NOT NULL,
    nev varchar(40) NOT NULL,
    megjelenes date NOT NULL,
    CONSTRAINT Konyv_pk PRIMARY KEY (konyvID)
);

-- Table: NemesiHaz
CREATE TABLE NemesiHaz (
    csaladID int NOT NULL,
    teruletID int NOT NULL,
    szekhelyID int NOT NULL,
    nev varchar(40) NOT NULL,
    cimer varchar(40) NOT NULL,
    uralkodo varchar(40) NOT NULL,
    CONSTRAINT NemesiHaz_pk PRIMARY KEY (csaladID)
);

-- Table: Szereplo
CREATE TABLE Szereplo (
    szereploID int NOT NULL,
    csaladID int NOT NULL,
    nev varchar(30) NOT NULL,
    nem varchar(10) NOT NULL,
    szerep varchar(30) NOT NULL,
    epizodok int NOT NULL,
    CONSTRAINT Szereplo_pk PRIMARY KEY (szereploID)
);

-- Table: Szinesz
CREATE TABLE Szinesz (
    szineszID int NOT NULL,
    szereploID int NOT NULL,
    nev varchar(40) NOT NULL,
    nem varchar(10) NOT NULL,
    eletkor int NOT NULL,
    nemzetiseg varchar(40) NOT NULL,
    CONSTRAINT Szinesz_pk PRIMARY KEY (szineszID)
);

-- Table: Terulet
CREATE TABLE Terulet (
    teruletID int NOT NULL,
    nev varchar(20) NOT NULL,
    kontinens varchar(15) NOT NULL,
    CONSTRAINT Terulet_pk PRIMARY KEY (teruletID)
);

-- Table: Varos
CREATE TABLE Varos (
    varosID int NOT NULL,
    teruletID int NOT NULL,
    nev varchar(40) NOT NULL,
    tipus varchar(40) NOT NULL,
    CONSTRAINT Varos_pk PRIMARY KEY (varosID)
);


insert into szereplo values
(1, 6, 'Tyrion Lannister',  'f�rfi', 'f�szerepl�', 61);
insert into szereplo values
(2, 16, 'Jorah Mormont',  'f�rfi', 'mell�kszerepl�', 48);
insert into szereplo values
(3, 28, 'Brienne of Tarth',  'n�', 'mell�kszerepl�', 37);
insert into szereplo values
(4, 6, 'Jamie Lannister',  'f�rfi', 'f�szerepl�', 49);
insert into szereplo values
(5, 5, 'Daenerys Targaryen',  'n�', 'f�szerepl�', 56);
insert into szereplo values
(6, 6, 'Cercei Lannister',  'n�', 'f�szerepl�', 58);
insert into szereplo values
(7, 30, 'Samwell Tarly',  'f�rfi', 'mell�kszerepl�', 43);
insert into szereplo values
(8, 1, 'Sansa Stark',  'n�', 'f�szerepl�', 54);
insert into szereplo values
(9, 1, 'Arya Stark',  'n�', 'f�szerepl�', 53);
insert into szereplo values
(10, 25, 'Davos Seaworth',  'f�rfi', 'mell�kszerepl�', 36);
insert into szereplo values
(11, 1, 'Brandon Stark',  'f�rfi', 'f�szerepl�', 35);
insert into szereplo values
(12, 0, 'Bronn',  'f�rfi', 'mell�kszerepl�', 34);
insert into szereplo values
(13, 0, 'Havas Jon',  'f�rfi', 'f�szerepl�', 56);
insert into szereplo values
(14, 21, 'Theon Greyjoy',  'f�rfi', 'mell�kszerepl�', 43);
insert into szereplo values
(15, 24, 'Petyr Baelih',  'f�rfi', 'mell�kszerepl�', 41);
insert into szereplo values
(16, 0, 'Lord Varys',  'f�rfi', 'mell�kszerepl�', 41);
insert into szereplo values
(17, 3, 'Sandor Clegane',  'f�rfi', 'mell�kszerepl�', 33);
insert into szereplo values
(18, 3, 'Gregor Clegane',  'f�rfi', 'mell�kszerepl�', 19);
insert into szereplo values
(19, 0, 'Mellisandre',  'n�', 'mell�kszerepl�', 28);
insert into szereplo values
(20, 0, 'Tormund',  'f�rfi', 'mell�kszerepl�', 28);
insert into szereplo values
(21, 12, 'Margery Tyrell',  'n�', 'mell�kszerepl�', 26);
insert into szereplo values
(22, 12, 'Loras Tyrell',  'f�rfi', 'mell�kszerepl�', 21);
insert into szereplo values
(23, 15, 'Stannis Baratheon',  'f�rfi', 'mell�kszerepl�', 24);
insert into szereplo values
(24, 0, 'Hodor',  'f�rfi', 'mell�kszerepl�', 23);
insert into szereplo values
(25, 1, 'Eddard Stark',  'f�rfi', 'f�szerepl�', 11);
insert into szereplo values
(26, 15, 'Joffrey Baratheon',  'f�rfi', 'mell�kszerepl�', 26);
insert into szereplo values
(27, 29, 'Roose Bolton',  'f�rfi', 'mell�kszerepl�', 19);
insert into szereplo values
(28, 1, 'Catlyn Stark',  'n�', 'mell�kszerepl�', 25);
insert into szereplo values
(29, 19, 'Barristan Selmy',  'f�rfi', 'mell�kszerepl�', 25);
insert into szereplo values
(30, 12, 'Olenna Tyrell',  'n�', 'mell�kszerepl�', 18);
insert into szereplo values
(31, 29, 'Ramsay Bolton',  'f�rfi', 'mell�kszerepl�', 20);
insert into szereplo values
(32, 6, 'Lancel Lannister',  'f�rfi', 'mell�kszerepl�', 16);
insert into szereplo values
(33, 16, 'Lyanna Mormont',  'n�', 'mell�kszerepl�', 7);
insert into szereplo values
(34, 1, 'Rickon Stark',  'f�rfi', 'mell�kszerepl�', 14);
insert into szereplo values
(35, 28, 'Tywin Lannister',  'f�rfi', 'mell�kszerepl�', 27);
insert into szereplo values
(36, 5, 'Viserys Targaryen',  'f�rfi', 'mell�kszerepl�', 6);
insert into szereplo values
(37, 15, 'Robert Baratheon',  'f�rfi', 'mell�kszerepl�', 7);
insert into szereplo values
(38, 0, 'F�ver�b',  'f�rfi', 'mell�kszerepl�', 12);
insert into szereplo values
(39, 21, 'Yara Greyjoy',  'n�', 'mell�kszerepl�', 17);
insert into szereplo values
(40, 21, 'Euron Greyjoy',  'f�rfi', 'mell�kszerepl�', 6);
insert into szereplo values
(41, 15, 'Shireen Baratheon',  'n�', 'mell�kszerepl�', 10);
insert into szereplo values
(42, 15, 'Tommen Baratheon',  'f�rfi', 'mell�kszerepl�', 25);


insert into szinesz values
(1, 6, 'lena Headey',  'n�', 45, 'angol');
insert into szinesz values
(2, 5, 'Emilia Clarke',  'n�', 32, 'angol');
insert into szinesz values
(3, 13, 'Kit Harington',  'f�rfi', 32, 'angol');
insert into szinesz values
(4, 8, 'Sophie Turner',  'n�', 22, 'angol');
insert into szinesz values
(5, 9, 'Maisie Williams',  'n�', 21, 'angol');
insert into szinesz values
(6, 1, 'Peter Dinklage',  'f�rfi', 49, 'amerikai');
insert into szinesz values
(7, 4, 'Nikolaj Waldau',  'f�rfi', 48, 'angol');
insert into szinesz values
(8, 2, 'Iain Glen',  'f�rfi', 57, 'angol');
insert into szinesz values
(9, 14, 'Alfie Allen',  'f�rfi', 32, 'angol');
insert into szinesz values
(10, 7, 'John Bradley',  'f�rfi', 30, 'angol');
insert into szinesz values
(11, 15, 'Aidan Gillen',  'f�rfi', 50, 'angol');
insert into szinesz values
(12, 16, 'Conelth Hill',  'f�rfi', 54, 'angol');
insert into szinesz values
(13, 3, 'Gwendoline Christie',  'n�', 40, 'angol');
insert into szinesz values
(14, 10, 'Liam Cunningham',  'f�rfi', 57, 'angol');
insert into szinesz values
(15, 11, 'Isaac Wright',  'f�rfi', 19, 'angol');
insert into szinesz values
(16, 12, 'Jerome Flynn',  'f�rfi', 55, 'angol');
insert into szinesz values
(17, 17, 'Rory McCann',  'f�rfi', 49, 'angol');
insert into szinesz values
(18, 21, 'Natalie Dormer',  'n�', 36, 'angol');
insert into szinesz values
(19, 42, 'Dean Chapman',  'f�rfi', 20, 'angol');
insert into szinesz values
(20, 26, 'Jack Gleeson',  'f�rfi', 26, 'angol');
insert into szinesz values
(21, 37, 'Mark Addy',  'f�rfi', 54, 'angol');


insert into kiraly values
(1, 5, 0, 'I Aegon', 37);
insert into kiraly values
(2, 5, 0, 'I Aenys', 5);
insert into kiraly values
(3, 5, 0, 'I Maegor', 6);
insert into kiraly values
(4, 5, 0, 'I Jaehaerys', 55);
insert into kiraly values
(5, 5, 0, 'II Aegon', 2);
insert into kiraly values
(6, 5, 0, 'III Aegon', 26);
insert into kiraly values
(7, 5, 0, 'Daeron', 4);
insert into kiraly values
(8, 5, 0, 'I Aerys', 12);
insert into kiraly values
(9, 5, 0, 'I Maekar', 12);
insert into kiraly values
(10, 5, 0, 'II Jaehaerys', 3);
insert into kiraly values
(11, 5, 0, 'II Aerys', 23);
insert into kiraly values
(12, 15, 37, 'Robert', 15);
insert into kiraly values
(13, 15, 26, 'Joffrey', 2);
insert into kiraly values
(14, 15, 42, 'Tommen', 2);
insert into kiraly values
(15, 6, 6, 'Cercei', 1);


insert into csata values
(1, 4, 2, 19, 'Feketeviz', 'Joffrey Baratheon', 'Stannis Baratheon');
insert into csata values
(2, 11, 3, 24, 'Astapori-csata', 'Daenerys Targaryen', 'Astapori mesterek');
insert into csata values
(3, 11, 4, 34, 'Meereni-csata', 'Daenerys Targaryen', 'Meereni mesterek');
insert into csata values
(4, 2, 4, 39, 'Feketev�r�rt', 'Az �jjeli �rs�g', 'Vadak');
insert into csata values
(5, 1, 5, 48, 'Hardhome', '�jkir�ly', 'Vadak, �jjeli �rs�g');
insert into csata values
(6, 2, 5, 50, 'Deresi-csata', 'Ramsay Bolton', 'Stannis Baratheon');
insert into csata values
(7, 2, 6, 59, 'Fattyak-csat�ja', 'Havas Jon', 'Ramsay Bolton');
insert into csata values
(8, 4, 7, 62, 'Greyjoy-csata', 'Euron Greyjoy', 'Yara Greyjoy');
insert into csata values
(9, 5, 7, 63, 'Casterhegy�rt', 'Daenerys Targaryen', 'Lannisterek');
insert into csata values
(10, 8, 7, 64, 'Zs�km�nyszerz�s', 'Daenerys Targaryen', 'Jamie Lannister');
insert into csata values
(11, 11, 6, 59, 'Meereni-csata 2', 'Daenerys Targaryen', 'Mesterek-Tan�csa');
insert into csata values
(12, 11, 3, 29, 'Yunkai-csata', 'Daenerys Targaryen', 'Yunkai mesterek');
insert into csata values
(13, 1, 4, 40, '�szak v�delme', 'Stannis Baratheon', 'Vadak');


insert into evad values
(1, '17-APR-11', 10, 60000000, 9);
insert into evad values
(2, '01-APR-12', 10, 65000000, 9);
insert into evad values
(3, '31-MAR-13', 10, 70000000, 9);
insert into evad values
(4, '06-APR-14', 10, 70000000, 9);
insert into evad values
(5, '12-APR-15', 10, 74000000, 9);
insert into evad values
(6, '24-APR-16', 10, 78000000, 10);
insert into evad values
(7, '16-JUL-17', 7, 80000000, 10);


insert into konyv values
(1, 1, 'Tr�nok Harca', '01-AUG-96');
insert into konyv values
(2, 2, 'Kir�lyok Csat�ja', '01-FEB-99');
insert into konyv values
(3, 3, 'Kardok Vihara', '01-NOV-00');
insert into konyv values
(4, 4, 'Varjak Lakom�ja', '01-NOV-05');
insert into konyv values
(5, 5, 'S�rk�nyok T�nca', '01-DEC-11');
insert into konyv values
(6, 0, 'T�l Szelei', '01-JUL-19');
insert into konyv values
(7, 0, 'Tavasz �lma', '01-DEC-25');


insert into terulet values
(1, 'Falon t�l', 'Westeros');
insert into terulet values
(2, '�szak', 'Westeros');
insert into terulet values
(3, 'Foly� vid�k', 'Westeros');
insert into terulet values
(4, 'Korona f�ldek', 'Westeros');
insert into terulet values
(5, 'Nyugat', 'Westeros');
insert into terulet values
(6, 'A v�lgy', 'Westeros');
insert into terulet values
(7, 'A vas szigetek', 'Westeros');
insert into terulet values
(8, 'Sikvid�k', 'Westeros');
insert into terulet values
(9, 'Viharf�ldek', 'Westeros');
insert into terulet values
(10, 'Dorne', 'Westeros');
insert into terulet values
(11, 'Rabszolga-�b�l', 'Essos');
insert into terulet values
(12, 'Dothraki-tenger', 'Essos');
insert into terulet values
(13, 'V�r�s-pusztas�g', 'Essos');
insert into terulet values
(14, 'Szabad-v�rosok', 'Essos');

insert into varos values
(1, 2, 'Deres', 'Feudalista');
insert into varos values
(2, 2, 'Fekete-v�r', 'Feudalista');
insert into varos values
(3, 10, 'Napd�rda', 'Feudalista');
insert into varos values
(4, 4, 'Kir�lyv�r', 'Feudalista');
insert into varos values
(5, 4, 'S�rk�ny-k�', 'Feudalista');
insert into varos values
(6, 14, 'Braavos', 'Szabad');
insert into varos values
(7, 5, 'Caster-hegy', 'Feudalista');
insert into varos values
(8, 13, 'Quarth', 'Rabszolgatart�');
insert into varos values
(9, 14, 'Pentos', 'Szabad');
insert into varos values
(10, 14, 'Norvos', 'Szabad');
insert into varos values
(11, 14, 'Lorath', 'Szabad');
insert into varos values
(12, 7, 'Pyke', 'Feudalista');
insert into varos values
(13, 11, 'Meeren', 'Rabszolgatart�');
insert into varos values
(14, 11, 'Vaes-dothrak', 'Rabszolgatart�');
insert into varos values
(15, 14, 'Myre', 'Szabad');
insert into varos values
(16, 14, 'Lys', 'Szabad');
insert into varos values
(17, 14, 'Volantis', 'Szabad');
insert into varos values
(18, 5, 'Lannisport', 'Feudalista');
insert into varos values
(19, 2, 'Feh�rr�v', 'Feudalista');
insert into varos values
(20, 6, 'Sasf�szek', 'Feudalista');
insert into varos values
(21, 9, 'Viharv�g', 'Feudalista');
insert into varos values
(22, 8, '�gikert', 'Feudalista');
insert into varos values
(23, 11, 'Yunkai', 'Rabszolgatart�');
insert into varos values
(24, 3, 'Ikrek', 'Feudalista');
insert into varos values
(25, 3, 'Z�g�', 'Feudalista');
insert into varos values
(26, 8, '�-v�ros', 'Feudalista');
insert into varos values
(27, 11, 'Astaport', 'Rabszolgatart�');
insert into varos values
(28, 2, 'R�mv�r', 'Feudalista');
insert into varos values
(29, 1, 'Rideghon', 'Szabad');


insert into epizod values
(1, 1, 'K�zeleg a t�l', 6000000, 9, 2220000);
insert into epizod values
(2, 1, 'Kir�lyi �t', 6000000, 9, 2200000);
insert into epizod values
(3, 1, 'Havas uras�g', 6000000, 9, 2440000);
insert into epizod values
(4, 1, 'Nyomor�kok, fattyak �s �sszet�rt t�rgyak', 6000000, 9, 2450000);
insert into epizod values
(5, 1, 'A farkas �s az oroszl�n', 6000000, 9, 2580000);
insert into epizod values
(6, 1, 'Az aranykorona', 6000000, 9, 2400000);
insert into epizod values
(7, 1, 'Gy�z�l vagy meghalsz', 5000000, 9, 2720000);
insert into epizod values
(8, 1, 'A hegyes v�ge', 6000000, 9, 2660000);
insert into epizod values
(9, 1, 'Baelor', 6500000, 10, 3040000);
insert into epizod values
(10, 1, 'T�z �s v�r', 6500000, 10, 3860000);
insert into epizod values
(11, 2, '�szak nem felejt', 6000000, 9, 3760000);
insert into epizod values
(12, 2, 'Az �jszaka f�ldje', 6000000, 9, 3770000);
insert into epizod values
(13, 2, 'Ami halott, sosem halhat meg', 6000000, 9, 3650000);
insert into epizod values
(14, 2, 'Csontok kertje', 6500000, 9, 3900000);
insert into epizod values
(15, 2, 'Harenhall szelleme', 6500000, 9, 3880000);
insert into epizod values
(16, 2, 'R�gi �s uj istenek', 6500000, 9, 3690000);
insert into epizod values
(17, 2, 'A becs�let n�lk�li ember', 6500000, 9, 3860000);
insert into epizod values
(18, 2, 'Deres hercege', 6500000, 9, 3380000);
insert into epizod values
(19, 2, 'Feketeviz', 7000000, 10,4200000);
insert into epizod values
(20, 2, 'Valar Morghulis', 7000000, 9, 4370000);
insert into epizod values
(21, 3, 'Valar Dohaeris', 6500000, 9, 4270000);
insert into epizod values
(22, 3, 'S�t�t sz�rnyak, s�t�t szavak', 6500000, 9, 4720000);
insert into epizod values
(23, 3, 'A b�ntet�s �tja', 7000000, 9, 4870000);
insert into epizod values
(24, 3, '�s �rs�ge most v�get �t', 7000000, 10,5350000);
insert into epizod values
(25, 3, 'Akit a t�z megcs�kolt', 7000000, 9, 5500000);
insert into epizod values
(26, 3, 'A m�sz�s', 7000000, 9, 4840000);
insert into epizod values
(27, 3, 'A medve �s a sz�z', 7000000, 9, 5130000);
insert into epizod values
(28, 3, 'M�sodik fiak', 7000000, 9, 5220000);
insert into epizod values
(29, 3, 'Castemer-i es�k', 7500000, 10,5390000);
insert into epizod values
(30, 3, 'Mhysa', 7500000, 9, 6840000);
insert into epizod values
(31, 4, 'K�t Kard', 6400000, 9, 6310000);
insert into epizod values
(32, 4, 'Az oroszl�n �s a r�zsa', 6600000, 10, 6590000);
insert into epizod values
(33, 4, 'A l�ncok lever�je', 6500000, 9, 6560000);
insert into epizod values
(34, 4, 'H�s�g', 6500000, 9, 6950000);
insert into epizod values
(35, 4, 'Els� ezen a n�ven', 7000000, 9, 7160000);
insert into epizod values
(36, 4, 'Isten �s ember t�rv�nye', 7000000, 10, 6400000);
insert into epizod values
(37, 4, 'Fecseg� posz�ta', 7000000, 9, 7200000);
insert into epizod values
(38, 4, 'A hegy �s a vipera', 7000000, 10, 7170000);
insert into epizod values
(39, 4, 'A fal �rz�i', 7800000, 10, 6950000);
insert into epizod values
(40, 4, 'Gyermekek', 7200000, 10, 7090000);
insert into epizod values
(41, 5, 'Elj�vend� h�bor�k', 7100000, 9, 8000000);
insert into epizod values
(42, 5, 'A fekete �s a feh�r h�za', 6800000, 9, 6810000);
insert into epizod values
(43, 5, 'F�ver�b', 7200000, 9, 6710000);
insert into epizod values
(44, 5, 'A h�rpia fiai', 7100000, 9, 6820000);
insert into epizod values
(45, 5, '�ld meg a fiut', 7000000, 9, 6560000);
insert into epizod values
(46, 5, 'Meg nem hajol, meg nem rogy', 7300000, 9, 6240000);
insert into epizod values
(47, 5, 'Az aj�nd�k', 7400000, 9, 5400000);
insert into epizod values
(48, 5, 'Rideghon', 7800000, 10, 7010000);
insert into epizod values
(49, 5, 'S�rk�nyok t�nca', 7800000, 10, 7140000);
insert into epizod values
(50, 5, 'Az anya irgalma', 8100000, 9, 8110000);
insert into epizod values
(51, 6, 'A v�r�s asszony', 7400000, 9, 7940000);
insert into epizod values
(52, 6, 'Otthon', 7300000, 10, 7290000);
insert into epizod values
(53, 6, 'Az esk�szeg�', 7400000, 9, 7280000);
insert into epizod values
(54, 6, 'Az idegen k�nyve', 7500000, 9, 7820000);
insert into epizod values
(55, 6, 'Az ajt�', 7500000, 10, 7890000);
insert into epizod values
(56, 6, 'V�r a v�remb�l', 7500000, 9, 6710000);
insert into epizod values
(57, 6, 'A megt�rt f�rfi', 7500000, 9, 7800000);
insert into epizod values
(58, 6, 'Senki', 7800000, 9, 7600000);
insert into epizod values
(59, 6, 'Fattyak csat�ja', 8200000, 10, 7660000);
insert into epizod values
(60, 6, '�szaki szelek', 8200000, 10, 8890000);
insert into epizod values
(61, 7, 'S�rk�nyk�', 7600000, 9, 10110000);
insert into epizod values
(62, 7, 'Viharbansz�letett', 7800000, 9, 9270000);
insert into epizod values
(63, 7, 'A kir�lyn� igazs�gszolg�ltat�sa', 7600000, 9, 9250000);
insert into epizod values
(64, 7, 'A hadizs�km�ny', 7700000, 10, 10170000);
insert into epizod values
(65, 7, 'A keleti �rs�g', 8400000, 9, 10720000);
insert into epizod values
(66, 7, 'A falon t�l', 8200000, 9, 10240000);
insert into epizod values
(67, 7, 'A s�rk�ny �s a farkas', 8500000, 10, 12070000);


insert into nemesihaz values
(1, 2, 1, 'Stark', 'R�mfarkas', 'igen');
insert into nemesihaz values
(2, 6, 20, 'Arryn', 'Sas', 'igen');
insert into nemesihaz values
(3, 5, 0, 'Clegane', 'V�reb', 'nem');
insert into nemesihaz values
(4, 2, 0, 'Cerwyn', 'B�rd', 'nem');
insert into nemesihaz values
(5, 4, 5, 'Targaryen', 'S�rk�ny', 'igen');
insert into nemesihaz values
(6, 5, 7, 'Lannister', 'Oroszl�n', 'igen');
insert into nemesihaz values
(7, 8, 0, 'Dondarrion', 'Csillagok', 'nem');
insert into nemesihaz values
(8, 2, 0, 'Blackwood', 'T�lgy', 'nem');
insert into nemesihaz values
(9, 2, 0, 'Mallister', 'S�lyom', 'nem');
insert into nemesihaz values
(10, 5, 0, 'Swann', 'Hattyuk', 'nem');
insert into nemesihaz values
(11, 2, 19, 'Manderly', 'Szir�n', 'nem');
insert into nemesihaz values
(12, 8, 22, 'Tyrell', 'R�zsa', 'igen');
insert into nemesihaz values
(13, 2, 0, 'Hornwood', 'Szarvas', 'nem');
insert into nemesihaz values
(14, 3, 24, 'Frey', 'Ikertornyok', 'nem');
insert into nemesihaz values
(15, 9, 21, 'Baratheon', 'Szarvas', 'igen');
insert into nemesihaz values
(16, 2, 0, 'Mormont', 'Medve', 'nem');
insert into nemesihaz values
(17, 3, 25, 'Tully', 'Hal', 'igen');
insert into nemesihaz values
(18, 5, 0, 'Swyft', 'Kakas', 'nem');
insert into nemesihaz values
(19, 4, 0, 'Selmy', 'Levelek', 'nem');
insert into nemesihaz values
(20, 3, 0, 'Crakehall', 'Vaddiszn�', 'nem');
insert into nemesihaz values
(21, 7, 12, 'Greyjoy', 'Kraken', 'igen');
insert into nemesihaz values
(22, 10, 3, 'Martell', 'NapD�rda', 'igen');
insert into nemesihaz values
(23, 8, 0, 'Redwyne', 'Sz�l�', 'nem');
insert into nemesihaz values
(24, 6, 0, 'Baelish', 'Posz�ta', 'nem');
insert into nemesihaz values
(25, 9, 0, 'Seaworth', 'Hagyma', 'nem');
insert into nemesihaz values
(26, 2, 0, 'Glover', 'Vas�k�l', 'nem');
insert into nemesihaz values
(27, 4, 0, 'Dayne', 'Hull�csillag', 'nem');
insert into nemesihaz values
(28, 8, 0, 'Tarth', 'Holdak', 'nem');
insert into nemesihaz values
(29, 2, 28, 'Bolton', 'Ny�zott ember', 'nem');
insert into nemesihaz values
(30, 8, 0, 'Tarly', 'Nyilasr', 'nem');

select * from kiraly;
select * from nemesihaz;
select * from szereplo;
select * from szinesz;
/
--2. Ki irja a param�ter�l kapott kiralyi csalokrol a kiralyok neveit s a szineszuket(csak azokat ahol mindkett? van)
create or replace function melyikcsaladid(p_nev varchar2)
return int
is
v_id int;
begin
    select csaladid into v_id from nemesihaz
    where nev=p_nev;
    exception when no_data_found then
        v_id:=0;
    return v_id; 
end melyikcsaladid;
/
set serveroutput on;
/
create or replace procedure kiralyszereplo(p_p varchar2)
is
    cursor c1 is select szereploid from kiraly where csaladid=melyikcsaladid(p_p) ;
    v_szereplonev varchar2(40);
    v_szinesznev varchar2(40);
    procedure szinesznev(p_szereploid int, p_nev out varchar2)
    is
    v_nev varchar2(40);
    begin
        select nev into v_nev from szinesz where szereploid=p_szereploid;
        p_nev:=v_nev;
    end szinesznev;
    procedure szereplonev(p_szereploid int, p_nev out varchar2)
    is
    v_nev varchar2(40);
    begin
        select nev into v_nev from szereplo where szereploid=p_szereploid;
        p_nev:=v_nev;
    end szereplonev;
begin
    for i in c1 loop
        szinesznev(i.szereploid,v_szinesznev);
        szereplonev(i.szereploid, v_szereplonev);
        DBMS_output.put_line(v_szinesznev||': '||v_szereplonev);
    end loop;
end kiralyszereplo;
/
begin
    kiralyszereplo('Baratheon');
end;
/
--4. Parameterkent kapott szereplot kit�rli, ha van szin�sze azt is, ha kir�ly volt azt is
create or replace procedure caracter_delete(caracter_name string)
is
szid int;
begin
    select szereploID into szid from szereplo
    where nev = caracter_name;
    Delete FROM szereplo Where szereploID = szid;
end;
/

create or replace trigger trg_delete_from_szinesz
before delete
    on szereplo
for each row
begin
    delete from szinesz sz where sz.szereploID  = :old.szereploID ;
end;
/

create or replace trigger trg_delete_from_kiraly
before delete
    on szereplo
for each row
begin
    delete from kiraly k where k.szereploID  = :old.szereploID ;
end;
/

declare
begin
caracter_delete('Robert Baratheon');
end;
/

--6. l�trehoz egy t�bl�t, ki sz�molja ki a legjobb hadvez�r, s aki a legjobb annaka  csat�i k�l�n t�b�ba szerepelnek a gy?zelmei
/
create or replace function legtobbgyoztescsata
return varchar2
is
    v_nev varchar2(40);
begin
LOCK TABLE csata IN SHARE MODE;
select * into v_nev from(
    select gyoztes from csata
    group by gyoztes
    order by count( gyoztes) desc)
where rownum=1;
return v_nev;
end legtobbgyoztescsata;
/
begin
DBMS_output.put_line(legtobbgyoztescsata);
end;
/
create or replace procedure letrehoz
is
begin
    execute immediate 'create table GyoztesCsatak (csataID int,nev varchar2(40),terulet varchar2(40))';
end letrehoz;
/
begin
   letrehoz;
end;
/
create or replace procedure gyoztescsatainsert
is
    v_nev varchar2(40);
    cursor c1 is select * from csata where gyoztes=legtobbgyoztescsata;
begin
    LOCK TABLE varos IN EXCLUSIVE MODE;
    for i in c1 loop
        select nev into v_nev from terulet where teruletid=i.teruletid;
        insert into gyoztescsatak values(i.csataid,i.nev,v_nev);
    end loop;
    commit;
end gyoztescsatainsert;
/
begin
    gyoztescsatainsert;
end;
/
select * from terulet;
select * from gyoztescsatak;
drop table gyoztescsatak;
select * from nemesihaz;

/
--3. Ter�letre osztja a h�zakat, minden ter�leten az uralkod� h�zaknak a c�emer�k is ki irodik
create or replace procedure teruletreosztas
is
    cursor c1 is select * from nemesihaz;
    type my_type is table of terulet%ROWTYPE;
    tomb my_type;
begin
    select * bulk collect into tomb from terulet;
    for i in tomb.first..tomb.last loop
        for j in c1 loop
            if tomb(i).teruletid=j.teruletid then
                if j.uralkodo='igen' then
                    DBMS_output.put_line('Terulet: '||tomb(i).nev||', Nev: ' ||j.nev||', Uralkodo haz, cimere: '||j.cimer);
                else
                    DBMS_output.put_line('Terulet: '||tomb(i).nev||', Nev: ' ||j.nev);
                end if;
            end if;
        end loop;
    end loop;
end teruletreosztas;
/
begin
    teruletreosztas;
end;
/
select * from varos;
select * from csata;
select * from szereplo;
/
--7 frissiti a szin�szeket,s automatikusan(trigger) �t irja f?szerepl?re ha m�r 50n�l t�bbsz�r szerepelt.
create or replace procedure szereplo_frissites(p_szereplo varchar2)
is
    v_epizodok number;
begin
    select epizodok into v_epizodok from szereplo where nev=p_szereplo;
    update szereplo set epizodok = v_epizodok+1 where nev=p_szereplo;
end szereplo_frissites;
/
begin
    szereplo_frissites('Jorah Mormont');
end;
/
create or replace trigger trg_update_szereplo
before update of epizodok on szereplo
for each row
begin
    if :new.epizodok >=50 then
        :new.szerep:='f�szerepl�';
    end if;
end;
/
drop trigger trg_update_szereplo;
select * from varos;
select * from csata;
select * from terulet;
/
--5 frissiti a v�rosokat feudalist�ra, ahol adott szerepl? nyert adott helyen, param�ter�l adhat�
create or replace procedure varostipusupdate(p_nev varchar2, p_terulet varchar2)
is
    v_teruletid number;
    type my_type is table of csata%ROWTYPE;
    tomb my_type;
    v_nev varchar2(40);
    v_varosid number;
begin
    select teruletid into v_teruletid from terulet where nev=p_terulet;
    select * bulk collect into tomb from csata where teruletid=v_teruletid and gyoztes=p_nev;
    LOCK TABLE varos IN EXCLUSIVE MODE;
    for i in tomb.first..tomb.last loop
        v_nev:=tomb(i).nev;
        update varos set tipus='Feudalista' where regexp_like(v_nev,nev);
    end loop;
    commit;
end varostipusupdate;
/
begin
    varostipusupdate('Daenerys Targaryen','Rabszolga-�b�l');
end;
/
--1 �j epiz�d�t sz�r be, ha nem �rt v�get az �vad akkor a meglv? �vad v�g�re, ha v�get �rt akkor l�tre hoz ez �j evadot, s arra teszi be a r�szt.
create or replace function episode_count(evad int) return number is
    episodes number;
begin
    select count(evadid) into episodes from epizod
    where evadid = evad;
    return episodes;
end;
/
create or replace procedure reszbeszur( p_nev varchar2, p_koltsegvetes number, p_ertekeles number, p_nezetseg number)
is
v_epizodid number;
v_evad number;
v_epizodszam number;
v_epizidok number;
begin
    
    select max(epizodid) into v_epizodid from epizod;
    select max(evadid) into v_evad from epizod;
    select epizidok into v_epizodszam from evad where evadid=v_evad;
    if episode_count(v_evad)=v_epizodszam then
        insert into epizod values(v_epizodid+1,v_evad+1,p_nev,p_koltsegvetes,p_ertekeles,p_nezetseg);
        insert into evad values(v_evad+1,sysdate,1,0,0);
    else
        insert into epizod values(v_epizodid+1,v_evad,p_nev,p_koltsegvetes,p_ertekeles,p_nezetseg);
        select epizidok into v_epizidok from evad where evadid=v_evad;
        update evad set epizidok= v_epizidok+1 where evadid=v_evad;
    end if;
end;
/
begin
    reszbeszur('proba1',100,10,10);
end;
/
select * from epizod;
select * from evad;
/
commit;
/
begin

    dbms_lock.sleep(5);
    varostipusupdate('Daenerys Targaryen','Rabszolga-�b�l');
end;