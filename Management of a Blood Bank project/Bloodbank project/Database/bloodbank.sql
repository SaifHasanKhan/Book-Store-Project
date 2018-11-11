create table Donor(

dName varchar(20)NOT NULL,
dId int NOT NULL PRIMARY KEY,
Sex char NOT NULL,
Age int NOT NULL,
dreg_date date not null,
rs_id  int NOT NULL FOREIGN KEY REFERENCES Registration_Staff(rs_id),
dis_id int not null FOREIGN KEY REFERENCES District(dis_id),
db_grp varchar(20) NOT NULL
)

CREATE TABLE District(

dis_id int not null PRIMARY KEY,
dis_name varchar(20) not null
)

create table Registration_Staff
(

rs_id int not null PRIMARY KEY,
rs_name varchar (20) not null,
Sex char not null
)


CREATE TABLE Blood_Recipient
(

rId int not null PRIMARY KEY,
Sex char not null,
Age int not null,
r_regdate date not null,
rName varchar (20)not null,
b_qnty int not null,
rb_grp varchar(20) not null,
rs_id int not null FOREIGN KEY REFERENCES Registration_Staff,
dis_id int not null FOREIGN KEY REFERENCES District,
bm_id int not null FOREIGN KEY REFERENCES Blood_Processing_Manager(bm_id)
)

CREATE TABLE Blood_Sample
(
b_group varchar(30) NOT NULL ,
sample_no int not null PRIMARY KEY,
Status varchar(30) NOT NULL ,
drecog_id int not null FOREIGN KEY REFERENCES Disease_Recognizer(drecog_id),
bm_id int not null FOREIGN KEY REFERENCES Blood_Processing_Manager(bm_id)
)



CREATE TABLE Disease_Recognizer
(
 drecog_id int not null PRIMARY KEY,
 drecog_name varchar(30) NOT NULL,
 Sex char not null
 
 )
 
CREATE TABLE Blood_Processing_Manager
(

bm_id int not null PRIMARY KEY,
bm_name varchar(30) NOT NULL,
Sex char not null
)

CREATE TABLE Hospital(

hId int not null PRIMARY KEY,
hb_qnty int not null,
hb_grp varchar(30) NOT NULL,
HName varchar(30) NOT NULL,
dis_id int not null FOREIGN KEY REFERENCES District,
bm_id int not null FOREIGN KEY REFERENCES Blood_Processing_Manager

)


Select sample_no,b_group FROM Blood_Sample,Disease_Recognizer where Blood_Sample.drecog_id=Disease_Recognizer.drecog_id AND drecog_name='Shila' AND status='Yes'


select dId,dName ,rID,rName from Donor,Blood_Recipient where db_grp=rb_grp AND Donor.dis_id=Blood_Recipient.dis_id

select dId,dName,rId,rName from Donor ,Blood_Recipient,Registration_Staff where db_grp=rb_grp AND dreg_date=r_regdate AND Donor.rs_id=Blood_Recipient.rs_id AND rs_name='Tania'

select dName,rName dis_name from Donor,Blood_Recipient,District where Donor.db_grp='A+' AND Donor.db_grp=Blood_Recipient.rb_grp AND District.dis_id='10'

select * from Blood_Sample where bm_id= (select bm_id from Blood_Processing_Manager where Sex='Male') 

select Donor.dName,dId,rs_name from Donor,Registration_Staff where Donor.rs_id=Registration_Staff.rs_id and Registration_Staff.rs_id='104'

select b_group, sample_no from Blood_Sample where drecog_id=(select drecog_id from Disease_Recognizer where drecog_name='Dengue')

select dName,Age,dId from Donor ,Registration_Staff WHERE Donor.rs_id=Registration_Staff.rs_id
UNION
select dName,Age,dId from Donor where db_grp='B+'

select HName from Hospital where dis_id= (select dis_id from District where dis_name='Dhaka')

select hname,hId,bm_id,dis_id from Hospital where bm_id not in (select bm_id from Blood_Processing_Manager where bm_id='6'



select dName, Sex, Age from Donor where rs_id= (select rs_id from Registration_Staff where rs_name like 'A%')


select * from Donor where dis_id= (select dis_id from District where dis_name like '%R' or dis_name like '%D')

select b_group, sample_no, drecog_id from Blood_Sample where bm_id=( select bm_id from Blood_Processing_Manager where bm_name='Tasnim')
