
use playstoreDB;
select * from apps
where rating>4.5;
select * from apps 
where price=0;
select * from apps
where categoryid=305;
select * from apps
where downloads>5000000;
select * from apps 
where rating between 4.3 and 4.7;
select * from apps
where price in (0,199);
select * from apps
where appname like "g%";
select * from apps
where appname like "%google%";
select * from apps where
rating>4.0 and downloads>5000000;
select * from apps where
categoryid in(301,305);
select * from apps 
where  appname not like  "g%";

select * from apps 
where rating<4.0 and downloads>10000000;
select * from developers
where developername in("a");
select * from apps 
where price between 0 and 300;
select * from apps;
select * from publishers
where publisherid in(201,204);
select * from apps
where categoryid not in (305);

alter table apps 
add constraint fk_developers
foreign key (developerid)
references developers(developerid);
insert  into developers values
(105,"byjus","india",2011);
select appid,appname,developerid from apps
where developerid not in(
select developerid from developers);
select * from developers;
alter table apps 
add constraint fk_developers
foreign key (developerid)
references developers(developerid);

alter table apps 
add constraint fk_publishers
foreign key (publisherid)
references publishers(publisherid);

alter table apps 
add constraint fk_categories
foreign key (categoryid)
references categories(categoryid);


select * from categories;
update categories 
set categoryid=303
where categoryid=304;
update categories 
set categoryid=304
where categoryid=305;
update categories 
set categoryid=305
where categoryid=306;

select appid,appname,categoryid from apps
where categoryid not in(
select categoryid from categories);


insert into apps values
(1011,"mynthra",110,203,302,4.5,5000000,10);
