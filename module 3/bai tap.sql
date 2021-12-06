use demo_a07;

create table tai_khoan (
username varchar(15) primary key,
`password` varchar(100) not null 
);

create table lop_hoc (
ma_lop_hoc int primary key auto_increment,
ten_lop_hoc varchar(100)
);

create table giang_vien (
ma_giang_vien int primary key auto_increment,
ten_giang_vien varchar(100),
ngay_sinh date
);

create table hoc_vien (
ma_hoc_vien int primary key auto_increment,
ten_hoc_vien varchar(100),
ngay_sinh date,
email varchar(100),
username varchar(15) unique,
ma_lop_hoc int,
foreign key(ma_lop_hoc) references lop_hoc(ma_lop_hoc),
foreign key(username) references tai_khoan(username)
);

create table dia_chi(
ma_dia_chi int primary key auto_increment,
dia_chi varchar (255),
ma_hoc_vien int,
foreign key(ma_hoc_vien) references hoc_vien(ma_hoc_vien)
);

create table giang_vien_day_lop_hoc(
ma_giang_vien int,
ma_lop_hoc int,
primary key(ma_giang_vien,ma_lop_hoc), -- khóa phức hợp
foreign key(ma_giang_vien) references giang_vien(ma_giang_vien),
foreign key(ma_lop_hoc) references  lop_hoc(ma_lop_hoc)
);
insert into tai_khoan(username, `password`)
values('thuan132', '142425'), ('lanndh1', '1342424'), ('noname1', '1234222'),
      ('hoangpro', '12342w'), ('linh242', 'linh12342'), ('alos213', 'sssww32'),
      ('102sawee', '12342*');
      
insert into lop_hoc(ten_lop_hoc)
values ('HW12'), ('HW14'), ('GF24'), ('HR224'),
       ('HR21'), ('SE14'), ('SM2');
  
insert into giang_vien(ten_giang_vien, ngay_sinh)
values ('Bales', '12/12/1990'),
	   ('Mary Ann', '24/2/1991'),
       ('Khey', '4/7/1995'),
       ('Scott', '24/5/1994'),
       ('Lilizabeths', '11/3/1989'),
       ('Katy', '6/9/1987'),
       ('Lenon', '29/10/1990');
select * from giang_vien;
insert into hoc_vien(ten_hoc_vien, ngay_sinh, email, username, ma_lop_hoc )
values ('Thuan', '18/01/2002', 'thuan688113@gmail.com', 'thuan132', 1),
	   ('Lan', '2/10/2002', 'Lanhong22@gmail.com','lanndh1', 5),
       ('Noname', '19/5/2001', 'noname@gmail.com', 'noname1', 4),
       ('Hoang', '12/3/2002', 'Hoang24@gmail.com', 'hoangpro', 6),
       ('Linh', '20/1/2002', 'phulinh2@gmail.com', 'linh242', 2),
       ('Alosa', '2/5/2002', 'alosae2@gmail.com', 'alos213', 3),
       ('Swen', '12/5/2001', 'Swenprok@gmail.com', '102sawee', 7);
       
insert into dia_chi (`dia_chi`, ma_hoc_vien)
values ('Da nang', 1),
	   ('England', 3),
       ('Quang Tri', 5),
       ('Ha Tinh', 2),
       ('Philipin', 7),
       ('Quang Nam', 6),
       ('Nghe An', 4);
       
insert into giang_vien_day_lop_hoc(ma_giang_vien, ma_lop_hoc)
values (1, 3),
	   (2, 4),
       (3, 5),
       (4, 6),
       (5, 7),
       (6, 2), 
       (7, 1);