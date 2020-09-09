INSERT INTO [SilverOak.Department] VALUES 
('001', 'Social Sciences'),
('002', 'Mathematics'),
('003', 'Science'),
('004', 'Housekeeping'),
('005','Moral Science'),
('006', 'Language'),
('007', 'Home Science'),
('008', 'Physical Education'), 
('009', 'Accounts'), 
('010', 'Library');

SELECT * FROM [SilverOak.Department];

INSERT INTO [SilverOak.Staff] VALUES
('AT09331','Ruby','Luna','T','Associate Teacher','001') , 
('AC01191', 'Stokes', 'Adam', 'NT', 'Senior Accountant','009'),
('CT01225', 'Cooper', 'Robert', 'T', 'Class Teacher','005'),
('AT12117', 'Geller', 'Rachel', 'T', 'Associate Teacher','007'),
('AC77861', 'Trung', 'Kien', 'NT', 'Cashier', '009'),
('AT77112', 'Blanc','Parker', 'T', 'Senior Teacher','006'),
('AT11045','Frocke', 'Emily' ,'T', 'Associate Teacher','003'),
('AT10012', 'Parker','Michelle', 'T', 'Senior Teacher','002'),
('LB00945','Singh', 'Spriha' ,'NT', 'Librarian','010'),
('HK77861', 'Joseph', 'Aaron', 'NT', 'Supervisor','004'),
('AT77861', 'Johnson', 'Joseph', 'T', 'Physical Instructor','008'),
('HK11012', 'Pointer', 'Joe', 'NT', 'Janitor','004'),
('HK01167', 'Hernandez', 'Javier', 'NT', 'Janitor','004'),
('CT11278', 'Bing', 'Chandler', 'T', 'Class Teacher','005'),
('LB11048','Serrano', 'Cindy' ,'T', 'Assistant Librarian','010');

SELECT * FROM [SilverOak.Staff];

Insert into [SilverOak.Student] Values 
('15A76', 'Baker', 'Hannah', 'F', '10/23/2010', '3455, Tulane Drive, 22, Hyattsville, MD-20783', '3', 'A'), 
('15B05', 'Bond', 'James', 'M', '01/02/2010', '3405, Rowatt Drive, 11, Hyattsville, MD-20783', '3', 'B'), 
('15A16', 'Lautner','Rachel','M', '01/02/2010', '3400, Rowatt Drive, 21, Hyattsville, MD-20783', '3', 'B'), 
('16B06', 'Goldman', 'Natasha', 'F', '03/08/2011', '3211, Adelphi road, 32, Hyattsville, MD-20795', '2', 'B'),
('13A76', 'Taylor', 'Jacob', 'M', '10/02/2010', '3410, Rowatt Drive, 22, Hyattsville, MD-20783', '3', 'B'), 
('17A71', 'Johnson', 'Kevin', 'M', '04/09/2012', '3417, Rowatt Drive, 34, Hyattsville, MD-20783', '1', 'A'), 
('17B26', 'Greene', 'Karen', 'F', '11/07/2013', '29,Baltimore avenue, 14, Hyattsville, MD-20701', 'KG', 'B'), 
('18A08', 'Phoebe', 'Buffay', 'F', '05/02/2013', '30, Hill Drive, 24, Hyattsville, MD-20709', 'KG', 'A'), 
('13A61', 'Hammock', 'Jack', 'M', '05/02/2011', '1200,  Drive, 13, Hyattsville, MD-20783', '3', 'B'),
('15B41', 'Cooper', 'Sheldon', 'M', '7/28/2012', '3413, Tulane Drive, 12, Hyattsville, MD-20783', '4', 'B'),
('11A16', 'Johnson', 'Hannah', 'F', '01/23/2009', '3455, Tulane Drive, 42, Hyattsville, MD-20783', '4', 'A'), 
('14B26', 'Rubi', 'Sarah', 'F', '10/03/2011', '3455, Tulane Drive,25, Hyattsville, MD-20783', '2', 'A'), 
('12B36', 'Tribbiani', 'Joey', 'M', '11/23/2013', '3455, Tulane Drive, 12, Hyattsville, MD-20783', 'KG', 'A'), 
('13A21', 'Geller', 'Penny', 'F', '10/23/2010', '3455, Tulane Drive, 34, Hyattsville, MD-20783', '3', 'A'), 
('11A21', 'Bing', 'Emma', 'F', '10/23/2010', '3155, Tulane Drive, 32, Hyattsville, MD-20783', '3', 'A'),
('12C16', 'Johnson', 'Joe', 'M', '07/23/2009', '3455, Adelphi Road, 22, Hyattsville, MD-20783', '4', 'A'), 
('13B20', 'Grande', 'John', 'M', '12/03/2011', '3455, Tulane Drive, 12, Hyattsville, MD-20783', '2', 'A'), 
('14B96', 'Blanc', 'Joey', 'M', '11/23/2013', '3455, Tulane Drive, 34, Hyattsville, MD-20783', 'KG', 'A'), 
('11A28', 'Geller', 'Penny', 'F', '05/23/2010', '3415, Tulane Drive, 22, Hyattsville, MD-20783', '3', 'A'), 
('11B71', 'Bing', 'Matthew', 'M', '05/12/2010', '3255, Rowatt Drive, 34, Hyattsville, MD-20783', '3', 'B');

