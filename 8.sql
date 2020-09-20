/*8*/
/*Выборка для распечатки договора*/
drop view if exists Contract_carrier;
create view Contract_carrier as
    (select nomber_cd, first_date_dt, name_nm, passport_cnt, inn_cd, snils_cd
    from contract
    left join carrier
    on contract.carrier_id=carrier.carrier_id
    );
select *
from Contract_carrier
where nomber_cd='Д11';

/*просмотр маршрутов с указанием тех кто их обслуживает*/
drop view if exists Route_carrier;
create view Route_carrier as
    (select distinct route.route_no, length_amt, name_nm
    from Route
    left join contract
    on route.route_no=contract.route_no
    left join carrier
    on contract.carrier_id=carrier.carrier_id
    order by route_no, name_nm
    );
select *
from Route_carrier;
