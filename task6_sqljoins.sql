use playstoredb;
select a.appname,d.developername
from apps a
INNER JOIN developers d
on a.developerid=d.developerid;

select a.appname,c.categoryname
from apps a
INNER JOIN categories c
on a.categoryid=c.categoryid;

select a.appname,p.publishername
from apps a
INNER JOIN publishers p
on a.publisherid=p.publisherid;
select a.appname,d.developername,p.publishername
from apps a
INNER JOIN developers d
on a.developerid=d.developerid
INNER JOIN publishers p
on a.publisherid=p.publisherid;

select a.appname,d.developername,c.categoryname
from apps a
INNER JOIN developers d
on a.developerid=d.developerid
INNER JOIN categories c
on a.categoryid=c.categoryid;

select p.publishername,a.appname
from publishers p
LEFT JOIN apps a
on p.publisherid=a.publisherid;

select c.categoryname,a.appname
from categories c
LEFT JOIN apps a
on c.categoryid=a.categoryid;

select a.appname,p.publishername
from apps a
RIGHT JOIN publishers p
on a.publisherid=p.publisherid;

select * 
from publishers p
left join apps a
on p.publisherid=a.publisherid;

select * 
from categories c
left join apps a
on c.categoryid=a.categoryid;

select a.appname,d.developername,d.country
from apps a
INNER JOIN developers d
on a.developerid=d.developerid;

select a.appname,d.developername,d.country
from apps a
inner join developers d
on a.developerid=d.developerid
where d.country='usa';

select a.appname,p.publishername
from apps a
inner join categories c
on a.categoryid=c.categoryid
inner join publishers p
on a.publisherid=p.publisherid
where categoryname='gaming';
select d.developername,d.country,count(a.appid) as noofapplications,avg(a.rating) as averagerating from developers d
inner join apps a
on d.developerid=a.developerid
group by d.developerid,d.developername,d.country
having count(a.appid)>1;
select upper(a.appname) as appname,upper(d.developername) as devname,upper(d.country) as country
from apps a
inner join developers d
on a.developerid=d.developerid
where d.country='usa';