SELECT * FROM [SilverOak.Student];

INSERT INTO [SilverOak.Subject] VALUES
('READ000','Reading','Introduction to the world of words'), 
('WRIT000', 'Writing', 'Basics of english composition'),
('MATH000', 'Mathematics', 'Introduction to basic math and analysis'),
('SCIE000', 'Science', 'Introduction to science'),
('SOST000', 'Social Studies', 'Rudimentary social studies'),
('SOES000', 'Social-Emotional Skills','Basic social and emotional skill development'),
('CRMO000', 'Creative Movement', 'Introduction to the concepts of physical movement'),
('ARTS000', 'Art','Elementary Art'),
('READ001','Reading','Enhanced english reading') , 
('WRIT001', 'Writing', 'Conventions of standard english composition'),
('MATH001', 'Mathematics', 'Counting numbers and analysis of shapes in Math'),
('SCIE001', 'Science', 'An in-depth look into science'),
('SOST001', 'Social Studies', 'Civilizations and the world'),
('SOES001', 'Social-Emotional Skills','Learning about social values'),
('CRMO001', 'Creative Movement', 'Space and movement of bodies'),
('ARTS001', 'Art','Art and perceptions'),
('READ002','Reading','English comprehension and focus on fluency') , 
('WRIT002', 'Writing', 'Introduction to types of writing'),
('MATH002', 'Mathematics', 'Playing with numbers and mathematical relations'),
('SCIE002', 'Science', 'Life cycles and introduction to Thermodynamics'),
('SOST002', 'Social Studies', 'People and nations of the world'),
('SOES002', 'Social-Emotional Skills','Working in groups and a deep dive into collaboration'),
('CRMO002', 'Creative Movement', 'Exploring speed and rhytm of the body'),
('ARTS002', 'Art','Understanding Historical Art'),
('READ003','Reading','Building rich language and understanding concepts of English') , 
('WRIT003', 'Writing', 'Conventions of Standard English'),
('MATH003', 'Mathematics', 'Algebraic thinking and quantification'),
('SCIE003', 'Science', 'Introduction to Maryland State Science Standards'),
('SOST003', 'Social Studies', 'Introduction to Maryland State Social Studies'),
('SOES003', 'Social-Emotional Skills','Regulating emotions and dealing with situations'),
('CRMO003', 'Creative Movement', 'Introduction to choreography'),
('ARTS003', 'Art','Introduction to the works of art'),
('READ004','Reading','Introduction to syllabication patterns and morphology in English') , 
('WRIT004', 'Writing', 'Writing poems and letters'),
('MATH004', 'Mathematics', 'Introduction to word problems in Mathematics'),
('SCIE004', 'Science', 'Advanced Sciences'),
('SOST004', 'Social Studies', 'Intermediate Social Studies'),
('SOES004', 'Social-Emotional Skills','Rule making and problem solving in life'),
('CRMO004', 'Creative Movement', 'Relationships between parts and balance of the human body'),
('ARTS004', 'Art','Intermediate Art');

SELECT * FROM [SilverOak.Subject];

INSERT INTO [SilverOak.Activity] VALUES 
('OH09','Open House','01/10/2019','First Open house 2018-2019'),
('TH01','Talent Hunt','01/15/2019','A chance for students to showcase their talent'),
('OH10','Open House','02/07/2019','Second Open house 2018-2019'),
('AE02','Art Exhibition','02/17/2019','Annual Art Exhibition Day 2019'),
('ST06','Show & Tell March','03/06/2019','Show & Tell all grades March'),
('OH11','Open House 2019','03/13/2019','Third Open house 2018-2019'),
('PT02','Physical Education Display','04/05/2019','Annual Physical Education Display'),
('ST07','Show & Tell April','04/09/2019','Show & Tell all grades April'),
('FE03','Final Exam 2019','05/20/2019','Annual Final Exam of 2018-2019'),
('PT06','Parent Teacher Meet','06/10/2019','Parent Teacher meet for 2018-2019'),
('AF02','Annual Function','07/15/2019','Annual Physical Education Display'),
('EL07','Elocution Competition','10/09/2019','Annual elocution competition'),
('BT02','Interschool Basketball Tournament 2019','10/20/2019','Annual Interschool tournament of basketball of 2018-2019'),
('OH12','Open House','11/09/2019','Fourth Open house 2018-2019'),
('ME03','Mid-Sem Exam','12/03/2019','Mid semester Exam 2018-2019');

SELECT * FROM [SilverOak.Activity];

