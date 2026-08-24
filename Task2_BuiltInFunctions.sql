USE playstoreDB;

select * from developers;
select upper(developername)

from developers;
select lower(developername)
from developers;
select length(developerid) from developers;
select length(developername) from developers;
select length(country) from developers;
select length(foundedyear) from developers;

select length(publisherid) from publishers;
select length(publishername) from publishers;
select length(headoffice) from publishers;
select length(supportemail) from publishers;
select * from publishers;
select * from categories;
select length(categoryid) from categories;
select length(categoryname) from categories;
select length(minimumage) from categories;
select * from apps;
select length(appid) from apps;
select length(appname) from apps;
select length(developerid) from apps;
select length(publisherid) from apps;
select length(categoryid) from apps;
select length(rating) from apps;
select length(downloads) from apps;
select length(price) from apps;
select categoryname,length(categoryname) from categories;
select current_date();
select current_time();
select round(rating,0) from apps;
select appname,substring(appname,1,5) from apps;
select concat(developername," ",country) from developers;
select ceil(price) from apps;
select foundedyear from developers;
select cast(downloads as char) from apps;
select upper(appname),rating from apps;
select substring(categoryname,1,3) from categories;
select abs(price-200) from apps;
select developername,length(developername) from developers;
select current_date();
select current_timestamp();
select cast(123 as char);
select convert(123,char);













