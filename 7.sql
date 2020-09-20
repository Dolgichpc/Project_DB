/*7*/

drop view if exists Secret_Car;
create view Secret_Car as
        (select
                translate(nomber_cd, '1234567890', '**********') as Nomber,
                Brand_nm,
                Places_amt
        from Car);
select *
from Secret_Car;

drop view if exists Secret_Carrier;
create view Secret_Carrier as
    (select
    Name_nm ,
    translate(Passport_cnt, '1234567890', '**********') as Passport,
    concat('...',Right(INN_cd, 4)) as INN,
    concat('...',Right(SNILS_cd, 4)) as SNILS
        from Carrier);
select *
from Secret_Carrier;

drop view if exists Secret_Contract;
create view Secret_Contract as
    (select
    Route_no ,
    translate(Nomber_cd, '1234567890', '**********') as Nomber,
    First_date_dt
    from Contract);
select *
from Secret_Contract;

drop view if exists Secret_Route;
create view Secret_Route as
    (select
    Route_no ,
    round(Length_amt) as Length
        from Route);
select *
from Secret_Route;

drop view if exists Secret_Car_archive;
create view Secret_Car_archive as
        (select
                translate(nomber_cd, '1234567890', '**********') as Nomber,
                Brand_nm,
                Places_amt
        from Car_archive);
select *
from Secret_Car_archive;

drop view if exists Secret_Carrier_archive;
create view Secret_Carrier_archive as
    (select
    Name_nm ,
    translate(Passport_cnt, '1234567890', '**********') as Passport,
    concat('...',Right(INN_cd, 4)) as INN,
    concat('...',Right(SNILS_cd, 4)) as SNILS
        from Carrier_archive);
select *
from Secret_Carrier_archive;

drop view if exists Secret_Contract_archive;
create view Secret_Contract_archive as
    (select
    Route_no ,
    translate(Nomber_cd, '1234567890', '**********') as Nomber,
    First_date_dt
    from Contract_archive);
select *
from Secret_Contract_archive;

drop view if exists Secret_Route_archive;
create view Secret_Route_archive as
    (select
    Route_no ,
    round(Length_amt) as Length
        from Route_archive);
select *
from Secret_Route_archive;
