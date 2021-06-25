/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  Underdog
 * Created: Apr 14, 2018
 */
create table users(userid varchar2(20), firstname varchar2(20) not null, lastname varchar2(20) not null,phoneno varchar2(20) not null,dateofbirth varchar2(20)  not null,gender varchar2(10)  not null,
bloodgroup varchar2(10)  not null,address varchar2(30)  not null,city varchar2(20)  not null,ustate varchar2(20)  not null,country varchar2(20)  not null,zipcode varchar2(20)  not null,
email varchar2(30)  not null unique,password varchar2(20)  not null,secques varchar2(30)  not null,answer varchar2(20)  not null,primary key(userid));

insert into users values('u1','nick','peel','9045637823','1993-10-02','male','b+','123/4,A.P lane','kolkata','west bengal','india','700001','n.p@gmail.com','1234','your pet name','rocky');
insert into users values('u2','ellina','hicks','9042111823','1994-11-11','female','a+','125/10,J.P lane','kolkata','west bengal','india','700001','e.h@gmail.com','1234','your pet name','rocky');

create table doctor(doctorid varchar2(20), firstname varchar2(20) not null, lastname varchar2(20) not null,phoneno varchar2(20) not null,gender varchar2(10)  not null,
department varchar2(20)  not null,degree varchar2(20)  not null,cliniccity varchar2(20)  not null,fees varchar2(10)  not null,
email varchar2(30)  not null unique,password varchar2(20)  not null,secques varchar2(30)  not null,answer varchar2(20)  not null,vstatus varchar2(20)  not null,primary key(doctorid));

insert into doctor values('d1','joshua','hicks','9045637823','male','gastroenterology','MBBS','kolkata','1000','j.h@gmail.com','1234','your pet name','rocky','no');
insert into doctor values('d2','christopher','gregory','9045233823','male','gynaecology','MBBS','kolkata','1000','c.g@gmail.com','1234','your pet name','rocky','no');
insert into doctor values('d3','david','peel','9023637823','male','haematology','MD','kolkata','1000','d.p@gmail.com','1234','your pet name','rocky','no');
insert into doctor values('d4','michael',' wheatley','9041227823','male','neurology','MD','kolkata','1000','m.w@gmail.com','1234','your pet name','rocky','no');
insert into doctor values('d5','james ',' blaese','9045123823','male','oncology','MBBS','kolkata','1000','j.b@gmail.com','1234','your pet name','rocky','no');
insert into doctor values('d6','robert ',' grey','9045637122','male','ophthalmology','MBBS','kolkata','1000','r.g@gmail.com','1234','your pet name','rocky','no');
insert into doctor values('d7','daniel ',' herbert','9045637212','male','orthopaedics','MBBS','kolkata','1000','d.h@gmail.com','1234','your pet name','rocky','no');
insert into doctor values('d8','matthew ',' good','9045637444','male','urology','MBBS','kolkata','1000','m.g@gmail.com','1234','your pet name','rocky','no');
insert into doctor values('d9','john ',' armstrong','9045637555','male','cardiology','MBBS','kolkata','1000','j.a@gmail.com','1234','your pet name','rocky','no');
insert into doctor values('d10','anthony ',' reese','9045637666','male','ent','MBBS','kolkata','1000','a.r@gmail.com','1234','your pet name','rocky','no');
insert into doctor values('d11','amanda ',' swift','9045637777','female','gastroenterology','MBBS','kolkata','1000','a.s@gmail.com','1234','your pet name','rocky','yes');
insert into doctor values('d12','sarah ',' moore','9045637888','female','gynaecology','MBBS','kolkata','1000','s.m@gmail.com','1234','your pet name','rocky','yes');
insert into doctor values('d13','nicole ',' gray','9045637999','female','haematology','MD','kolkata','1000','n.g@gmail.com','1234','your pet name','rocky','yes');
insert into doctor values('d14','heather ',' walls','9045637000','female','neurology','MD','kolkata','1000','h.w@gmail.com','1234','your pet name','rocky','yes');
insert into doctor values('d15','melissa ',' curran','9045622223','female','oncology','MBBS','kolkata','1000','m.c@gmail.com','1234','your pet name','rocky','yes');
insert into doctor values('d16','jennifer ',' mccabe','9045633323','female','ophthalmology','MBBS','kolkata','1000','j.m@gmail.com','1234','your pet name','rocky','yes');
insert into doctor values('d17','jessica ',' bellamy','9045444823','female','orthopaedics','MD','kolkata','1000','j.be@gmail.com','1234','your pet name','rocky','yes');
insert into doctor values('d18','megan ',' bateman','9045655523','female','urology','MBBS','kolkata','1000','m.b@gmail.com','1234','your pet name','rocky','yes');
insert into doctor values('d19','elizabeth ',' bender','9045666623','female','cardiology','MBBS','kolkata','1000','e.b@gmail.com','1234','your pet name','rocky','yes');
insert into doctor values('d20','stephanie ',' bouvet','9045677723','female','ent','MD','kolkata','1000','s.b@gmail.com','1234','your pet name','rocky','yes');
insert into doctor values('d21','emma','hawkings','9045688823','female','physiotheraphy','MBBS','kolkata','1000','e.h@gmail.com','1234','your pet name','rocky','yes');

create table admins(adminid varchar2(20), firstname varchar2(20) not null, lastname varchar2(20) not null,phoneno varchar2(20) not null,gender varchar2(10)  not null,
email varchar2(30)  not null unique,password varchar2(20)  not null,secques varchar2(30)  not null,answer varchar2(20)  not null,primary key(adminid));

insert into admins values('a1','souvik','pal',7278414116,'male','svkpl.galaxy@gmail.com','1234','your pet name','coco');

create table appointment(appid varchar2(20), userid varchar2(20) not null, doctorid varchar2(20) not null, appstatus varchar2(20) not null, appdate varchar2(20) not null, visitstatus varchar2(20) not null, paymentstatus varchar2(20) not null, primary key(appid));

create table idgen(name varchar2(10), value number(10),primary key(name);
insert into idgen values('ap',1);
insert into idgen values('u',3);
insert into idgen values('d',22);
insert into idgen values('a',2);


create table feedback(usertype varchar2(10) not null,userid varchar2(10) not null,dates varchar2(20) not null,issue varchar2(200) not null);

create table commission(appid varchar2(20), doctorid varchar2(20) not null, amount varchar2(20) not null, adminpay varchar2(20) not null, primary key(appid));

create table report(appid varchar2(20), userid  varchar2(20) not null, doctorid varchar2(20) not null, disease varchar2(20) not null, description varchar2(30) not null, medication varchar2(20) not null,dates varchar2(20) not null, primary key(appid));
