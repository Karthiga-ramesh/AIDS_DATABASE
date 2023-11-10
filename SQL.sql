CREATE DATABASE Joins;
USE Joins;
create table product_detail(
product_name varchar(100) not null,
product_id int PRIMARY KEY auto_increment,
product_price int not null,
product_expiry int not null,
product_avalibity int not null
);
alter table product_detail auto_increment=1;
describe product_detail;
 INSERT into product_detail values( "cake",1,50,3,50);
 INSERT into product_detail values("shampoo",2,250,40,200);
 INSERT into product_detail values("jam",3,500,30,45);
 INSERT into product_detail values("sweets",4,700,17,20);

create table order_detail(
order_cusname varchar(200) not null,
order_bill int not null,
product_id int null,
order_cusno bigint not null,
order_mail varchar(200) not null
);
describe order_detail;
 INSERT into order_detail values( "kar",07,1,87654358,"kar@gmail.com");
 INSERT into order_detail values("nis",21,2,978654043,"nis@gmail.com");
 INSERT into order_detail values("thara",45,3,77658379,"thara@gmail.com");
 INSERT into order_detail values("chan",31,4,876348898,"chan@gmail.com");
  select product_detail.product_name,product_detail.product_id,product_detail.product_expiry,order_detail.order_cusname,order_detail.order_bill,order_detail.product_id
 from product_detail INNER JOIN order_detail
 ON product_detail.product_id=order_detail.product_id;
 select product_detail.product_name,product_detail.product_id,product_detail.product_expiry,order_detail.order_cusname,order_detail.order_bill,order_detail.product_id
 from product_detail JOIN order_detail
 ON product_detail.product_id=order_detail.product_id;
 select product_detail.product_name,product_detail.product_id,product_detail.product_expiry,order_detail.order_cusname,order_detail.order_bill,order_detail.product_id
 from product_detail LEFT JOIN order_detail
 ON product_detail.product_id=order_detail.product_id;
 select product_detail.product_name,product_detail.product_id,product_detail.product_expiry,order_detail.order_cusname,order_detail.order_bill,order_detail.product_id
 from product_detail RIGHT JOIN order_detail
 ON product_detail.product_id=order_detail.product_id;
Grant all privileges on Joins.order_detail to 'Joins'@'kar';





 -- select staff_details.staff_IDNO,staff_details.staff_name,staff_details.staff_department,staff_departments.staff_deptID,staff_departments.staffIDNO,staff_departments.staff_medium
 select*from staff_details INNER JOIN staff_departments
 ON staff_details.staff_IDNO=staff_departments.staff_IDNO; 
 drop database MCE;
-- select staff_details.staff_IDNO,staff_details.staff_name,staff_details.staff_department,staff_departments.staff_deptID,staff_departments.staffIDNO,staff_departments.staff_medium
 select*from staff_details full JOIN staff_departments
 ON staff_details=staff_departments; 
 drop database MCE;
 -- select staff_details.staff_IDNO,staff_details.staff_name,staff_details.staff_department,staff_departments.staff_deptID,staff_departments.staffIDNO,staff_departments.staff_medium
 
 


create table staff_departments(
staff_IDNO	 int not null,
staff_technology varchar(80) not null,
staff_qualification varchar(30) null,
staff_medium varchar(200) not null,
staff_accomodation varchar(200) not null
);
INSERT into staff_departments values( 567,"java","BE","tamil","hos");
 INSERT into staff_departments values(879,"python","MTECH","english","hos");
 INSERT into staff_departments values(785,"java","PHD","tamil","hos");
 INSERT into staff_departments values(647,"sql","ME","telugu","day");
 
 
 
 