INSERT INTO [SilverOak.Guardian] VALUES
('15A76', 'Daniel Baker', 'baker.daniel@gmail.com', '3015634362', 'Father'),
('15B05', 'John Bond', 'bond.daniel@gmail.com', '3015634311', 'Father'),
('15A16', 'Andrew Lautner', 'lautner.andrew@gmail.com', '3015110311', 'Father'),
('16B06', 'Aliza Goldman', 'goldman.aliza11@gmail.com', '2045110311', 'Mother'),
('15A76', 'Sheldon Taylor', 'sheldon.taylor01@gmail.com', '1121410311', 'Father'), 
('17A71', 'Angela Johnson','angela.johnson11@gmail.com', '2041410311', 'Mother'), 
('17B26', 'Herminoni Greene','greene.her123@gmail.com', '1141410311', 'Mother'),  
('18A08', 'Edith Buffay','edith.buffay123@gmail.com', '2098881233', 'Mother'),   
('13A61', 'Kiara Hammock', 'kiara.hammock@gmail.com', '2108881233', 'Mother'),   
('15B41', 'Joey Cooper', 'joey.cooper123@gmail.com', '2098881201', 'Father'),
('11A16', 'Amelia Johnson','amelia.j11@gmail.com', '2040081211', 'Mother'),
('14B26', 'Sydney Rubi', 'joey.cooper123@gmail.com', '2098881211', 'Mother'),
('12B36', 'Jeffrey Tribbiani','j.tribbiani@gmail.com', '3898881211', 'Father'),
('13A21', 'Hank Geller', 'hank.geller10@gmail.com', '2098881300', 'Father'),
('11A21', 'Vanessa Bing', 'vanessa.bing@gmail.com', '2097762311', 'Mother'),
('12C16', 'Damien Johnson', 'damien.john123@gmail.com', '2091311105', 'Father'),
('13B20', 'Shane Grande', 'shane.grande11@gmail.com', '2095547221', 'Mother'),
('14B96', 'Ben Muriel Blanc', 'muriel.ben.b@gmail.com', '2041663211', 'Father'),
('11A28', 'Kelsey Geller', 'kel.geller1305@gmail.com', '2887112990', 'Mother'),
('11B71', 'Marzia Bing','marzia.bing112@gmail.com', '2045567128', 'Mother');

SELECT * FROM [SilverOak.Guardian];

INSERT INTO [SilverOak.Teach] VALUES
('AT09331','15A76','SOST003'),
('CT11278','15B05', 'MATH003'),
('CT01225','15A16', 'ARTS003'),
('AT12117','16B06', 'READ002'),
('CT11278','13A76', 'SOES003'),
('AT12117','17A71', 'MATH001'),
('CT11278','17B26', 'WRIT000'),
('CT01225','18A08', 'SOST000'),
('AT12117','13A61', 'READ003'),
('AT77112','15B41','MATH004'),
('AT11045','11A16','MATH004'),
('AT10012','14B26','SOST002'),
('AT10012','12B36','SOES000'),
('AT77861','13A21','ARTS003'),
('CT11278','11A21','CRMO003'),
('AT77861','12C16','READ004'),
('AT09331','13B20','WRIT002'),
('CT01225','14B96','CRMO000'),
('CT11278','11A28','SOES003'),
('AT12117','11B71','MATH003');

SELECT * FROM [SilverOak.Teach];

INSERT INTO [SilverOak.Participate] VALUES
('AT09331','15A76','TH01'),
('CT11278','15B05','ME03'),
('CT01225','15A16','ME03'),
('AT12117','16B06','TH01'),
('CT11278','13A76','ST06'),
('AT12117','17A71','AE02'),
('CT11278','17B26','ST06'),
('CT01225','18A08','PT02'),
('AT12117','13A61','ST07'),
('AT77112','15B41','FE03'),
('AT11045','11A16','PT06'),
('AT10012','14B26','TH01'),
('AT10012','12B36','FE03'),
('AT77861','13A21','PT06'),
('CT11278','11A21','AF02'),
('AT77861','12C16','FE03'),
('AT09331','13B20','AF02'),
('CT01225','14B96','BT02'),
('CT11278','11A28','FE03'),
('AT12117','11B71','ME03');

SELECT * FROM [SilverOak.Participate];


INSERT INTO [SilverOak.Score] VALUES
('15A76','SOST003', 'B+'),
('15B05', 'MATH003', 'A'),
('15A16', 'ARTS003', 'B'),
('16B06', 'READ002', 'A'),
('13A76', 'SOES003', 'A+'),
('17A71', 'MATH001', 'A-'),
('17B26', 'WRIT000', 'B+'),
('18A08', 'SOST000', 'B+'),
('13A61', 'READ003', 'C-'),
('15B41','MATH004', 'A'),
('11A16','MATH004', 'B-'),
('14B26','SOST002', 'B+'),
('12B36','SOES000', 'A-'),
('13A21','ARTS003', 'B-'),
('11A21','CRMO003', 'A-'),
('12C16','READ004', 'A+'),
('13B20','WRIT002', 'A'),
('14B96','CRMO000', 'B'),
('11A28','SOES003', 'C'),
('11B71','MATH003', 'B+');

SELECT * FROM [SilverOak.Score];