create user 'bproject'@'%' identified by '1234';
grant all privileges on *.* to 'bproject'@'%';
CREATE DATABASE bproject default CHARACTER SET UTF8;

create table tbl_board(
	brdno int(11) not null auto_increment,
    brdtitle varchar(255),
    brdwriter varchar(100),
    brdmemo varchar(4000),
    brddate datetime,
    brdcnt int,
    brddeleteflag char(1),
    primary key (brdno)
);

commit;