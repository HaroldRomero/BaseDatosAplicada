select *from productos1;
select Valorproducto*5 as Valortotal
from productos1;

select concat(nameprovedor,"   ",lastname) as nameandlastname
from provedor3
where nameprovedor="AB";