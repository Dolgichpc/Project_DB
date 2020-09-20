/*3*/

drop schema if exists project cascade;

create schema if not exists project;
SET search_path = project, public;

create table Car (
 Nomber_cd varchar(13) not null,
 Carrier_id integer not null ,
 Brand_nm varchar(50),
 Places_amt integer,
 primary key (Nomber_cd)
) ;
create table Carrier (
 Carrier_id integer not null,
 Name_nm varchar(100),
 Passport_cnt varchar(250),
 INN_cd varchar(20),
 SNILS_cd varchar(20),
 primary key (Carrier_id)
) ;

create table Contract (
Сontract_id integer  not null,
Carrier_id integer  not null,
Route_no integer  not null,
Nomber_cd varchar(20),
First_date_dt date,
Last_date_dt date,
primary key (Сontract_id)
) ;

create table Route (
Route_no integer not null,
Length_amt decimal(4,2),
primary key (Route_no)
) ;

create table Car_archive (
 Nomber_cd varchar(13) not null,
 Carrier_id integer not null ,
 Brand_nm varchar(50),
 Places_amt integer,
 primary key (Nomber_cd)
) ;
create table Carrier_archive (
Carrier_id integer not null,
 Name_nm varchar(100),
 Passport_cnt varchar(250),
 INN_cd varchar(20),
 SNILS_cd varchar(20),
 primary key (Carrier_id)
) ;
create table Contract_archive (
Сontract_id integer  not null,
Carrier_id integer  not null,
Route_no integer  not null,
Nomber_cd varchar(20),
First_date_dt date,
Last_date_dt date,
primary key (Сontract_id)
) ;
create table Route_archive (
Route_no integer not null,
Length_amt decimal(4,2),
primary key (Route_no)
) ;
