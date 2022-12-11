Microsoft Windows [Version 10.0.22000.1219]
(c) Microsoft Corporation. All rights reserved.

C:\Users\LENOVO>cd "C:\Program Files\PostgreSQL\14\bin"

C:\Program Files\PostgreSQL\14\bin>psql -U postgres -h localhost
Password for user postgres:
psql (14.6)
WARNING: Console code page (437) differs from Windows code page (1252)
         8-bit characters might not work correctly. See psql reference
         page "Notes for Windows users" for details.
Type "help" for help.

postgres=# \list
                                              List of databases
    Name     |  Owner   | Encoding |        Collate         |         Ctype          |   Access privileges
-------------+----------+----------+------------------------+------------------------+-----------------------
 informatika | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 postgres    | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siaakad     | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siakaadd    | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siakad      | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siakadd     | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siakaddd    | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siakkad     | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siiakad     | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siswa       | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 ssiakad     | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 template0   | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 | =c/postgres          +
             |          |          |                        |                        | postgres=CTc/postgres
 template1   | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 | =c/postgres          +
             |          |          |                        |                        | postgres=CTc/postgres
(13 rows)


postgres=# create database ssiakadd
postgres-# create database ssiakadd;
ERROR:  syntax error at or near "create"
LINE 2: create database ssiakadd;
        ^
postgres=# create database ssiakadd;
CREATE DATABASE
postgres=# \list
                                              List of databases
    Name     |  Owner   | Encoding |        Collate         |         Ctype          |   Access privileges
-------------+----------+----------+------------------------+------------------------+-----------------------
 informatika | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 postgres    | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siaakad     | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siakaadd    | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siakad      | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siakadd     | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siakaddd    | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siakkad     | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siiakad     | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siswa       | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 ssiakad     | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 ssiakadd    | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 template0   | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 | =c/postgres          +
             |          |          |                        |                        | postgres=CTc/postgres
 template1   | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 | =c/postgres          +
             |          |          |                        |                        | postgres=CTc/postgres
(14 rows)


postgres=# \c ssiakadd
You are now connected to database "ssiakadd" as user "postgres".
ssiakadd=# create table mahasiswa(nim varchar(30) not null primary key,nama varchar (50),prodi varchar(50));
CREATE TABLE
ssiakadd=# \d mahasiswa;
                    Table "public.mahasiswa"
 Column |         Type          | Collation | Nullable | Default
--------+-----------------------+-----------+----------+---------
 nim    | character varying(30) |           | not null |
 nama   | character varying(50) |           |          |
 prodi  | character varying(50) |           |          |
Indexes:
    "mahasiswa_pkey" PRIMARY KEY, btree (nim)


ssiakadd=# create table dosen(nidn int not null primary key,nama varchar (50), program_studi varchar(50));
CREATE TABLE
ssiakadd=# \d dosen;
                          Table "public.dosen"
    Column     |         Type          | Collation | Nullable | Default
---------------+-----------------------+-----------+----------+---------
 nidn          | integer               |           | not null |
 nama          | character varying(50) |           |          |
 program_studi | character varying(50) |           |          |
Indexes:
    "dosen_pkey" PRIMARY KEY, btree (nidn)


ssiakadd=#  create table kuliah(kode_makul varchar(30) not null primary key,nama_makul varchar (50),sks int,semester int);
CREATE TABLE
ssiakadd=# \d kuliah;
                        Table "public.kuliah"
   Column   |         Type          | Collation | Nullable | Default
------------+-----------------------+-----------+----------+---------
 kode_makul | character varying(30) |           | not null |
 nama_makul | character varying(50) |           |          |
 sks        | integer               |           |          |
 semester   | integer               |           |          |
Indexes:
    "kuliah_pkey" PRIMARY KEY, btree (kode_makul)


ssiakadd=# \d mahasiswa;
                    Table "public.mahasiswa"
 Column |         Type          | Collation | Nullable | Default
--------+-----------------------+-----------+----------+---------
 nim    | character varying(30) |           | not null |
 nama   | character varying(50) |           |          |
 prodi  | character varying(50) |           |          |
Indexes:
    "mahasiswa_pkey" PRIMARY KEY, btree (nim)


ssiakadd=# insert into mahasiswa (nim,nama,prodi) values ('D0221096','gusmi permatasari','informatika'),('D0221095','wiwi lestiani','informatika'),('D0221097','ayu nanda sari','informatika');
INSERT 0 3
ssiakadd=# select * from mahasiswa;
   nim    |       nama        |    prodi
