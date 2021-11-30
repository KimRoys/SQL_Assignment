-- Testdata för golfuppgiften

use GolfCompDB;
INSERT INTO player VALUES
	("19660113-5103", "kim Roysdotter", 55), 
    ("19960401-5316", "Johan Andersson", 25),
	("19820405-5199", "Mikael Andeasson", 39),
	("19581213-4858", "Axel Brolund", 63),
	("19800522-3383", "Ingela Andersson", 41),
	("19810917-2865", "Sofia Nilsson", 40),
	("19890813-4873", "Erik Paulsson", 32),
	("19990101-2440", "Annika Persson", 22),
	("20010815-2396", "Joel Jonsson", 20),
	("19980305-2326", "Tindra Nilsson", 23),
	("20020210-3537", "Nicklas Jansson", 19);

INSERT INTO competition VALUES 
	("Golf Cup Västra Götaland", "2021-12-13"),
	("Mellerud Golf open", "2021-09-17"),
	("Stenungsund Open", "2021-08-12"),
	("Skövde Open Golf Cup", "2021-05-10"),  
    ("Big Golf Cup Skövde", "2021-06-10");

INSERT INTO competitionParticipates VALUES 
	("Golf Cup Västra Götaland", "19660113-5103"),
	("Golf Cup Västra Götaland", "19960401-5316"),
	("Golf Cup Västra Götaland", "19581213-4858"),
	("Golf Cup Västra Götaland", "19820405-5199"),
	("Golf Cup Västra Götaland", "19810917-2865"),
	("Mellerud Golf open", "19890813-4873"),
	("Mellerud Golf open", "20010815-2396"),
	("Mellerud Golf open", "19980305-2326"),
	("Mellerud Golf open", "19820405-5199"),
	("Stenungsund Open", "19581213-4858"),
	("Stenungsund Open", "19800522-3383"),
	("Stenungsund Open", "19810917-2865"),
	("Stenungsund Open", "19890813-4873"),
	("Stenungsund Open", "19990101-2440"),
	("Stenungsund Open", "20010815-2396"),
	("Skövde Open Golf Cup", "19810917-2865"),
	("Skövde Open Golf Cup", "19890813-4873"),
	("Skövde Open Golf Cup", "19990101-2440"),
	("Skövde Open Golf Cup", "20010815-2396"),
	("Skövde Open Golf Cup", "19980305-2326"),
	("Skövde Open Golf Cup", "20020210-3537"),
	("Big Golf Cup Skövde", "19960401-5316"),
	("Big Golf Cup Skövde", "20020210-3537"),
	("Big Golf Cup Skövde", "19990101-2440");

INSERT INTO raintype VALUES 
	(1, "Drizzle"),
	(2, "Rain"),
	(3, "Heavy rain"),
	(4, "Ice pellets"),
	(5, "Hail"),
	(6, "Small hail"),
	(7, "Snow"),
	(8, "Snow grains"),
	(9, "Ice Crystals"),
	(10, "Sunshine");

INSERT INTO rain VALUES 
	(6, 10, "12:45:00", "Mellerud Golf open"),
	(8, 4, "14:24:30", "Golf Cup Västra Götaland"),
	(1, 12, "11:11:11", "Stenungsund Open"),
	(10, 9, "15:15:00", "Skövde Open Golf Cup"),
	(5, 10, "12:00:00", "Big Golf Cup Skövde");

INSERT INTO jacket VALUES 
	("Softshell", "XS", "Fleece", "19990101-2440"),
	("Softshell", "S", "Polyester", "19820405-5199"),
	("Softshell", "M", "Polyester", "19581213-4858"),
	("Softshell", "L", "Polyester", "19800522-3383"),
	("Softshell", "XL", "Polyester", "19810917-2865"),
	("Softshell", "XXL", "Polyester", "19660113-5103"),
	("Softshell", "XXXL", "Polyester", "19890813-4873"),
	("Rain jacket", "XS", "GoreTex", "19990101-2440"),
	("Rain jacket", "S", "GoreTex", "20010815-2396"),
	("Rain jacket", "M", "GoreTex", "19980305-2326"),
	("Rain jacket", "L", "GoreTex", "20020210-3537"),
	("Rain jacket", "XL", "GoreTex", "19960401-5316"),
	("Rain jacket", "XXL", "GoreTex", "19660113-5103"),
	("Rain jacket", "XXXL", "GoreTex", "19890813-4873"),
	("Microfleece jacket", "S", "Fleece", "20010815-2396"),
	("Microfleece jacket", "M", "Fleece", "19980305-2326"),
	("Microfleece jacket", "L", "Fleece", "20020210-3537"),
	("Microfleece jacket", "XL", "Fleece", "19960401-5316"),
	("Microfleece jacket", "XXL", "Fleece", "19581213-4858"),
	("Microfleece jacket", "XXXL", "Fleece", "19890813-4873"),
	("Wind jacket", "M", "Polyester", "19980305-2326"),
	("Wind jacket", "L", "Polyester", "20020210-3537"),
	("Wind jacket", "XL", "Polyester", "19810917-2865"),
	("Wind jacket", "XXL", "Polyester", "19581213-4858");

