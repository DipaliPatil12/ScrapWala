show databases;
drop database if exists Scrapwala;
create database Scrapwala;
use scrapwala;
drop table if exists admins;
create table admins (admin_id integer primary key auto_increment, name varchar(40) not null, 
user_id integer, Foreign key (user_id) references Users(user_id)); 
alter table admins modify name varchar (40) not null;
drop table if exists users;
create table users (user_id integer primary key auto_increment, name varchar(40) not null, password varchar(30) not null, 
mobile_number varchar(40), 
pincode varchar(30), date date);

drop table if exists papers;
create table papers (paper_id integer primary key auto_increment, user_id integer, Foreign key (user_id) references users(user_id), 
name varchar(40) not null, rate integer, weight integer);
drop table if exists plastics;
create table plastics (plastic_id integer primary key auto_increment, user_id integer, Foreign key (user_id) references users(user_id), 
name varchar(40) not null, rate integer, quantity integer);
drop table if exists ElectricAppliances;
create table ElectricAppliances (electricappliance_id integer primary key auto_increment, user_id integer, Foreign key (user_id) references users(user_id), 
name varchar(40) not null, rate integer, quantity integer);
drop table if exists ItAppliances;
create table ItAppliances (itappliance_id integer primary key auto_increment, user_id integer, Foreign key (user_id) references users(user_id), 
name varchar(40) not null, rate integer, quantity integer);
drop table if exists Metals;
create table Metals (metal_id integer primary key auto_increment, user_id integer, Foreign key (user_id) references users(user_id), 
name varchar(40)not null, rate integer, weight integer);
drop table if exists Textiles;
create table Textiles (textile_id integer primary key auto_increment, user_id integer, Foreign key (user_id) references users(user_id), 
name varchar(40)not null, rate integer, quantity integer);
drop table if exists Others;
create table Others (other_id integer primary key auto_increment, user_id integer, Foreign key (user_id) references users(user_id), 
name varchar(40)not null, rate integer, quantity integer, weight integer);
drop database if exists organization;
create database Organization;
use organization;
drop table if exists Employees;
create table Employees (employee_id integer primary key auto_increment, First_name varchar(50) not null, Last_name varchar(30) not null, 
contact varchar(40)not null);   

use scrapwala;
drop table if exists Pickups;
create table Pickups (pickup_id integer primary key auto_increment, product_id integer, Foreign key (product_id) references products(product_id), 
date date not null, time datetime not null, pickup_address varchar(40) not null, remarks varchar(40));
drop table if exists Products;
create table Products (product_id integer primary key auto_increment, electricappliance_id
integer, Foreign key (electricappliance_id) references 
electricappliances(electricappliance_id), itappliance_id integer, Foreign key (itappliance_id) references 
itappliances(itappliance_id), metal_id integer, Foreign key (metal_id) references 
metals(metal_id), other_id integer, Foreign key (other_id) references others(other_id), 
paper_id integer, Foreign key (paper_id) references papers(paper_id), 
plastic_id integer, Foreign key (plastic_id) references plastics(plastic_id), 
textile_id integer, Foreign key (textile_id) references textiles(textile_id));

use organization;
drop table if exists orders;
create table orders (order_id integer primary key auto_increment not null, 
pickup_id integer, foreign key (pickup_id) references scrapwala.pickups(pickup_id)); 
drop table if exists meetings;
create table meetings (meeting_id integer primary key auto_increment, order_id integer, Foreign key (order_id) references orders(order_id), 
employee_id integer, Foreign key (employee_id) references employees(employee_id)); 


INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (1,"Myra","Mathews","0384 139 1741"),
  (2,"Tad","Snyder","0500 194931"),
  (3,"Buffy","Faulkner","(016977) 5207"),
  (4,"Quail","Melendez","056 6024 4752"),
  (5,"Meredith","Richardson","(016720) 01634"),
  (6,"Lenore","Coffey","0800 039 5339"),
  (7,"Jerry","Strong","(0191) 406 9759"),
  (8,"Alexa","Moreno","0800 872 3392"),
  (9,"Buckminster","Garner","0845 46 48"),
  (10,"Jescie","Nelson","(020) 2356 4055");
INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (11,"Vivien","Giles","0936 002 7123"),
  (12,"Rhea","Bernard","076 7228 1129"),
  (13,"Kasper","Hensley","07640 843171"),
  (14,"Stephen","Suarez","076 3813 4555"),
  (15,"Jane","Gilliam","056 8481 1865"),
  (16,"Cole","Hammond","(01365) 33747"),
  (17,"Plato","Harrell","0841 241 0936"),
  (18,"Whoopi","Cohen","(016977) 6745"),
  (19,"Nash","Weiss","07624 694017"),
  (20,"Veronica","Mejia","076 8132 5522");
INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (21,"Harding","Castro","0800 751 5253"),
  (22,"Hannah","Rhodes","0317 141 8054"),
  (23,"Rogan","Ross","076 1613 3255"),
  (24,"Ursula","Richmond","(01629) 219971"),
  (25,"Haley","Crane","076 3514 1506"),
  (26,"Rogan","Anderson","055 4784 2957"),
  (27,"Merritt","Watson","076 7527 2584"),
  (28,"Bruce","Pace","(016977) 1533"),
  (29,"Travis","Stevenson","0800 1111"),
  (30,"Germaine","Stephenson","(01821) 338131");
INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (31,"Warren","Barrett","076 6491 8642"),
  (32,"Ivor","Rutledge","0306 960 1451"),
  (33,"Kaitlin","Harvey","0800 923674"),
  (34,"Jordan","Howe","076 7161 8815"),
  (35,"Brielle","Mcclure","07874 021346"),
  (36,"Rhonda","Mullen","0328 288 4513"),
  (37,"Denton","Hobbs","0961 352 3324"),
  (38,"Erica","Galloway","(017787) 87716"),
  (39,"Vance","Frazier","07624 588175"),
  (40,"Rana","Dickerson","07624 582274");
INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (41,"Owen","Fuller","0357 818 2430"),
  (42,"Melanie","Aguilar","(015890) 75725"),
  (43,"Winifred","Deleon","07767 681671"),
  (44,"Mark","Kidd","(0141) 037 8925"),
  (45,"Curran","Graham","(01102) 74856"),
  (46,"Tiger","Drake","0987 581 1554"),
  (47,"Cora","Romero","07624 246522"),
  (48,"Stacy","Carver","056 5418 5032"),
  (49,"Jarrod","Greer","0913 715 6852"),
  (50,"Thomas","Lambert","0800 470 7525");
INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (51,"Keaton","Casey","070 4247 2497"),
  (52,"Hedy","Potts","0800 319 8458"),
  (53,"Keiko","Mueller","056 4374 6180"),
  (54,"Zoe","Foster","(016977) 4368"),
  (55,"Brian","Pate","0845 46 46"),
  (56,"Tanner","Steele","(022) 3341 4349"),
  (57,"Ann","Leon","0800 385824"),
  (58,"Aline","Steele","07624 578372"),
  (59,"Zephr","Cote","0800 450 7725"),
  (60,"Dana","Baird","0800 1111");
INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (61,"Boris","Buchanan","(01653) 63454"),
  (62,"Ethan","Harmon","(0113) 716 5781"),
  (63,"Naida","Maxwell","(01858) 106236"),
  (64,"Hanna","Sharpe","0999 338 5682"),
  (65,"Venus","Cook","0800 1111"),
  (66,"Owen","Powell","055 6277 8878"),
  (67,"Rebekah","Vaughan","055 4618 4433"),
  (68,"Rahim","Wilkinson","07624 338865"),
  (69,"Margaret","Odom","0800 1111"),
  (70,"Ignatius","Murphy","(0171) 654 8427");
INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (71,"Lev","Kline","(0112) 568 2184"),
  (72,"Aquila","Gill","0845 46 42"),
  (73,"Orlando","Baker","(013764) 42082"),
  (74,"Ima","Mclaughlin","(023) 2654 3220"),
  (75,"Basil","Pratt","076 4630 8726"),
  (76,"Robert","Shaw","0500 664778"),
  (77,"Lawrence","Rice","055 4763 5493"),
  (78,"Hayes","Dickson","0845 46 42"),
  (79,"Kathleen","Morgan","0845 46 45"),
  (80,"Oren","Wilkins","0934 324 4331");
INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (81,"Daryl","Parks","(0101) 964 8505"),
  (82,"Reese","Holcomb","(018109) 38019"),
  (83,"Valentine","Boyer","0333 074 6798"),
  (84,"Mona","Edwards","0800 255 8126"),
  (85,"Dale","Roy","0800 115832"),
  (86,"Echo","Nelson","07418 882424"),
  (87,"Gemma","Kerr","(018359) 17263"),
  (88,"Winter","Dalton","0800 1111"),
  (89,"Gretchen","Aguirre","(0114) 361 2011"),
  (90,"Sacha","Gonzales","0845 46 47");
INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (91,"Roary","Pratt","0904 236 4273"),
  (92,"Jolene","Henry","0800 1111"),
  (93,"Trevor","Yates","0803 211 4478"),
  (94,"Naida","Morrison","(015126) 50268"),
  (95,"Dillon","O'connor","(0112) 267 7852"),
  (96,"Mollie","Hayes","0800 334 0583"),
  (97,"Bevis","Cooley","(01225) 21066"),
  (98,"Drew","Wilkerson","07624 886680"),
  (99,"Merrill","Cooper","07624 453636"),
  (100,"Reagan","Roth","076 2471 3412");
INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (101,"Igor","Hansen","(01164) 79874"),
  (102,"Madeline","Mathews","056 3927 4848"),
  (103,"Drew","Odom","(01306) 24962"),
  (104,"Meredith","Morgan","076 6383 6411"),
  (105,"Len","Cameron","(016977) 7502"),
  (106,"Tanner","Huff","07146 427705"),
  (107,"Megan","Edwards","(016977) 7306"),
  (108,"Harper","Stevens","0500 633242"),
  (109,"Liberty","Pace","0500 876340"),
  (110,"Rae","Vaughn","(0116) 815 6543");
INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (111,"Oprah","Austin","(0101) 893 8159"),
  (112,"Maxwell","Lancaster","0813 480 7703"),
  (113,"Lev","Mclaughlin","(01438) 685768"),
  (114,"Sacha","Ingram","056 8837 5472"),
  (115,"Brent","Cash","(0114) 854 2255"),
  (116,"Quentin","Gates","0800 457701"),
  (117,"Hiroko","Mcneil","070 9044 8042"),
  (118,"Branden","Stark","0954 183 9542"),
  (119,"Amethyst","Craft","076 8525 5205"),
  (120,"Madison","Blanchard","0311 377 6389");
INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (121,"Juliet","Mcfarland","070 2151 2145"),
  (122,"Ethan","Mathews","(01811) 741219"),
  (123,"Stephen","Navarro","0978 409 0967"),
  (124,"Walker","Mccoy","(026) 6041 7183"),
  (125,"Barrett","Byrd","070 9414 5492"),
  (126,"Yvette","Oneil","0800 126 8261"),
  (127,"Tara","Calhoun","0854 120 6485"),
  (128,"Ignatius","Douglas","(024) 8721 3522"),
  (129,"Chastity","Yates","(024) 9613 7834"),
  (130,"Quintessa","Barrett","(01465) 23537");
INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (131,"Michelle","Dickerson","0500 365136"),
  (132,"Isabella","Duran","0385 355 8413"),
  (133,"Hall","Maldonado","(01583) 863983"),
  (134,"Brian","Floyd","0500 963325"),
  (135,"Chelsea","Leonard","0374 358 4370"),
  (136,"Charissa","Ayala","(01451) 57653"),
  (137,"Hyatt","Wood","055 3042 1904"),
  (138,"Ulric","Dotson","(01254) 55533"),
  (139,"Kelsie","Robbins","0800 358523"),
  (140,"Fay","Sparks","0320 444 6597");
INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (141,"Andrew","Erickson","076 4642 0115"),
  (142,"Debra","West","0987 383 6101"),
  (143,"Nigel","Caldwell","0800 041433"),
  (144,"Elton","Gould","056 8442 8027"),
  (145,"May","Cleveland","(028) 7744 8240"),
  (146,"Ifeoma","Vang","(0111) 596 5386"),
  (147,"Mark","Christian","(01616) 131261"),
  (148,"Deborah","Waters","07624 236087"),
  (149,"Levi","Sargent","(020) 2362 3593"),
  (150,"Hector","Kinney","(0116) 304 2544");
INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (151,"Boris","Leon","070 8686 6922"),
  (152,"Ferdinand","Larson","07123 835148"),
  (153,"Drew","Weber","0800 1111"),
  (154,"Branden","Flynn","055 5318 1854"),
  (155,"Yardley","Taylor","(0161) 373 6284"),
  (156,"Jameson","Mcclain","056 3755 4432"),
  (157,"Denton","Norman","0845 46 46"),
  (158,"Bradley","Russo","0800 745 8364"),
  (159,"Dai","Singleton","0371 763 1451"),
  (160,"Kennedy","Wyatt","076 6327 7142");
INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (161,"Leah","Atkins","(019665) 26132"),
  (162,"Noelle","Leonard","(0101) 534 3081"),
  (163,"Irma","Clayton","0966 730 5121"),
  (164,"Xanthus","Mendoza","(016977) 2346"),
  (165,"Reece","Cohen","(016977) 6735"),
  (166,"Nero","Hancock","07454 895360"),
  (167,"Kylynn","Spence","0850 173 2417"),
  (168,"Lionel","Juarez","07658 796214"),
  (169,"Renee","Pugh","07624 144028"),
  (170,"Kasimir","Hopkins","(016977) 7657");
INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (171,"Nicholas","Nash","055 0949 6044"),
  (172,"Jonas","Merrill","(028) 4227 8541"),
  (173,"Keely","Owen","0500 198218"),
  (174,"Jacob","Chapman","0800 1111"),
  (175,"Dorothy","Cruz","0800 1111"),
  (176,"Minerva","Dale","(0191) 857 7833"),
  (177,"Jameson","Manning","070 1750 6550"),
  (178,"Burke","Decker","(0131) 101 3543"),
  (179,"Neil","Willis","0500 165788"),
  (180,"Florence","O'donnell","(01833) 31261");
INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (181,"Galena","Rodriquez","0334 228 1829"),
  (182,"Emerson","Everett","(0118) 404 4724"),
  (183,"Ulric","Tran","(0112) 177 4845"),
  (184,"Gannon","Singleton","(01688) 28158"),
  (185,"Portia","Buck","0800 1111"),
  (186,"Ezekiel","Olsen","055 8206 4246"),
  (187,"Dante","Poole","0977 242 7437"),
  (188,"Malik","Howell","(016977) 0440"),
  (189,"Summer","Merrill","(024) 1373 7713"),
  (190,"James","Glenn","0800 044046");
INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (191,"Regan","Huff","07564 232466"),
  (192,"Rana","Blake","076 5571 5739"),
  (193,"Destiny","Evans","(016977) 7546"),
  (194,"Orlando","Martin","(01144) 35751"),
  (195,"Eliana","French","0500 054982"),
  (196,"Keefe","Bishop","(016977) 1044"),
  (197,"Gavin","Berger","(016977) 4827"),
  (198,"Piper","Farley","(0161) 540 7470"),
  (199,"Keefe","Hudson","(027) 3856 0918"),
  (200,"Dante","Taylor","076 4527 5133");
INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (201,"Yvonne","Munoz","(024) 2111 3472"),
  (202,"Brendan","Church","056 1862 2851"),
  (203,"Dennis","Pope","0800 1111"),
  (204,"Sacha","Hewitt","0800 422 2555"),
  (205,"Otto","Chavez","(016977) 3994"),
  (206,"Daniel","Petty","0800 848 9877"),
  (207,"Chase","Le","0500 452204"),
  (208,"Sebastian","Kirby","07324 242361"),
  (209,"Cherokee","Beach","(01684) 13435"),
  (210,"Farrah","Rojas","0800 1111");
INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (211,"Christian","Kirby","076 6473 1294"),
  (212,"Pamela","Gardner","(012258) 54069"),
  (213,"Willow","Larsen","(025) 6598 4676"),
  (214,"Allistair","Guy","07812 535871"),
  (215,"Nasim","West","076 6315 0633"),
  (216,"Chancellor","Campbell","056 8990 2247"),
  (217,"Hadley","Mccall","07624 652917"),
  (218,"Francis","Nash","055 9652 7136"),
  (219,"Penelope","Summers","(0131) 813 8520"),
  (220,"Daquan","Horn","0333 756 7354");
INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (221,"Mason","Chapman","070 1509 4862"),
  (222,"Denise","Patel","(01862) 776152"),
  (223,"Cyrus","Burks","(01736) 556071"),
  (224,"Camille","Harrison","(025) 8425 5771"),
  (225,"Sheila","Daniels","(01699) 844823"),
  (226,"Amir","Gilbert","0321 285 7433"),
  (227,"Sandra","Duncan","0354 627 6088"),
  (228,"Uma","Delacruz","(01612) 922447"),
  (229,"Elliott","Turner","(01257) 531808"),
  (230,"Kylan","Gates","055 5675 1868");
INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (231,"Fuller","Patel","0500 196622"),
  (232,"Grace","Galloway","(01436) 67811"),
  (233,"Ashely","Savage","0812 612 3588"),
  (234,"Lee","Sanders","0800 1111"),
  (235,"Lacota","Combs","(017246) 47632"),
  (236,"Quamar","Vang","(01257) 09332"),
  (237,"Jasper","Knapp","(01086) 115265"),
  (238,"Hakeem","Sutton","(0119) 366 4178"),
  (239,"Cooper","Gray","(016977) 1744"),
  (240,"Channing","Willis","07624 565295");
INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (241,"Hyacinth","Casey","(016977) 5847"),
  (242,"Shafira","Brooks","0800 983 7443"),
  (243,"Carl","Farrell","(016977) 1622"),
  (244,"Kalia","Castillo","056 1567 3562"),
  (245,"Keefe","Wilkins","(016977) 9873"),
  (246,"Coby","Herring","0800 1111"),
  (247,"Kieran","Nash","0800 745 2408"),
  (248,"Adam","Richmond","076 8532 4550"),
  (249,"Aristotle","Shepherd","(012506) 47415"),
  (250,"Liberty","Wong","(010580) 96504");
INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (251,"Kelsie","Woods","0845 46 49"),
  (252,"Alec","Dyer","0938 831 6325"),
  (253,"Reed","Hunter","076 6831 6583"),
  (254,"Chadwick","Mccarthy","0367 997 9324"),
  (255,"Dana","Acosta","0845 46 44"),
  (256,"Noble","Olson","(016977) 1257"),
  (257,"Peter","Molina","(018177) 29176"),
  (258,"Whoopi","Price","0800 617176"),
  (259,"Nicole","Jimenez","070 8619 3762"),
  (260,"Karyn","Watson","0800 268976");
INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (261,"Alice","Cotton","07624 384384"),
  (262,"Addison","Cantrell","0909 482 6368"),
  (263,"Austin","Wyatt","0845 46 47"),
  (264,"Sophia","Dickerson","07624 030597"),
  (265,"Erin","Griffith","(016977) 5421"),
  (266,"Dolan","Pierce","076 8815 6711"),
  (267,"Lacota","Durham","056 3735 3578"),
  (268,"Samantha","Townsend","(0151) 275 4954"),
  (269,"Justina","Gutierrez","0845 46 46"),
  (270,"Price","House","056 9893 6024");
INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (271,"Henry","Brennan","0500 242662"),
  (272,"Orson","Alexander","055 5153 1596"),
  (273,"Skyler","Alvarez","(012567) 82458"),
  (274,"Orla","Armstrong","(024) 1208 2350"),
  (275,"Pandora","Wong","0800 1111"),
  (276,"Farrah","Thornton","0800 1111"),
  (277,"Denton","Combs","07624 251526"),
  (278,"Kai","Morgan","07624 637537"),
  (279,"Chava","Cobb","(018433) 61782"),
  (280,"Ivan","Page","0812 085 8368");
INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (281,"Rachel","Riggs","0800 451806"),
  (282,"Emi","Ramsey","(011355) 97775"),
  (283,"Ali","Young","(0141) 048 5072"),
  (284,"Amity","Hebert","(0118) 535 3620"),
  (285,"Ashely","Suarez","0314 762 2528"),
  (286,"Macey","Rhodes","(01369) 93119"),
  (287,"Malik","Rasmussen","(0111) 265 1821"),
  (288,"Bevis","Pace","0800 804 6248"),
  (289,"Brenden","Carrillo","(01504) 348286"),
  (290,"Steel","Ferguson","0800 194 8792");
INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (291,"Slade","Bowman","(016977) 4236"),
  (292,"Jaime","Whitaker","(01167) 20414"),
  (293,"Griffin","Mueller","(01862) 55188"),
  (294,"Hiroko","Vazquez","0846 858 6638"),
  (295,"Beck","Hunter","0800 366 8123"),
  (296,"Duncan","Drake","056 2461 4643"),
  (297,"Ishmael","Navarro","0800 1111"),
  (298,"Nicholas","Valdez","(0118) 946 6765"),
  (299,"Arthur","Morse","0500 625628"),
  (300,"Rooney","Knowles","0800 1111");
INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (301,"Aline","Logan","(0141) 254 8941"),
  (302,"Phelan","Battle","(015613) 96544"),
  (303,"Kimberly","Navarro","0911 313 6158"),
  (304,"Barry","Buckley","0500 547462"),
  (305,"Sade","Fleming","056 6592 5237"),
  (306,"Yael","Ware","(016977) 6372"),
  (307,"Eagan","Johns","0304 884 7526"),
  (308,"Remedios","Weber","0800 118467"),
  (309,"Pamela","Roth","(01927) 806213"),
  (310,"Daria","Waters","(019783) 17232");
INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (311,"Abdul","Andrews","0819 746 3316"),
  (312,"Noble","Herring","(01346) 21575"),
  (313,"Azalia","Hammond","0800 988 4888"),
  (314,"Shellie","Cortez","056 5317 8362"),
  (315,"Zelda","Vincent","(0114) 604 5915"),
  (316,"Lucian","Mcknight","(011014) 20817"),
  (317,"Hermione","Huber","(01054) 708966"),
  (318,"Nadine","May","055 5602 6382"),
  (319,"Erin","White","07752 385433"),
  (320,"Talon","Bass","(023) 8533 3271");
INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (321,"Amery","Henry","0916 542 7894"),
  (322,"Maryam","Morton","070 0857 1770"),
  (323,"Rhonda","Contreras","0500 277377"),
  (324,"Roth","Jefferson","055 1988 5172"),
  (325,"Scott","Griffith","0800 1111"),
  (326,"Xyla","Castro","070 4662 1755"),
  (327,"Finn","O'brien","0335 132 3162"),
  (328,"Raja","Mayer","(016977) 1203"),
  (329,"Nayda","Cantrell","07164 772775"),
  (330,"Karina","Nash","07289 468643");
INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (331,"Iris","Lindsey","(01302) 136891"),
  (332,"Cameron","Fox","0500 322551"),
  (333,"Castor","Lucas","0387 823 3065"),
  (334,"Pearl","Mitchell","(01807) 12436"),
  (335,"Xaviera","Todd","07723 712147"),
  (336,"Adria","Serrano","0845 46 43"),
  (337,"Octavius","Snyder","076 9489 6551"),
  (338,"Olympia","Perkins","(01371) 28312"),
  (339,"Julian","Blanchard","0800 737746"),
  (340,"Shafira","Hogan","(01873) 62688");
INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (341,"Destiny","Osborne","0500 754235"),
  (342,"Joshua","Ward","(022) 8577 7659"),
  (343,"Morgan","Andrews","055 4245 1826"),
  (344,"Randall","Cabrera","0896 644 2644"),
  (345,"Ezekiel","Bond","(016977) 2047"),
  (346,"Jenette","Curry","0500 846811"),
  (347,"Henry","Beach","076 0465 4219"),
  (348,"Ross","Sparks","(017337) 87152"),
  (349,"Emma","Stephenson","(01167) 75122"),
  (350,"Robin","Campos","070 9217 5688");
INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (351,"Emerald","Stafford","0800 474 0652"),
  (352,"Urielle","Hutchinson","(029) 1982 7118"),
  (353,"Wylie","Browning","055 6116 0455"),
  (354,"Daniel","Brewer","0357 342 1273"),
  (355,"Blake","Moss","076 5237 2665"),
  (356,"Mona","Sampson","(0112) 872 4147"),
  (357,"Kieran","Rose","(020) 9555 0529"),
  (358,"Chaney","West","07584 127436"),
  (359,"Debra","Clements","0800 1111"),
  (360,"Cullen","Carter","0925 423 3437");
INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (361,"Ignatius","Rodgers","07431 515164"),
  (362,"Nina","Petersen","076 5721 8475"),
  (363,"Patrick","Pierce","070 8651 3041"),
  (364,"Colt","Duran","(016977) 4212"),
  (365,"Isaiah","Knapp","070 4443 6742"),
  (366,"Phillip","Estes","(01815) 34000"),
  (367,"Yuli","Bond","070 7796 4527"),
  (368,"Sydney","Miles","0500 305074"),
  (369,"Reagan","Vincent","056 2096 0782"),
  (370,"Veronica","Mendoza","0500 337678");
INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (371,"Alisa","Simpson","0800 904 8734"),
  (372,"Fay","Chambers","0845 46 46"),
  (373,"Cain","Porter","0903 336 1510"),
  (374,"Rhona","Graves","076 6603 9243"),
  (375,"Emerson","Mullins","(012139) 41296"),
  (376,"Amaya","Hooper","(0141) 406 2088"),
  (377,"Paloma","Griffith","(0141) 753 6884"),
  (378,"Brynn","Shields","056 7033 1424"),
  (379,"Amber","Roth","0821 873 3876"),
  (380,"Regan","Mitchell","07259 972305");
INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (381,"Jada","Woodward","(0119) 378 2334"),
  (382,"Miranda","Baker","055 6418 6208"),
  (383,"Brooke","Leonard","(016977) 3847"),
  (384,"Morgan","Bender","076 2463 1437"),
  (385,"Jescie","Lewis","0800 338765"),
  (386,"Leigh","Woodard","(012610) 55184"),
  (387,"Cole","Webb","070 1687 1821"),
  (388,"Shelley","Armstrong","(016232) 44572"),
  (389,"Alea","Nieves","070 1692 7699"),
  (390,"Elvis","Foster","0500 872619");
INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (391,"Jamal","Hobbs","07462 435516"),
  (392,"Michael","Shields","(016977) 3850"),
  (393,"Channing","Blanchard","(028) 2464 9552"),
  (394,"Latifah","Olsen","0500 137252"),
  (395,"Hayes","Glover","070 8758 0281"),
  (396,"Dillon","Pearson","0845 46 41"),
  (397,"Xavier","Oneil","0931 112 1748"),
  (398,"Shana","Holloway","(0191) 748 2902"),
  (399,"Vivian","Pope","0800 1111"),
  (400,"Blaze","Mueller","0800 467 3687");
INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (401,"George","Maddox","0363 587 9597"),
  (402,"Rudyard","Kaufman","0800 272832"),
  (403,"Jennifer","Riddle","070 0016 9852"),
  (404,"Raphael","Rodriguez","0500 911460"),
  (405,"Byron","Roach","055 8705 3731"),
  (406,"Celeste","Landry","0500 731552"),
  (407,"Mufutau","Woodard","(018587) 56856"),
  (408,"Jared","Merritt","0800 380687"),
  (409,"Petra","Rivas","055 4829 3431"),
  (410,"Raya","Abbott","055 3038 5224");
INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (411,"Reed","Saunders","(026) 7457 5663"),
  (412,"Kessie","Cooley","(026) 0637 1254"),
  (413,"Joseph","Wilcox","0800 1111"),
  (414,"Mara","Macdonald","(01855) 75422"),
  (415,"Vincent","Singleton","(0151) 224 0872"),
  (416,"Hamilton","Allen","0800 1111"),
  (417,"Alfonso","Weaver","056 0167 7735"),
  (418,"Ignatius","Giles","07680 952858"),
  (419,"Griffin","Stanton","(01135) 93122"),
  (420,"Jackson","Perkins","0873 115 3139");
INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (421,"Palmer","Prince","0800 838 2886"),
  (422,"Murphy","Salinas","(0118) 305 4476"),
  (423,"Amy","Mclaughlin","055 8105 1895"),
  (424,"Carlos","Buck","(013647) 15571"),
  (425,"Paula","Pacheco","(01751) 663608"),
  (426,"Aristotle","Molina","055 7726 1567"),
  (427,"Ishmael","Erickson","0972 145 8171"),
  (428,"Wynter","Travis","070 5645 8219"),
  (429,"Hector","Lester","0845 46 45"),
  (430,"Latifah","Roy","056 5151 9751");
INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (431,"Sasha","Logan","(014677) 08452"),
  (432,"Hillary","Dixon","055 7727 2452"),
  (433,"Gabriel","Douglas","0500 636711"),
  (434,"Inez","Leach","0500 566222"),
  (435,"Alisa","Wallace","07629 342515"),
  (436,"Malik","Reeves","0800 1111"),
  (437,"Mariko","Garner","(01391) 31139"),
  (438,"Ira","Kirk","0902 913 9875"),
  (439,"Uriel","Keith","070 3525 1491"),
  (440,"Demetrius","Lyons","070 7159 8322");
INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (441,"Irma","Sexton","(016977) 2495"),
  (442,"Bernard","Raymond","0337 853 2628"),
  (443,"Avye","Cruz","(014184) 33654"),
  (444,"Timothy","Clements","(0117) 274 4333"),
  (445,"Yen","Jensen","0845 46 42"),
  (446,"Ella","Chandler","(016977) 1681"),
  (447,"Pearl","Mcgowan","(0181) 098 7958"),
  (448,"Kelsie","Vance","(01363) 65346"),
  (449,"Jack","Pugh","0845 46 42"),
  (450,"Destiny","Kent","(0111) 023 8160");
INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (451,"Indigo","Mcneil","055 9801 4786"),
  (452,"Walter","Reid","0845 46 44"),
  (453,"Haviva","Grant","0940 558 4717"),
  (454,"Basia","Bryan","(01755) 95375"),
  (455,"Ivy","Herring","0800 888 8267"),
  (456,"Alyssa","Sellers","07624 845296"),
  (457,"Belle","Johns","056 9579 2503"),
  (458,"Serina","Burton","0800 244067"),
  (459,"Hop","Cline","(014586) 53603"),
  (460,"Thaddeus","Benjamin","0839 912 3973");
INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (461,"Wallace","Wolf","0825 674 8450"),
  (462,"Alexa","Kennedy","070 2993 8274"),
  (463,"Quintessa","Goff","(014097) 00098"),
  (464,"Harrison","Alexander","0842 887 5761"),
  (465,"Ali","Skinner","(0171) 117 1327"),
  (466,"Iola","Nunez","0800 1111"),
  (467,"Signe","Griffith","0800 1111"),
  (468,"Daquan","Dotson","(0110) 758 1354"),
  (469,"Murphy","Bowers","076 7172 4584"),
  (470,"Marshall","Brewer","0800 1111");
INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (471,"Darryl","Myers","056 8258 2842"),
  (472,"Remedios","Carter","(0111) 671 2785"),
  (473,"Desiree","Shelton","076 2430 3281"),
  (474,"Wendy","Willis","07712 251676"),
  (475,"Cassidy","William","0363 006 3131"),
  (476,"Aileen","Carter","0845 46 41"),
  (477,"Blythe","Battle","07624 865775"),
  (478,"Camille","Dodson","0500 482009"),
  (479,"Macaulay","Hull","0500 702176"),
  (480,"Audrey","Ortega","0800 786 5643");
INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (481,"Jonah","Mccormick","0382 125 2652"),
  (482,"Castor","Dean","0500 723561"),
  (483,"Tiger","Dalton","0335 314 1766"),
  (484,"Dana","Branch","056 3524 5865"),
  (485,"Lyle","Bryan","07508 942944"),
  (486,"Kasper","Merrill","056 3557 3566"),
  (487,"Luke","Hunt","07871 043561"),
  (488,"Joy","Hill","0845 46 40"),
  (489,"Louis","Burch","056 0753 8381"),
  (490,"Leonard","Small","0800 1111");
INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (491,"Linus","Hill","(023) 0842 6381"),
  (492,"Deacon","Rodriguez","(01842) 778041"),
  (493,"Zachary","Gardner","(0131) 664 5237"),
  (494,"Breanna","Boyd","0800 704 2258"),
  (495,"Eliana","Guzman","(016455) 78336"),
  (496,"Moses","Riddle","055 5086 9557"),
  (497,"Stacy","Weiss","(014166) 68396"),
  (498,"Oprah","Slater","0812 341 4585"),
  (499,"Kennedy","Wiley","076 5022 5384"),
  (500,"Nash","Paul","(01847) 68777");




use organization;

INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (1000,"Bala","Samuel","1-233-701-8681"),
  (501,"Hasan","Sai","732-7859"),
  (502,"Tushar","Rajagopal","1-613-588-6921"),
  (503,"Raja","Mehta","1-566-785-5371"),
  (504,"Rana","Rastogi","694-7152"),
  (505,"Amit","Dhawan","882-5281"),
  (506,"Adnan","Narang","377-6804"),
  (507,"Rohan","Neelam","872-7746"),
  (508,"Vijaya","Arun","1-729-787-4836"),
  (509,"Rajani","Chakrabarti","351-5804");
INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (510,"Sher","Bhat","156-6178"),
  (511,"Prasenjit","Sethi","126-6295"),
  (512,"Kishor","Mati","1-510-411-7447"),
  (513,"Vipin","Chande","1-557-718-7412"),
  (514,"Rahul","Madan","517-8653"),
  (515,"Ahmad","Verma","868-6319"),
  (516,"Vishnu","Nirmal","252-6312"),
  (517,"Prabhat","Narang","1-284-666-9781"),
  (518,"Vishnu","Chandra","661-9695"),
  (519,"Tamanna","Narang","348-7537");
INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (520,"Amin","Meena","448-3482"),
  (521,"Khan","Rai","1-551-524-3271"),
  (522,"Abhay","Lalit","1-275-996-2272"),
  (523,"Manas","Suri","663-5683"),
  (524,"Anupam","Muthu","1-632-257-7996"),
  (525,"Sandip","Samuel","1-305-656-6852"),
  (526,"Akbar","Mahajan","1-651-784-2545"),
  (527,"Sudarshan","Chauhan","1-725-462-5575"),
  (528,"Abhinav","Nagpal","617-1656"),
  (529,"Vinay","Swami","1-725-531-4989");
INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (530,"Nur","Narang","333-0730"),
  (531,"Nanda","Prasad","212-7742"),
  (532,"Ramachandra","Madan","733-8377"),
  (533,"Manish","Mehta","1-248-392-0581"),
  (534,"Abhinav","Sandeep","818-9529"),
  (535,"Jayesh","Raji","1-724-353-7151"),
  (536,"Anish","Nirmal","1-833-865-1831"),
  (537,"Aruna","Bhat","1-619-126-3572"),
  (538,"Maninder","Mehta","871-1218"),
  (539,"Raghu","Persaud","568-0257");
INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (540,"Padma","Saxena","260-3515"),
  (541,"Kamala","Jindal","787-2726"),
  (542,"Sultan","Chandrasekar","1-456-743-4840"),
  (543,"Navneet","Engineer","1-853-380-5567"),
  (544,"Anbu","Subramanian","1-468-561-5894"),
  (545,"Hardeep","Raji","855-4834"),
  (546,"Indrajit","Chauhan","256-2879"),
  (547,"Navin","Veer","1-848-312-8742"),
  (548,"Maninder","Chandra","673-7773"),
  (549,"Yasir","Chandrasekar","1-572-274-1508");
INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (550,"Amitabh","Meena","328-3564"),
  (551,"Jahangir","Rai","1-971-495-2333"),
  (552,"Nur","Saxena","420-6871"),
  (553,"Imtiyaz","Neel","1-388-231-7759"),
  (554,"Mandeep","Samuel","402-4243"),
  (555,"Manjeet","Suri","1-855-452-7392"),
  (556,"Rishi","Darsha","1-841-477-2122"),
  (557,"Rajnish","Lal","1-752-587-1832"),
  (558,"Ranjit","Chaudhary","1-616-183-6321"),
  (559,"Indrajit","Srivastav","1-529-506-1781");
INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (560,"Prasad","Nagpal","1-774-487-3204"),
  (561,"Amin","Dhawan","822-5707"),
  (562,"Surya","Nagpal","522-6893"),
  (563,"Akbar","Subram","565-4866"),
  (564,"Farid","Saini","176-1448"),
  (565,"Siddhartha","Rai","521-6823"),
  (566,"Khan","Sai","1-278-424-7837"),
  (567,"Amandeep","Sai","1-894-221-8155"),
  (568,"Vimal","Raje","1-570-795-4572"),
  (569,"Gul","Krishnamurthy","766-5856");
INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (570,"Chetan","Ganesh","535-7775"),
  (571,"Mitra","Kumar","257-7756"),
  (572,"Rahul","Lalit","1-774-347-5649"),
  (573,"Suraj","Malhotra","1-255-254-2667"),
  (574,"Singh","Chande","1-926-471-7768"),
  (575,"Durga","Engineer","881-2837"),
  (576,"Dharma","Lata","338-7016"),
  (577,"Pratap","Arun","1-865-972-6833"),
  (578,"Kishor","Manohar","1-575-774-7278"),
  (579,"Azad","Sahni","525-8583");
INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (580,"Swarna","Neelam","435-6365"),
  (581,"Shahid","Neelam","911-3572"),
  (582,"Pran","Charan","1-419-885-8502"),
  (583,"Jaywant","Raji","1-250-345-6196"),
  (584,"Madhur","Jindal","232-4480"),
  (585,"Shresth","Joshi","1-992-726-4727"),
  (586,"Rajesh","Jindal","864-5418"),
  (587,"Swapnil","Raman","408-4438"),
  (588,"Nadim","Rai","470-7375"),
  (589,"Narendra","Nara","1-352-681-7541");
INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (590,"Ravi","Vijaya","1-347-526-8111"),
  (591,"Dev","Mati","574-5381"),
  (592,"Karan","Ranga","741-4280"),
  (593,"Sunil","Gandhi","1-302-606-4204"),
  (594,"Vipul","Arun","852-0437"),
  (595,"Mani","Sara","710-1261"),
  (596,"Anik","Gandhi","242-7515"),
  (597,"Sonam","Narayan","1-748-464-1328"),
  (598,"Zafar","Madan","1-573-926-4695"),
  (599,"Akshay","Vish","428-6162");
INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (600,"Shandar","Patel","703-2542"),
  (601,"Ravi","Nigam","213-2483"),
  (602,"Anup","Bhat","1-827-447-4422"),
  (603,"Babur","Persaud","829-7474"),
  (604,"Sher","Vijaya","1-656-122-3541"),
  (605,"Navin","Charan","1-917-281-6676"),
  (606,"Chetan","Pal","1-233-783-3426"),
  (607,"Ajit","Sen","1-755-471-5610"),
  (608,"Vimal","Jindal","755-3654"),
  (609,"Inderpal","Chande","149-1287");
INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (610,"Zaman","Charan","673-0326"),
  (611,"Adnan","Nath","215-1228"),
  (612,"Tamanna","Pal","613-6435"),
  (613,"Nitya","Subram","384-3579"),
  (614,"Mamun","Chauhan","633-4280"),
  (615,"Dayaram","Mehta","322-5855"),
  (616,"Tamanna","Sai","961-7562"),
  (617,"Azhar","Uddin","1-749-635-3266"),
  (618,"Rajani","Sai","264-9243"),
  (619,"Manjeet","Kapoor","514-3185");
INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (620,"Madhukar","Tyagi","916-4763"),
  (621,"Niraj","Raje","1-229-265-6938"),
  (622,"Chandan","Sara","678-7842"),
  (623,"Shrinivas","Verma","258-1633"),
  (624,"Rajnish","Srivastava","122-3865"),
  (625,"Anil","Nara","616-1282"),
  (626,"Navneet","Roy","1-776-964-0682"),
  (627,"Rahul","Roy","756-0288"),
  (628,"Nitin","Chande","645-8152"),
  (629,"Mamun","Chauhan","666-2423");
INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (630,"Prasanna","Subram","1-610-665-4447"),
  (631,"Nirav","Roy","1-657-813-1270"),
  (632,"Indrajit","Malhotra","796-0756"),
  (633,"Navdeep","Mati","294-2710"),
  (634,"Chandra","Jana","1-443-718-3213"),
  (635,"Swarna","Puri","1-616-662-4644"),
  (636,"Hardeep","Charan","1-935-773-0766"),
  (637,"Abhilash","Jindal","1-721-408-7761"),
  (638,"Swapnil","Raje","1-488-310-1643"),
  (639,"Amir","Kapoor","1-744-111-6375");
INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (640,"Arijit","Sethi","1-348-365-7330"),
  (641,"Anand","Jai","524-8017"),
  (642,"Nadim","Roy","1-866-833-5284"),
  (643,"Sumit","Muthu","1-724-251-2323"),
  (644,"Kshitij","Chaudhary","451-1127"),
  (645,"Abhijit","Manju","104-4351"),
  (646,"Rama","Chander","1-526-654-7769"),
  (647,"Darshan","Chander","658-1066"),
  (648,"Sumit","Chakrabarti","310-4521"),
  (649,"Partha","Punj","1-741-451-2445");
INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (650,"Sudhir","Srivas","1-225-651-2311"),
  (651,"Murugan","Anand","743-7663"),
  (652,"Shekar","Saini","968-1085"),
  (653,"Prem","Jai","374-7348"),
  (654,"Vipin","Raman","1-837-553-5148"),
  (655,"Nilam","Bhat","1-686-351-0000"),
  (656,"Maruf","Kumar","1-965-742-4536"),
  (657,"Manu","Chander","1-717-407-4860"),
  (658,"Mahendra","Neelam","315-4759"),
  (659,"Arijit","Jindal","1-919-863-5777");
INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (660,"Eshil","Subramani","1-537-624-0537"),
  (661,"Yash","Mittal","1-708-208-4540"),
  (662,"Siddhartha","Gandhi","1-735-333-8056"),
  (663,"Pallav","Uddin","1-655-468-1977"),
  (664,"Dev","Chaudhary","1-318-658-7266"),
  (665,"Sumantra","Subramanian","1-211-142-7560"),
  (666,"Maqsud","Arun","833-9156"),
  (667,"Rupinder","Dutta","1-704-267-6201"),
  (668,"Mani","Shan","761-4388"),
  (669,"Ahmad","Neel","633-7038");
INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (670,"Saral","Anand","575-0138"),
  (671,"Yash","Samuel","580-7751"),
  (672,"Sandip","Mittal","1-814-473-5842"),
  (673,"Anbu","Charan","857-0641"),
  (674,"Lal","Puri","262-7146"),
  (675,"Durga","Mehra","693-2158"),
  (676,"Lakshmi","Madan","1-568-564-7532"),
  (677,"Abbas","Mittal","1-825-919-4414"),
  (678,"Farhan","Gandhi","1-321-823-7737"),
  (679,"Rajnish","Veena","859-8992");
INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (680,"Adnan","Engineer","1-487-598-1421"),
  (681,"Shahzad","Mati","536-3441"),
  (682,"Aditya","Nigam","1-116-766-4645"),
  (683,"Mahmud","Manohar","1-271-261-5067"),
  (684,"Balwinder","Srivastav","1-958-305-5392"),
  (685,"Indrajit","Lata","536-5134"),
  (686,"Shahid","Sudha","1-721-629-6554"),
  (687,"Vishnu","Subramani","511-6069"),
  (688,"Siddhartha","Jana","725-7495"),
  (689,"Abhijit","Persaud","1-944-239-7410");
INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (690,"Arya","Chakrabarti","519-8199"),
  (691,"Zahir","Nita","428-9580"),
  (692,"Kiran","Saini","1-753-814-5597"),
  (693,"Shekar","Chande","537-5343"),
  (694,"Gurmeet","Sai","1-473-780-3523"),
  (695,"Tamanna","Rastogi","461-5531"),
  (696,"Rama","Neel","1-632-864-6616"),
  (697,"Sandip","Neelam","1-321-722-2421"),
  (698,"Anupam","Srivastav","873-3636"),
  (699,"Sultan","Prasad","714-0642");
INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (700,"Shakti","Vish","610-8847"),
  (701,"Murad","Bhatt","1-223-273-3955"),
  (702,"Ranjit","Saxena","1-504-767-4826"),
  (703,"Vimal","Mehra","1-388-736-4763"),
  (704,"Prabhat","Saxena","472-6420"),
  (705,"Sumantra","Muthu","284-6867"),
  (706,"Samir","Sehgal","468-0123"),
  (707,"Mani","Chaudhary","1-348-198-8963"),
  (708,"Adnan","Madan","1-546-783-8906"),
  (709,"Prabodh","Sehgal","1-494-542-5080");
INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (710,"Nirmal","Nita","1-166-840-1572"),
  (711,"Khurshd","Srivastava","267-2937"),
  (712,"Anand","Raje","177-7061"),
  (713,"Shandar","Raman","1-268-358-1742"),
  (714,"Rajesh","Ranga","1-805-967-5375"),
  (715,"Abhijit","Joshi","1-706-513-0954"),
  (716,"Jagit","Srini","1-219-156-4950"),
  (717,"Vijaya","Ganesh","101-7348"),
  (718,"Kishor","Kumar","381-9978"),
  (719,"Nirav","Tyagi","306-2667");
INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (720,"Dharma","Pawan","1-862-470-1666"),
  (721,"Dev","Manohar","1-666-457-5713"),
  (722,"Rohan","Puri","1-529-389-0701"),
  (723,"Dhananjay","Neelam","792-4186"),
  (724,"Anish","Sudha","1-555-985-7887"),
  (725,"Sumit","Subram","665-8166"),
  (726,"Gurdeep","Punj","251-6207"),
  (727,"Madhukar","Swami","364-0623"),
  (728,"Anil","Dhawan","1-810-682-4411"),
  (729,"Raja","Malik","977-8537");
INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (730,"Aswathi","Vish","761-5157"),
  (731,"Balwinder","Lalit","1-691-413-1822"),
  (732,"Yasir","Sahni","1-854-982-6792"),
  (733,"Gul","Bhat","1-692-765-7466"),
  (734,"Abhinav","Bhatt","1-165-452-1128"),
  (735,"Subrahmanya","Malik","1-211-891-8425"),
  (736,"Mahmud","Malik","883-1722"),
  (737,"Hardeep","Srivas","371-8777"),
  (738,"Prem","Roy","672-6547"),
  (739,"Azad","Sethi","1-695-596-7149");
INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (740,"Swarna","Rajan","1-262-528-1571"),
  (741,"Vinay","Suri","1-875-923-6775"),
  (742,"Singh","Chandrasekar","818-4155"),
  (743,"Vimal","Chakrabarti","289-4506"),
  (744,"Amrit","Patel","367-5775"),
  (745,"Shandar","Lal","1-487-824-7966"),
  (746,"Kamala","Uddin","792-1415"),
  (747,"Rahul","Neelam","1-606-501-5614"),
  (748,"Sardar","Manohar","363-1739"),
  (749,"Shantanu","Pawan","327-1385");
INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (750,"Aditya","Sara","615-7885"),
  (751,"Sonam","Charan","253-8923"),
  (752,"Shandar","Verma","1-537-810-3681"),
  (753,"Nirmal","Charan","1-595-288-2575"),
  (754,"Anik","Aggarwal","947-8453"),
  (755,"Ahmad","Vish","1-742-116-3874"),
  (756,"Sushila","Samuel","1-111-426-0573"),
  (757,"Swapnil","Subram","867-5477"),
  (758,"Aditya","Roy","624-8547"),
  (759,"Jayesh","Soni","868-5690");
INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (760,"Shyama","Ranga","1-335-786-7654"),
  (761,"Chandrakant","Sandeep","935-6345"),
  (762,"Jagit","Srivastav","1-335-372-3239"),
  (763,"Tushar","Nara","677-6629"),
  (764,"Pratap","Malhotra","735-2578"),
  (765,"Manish","Nath","437-3263"),
  (766,"Jagit","Ranga","1-311-812-1680"),
  (767,"Anand","Persaud","347-3953"),
  (768,"Murugan","Jana","1-899-145-7142"),
  (769,"Madhur","Shan","825-5516");
INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (770,"Suman","Kishore","1-980-145-7159"),
  (771,"Maruf","Sahni","276-2761"),
  (772,"Muhammad","Nita","826-0368"),
  (773,"Sandip","Neelam","743-6749"),
  (774,"Adil","Malik","722-8633"),
  (775,"Anil","Neel","466-6408"),
  (776,"Aruna","Kumar","284-4343"),
  (777,"Anand","Raji","503-9463"),
  (778,"Abhishek","Meena","222-6363"),
  (779,"Zawar","Patel","1-547-631-6618");
INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (780,"Amarjeet","Ranga","1-375-668-2723"),
  (781,"Bala","Rai","1-640-306-6613"),
  (782,"Sandip","Sahni","1-632-972-7399"),
  (783,"Vinay","Tyagi","456-1241"),
  (784,"Gurmeet","Srivastav","1-628-748-8210"),
  (785,"Abbas","Bhatt","406-3277"),
  (786,"Vivek","Uddin","1-786-644-4745"),
  (787,"Gurdeep","Saxena","1-355-930-4969"),
  (788,"Ninad","Aggarwal","523-9524"),
  (789,"Shakti","Dhawan","1-150-376-8673");
INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (790,"Manish","Narayan","987-1563"),
  (791,"Nagendra","Swami","1-293-954-1741"),
  (792,"Hardeep","Soni","1-358-522-5672"),
  (793,"Pradip","Vish","1-456-138-6568"),
  (794,"Aniruddha","Sen","435-8767"),
  (795,"Sushila","Patel","1-858-337-3724"),
  (796,"Nitin","Chande","1-762-518-2376"),
  (797,"Prasenjit","Subramanian","683-5335"),
  (798,"Pran","Neela","1-259-726-6447"),
  (799,"Mohandas","Mittal","482-7710");
INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (800,"Babur","Neela","1-807-585-2303"),
  (801,"Mitra","Uddin","1-694-720-9715"),
  (802,"Suraj","Bhat","1-559-425-1937"),
  (803,"Aniruddha","Chander","1-686-839-6028"),
  (804,"Kalyan","Malik","1-727-914-7457"),
  (805,"Pradip","Naran","1-312-863-0942"),
  (806,"Prabodh","Ganesh","872-5353"),
  (807,"Partha","Ranga","1-361-401-3988"),
  (808,"Hasan","Sharma","1-471-348-5442"),
  (809,"Khurshd","Srini","1-881-163-4077");
INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (810,"Kanta","Chandra","1-760-517-4967"),
  (811,"Amrit","Kumar","827-1232"),
  (812,"Pran","Joshi","1-466-666-8523"),
  (813,"Hardeep","Vijaya","1-136-841-3460"),
  (814,"Chandan","Sehgal","267-8192"),
  (815,"Jahangir","Charan","1-566-383-5634"),
  (816,"Anuj","Lalit","1-415-263-8029"),
  (817,"Yash","Patel","483-5866"),
  (818,"Sukhbir","Puri","651-4384"),
  (819,"Kshitij","Krishnamurthy","1-266-251-8776");
INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (820,"Vipin","Subram","401-2416"),
  (821,"Anil","Rastogi","341-7993"),
  (822,"Ninad","Malik","1-347-234-1628"),
  (823,"Rakesh","Sandeep","746-4388"),
  (824,"Harsha","Chakrabarti","1-634-293-2798"),
  (825,"Murad","Nagpal","1-831-486-7543"),
  (826,"Prasenjit","Chauhan","946-6299"),
  (827,"Bala","Vijaya","1-982-303-2646"),
  (828,"Akbar","Malik","924-1176"),
  (829,"Anik","Chandra","605-8824");
INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (830,"Nirav","Shan","1-617-526-8727"),
  (831,"Vijaya","Ganesh","381-4766"),
  (832,"Asim","Subramanian","1-223-666-9314"),
  (833,"Vivek","Sehgal","1-717-443-6516"),
  (834,"Sumantra","Rajagopal","875-3298"),
  (835,"Anuj","Raji","1-614-698-4597"),
  (836,"Amit","Lal","686-8439"),
  (837,"Suman","Naran","621-9882"),
  (838,"Mahendra","Raji","738-7719"),
  (839,"Aniket","Suri","1-647-230-6055");
INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (840,"Durai","Srivas","1-211-574-6663"),
  (841,"Jayanta","Goel","754-5040"),
  (842,"Arijit","Madan","537-5582"),
  (843,"Manas","Rastogi","1-660-464-6577"),
  (844,"Akshay","Puri","281-8391"),
  (845,"Kanti","Mahajan","384-7345"),
  (846,"Agni","Anand","1-754-160-8767"),
  (847,"Akhil","Tyagi","1-590-613-6432"),
  (848,"Rupinder","Sudha","687-1668"),
  (849,"Rajani","Darsha","787-4817");
INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (850,"Zahid","Pawan","1-272-952-6771"),
  (851,"Adil","Nath","1-632-753-2468"),
  (852,"Zaman","Krishnamurthy","416-6248"),
  (853,"Balwinder","Shan","1-360-775-0587"),
  (854,"Ranjit","Darsha","1-862-110-0470"),
  (855,"Anup","Malik","701-0264"),
  (856,"Nishat","Raji","1-563-822-5654"),
  (857,"Nikhil","Narayan","1-559-142-9486"),
  (858,"Raj","Nara","914-2203"),
  (859,"Nirmal","Naran","120-5639");
INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (860,"Mukul","Srivastava","1-863-793-9431"),
  (861,"Shantanu","Jai","878-2481"),
  (862,"Kamala","Srivastava","1-511-542-8978"),
  (863,"Sudhir","Chauhan","578-9447"),
  (864,"Shahid","Rajan","656-7143"),
  (865,"Ramachandra","Punj","822-7668"),
  (866,"Durga","Srivas","1-116-699-8808"),
  (867,"Nadim","Uddin","1-935-735-3019"),
  (868,"Sher","Sharma","716-0272"),
  (869,"Zahir","Sahni","1-266-686-1226");
INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (870,"Bala","Sandeep","1-418-789-7741"),
  (871,"Rafiq","Neelam","1-816-541-2870"),
  (872,"Ankur","Chaudhary","1-355-195-6133"),
  (873,"Harshad","Bhat","1-474-856-9841"),
  (874,"Murali","Chander","1-932-785-1623"),
  (875,"Amarjeet","Malik","1-529-586-8352"),
  (876,"Sarvesh","Tyagi","1-275-813-9620"),
  (877,"Mukul","Raje","363-7098"),
  (878,"Ankit","Naran","822-0663"),
  (879,"Anuj","Saini","671-3853");
INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (880,"Vivek","Tyagi","312-1063"),
  (881,"Balakrishna","Chakrabarti","462-7785"),
  (882,"Mitra","Srivastav","1-288-482-3977"),
  (883,"Devadas","Neelam","1-552-866-6287"),
  (884,"Rafiq","Subramanian","695-8511"),
  (885,"Navin","Puri","561-6744"),
  (886,"Abhijit","Chandra","1-901-401-5726"),
  (887,"Gul","Subram","587-0934"),
  (888,"Surendra","Ganesh","656-3616"),
  (889,"Sardar","Arun","1-656-153-7726");
INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (890,"Zahid","Chandra","295-5599"),
  (891,"Sarvesh","Bhat","1-357-275-4237"),
  (892,"Amar","Swami","1-389-237-4965"),
  (893,"Maqsud","Chaudhary","576-7738"),
  (894,"Singh","Ganesh","850-7837"),
  (895,"Hasan","Shan","1-844-837-4788"),
  (896,"Rajesh","Kapoor","923-6836"),
  (897,"Shekar","Kapoor","842-7483"),
  (898,"Anuj","Subram","743-8466"),
  (899,"Singh","Rastogi","1-304-772-4311");
INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (900,"Pallav","Subram","478-1607"),
  (901,"Anish","Jana","1-833-767-0303"),
  (902,"Rajesh","Darsha","968-7958"),
  (903,"Aravind","Pal","1-334-494-7265"),
  (904,"Gul","Ranga","829-5717"),
  (905,"Punit","Charan","332-6010"),
  (906,"Amit","Chaudhary","1-426-372-8445"),
  (907,"Shiva","Chande","531-9837"),
  (908,"Kamala","Sudha","441-6428"),
  (909,"Farhan","Mittal","757-5011");
INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (910,"Aruna","Samuel","1-677-792-7219"),
  (911,"Azad","Lal","663-1441"),
  (912,"Sudhir","Lalit","857-2569"),
  (913,"Sumit","Pawan","138-2423"),
  (914,"Kavi","Pawan","721-5248"),
  (915,"Devadas","Narang","1-843-604-9776"),
  (916,"Rohit","Rajan","1-883-276-8346"),
  (917,"Shrivatsa","Srini","1-786-213-8142"),
  (918,"Samir","Madan","1-755-764-3329"),
  (919,"Niraj","Lata","1-816-489-8731");
INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (920,"Pratap","Neelam","1-295-333-2632"),
  (921,"Pratap","Mati","510-7697"),
  (922,"Rajib","Chandrasekar","1-984-613-3456"),
  (923,"Surya","Nara","1-683-425-1416"),
  (924,"Singh","Ranga","1-671-512-0229"),
  (925,"Govinda","Sandeep","895-6485"),
  (926,"Asim","Uddin","1-473-582-6081"),
  (927,"Vimal","Bhat","1-578-350-5288"),
  (928,"Amarjeet","Sandeep","245-8956"),
  (929,"Imtiyaz","Neela","447-1665");
INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (930,"Rajib","Suri","542-2359"),
  (931,"Hassan","Saxena","1-827-513-1126"),
  (932,"Navin","Chandra","1-374-748-3774"),
  (933,"Nasim","Nath","1-634-832-1817"),
  (934,"Rajendra","Nath","1-771-826-1872"),
  (935,"Amitabh","Ranga","311-3727"),
  (936,"Aziz","Nagpal","376-4351"),
  (937,"Aswathi","Malhotra","1-850-557-4344"),
  (938,"Arif","Jai","1-827-312-8574"),
  (939,"Harshal","Sethi","1-881-857-2657");
INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (940,"Sukhdeep","Malhotra","1-636-514-2043"),
  (941,"Mani","Puri","586-1523"),
  (942,"Jaya","Rastogi","1-227-539-3383"),
  (943,"Chiranjvi","Sara","996-6357"),
  (944,"Aritra","Jana","1-345-548-1235"),
  (945,"Ajit","Srivastava","240-0878"),
  (946,"Shahnaz","Malik","1-562-710-0208"),
  (947,"Jayanta","Narang","1-489-526-8238"),
  (948,"Adil","Subramani","1-654-464-0131"),
  (949,"Kanta","Dutta","1-963-785-0663");
INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (950,"Subhash","Chakrabarti","1-219-613-8067"),
  (951,"Akbar","Madan","1-678-516-8427"),
  (952,"Surya","Persaud","740-1933"),
  (953,"Ravi","Chauhan","1-835-316-1555"),
  (954,"Balakrishna","Mati","976-4488"),
  (955,"Nadim","Engineer","822-0381"),
  (956,"Zafar","Tyagi","1-849-507-3557"),
  (957,"Anand","Manju","1-405-614-4041"),
  (958,"Kuldeep","Rastogi","1-540-327-2686"),
  (959,"Tamanna","Vish","281-6426");
INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (960,"Kavi","Nigam","587-9452"),
  (961,"Aziz","Jana","416-3841"),
  (962,"Avinash","Sharma","1-366-852-7966"),
  (963,"Pallav","Puri","1-848-753-3025"),
  (964,"Radha","Nath","332-8424"),
  (965,"Abbas","Gandhi","1-681-436-9205"),
  (966,"Kiran","Saini","1-487-635-2592"),
  (967,"Anand","Anand","1-219-791-6552"),
  (968,"Amitabh","Sethi","723-8770"),
  (969,"Raja","Rana","1-617-527-0188");
INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (970,"Khurshd","Muthu","1-506-682-4762"),
  (971,"Ravindra","Manju","301-0151"),
  (972,"Aruna","Charan","631-6630"),
  (973,"Shresth","Chakrabarti","1-438-414-3370"),
  (974,"Rajendra","Rana","155-7084"),
  (975,"Manish","Lal","368-1544"),
  (976,"Azad","Nagpal","1-685-886-1543"),
  (977,"Nirmal","Manju","216-6673"),
  (978,"Ajit","Dhawan","833-7845"),
  (979,"Indra","Lal","1-889-716-0769");
INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (980,"Anish","Srivastav","152-1106"),
  (981,"Pratik","Malik","1-326-855-4547"),
  (982,"Pran","Malik","1-216-766-6291"),
  (983,"Sher","Bhatt","1-674-533-9360"),
  (984,"Kamala","Samuel","385-2262"),
  (985,"Rana","Raje","1-248-884-1334"),
  (986,"Kanta","Aggarwal","901-2369"),
  (987,"Apurva","Nagpal","1-648-253-4424"),
  (988,"Ravi","Manohar","1-654-842-4416"),
  (989,"Ghulam","Nara","848-9497");
INSERT INTO `Employees` (`employee_id`,`First_name`,`last_name`,`Contact`)
VALUES
  (990,"Singh","Aggarwal","464-7783"),
  (991,"Gurdeep","Sharma","1-744-631-1316"),
  (992,"Shrinivas","Persaud","1-348-853-1647"),
  (993,"Kamala","Chakrabarti","1-833-673-5921"),
  (994,"Pratik","Mittal","185-2088"),
  (995,"Maruf","Patel","1-743-287-8850"),
  (996,"Navin","Naran","100-4636"),
  (997,"Anup","Mittal","567-7483"),
  (998,"Zawar","Sehgal","389-1292"),
  (999,"Lal","Rajagopal","1-427-101-1150");
  
  
  
  
  