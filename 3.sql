drop schema if exists project cascade;

create schema if not exists project;
SET search_path = project, public;

create table Car (
 Nomber_cd varchar(13),
 Carrier_id integer,
 Brand_nm varchar(50),
 Places_amt integer
) ;
create table Carrier (
 Carrier_id integer,
 Name_nm varchar(100),
 Passport_cnt varchar(250),
 INN_cd integer,
 SNILS_cd integer
) ;

create table Contract (
Сontract_id integer,
Carrier_id varchar(100),
Route_no integer,
Nomber_cd varchar(20),
First_date_dt date,
Last_date_dt date
) ;

create table Route (
Route_no integer,
Length_amt decimal(4,2)
) ;

create table Car_archive (
 Nomber_cd varchar(13),
 Carrier_id integer,
 Brand_nm varchar(50),
 Places_amt integer
) ;
create table Carrier_archive (
 Carrier_id integer,
 Name_nm varchar(100),
 Passport_cnt varchar(250),
 INN_cd integer,
 SNILS_cd integer
) ;
create table Contract_archive (
Сontract_id integer,
Carrier_id varchar(100),
Route_no integer,
Nomber_cd varchar(20),
First_date_dt date,
Last_date_dt date
) ;
create table Route_archive (
Route_no integer,
Length_amt decimal(4,2)
) ;