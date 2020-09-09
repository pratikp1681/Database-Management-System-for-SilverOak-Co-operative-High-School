DROP TABLE [SilverOak.Score];
DROP TABLE [SilverOak.Participate];
DROP TABLE [SilverOak.Teach];
DROP TABLE [SilverOak.Guardian];
DROP TABLE [SilverOak.Activity];
DROP TABLE [SilverOak.Subject];
DROP TABLE [SilverOak.Student];
DROP TABLE [SilverOak.Staff];
DROP TABLE [SilverOak.Department];


CREATE TABLE [SilverOak.Department](
dptId VARCHAR(10) NOT NULL,
dptName VARCHAR (30)
CONSTRAINT PK_Department_dptId PRIMARY KEY (dptId));

CREATE TABLE [SilverOak.Staff](
stfId VARCHAR(10) NOT NULL,
stfLastName VARCHAR(20),
stfFirstName VARCHAR(20),
stfType VARCHAR(10),
stfDesignation VARCHAR(20),
dptId VARCHAR(10),
CONSTRAINT PK_Staff_stfId PRIMARY KEY (stfId),
CONSTRAINT FK_Staff_dptId FOREIGN KEY (dptId)
	REFERENCES [SilverOak.Department] (dptId)
	ON DELETE CASCADE
	ON UPDATE CASCADE);

CREATE TABLE [SilverOak.Student](
stdId VARCHAR(10) NOT NULL,
stdLastName VARCHAR (15),
stdFirstName VARCHAR (15),
stdGender VARCHAR (5),
stdDateOfBirth DATE,
stdAddress VARCHAR(60),
stdClass VARCHAR(5),
stdSection CHAR(1),
CONSTRAINT PK_Student_stdId PRIMARY KEY (stdId));

CREATE TABLE [SilverOak.Subject](
sbjId VARCHAR(10) NOT NULL,
sbjTitle VARCHAR (40),
sbjDescription VARCHAR(70),
CONSTRAINT PK_Subject_sbjId PRIMARY KEY (sbjId));

CREATE TABLE [SilverOak.Activity](
actId VARCHAR(10) NOT NULL,
actName VARCHAR (50),
actDate DATE,
actDescription VARCHAR(80),
CONSTRAINT PK_Activity_actId PRIMARY KEY (actId));

CREATE TABLE [SilverOak.Guardian](
stdId VARCHAR(10) NOT NULL,
grdName VARCHAR (30) NOT NULL,
grdEmail VARCHAR (35),
grdPhoneNo NUMERIC (10),
grdRelationship VARCHAR (10),
CONSTRAINT PK_Guardian_stdId_grdName PRIMARY KEY (stdId,grdName),
CONSTRAINT FK_Student_stdId FOREIGN KEY (stdId)
	REFERENCES [SilverOak.Student] (stdId)
	ON DELETE CASCADE
	ON UPDATE CASCADE);

CREATE TABLE [SilverOak.Teach](
stfId VARCHAR(10) NOT NULL,
stdId VARCHAR (10) NOT NULL,
sbjId VARCHAR (10) NOT NULL,
CONSTRAINT PK_Teach_stfId_stdId_sbjId PRIMARY KEY (stfId,stdId,sbjId),
CONSTRAINT FK_Teach_stfId FOREIGN KEY (stfId)
REFERENCES [SilverOak.Staff] (stfId)
	ON DELETE CASCADE
	ON UPDATE CASCADE,
CONSTRAINT FK_Teach_stdId FOREIGN KEY (stdId)
REFERENCES [SilverOak.Student] (stdId)
	ON DELETE CASCADE
	ON UPDATE CASCADE,
CONSTRAINT FK_Teach_sbjId FOREIGN KEY (sbjId)
REFERENCES [SilverOak.Subject] (sbjId)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION);

CREATE TABLE [SilverOak.Participate](
stfId VARCHAR(10) NOT NULL,
stdId VARCHAR (10) NOT NULL,
actId VARCHAR (10) NOT NULL,
CONSTRAINT PK_Participate_stfId_stdId_actId PRIMARY KEY (stfId,stdId,actId),
CONSTRAINT FK_Participate_stfId FOREIGN KEY (stfId)
REFERENCES [SilverOak.Staff] (stfId)
	ON DELETE CASCADE
	ON UPDATE CASCADE,
CONSTRAINT FK_Participate_stdId FOREIGN KEY (stdId)
REFERENCES [SilverOak.Student] (stdId)
	ON DELETE CASCADE
	ON UPDATE CASCADE,
CONSTRAINT FK_Participate_actId FOREIGN KEY (actId)
REFERENCES [SilverOak.Activity] (actId)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION);

CREATE TABLE [SilverOak.Score](
stdId VARCHAR(10) NOT NULL,
sbjId VARCHAR (10) NOT NULL,
grade CHAR(2),
CONSTRAINT PK_Score_stdId_sbjId PRIMARY KEY (stdId,sbjId),
CONSTRAINT FK_Score_stdId FOREIGN KEY (stdId)
REFERENCES [SilverOak.Student] (stdId)
	ON DELETE CASCADE
	ON UPDATE CASCADE,
CONSTRAINT FK_Score_sbjId FOREIGN KEY (sbjId)
REFERENCES [SilverOak.Subject] (sbjId)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION);
