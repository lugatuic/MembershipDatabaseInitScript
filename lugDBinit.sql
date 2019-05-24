CREATE DATABASE LUGDB;

CREATE TABLE memberType(
  memTypeRef int,
  memTypeName varchar(30)
);

CREATE TABLE Member(
  lastName varchar(100),
  fullLegalName varchar(200),
  preferredName varchar(100),
  netid varchar(9),
  email tinytext,
  lugUserName varchar(20),
  UIN varchar(20),
  joinDate date,
  memStatus int,
  beenActive bit,
  wasOfficer bit
);

CREATE TABLE Events
(
  eventName varchar(30),
  eventID int,
  EventDate datetime,
  EventLocation varchar(20)
);

CREATE TABLE eventAttendance
(
  eventID int,
  attendeeID varchar(20)
);

#ALTER TABLE `eventAttendance` ADD FOREIGN KEY (`attendedby`) REFERENCES `Member` (`UIN`);

#ALTER TABLE `eventAttendance` ADD FOREIGN KEY (`eventid`) REFERENCES `Events` (`eventid`);

#ALTER TABLE `Member` ADD FOREIGN KEY (`memStatus`) REFERENCES `memberType` (`memTypeRef`);