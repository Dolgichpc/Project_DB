/*5*/

/*Действующие договора на дату 2011.02.25*/
select p.Nomber_cd
from
(select *
from Contract
union select *
from Contract_archive) as p
where '2011.02.25' between p.First_date_dt and p.Last_date_dt
order by Nomber_cd;

/*список действующих машин на маршруте 49*/
select Car.Nomber_cd, Route.Route_no
from Car,Carrier,Contract,Route
where Car.Carrier_id=Carrier.Carrier_id and Contract.Carrier_id=Carrier.Carrier_id
    and Contract.Route_no=Route.Route_no and Route.Route_no=49;

/*Количество машин на каждом действующем марщруте*/
select Route.Route_no, Count(Car.Nomber_cd)
from Car,Carrier,Contract,Route
where Car.Carrier_id=Carrier.Carrier_id and Contract.Carrier_id=Carrier.Carrier_id
    and Contract.Route_no=Route.Route_no
group by Route.Route_no;

/*Посчитать общую протяженность всех маршрутов каждого действующего перевозчика*/
select Carrier.Carrier_id,Carrier.Name_nm, Sum(Route.Length_amt)
from Carrier,Contract,Route
where Contract.Carrier_id=Carrier.Carrier_id
    and Contract.Route_no=Route.Route_no
group by Carrier.Carrier_id, Carrier.Name_nm
order by Carrier.Carrier_id;

/*История владельцев машины 'E1234EE'*/
select C.Nomber_cd, P.Name_nm
from
(select *
from Car
union select *
from Car_archive) as C,
     (select *
from Carrier
union select *
from Carrier_archive) as p
where C.Carrier_id=P.Carrier_id and C.Nomber_cd='E1234EE';