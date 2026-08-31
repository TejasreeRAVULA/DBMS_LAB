use playstoredb;
select count(*)
from apps;
select avg(rating) from Apps;
select max(rating) from apps;
select min(rating) from apps;
select downloads,COUNT(*)
FROM apps
group by downloads;
select SUM(downloads)
from apps;
select * from apps;
SELECT * from apps
order by rating desc;
select categoryid,COUNT(*)
FROM apps
group by categoryid;
select min(price)
from apps;
select max(price)
from apps;

select avg(rating),COUNT(*)
FROM apps
group by categoryid;

select * from apps 
order by downloads desc;

select count(*),developerid
from apps
group by developerid;

select * from categories;
select categoryid,count(*)
from apps
group by categoryid
having count(*)>1;

select SUM(downloads)as TotalDownloads ,developerid
from apps
group by developerid;

select avg(rating)as AverageRating ,publisherid
from apps
group by publisherid;

select developerid,count(*) as appcount
from apps
group by developerid
having count(*)>1;

select categoryid as categories,avg(rating) as averagerating
from apps
group by categoryid
having avg(rating)>4.3;

select categoryid,count(*)as appcount
from apps
group by categoryid
order by appcount desc;

select *
from apps
where rating=(
select max(rating) from apps
);

select Sum(price) as totalsum,developerid
from apps
group by developerid;

