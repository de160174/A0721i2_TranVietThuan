create database if not exists bt_quanhe;
use bt_quanhe;
create table if not exists NHACC(
MNCC int auto_increment primary key,
TENCC varchar(50),
DIACHI varchar(200)
);


create table if not exists PHIEUXUAT(
SoPX int auto_increment primary key,
NgayXuat date
);

create table if not exists PHIEUNHAP(
SoPN int auto_increment primary key,
NgayNhap date
);

create table if not exists SDT(
IDSDT int auto_increment primary key,
SDT varchar(20),
foreign key (IDSDT) references NHACC(MNCC)
);

create table if not exists DONDH(
SoDH int auto_increment primary key,
NGAYDH date,
foreign key (SoDH) references NHACC(MNCC)
);
create table if not exists VATTU(
MaVTU int auto_increment primary key,
TenVTU varchar(50)
);

create table if not exists DONDHVTU(
SoDH int ,
MaVTU int,
primary key (SoDH,MaVTU),
foreign key (SoDH) references  DONDH(SoDH),
foreign key (MaVTU) references VATTU(MaVTU)
);


create table if not exists PHIEUNHAPVTU(
MaVTU int,
SoPN int,
DGNhap float,
SLNhap int,
foreign key (MaVTU) references VATTU(MaVTU),
foreign key (SoPN) references PHIEUNHAP(SoPN)
);

create table if not exists PHIEUXUATVATTU(
MaVTU int,
SoPX int,
DGXuat float,
SLXuat int,
foreign key (MaVTU) references VATTU(MaVTU),
foreign key (SoPX) references PHIEUXUAT(SoPX)
);
