use master
go

if db_id ('DDS') is not null
drop database DDS;
go

create database DDS 
on primary (name = 'dds_fg1'
, filename = 'c:\disk\data1\dds_fg1.mdf'
, size = 20 MB, filegrowth = 5 MB)
, filegroup dds_fg2 (name = 'dds_fg2'
, filename = 'c:\disk\data2\dds_fg2.ndf'
, size = 20 MB, filegrowth = 5 MB)
, filegroup dds_fg3 (name = 'dds_fg3'
, filename = 'c:\disk\data3\dds_fg3.ndf'
, size = 20 MB, filegrowth = 5 MB)
, filegroup dds_fg4 (name = 'dds_fg4'
, filename = 'c:\disk\data4\dds_fg4.ndf'
, size = 20 MB, filegrowth = 5 MB)
, filegroup dds_fg5 (name = 'dds_fg5'
, filename = 'c:\disk\data5\dds_fg5.ndf'
, size = 20 MB, filegrowth = 5 MB)
, filegroup dds_fg6 (name = 'dds_fg6'
, filename = 'c:\disk\data6\dds_fg6.ndf'
, size = 20 MB, filegrowth = 5 MB)
log on (name = 'dds_log'
, filename = 'c:\disk\log1\dds_log.ldf'
, size = 1 MB, filegrowth = 512 KB)
collate SQL_Latin1_General_CP1_CI_AS
go

alter database DDS set recovery simple 
go
alter database DDS set auto_shrink off
go
alter database DDS set auto_create_statistics on
go
alter database DDS set auto_update_statistics on
go

