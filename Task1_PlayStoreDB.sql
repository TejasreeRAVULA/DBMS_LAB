CREATE DATABASE playstoreDB;
USE playstoreDB;
drop table developers;
CREATE TABLE developers(
developerid INT primary key,
developername varchar(60) not null,
country varchar(30),
foundedyear int);
insert into  developers values
(101,"google llc","usa",1998),
(102,"meta platforms","usa",2004),
(103,"spotify ab","sweden",2006),
(104,"canvs pyt ltd","australia",2012),
(105,"byjus","india",2011);

create table publishers(
publisherid int primary key,
publishername varchar(60),
headoffice varchar(40),
supportemail varchar(60)
);
insert into publishers values
(201,"google play","california","support@google.com"),
(202,"samsung galaxy store","seoul","support@samsung.com"),
(203,"huawei appgallery","shenzhen","support@huawei.com"),
(204,"amazon store","seattle","support@amazon.com");
create table categories(
categoryid int primary key,
categoryname varchar(40),
minimumage int
);
insert into categories values
(301,"education",3),
(302,"productivity",3),
(303,"music",12),
(304,"social",13),
(305,"gaming",16)
;
create table apps(
appid int primary key,
appname varchar(60),
developerid int,
publisherid int,

rating float,
downloads int

);
alter table apps
add column price float;
alter table apps
add column categoryid int
after publisherid;

insert into apps values
(1001,"google classroom",101,201,301,4.6,5000000,0),
(1002,"google keep",102,202,302,4.5,10000000,0),
(1003,"instagram",103,203,303,4.4,5000000,0),
(1004,"spotify",104,204,304,4.5,10000000,0),
(1005,"canva",105,205,305,4.7,10000000,0),
(1006,"byjus learning",106,206,306,4.3,10000000,0),
(1007,"candy crush",107,207,307,4.6,10000000,0),
(1008,"temple run",108,208,308,4.2,5000000,0);


select * from developers;
select * from publishers;
select * from categories;
select * from apps;
insert into developers values
(106,"open ai","usa",2015);

select * from developers;
insert into categories values
(306,"artificial intelligence",12);
insert into apps values
(307,"chatgpt",108,208,308,4.8,1000000,0);
delete from developers
where developerid=105;
update apps
set rating=4.5
where appid=1008;
select * from publishers;
select * from categories;
select * from apps;
update publishers
set supportemail="support@samsung galaxy.com"
where publisherid=201;
insert into apps values
(1009,"snapchat",109,209,309,3.9,400000,0),
(1010,"pinterest",110,210,310,4.7,5000000,0);
update apps
set price=199
where appid=1006;
delete from categories
where categoryid=303;
select * from developers;
select * from publishers;
select * from categories;
select * from apps;


USE playstoreDB;
show tables;