----------+-------------------+-------------
 D0221096 | gusmi permatasari | informatika
 D0221095 | wiwi lestiani     | informatika
 D0221097 | ayu nanda sari    | informatika
(3 rows)


ssiakadd=# insert into dosen (nidn,nama,program_studi) values (0015018805,'Dr. Eng. Amry Dasar, ST., M.Eng.','sipil'),(0017038904,'Dr. Eng. Sulfayanti, S.Si., MT.','informatika'),(0031077904,'Indra, S.Kom.,M.M','informatika');
INSERT 0 3
ssiakadd=# select * from dosen;
   nidn   |               nama               | program_studi
----------+----------------------------------+---------------
 15018805 | Dr. Eng. Amry Dasar, ST., M.Eng. | sipil
 17038904 | Dr. Eng. Sulfayanti, S.Si., MT.  | informatika
 31077904 | Indra, S.Kom.,M.M                | informatika
(3 rows)


ssiakadd=# \d kuliah;
                        Table "public.kuliah"
   Column   |         Type          | Collation | Nullable | Default
------------+-----------------------+-----------+----------+---------
 kode_makul | character varying(30) |           | not null |
 nama_makul | character varying(50) |           |          |
 sks        | integer               |           |          |
 semester   | integer               |           |          |
Indexes:
    "kuliah_pkey" PRIMARY KEY, btree (kode_makul)


ssiakadd=# insert into kuliah (kode_makul,nama_makul,sks,semester) values ('INF183219','Aplikasi Komputer',2,3),('INF173319','Pengembangan Multimedia',3,3),('INF123319','Basis Data I',2,3);
INSERT 0 3
ssiakadd=# select * from kuliah;
 kode_makul |       nama_makul        | sks | semester
------------+-------------------------+-----+----------
 INF183219  | Aplikasi Komputer       |   2 |        3
 INF173319  | Pengembangan Multimedia |   3 |        3
 INF123319  | Basis Data I            |   2 |        3
(3 rows)


ssiakadd=# select * from mahasiswa;
   nim    |       nama        |    prodi
----------+-------------------+-------------
 D0221096 | gusmi permatasari | informatika
 D0221095 | wiwi lestiani     | informatika
 D0221097 | ayu nanda sari    | informatika
(3 rows)


ssiakadd=# update mahasiswa set nama='ayu nanda sari' where nim = 'D0221097';
UPDATE 1
ssiakadd=# select * from mahasiswa;
   nim    |       nama        |    prodi
----------+-------------------+-------------
 D0221096 | gusmi permatasari | informatika
 D0221095 | wiwi lestiani     | informatika
 D0221097 | ayu nanda sari    | informatika
(3 rows)


ssiakadd=# select * from dosen;
   nidn   |               nama               | program_studi
----------+----------------------------------+---------------
 15018805 | Dr. Eng. Amry Dasar, ST., M.Eng. | sipil
 17038904 | Dr. Eng. Sulfayanti, S.Si., MT.  | informatika
 31077904 | Indra, S.Kom.,M.M                | informatika
(3 rows)


ssiakadd=# update dosen set nama='Indra' where nidn = 31077904;
UPDATE 1
ssiakadd=# select * from dosen;
   nidn   |               nama               | program_studi
----------+----------------------------------+---------------
 15018805 | Dr. Eng. Amry Dasar, ST., M.Eng. | sipil
 17038904 | Dr. Eng. Sulfayanti, S.Si., MT.  | informatika
 31077904 | Indra                            | informatika
(3 rows)


ssiakadd=# select * from kuliah;
 kode_makul |       nama_makul        | sks | semester
------------+-------------------------+-----+----------
 INF183219  | Aplikasi Komputer       |   2 |        3
 INF173319  | Pengembangan Multimedia |   3 |        3
 INF123319  | Basis Data I            |   2 |        3
(3 rows)


ssiakadd=# update kuliah sks=3 where kode_makul='INF173319';
ERROR:  syntax error at or near "="
LINE 1: update kuliah sks=3 where kode_makul='INF173319';
                         ^
ssiakadd=# update kuliah set sks=3 where kode_makul='INF173319';
UPDATE 1
ssiakadd=# select * from kuliah;
 kode_makul |       nama_makul        | sks | semester
------------+-------------------------+-----+----------
 INF183219  | Aplikasi Komputer       |   2 |        3
 INF123319  | Basis Data I            |   2 |        3
 INF173319  | Pengembangan Multimedia |   3 |        3
(3 rows)


ssiakadd=#