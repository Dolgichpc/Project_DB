/*6*/
insert into Carrier values(20,'Айвозян РА','7423 242354', '7735233457', '0723215513211');

insert into Car values('Р345АМ',20,'Honda', 8);

select *
from Car
where Car.Brand_nm='Honda';

Select Carrier.Carrier_id, Carrier.Name_nm
from Carrier, Car
where Car.Carrier_id=Carrier.Carrier_id
  and Car.Brand_nm = 'Honda';

update Car
    set Carrier_id=18
    where nomber_cd='Р345АМ';

update Carrier
    set passport_cnt='6666 242354'
    where Carrier_id=18;

delete
from carrier
where Carrier_id=20;

delete
from car
where Carrier_id=20;