INSERT INTO golfclubconst VALUES (210010, 10), (210011, 9),(210012, 23),  
(210013, 5), (200098, 10), (200099, 12), (200100, 5), (200101, 21),
 (050025, 4), (050026, 9), (050027, 12), (050028, 20), 
 (010075, 12), (010076, 25), (010077, 9), (010078, 8), (010079, 4), 
 (990125, 20), (990126, 9), (990127, 12), (990128, 5), 
 (990129, 5), (990130, 9), (990131, 28), (990132, 15),  
 (200011, 15), (200012, 5), (200013, 9), (200014, 28), 
 (210015, 5), (210016, 9), (210017, 19), (210018, 29), 
 (210019, 8), (210020, 9), (210021, 21), (210022, 15), 
 (210119, 8), (210120, 9), (210121, 17), (210122, 25),
 (210219, 4), (210220, 9), (210221, 15), (210222, 24);

INSERT INTO golfclub VALUES 
	(1, "Composite", "19660113-5103", 210010),
	(2, "Iron", "19660113-5103", 210011),
	(3, "Iron", "19660113-5103", 210012),
	(4, "Wood", "19660113-5103", 210013),
	(5, "Wood", "19960401-5316", 200098),
	(6, "Iron", "19960401-5316", 200099),
	(7, "Wood", "19960401-5316", 200100),
	(8, "Iron", "19960401-5316", 200101),
	(9, "Wood", "19820405-5199", 050025),
	(10, "Iron", "19820405-5199", 050026),
	(11, "Wood", "19820405-5199", 050027),
	(12, "Composite", "19820405-5199", 050028),
	(13, "Composite", "19581213-4858", 010075),
	(14, "Iron", "19581213-4858", 010076),
	(15, "Iron", "19581213-4858", 010077),
	(16, "Wood", "19581213-4858", 010078),
	(17, "Wood", "19581213-4858", 010079),
	(18, "Iron", "19800522-3383", 990125),
	(19, "Iron", "19800522-3383", 990126),
	(20, "Composite", "19800522-3383", 990127),
	(21, "Wood", "19800522-3383", 990128),    
	(22, "Wood", "19810917-2865", 990129),
	(23, "Iron", "19810917-2865", 990130),
	(24, "Iron", "19810917-2865", 990131),
	(25, "Composite", "19810917-2865", 990132),
	(26, "Composite", "19890813-4873", 200011),
	(27, "Wood", "19890813-4873", 200012),
	(28, "Iron", "19890813-4873", 200013),
	(29, "Iron", "19890813-4873", 200014),
	(30, "Wood", "19990101-2440", 210015),
	(31, "Wood", "19990101-2440", 210016),
	(32, "Iron", "19990101-2440", 210017),
	(33, "Wood", "19990101-2440", 210018),    
	(34, "Composite", "20010815-2396", 210019),
	(35, "Wood", "20010815-2396", 210020),
	(36, "Iron", "20010815-2396", 210021),
	(37, "Wood", "20010815-2396", 210022),    
	(38, "Composite", "19980305-2326", 210119),
	(39, "Wood", "19980305-2326", 210120),
	(40, "Iron", "19980305-2326", 210121),
	(41, "Iron", "19980305-2326", 210122),    
	(42, "Composite", "20020210-3537", 210219),
	(43, "Wood", "20020210-3537", 210220),
	(44, "Iron", "20020210-3537", 210221),
	(45, "Iron", "20020210-3537", 210222);