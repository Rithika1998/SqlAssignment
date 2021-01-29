use WFA3DotNet

-- 1)Create a table Product

 create table Product(
 ProductId int not null primary key identity(1,1),
 Descript varchar(30)not null unique,
 SetQty int not null
 check(setqty=1 or setqty=5 or setqty=10)
 default  1,
 Rate decimal(10,2) 
 check (rate>=51 and rate<=5000)
 
 )

 -- 2)Insert 20 records in the above Product Table
 
 
 insert into Product values('Book', 1, 56.3)
 insert into Product values('MilkyBar',5,80.8)
 insert into Product values('Charger',1,850.78)
 insert into Product values('Pen',10,57.98)
 insert into Product values('Bottle',5,200.99)
 insert into Product values('eclairs',10,67.2)
 insert into Product values('Kitkat',5,78.37)
 insert into Product values('Frooti',10,60.98)
 insert into Product values('Gems',10,190.99)
 insert into Product values('Coke',1,65.9)
 insert into Product values('Pepsi',1,80.9)
 insert into Product values('Penpencil',5,54.6)
 insert into Product values('box',5,1000.9)
 insert into Product values('5star',10,75.34)
 insert into Product values('eraser',5,55.89)
 insert into Product values('earphones',1,999.98)
 insert into Product values('hersheys',10,876.98)
 insert into Product values('files',5,60.45)
 insert into Product values('highlighter',1,256.67)
 insert into Product values('FerreroRocher',5,2000.87)

 -- 3) Update all the rates with 10% rate hike.

 update Product set rate = rate *1.1
 from product

 -- 4) Delete last record by providiing the product id

 delete from Product where ProductId=20

 -- 5) Alter the above table and add the following column

 alter table Product 
 add MarginCode char(1)
 check(margincode='A' or margincode='B' or margincode='null')

 -- 6) Update few records to set MarginCode to A and some records MarginCode to B

 update product set margincode = 'A'
 where ProductId < 5

 update product set margincode = 'B'
 where ProductId > 15

 -- 7) Update all the SetQty to 10 for all Items which have MarginCode A and whose original SetQty is 1

 update product
 set SetQty=10
 where margincode = 'A' and SetQty=1

 
 select * from Product
