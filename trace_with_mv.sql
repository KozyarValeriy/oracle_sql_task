
TKPROF: Release 18.0.0.0.0 - Development on Tue Mar 3 17:08:28 2020

Copyright (c) 1982, 2018, Oracle and/or its affiliates.  All rights reserved.

Trace file: orcl_ora_18244.trc
Sort options: default

********************************************************************************
count    = number of times OCI procedure was executed
cpu      = cpu time in seconds executing 
elapsed  = elapsed time in seconds executing
disk     = number of physical reads of buffers from disk
query    = number of buffers gotten for consistent read
current  = number of buffers gotten in current mode (usually for update)
rows     = number of rows processed by the fetch or execute call
********************************************************************************

DECLARE SqlDevBind1Z_1 VARCHAR2(32767):=:SqlDevBind1ZInit1; SqlDevBind1Z_2 VARCHAR2(32767):=:SqlDevBind1ZInit2; SqlDevBind1Z_3 VARCHAR2(32767):=:SqlDevBind1ZInit3;  BEGIN begin
    BOOKING_GENERATOR.FILL_HOTEL(TO_NUMBER( SqlDevBind1Z_3));
    BOOKING_GENERATOR.FILL_BOOKING(TO_NUMBER( SqlDevBind1Z_2), to_date('01-01-2019', 'DD-MM-YYYY'));
    --BOOKING_GENERATOR.FILL_BOOKING_BY_PERIOD(100, to_date('01-01-2019', 'DD-MM-YYYY'), SYSDATE);
    BOOKING_GENERATOR.CHANGE_ROW_IN_HOTEL(TO_NUMBER( SqlDevBind1Z_1));
end; :AUXSQLDBIND3:=SqlDevBind1Z_1; :AUXSQLDBIND2:=SqlDevBind1Z_2; :AUXSQLDBIND1:=SqlDevBind1Z_3;  END;

call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute      1     54.37      55.17          0          2          1           1
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        2     54.37      55.17          0          2          1           1

Misses in library cache during parse: 0
Optimizer mode: ALL_ROWS
Parsing user id: 104  
********************************************************************************

SQL ID: fh5ufah919kun Plan Hash: 1697022209

select /*+ index(idl_sb4$ i_idl_sb41) */ piece#,length,piece 
from
 idl_sb4$ where obj#=:1 and part=:2 and version=:3 order by piece#


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        5      0.00       0.00          0          0          0           0
Execute      5      0.00       0.00          0          0          0           0
Fetch        9      0.00       0.00          0         22          0           4
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total       19      0.00       0.00          0         22          0           4

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 3

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         2          1          2  TABLE ACCESS BY INDEX ROWID IDL_SB4$ (cr=5 pr=0 pw=0 time=148 us starts=1 cost=3 size=19 card=1)
         2          1          2   INDEX RANGE SCAN I_IDL_SB41 (cr=3 pr=0 pw=0 time=27 us starts=1 cost=2 size=0 card=1)(object id 381)

********************************************************************************

SQL ID: 2myyd6h0u0sa9 Plan Hash: 1495089658

select param, value 
from
 settings$ where obj# = :1


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute      1      0.00       0.00          0          0          0           0
Fetch        9      0.00       0.00          0         18          0           8
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total       11      0.00       0.00          0         18          0           8

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 1)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         8          8          8  TABLE ACCESS BY INDEX ROWID BATCHED SETTINGS$ (cr=18 pr=0 pw=0 time=120 us starts=1 cost=2 size=256 card=8)
         8          8          8   INDEX RANGE SCAN I_SETTINGS1 (cr=10 pr=0 pw=0 time=124 us starts=1 cost=1 size=0 card=8)(object id 383)

********************************************************************************

SQL ID: 04kug40zbu4dm Plan Hash: 4006480256

select policy#, action# 
from
 aud_object_opt$ where object# = :1 and type = 2


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute     19      0.00       0.00          0          0          0           0
Fetch       19      0.00       0.00          0        152          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total       39      0.00       0.00          0        152          0           0

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
********************************************************************************

SQL ID: 5n1fs4m2n2y0r Plan Hash: 452367486

select pos#,intcol#,col#,spare1,bo#,spare2,spare3 
from
 icol$ where obj#=:1


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute     25      0.00       0.00          0          0          0           0
Fetch       84      0.00       0.00          0        168          0          59
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total      110      0.00       0.00          0        168          0          59

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
********************************************************************************

SQL ID: 7jugy38qf38bd Plan Hash: 1468649093

select warning_num, global_mod, property 
from
 warning_settings$ where obj# = :1 order by property


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute      1      0.00       0.00          0          0          0           0
Fetch        2      0.00       0.00          0          3          0           1
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        4      0.00       0.00          0          3          0           1

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 1)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  SORT ORDER BY (cr=3 pr=0 pw=0 time=325 us starts=1 cost=3 size=12 card=1)
         1          1          1   TABLE ACCESS BY INDEX ROWID BATCHED WARNING_SETTINGS$ (cr=3 pr=0 pw=0 time=300 us starts=1 cost=2 size=12 card=1)
         1          1          1    INDEX RANGE SCAN I_WARNING_SETTINGS (cr=2 pr=0 pw=0 time=251 us starts=1 cost=1 size=0 card=1)(object id 397)

********************************************************************************

SQL ID: 8nwsztmf3wt4w Plan Hash: 3290949889

select privilege#,nvl(col#,0),max(mod(nvl(option$,0),2)),
  max(bitand(nvl(option$,0), 8) /8), max(bitand(nvl(option$,0), 16) /16), 
  max(bitand(nvl(option$,0), 64) /64), max(bitand(nvl(option$,0), 128) /128) 
from
 objauth$ where obj#=:1 and grantee#=:2 group by privilege#,nvl(col#,0)


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute      3      0.00       0.00          0          0          0           0
Fetch        5      0.00       0.00          0          8          0           2
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        9      0.00       0.00          0          8          0           2

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  SORT GROUP BY (cr=3 pr=0 pw=0 time=136 us starts=1 cost=4 size=17 card=1)
         1          1          1   TABLE ACCESS BY INDEX ROWID BATCHED OBJAUTH$ (cr=3 pr=0 pw=0 time=89 us starts=1 cost=3 size=17 card=1)
         1          1          1    INDEX RANGE SCAN I_OBJAUTH2 (cr=2 pr=0 pw=0 time=54 us starts=1 cost=2 size=0 card=1)(object id 63)

********************************************************************************

SQL ID: c5pf32b3arczh Plan Hash: 3765558045

select '"'||name||'" '||decode(type#,1,decode(charsetform,2,
  'NVARCHAR2('||decode(bitand(property,8388608),8388608,decode(spare3,0,1,
  spare3)||')','BYTECOUNT=>'||decode(length,0,1,length)||')'),
  'VARCHAR2('||decode(bitand(property,8388608),8388608,decode(spare3,0,1,
  spare3)||' char)',decode(length,0,1,length)||' byte)')),2,decode(scale,null,
  decode(precision#,null,'NUMBER','FLOAT('||precision#||')'),
  'NUMBER('||decode(precision#,null,'38', precision#)||','||scale||')'),8,
  'LONG',9,'VARCHAR('||(decode(length,0,1,length))||')',12,'DATE',23,
  'RAW('||length||')',24,'LONG RAW',69,'ROWID',96,decode(charsetform,2,
  'NCHAR('||decode(bitand(property,8388608),8388608,decode(spare3,0,1,spare3)
  ||')','BYTECOUNT=>'||decode(length,0,1,length)||')'),
  'CHAR('||decode(bitand(property,8388608),8388608,decode(spare3,0,1,spare3)
  ||' char)',decode(length,0,1,length)||' byte)')),97,
  'VARCHAR('||(decode(length,0,1,length))|| ')',105,'MLSLABEL',106,'MLSLABEL',
  112,decode(charsetform,2,'NCLOB','CLOB'),113,'BLOB',114,'BFILE',115,
  decode(charsetform,2,'NCFILE','CFILE'),178,'TIME('||scale||')',179,
  'TIME('||scale||') WITH TIME ZONE',180,'TIMESTAMP('||scale||')',181,
  'TIMESTAMP('||scale||') WITH TIME ZONE',231,'TIMESTAMP('||scale||') WITH 
  LOCAL TIME ZONE',182,'INTERVAL YEAR('||NVL(precision#, 0)||') TO MONTH',183,
  'INTERVAL DAY('||NVL(precision#, 0)||') TO SECOND('||scale||')',208,
  'UROWID('||spare1||')',100,'BINARY_FLOAT',101,'BINARY_DOUBLE','UNDEFINED')
  ||decode(null$,0,'',' NOT NULL')||decode(bitand(property, 32), 0, ',', ' 
  HIDDEN,'),name, type#, intcol#, null$, bitand(property, 32), nvl(collid, 0) 
from
 col$ where obj#=:1 and (bitand(property,32) = 0 or   bitand(property, 
  4194304) <> 0 or bitand(property, 17179869184) <> 0) order by col#


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        7      0.01       0.00          0          0          0           0
Execute      7      0.00       0.00          0          0          0           0
Fetch       40      0.00       0.00          0         22          0          33
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total       54      0.01       0.01          0         22          0          33

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 1)
Number of plan statistics captured: 2

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         5          4          5  SORT ORDER BY (cr=3 pr=0 pw=0 time=90 us starts=1 cost=3 size=54 card=1)
         5          4          5   TABLE ACCESS CLUSTER COL$ (cr=3 pr=0 pw=0 time=38 us starts=1 cost=2 size=54 card=1)
         1          1          1    INDEX UNIQUE SCAN I_OBJ# (cr=2 pr=0 pw=0 time=11 us starts=1 cost=1 size=0 card=1)(object id 3)

********************************************************************************

SQL ID: gcnbbvdmhyktt Plan Hash: 1467768703

select oid$ 
from
 oid$ where obj#=:1


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        7      0.00       0.00          0          0          0           0
Execute      7      0.00       0.00          0          0          0           0
Fetch        7      0.00       0.00          0        195          0           7
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total       21      0.00       0.00          0        195          0           7

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 1)
Number of plan statistics captured: 2

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  TABLE ACCESS FULL OID$ (cr=32 pr=0 pw=0 time=185 us starts=1 cost=8 size=22 card=1)

********************************************************************************

SQL ID: acmvv4fhdc9zh Plan Hash: 813480514

select obj#,type#,ctime,mtime,stime, status, dataobj#, flags, oid$, spare1, 
  spare2, spare3, signature, spare7, spare8, spare9, nvl(dflcollid, 16382), 
  creappid, creverid, modappid, modverid, crepatchid, modpatchid 
from
 obj$ where owner#=:1 and name=:2 and namespace=:3 and remoteowner is null 
  and linkname is null and subname is null


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        0      0.00       0.00          0          0          0           0
Execute     21      0.00       0.00          0          0          0           0
Fetch       21      0.00       0.00          0         82          0          19
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total       42      0.00       0.00          0         82          0          19

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 3)
********************************************************************************

SQL ID: 1mjd9xp80vuqa Plan Hash: 3023518864

select node,owner,name 
from
 syn$ where obj#=:1


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute      2      0.00       0.00          0          0          0           0
Fetch        2      0.00       0.00          0          6          0           2
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        5      0.00       0.00          0          6          0           2

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  TABLE ACCESS BY INDEX ROWID SYN$ (cr=3 pr=0 pw=0 time=10 us starts=1 cost=2 size=29 card=1)
         1          1          1   INDEX UNIQUE SCAN I_SYN1 (cr=2 pr=0 pw=0 time=6 us starts=1 cost=1 size=0 card=1)(object id 103)

********************************************************************************

SQL ID: 3un99a0zwp4vd Plan Hash: 1475428744

select owner#,name,namespace,remoteowner,linkname,p_timestamp,p_obj#, 
  nvl(property,0),subname,type#,flags,d_attrs 
from
 dependency$ d, obj$ o where d_obj#=:1 and p_obj#=obj#(+) order by order#


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        3      0.00       0.00          0          0          0           0
Execute      3      0.00       0.00          0          0          0           0
Fetch        8      0.00       0.00          0         25          0           5
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total       14      0.00       0.00          0         25          0           5

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 1)
Number of plan statistics captured: 2

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          2          3  SORT ORDER BY (cr=9 pr=0 pw=0 time=115 us starts=1 cost=10 size=414 card=3)
         1          2          3   HASH JOIN OUTER (cr=9 pr=0 pw=0 time=90 us starts=1 cost=9 size=414 card=3)
         1          2          3    NESTED LOOPS OUTER (cr=9 pr=0 pw=0 time=79 us starts=1 cost=9 size=414 card=3)
         1          2          3     STATISTICS COLLECTOR  (cr=4 pr=0 pw=0 time=51 us starts=1)
         1          2          3      TABLE ACCESS BY INDEX ROWID BATCHED DEPENDENCY$ (cr=4 pr=0 pw=0 time=43 us starts=1 cost=3 size=90 card=3)
         1          2          3       INDEX RANGE SCAN I_DEPENDENCY1 (cr=3 pr=0 pw=0 time=25 us starts=1 cost=2 size=0 card=3)(object id 85)
         1          2          3     TABLE ACCESS BY INDEX ROWID BATCHED OBJ$ (cr=5 pr=0 pw=0 time=24 us starts=1 cost=2 size=108 card=1)
         1          2          3      INDEX RANGE SCAN I_OBJ1 (cr=4 pr=0 pw=0 time=17 us starts=1 cost=1 size=0 card=1)(object id 36)
         0          0          0    TABLE ACCESS FULL OBJ$ (cr=0 pr=0 pw=0 time=0 us starts=0 cost=2 size=108 card=1)

********************************************************************************

SQL ID: 8swypbbr0m372 Plan Hash: 570326988

select order#,columns,types 
from
 access$ where d_obj#=:1


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        3      0.00       0.00          0          0          0           0
Execute      3      0.00       0.00          0          0          0           0
Fetch        4      0.00       0.00          0          8          0           1
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total       10      0.00       0.00          0          8          0           1

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 1)
Number of plan statistics captured: 2

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          1          1  TABLE ACCESS BY INDEX ROWID BATCHED ACCESS$ (cr=3 pr=0 pw=0 time=53 us starts=1 cost=3 size=150 card=3)
         0          1          1   INDEX RANGE SCAN I_ACCESS1 (cr=3 pr=0 pw=0 time=50 us starts=1 cost=2 size=0 card=3)(object id 87)

********************************************************************************

SQL ID: 03guhbfpak0w7 Plan Hash: 3246118364

select /*+ index(idl_ub1$ i_idl_ub11) */ piece#,length,piece 
from
 idl_ub1$ where obj#=:1 and part=:2 and version=:3 order by piece#


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        5      0.00       0.00          0          0          0           0
Execute      5      0.00       0.00          0          0          0           0
Fetch        7      0.00       0.00          0         16          0           2
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total       17      0.00       0.00          0         16          0           2

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 1)
Number of plan statistics captured: 3

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  TABLE ACCESS BY INDEX ROWID IDL_UB1$ (cr=3 pr=0 pw=0 time=126 us starts=1 cost=3 size=44 card=2)
         1          1          1   INDEX RANGE SCAN I_IDL_UB11 (cr=3 pr=0 pw=0 time=21 us starts=1 cost=2 size=0 card=2)(object id 378)

********************************************************************************

SQL ID: 9tt2m0mpc2qqp Plan Hash: 1319326155

select /*+ index(idl_char$ i_idl_char1) */ piece#,length,piece 
from
 idl_char$ where obj#=:1 and part=:2 and version=:3 order by piece#


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        5      0.00       0.00          0          0          0           0
Execute      5      0.00       0.00          0          0          0           0
Fetch        7      0.00       0.00          0         16          0           2
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total       17      0.00       0.00          0         16          0           2

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 1)
Number of plan statistics captured: 3

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  TABLE ACCESS BY INDEX ROWID IDL_CHAR$ (cr=3 pr=0 pw=0 time=167 us starts=1 cost=3 size=21 card=1)
         1          1          1   INDEX RANGE SCAN I_IDL_CHAR1 (cr=3 pr=0 pw=0 time=36 us starts=1 cost=2 size=0 card=1)(object id 379)

********************************************************************************

SQL ID: a3jpjzh7mtwwp Plan Hash: 2317816222

select /*+ index(idl_ub2$ i_idl_ub21) */ piece#,length,piece 
from
 idl_ub2$ where obj#=:1 and part=:2 and version=:3 order by piece#


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        5      0.00       0.00          0          0          0           0
Execute      5      0.00       0.00          0          0          0           0
Fetch        8      0.00       0.00          0         24          0           5
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total       18      0.00       0.00          0         24          0           5

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 1)
Number of plan statistics captured: 3

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         3          2          3  TABLE ACCESS BY INDEX ROWID IDL_UB2$ (cr=5 pr=0 pw=0 time=122 us starts=1 cost=3 size=42 card=2)
         3          2          3   INDEX RANGE SCAN I_IDL_UB21 (cr=3 pr=0 pw=0 time=17 us starts=1 cost=2 size=0 card=2)(object id 380)

********************************************************************************

SQL ID: 733jtc4s71m8x Plan Hash: 0

ALTER PACKAGE "KOZYAR"."BOOKING_GENERATOR" COMPILE BODY REUSE SETTINGS


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute      1      0.06       0.05          0         13          0           0
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        2      0.06       0.05          0         13          0           0

Misses in library cache during parse: 1
Optimizer mode: ALL_ROWS
Parsing user id: 104     (recursive depth: 1)
********************************************************************************

declare
 TYPE attrs_cur IS REF CURSOR;
 m_cur       attrs_cur;
 m_event varchar2(512);
 m_user  varchar2(512);
 m_owner varchar2(512);
 m_type  varchar2(512);
 m_name  varchar2(5120);
 m_column varchar2(5120);
 m_cnt   NUMBER;
 m_adt   NUMBER;
 m_stmt  varchar2(4000);
 m_stmt1 varchar2(4000);
 m_var   varchar2(512);
 m_o_stmt VARCHAR2(5120);
PRAGMA AUTONOMOUS_TRANSACTION;
begin



 m_stmt := 'select mdsys.GetMdsysEvent() from SYS.DUAL';
 execute immediate m_stmt into m_cnt;
 if ( m_cnt != 0 ) then
   return;
 end if;

 m_stmt:='select sys.dbms_standard.dictionary_obj_type from SYS.DUAL';
 execute immediate m_stmt into m_type;
 if(not (m_type='TABLE' or m_type='TRIGGER' or m_type='USER' or m_type='TABLESPACE'))
 then
   return;
 end if;

 m_stmt:='select sys.dbms_standard.dictionary_obj_owner from SYS.DUAL';
 execute immediate m_stmt into m_owner;

 m_stmt:='select sys.dbms_standard.dictionary_obj_name from SYS.DUAL';
 execute immediate m_stmt into m_name;

 m_stmt:='select sys.dbms_standard.sysevent from SYS.DUAL';
 execute immediate m_stmt into m_event;





 if ( m_type = 'TABLE' and m_event != 'DROP' and m_event != 'RENAME' ) then
   m_stmt := 'select mdsys.TblContainsAdt(:own, :tab) from SYS.DUAL';
   begin
     execute immediate m_stmt into m_adt using m_owner, m_name;
     exception
       when others then m_adt := 1;
   end;
   if ( m_adt = 0 ) then
     return;
   end if;
 end if;

 m_stmt:='select SYS_CONTEXT(''USERENV'',''SESSION_USER'') from SYS.DUAL';
 execute immediate m_stmt into m_user;







  if (m_owner!='MDSYS' and m_owner!='SYS' and m_type='TABLE' and m_event='ALTER')
  then
    m_stmt:='select column_name from sys.dba_tab_columns where owner=:1 and table_name=:2';
    begin
      open m_cur for m_stmt using m_owner,m_name;
      loop
        fetch m_cur into m_column;
        exit when m_cur%NOTFOUND;
        m_stmt:='select sdo_geor_def.isDropColumn(:1) from SYS.DUAL';
        execute immediate m_stmt into m_stmt1 using m_column;
        if (trim(m_stmt1)='TRUE')
        then
          m_stmt:='begin sdo_geor_def.doAlterDropColumn(:1,:2,:3); end;';
          execute immediate m_stmt using m_owner,m_name,m_column;
        end if;
      end loop;
      close m_cur;

      EXCEPTION WHEN OTHERS THEN
        IF m_cur%ISOPEN THEN
          close m_cur;
        END IF;
      RAISE;
    end;
  end if;







 if ((m_event='DROP' and m_type='USER') or (m_event='DROP' and m_type='TABLESPACE'))
 then
   m_stmt:='insert into MDSYS.sdo_geor_ddl__table$$ values (1)';
   EXECUTE IMMEDIATE m_stmt;
   commit;
 end if;

 if (m_event='DROP' and m_type='TABLE')
 then
   if((m_user!='SYS' and m_user!='SYSTEM' and m_user!='MDSYS'and m_owner!='MDSYS' and m_owner!='SYS'))
   then


     m_stmt:='select /*+ FIRST_ROWS(1) */ count(*) from MDSYS.sdo_geor_sysdata_table where sdo_owner=:1 and RDT_TABLE_NAME=:2 and ROWNUM < 2';
     EXECUTE IMMEDIATE m_stmt into m_cnt using m_owner,m_name;
     if(m_cnt!=0)
     then


       m_stmt:='select /*+ FIRST_ROWS(1) */ count(*) from MDSYS.sdo_geor_ddl__table$$ where ROWNUM < 2';
       EXECUTE IMMEDIATE m_stmt into m_cnt;
       if(m_cnt=0)
       then
          m_stmt:='call mderr.raise_md_error(''MD'', ''SDO'', -13391, ''The referenced raster data table(RDT) cannot be dropped.'')';
          execute immediate m_stmt;
       end if;
     end if;
   end if;

   m_stmt:='insert into MDSYS.sdo_geor_ddl__table$$ values (2)';
   EXECUTE IMMEDIATE m_stmt;
   commit;
 end if;

 if(m_user='SYS' or m_user='SYSTEM' or m_user='MDSYS'
   or m_owner='MDSYS' or m_owner='SYS')
 then
   return;
 end if;


 if (m_event='RENAME' and m_type='TABLE')
 then


   m_stmt:='select /*+ FIRST_ROWS(1) */ count(*) from MDSYS.sdo_geor_sysdata_table where sdo_owner=:1 and RDT_TABLE_NAME=:2 and ROWNUM < 2';
   EXECUTE IMMEDIATE m_stmt into m_cnt using m_owner,m_name;
   if(m_cnt!=0)
   then


     m_stmt:='select /*+ FIRST_ROWS(1) */ count(*) from MDSYS.sdo_geor_ddl__table$$ where ROWNUM < 2';
     EXECUTE IMMEDIATE m_stmt into m_cnt;
     if(m_cnt=0)
     then
        m_stmt:='call mderr.raise_md_error(''MD'', ''SDO'', -13391, ''The referenced raster data table(RDT) cannot be renamed directly.'')';
        execute immediate m_stmt;
     end if;
   end if;

 end if;

 if (m_type='TRIGGER' and m_event='DROP')
 then
   m_stmt:='select REGEXP_SUBSTR(:1,''GRDMLTR_.+'',1,1,''i'') from SYS.DUAL';
   EXECUTE IMMEDIATE m_stmt into m_var using m_name;
   if(m_var is null)
   then
     return;
   end if;



   m_stmt:='select /*+ FIRST_ROWS(1) */ count(*) from MDSYS.sdo_geor_ddl__table$$ where ROWNUM < 2';
   EXECUTE IMMEDIATE m_stmt into m_cnt;
   if(m_cnt=0)
   then
     m_stmt:='call mderr.raise_md_error(''MD'', ''SDO'', -13391, ''GeoRaster DML triggers cannot be dropped.'')';
     execute immediate m_stmt;
   end if;
 end if;

 if (m_type='TRIGGER' and m_event='ALTER')
 then
   m_stmt:='select sdo_geor_def.getSqlText from SYS.DUAL';
   execute immediate m_stmt into m_o_stmt;
   m_o_stmt:=nls_upper(trim(m_o_stmt));
   if(instr(m_o_stmt,' COMPILE ')>0 or instr(m_o_stmt,' ENABLE ')>0
     or substr(m_o_stmt,length(m_o_stmt)-8,8)=' COMPILE' or substr(m_o_stmt,length(m_o_stmt)-7,7)=' ENABLE' )
   then
     return;
   end if;
   m_stmt:='select REGEXP_SUBSTR(:1,''GRDMLTR_.+'',1,1,''i'') from SYS.DUAL';
   EXECUTE IMMEDIATE m_stmt into m_var using m_name;
   if(m_var is null)
   then
     return;
   end if;



   m_stmt:='select /*+ FIRST_ROWS(1) */ count(*) from MDSYS.sdo_geor_ddl__table$$ where ROWNUM < 2';
   EXECUTE IMMEDIATE m_stmt into m_cnt;
   if(m_cnt=0)
   then
     m_stmt:='call mderr.raise_md_error(''MD'', ''SDO'', -13391, ''GeoRaster DML triggers cannot be altered.'')';
     execute immediate m_stmt;
   end if;
 end if;

 if (m_type='TRIGGER' and m_event='CREATE')
 then
   m_stmt:='select REGEXP_SUBSTR(:1,''GRDMLTR_.+'',1,1,''i'') from SYS.DUAL';
   EXECUTE IMMEDIATE m_stmt into m_var using m_name;
   if(m_var is null)
   then
     return;
   end if;


   m_stmt:='select /*+ FIRST_ROWS(1) */ count(*) from MDSYS.sdo_geor_ddl__table$$ where ROWNUM < 2';
   EXECUTE IMMEDIATE m_stmt into m_cnt;
   if(m_cnt=0)
   then
     m_stmt:='call mderr.raise_md_error(''MD'', ''SDO'', -13391, ''GeoRaster reserved names cannot be used to create regular triggers.'')';
     execute immediate m_stmt;
   end if;
 end if;

 Exception
   when others then
     if(sqlcode=-13391)
     then
       m_stmt:=sqlerrm;
       m_stmt:=substr(m_stmt,11);
       m_stmt:='call mderr.raise_md_error(''MD'', ''SDO'', -13391,'''||m_stmt||''')';
       execute immediate m_stmt;
     end if;
end;

call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute      1      0.00       0.00          0          0          0           1
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        2      0.00       0.00          0          0          0           1

Misses in library cache during parse: 0
Optimizer mode: ALL_ROWS
Parsing user id: 89     (recursive depth: 2)
********************************************************************************

SQL ID: 3c0m2qtkgfs6b Plan Hash: 1388734953

select mdsys.GetMdsysEvent() 
from
 SYS.DUAL


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        2      0.00       0.00          0          0          0           0
Execute      2      0.00       0.00          0          0          0           0
Fetch        2      0.00       0.00          0          0          0           2
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        6      0.00       0.00          0          0          0           2

Misses in library cache during parse: 0
Optimizer mode: ALL_ROWS
Parsing user id: 89     (recursive depth: 3)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  FAST DUAL  (cr=0 pr=0 pw=0 time=0 us starts=1 cost=2 size=0 card=1)

********************************************************************************

SQL ID: aj30xa2q6hx6z Plan Hash: 1388734953

select sys.dbms_standard.dictionary_obj_type 
from
 SYS.DUAL


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        2      0.00       0.00          0          0          0           0
Execute      2      0.00       0.00          0          0          0           0
Fetch        2      0.00       0.00          0          0          0           2
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        6      0.00       0.00          0          0          0           2

Misses in library cache during parse: 0
Optimizer mode: ALL_ROWS
Parsing user id: 89     (recursive depth: 3)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  FAST DUAL  (cr=0 pr=0 pw=0 time=0 us starts=1 cost=2 size=0 card=1)

********************************************************************************

SQL ID: b1wc53ddd6h3p Plan Hash: 1637390370

select audit$,options 
from
 procedure$ where obj#=:1


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute      1      0.00       0.00          0          0          0           0
Fetch        1      0.00       0.00          0          3          0           1
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        3      0.00       0.00          0          3          0           1

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  TABLE ACCESS BY INDEX ROWID PROCEDURE$ (cr=3 pr=0 pw=0 time=20 us starts=1 cost=2 size=47 card=1)
         1          1          1   INDEX UNIQUE SCAN I_PROCEDURE1 (cr=2 pr=0 pw=0 time=11 us starts=1 cost=1 size=0 card=1)(object id 373)

********************************************************************************

SQL ID: 3k0c6241uw582 Plan Hash: 1964643588

select actionsize 
from
 trigger$ where obj# = :1


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute      1      0.00       0.00          0          0          0           0
Fetch        1      0.00       0.00          0          2          0           1
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        3      0.00       0.00          0          2          0           1

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  TABLE ACCESS BY INDEX ROWID TRIGGER$ (cr=2 pr=0 pw=0 time=22 us starts=1 cost=1 size=9 card=1)
         1          1          1   INDEX UNIQUE SCAN I_TRIGGER2 (cr=1 pr=0 pw=0 time=11 us starts=1 cost=0 size=0 card=1)(object id 280)

********************************************************************************

SQL ID: 07pcqtmt58zv9 Plan Hash: 1964643588

select action# 
from
 trigger$ where obj# = :1


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.01       0.00          0          0          0           0
Execute      1      0.00       0.00          0          0          0           0
Fetch        1      0.00       0.00          0          3          0           1
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        3      0.01       0.00          0          3          0           1

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  TABLE ACCESS BY INDEX ROWID TRIGGER$ (cr=2 pr=0 pw=0 time=23 us starts=1 cost=1 size=8 card=1)
         1          1          1   INDEX UNIQUE SCAN I_TRIGGER2 (cr=1 pr=0 pw=0 time=9 us starts=1 cost=0 size=0 card=1)(object id 280)

********************************************************************************

SQL ID: 7akvnu9t168d3 Plan Hash: 1964643588

select baseobject,type#,update$,insert$,delete$,refnewname,refoldname,
  whenclause,definition,enabled,property,sys_evts,nttrigcol,nttrigatt,
  refprtname,rowid,actionlineno,trignameline,trignamecol, trignamecolofs,
  actioncolno 
from
 trigger$ where obj# =:1


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        2      0.00       0.00          0          0          0           0
Execute      2      0.00       0.00          0          0          0           0
Fetch        2      0.00       0.00          0          4          0           2
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        6      0.00       0.00          0          4          0           2

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 2

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  TABLE ACCESS BY INDEX ROWID TRIGGER$ (cr=2 pr=0 pw=0 time=10 us starts=1 cost=1 size=109 card=1)
         1          1          1   INDEX UNIQUE SCAN I_TRIGGER2 (cr=1 pr=0 pw=0 time=5 us starts=1 cost=0 size=0 card=1)(object id 280)

********************************************************************************

SQL ID: 5wxyshspv54v4 Plan Hash: 2189663186

select tc.type#,tc.intcol#,tc.position#,c.type#, c.length,c.scale,
  c.precision#,c.charsetid,c.charsetform, decode(bitand(c.property,8388608),
  8388608, c.spare3, 0) 
from
 triggercol$ tc,col$ c, trigger$ tr where tc.obj#=:1 and tc.intcol#=c.intcol# 
  and tr.obj# = tc.obj# and (bitand(tr.property,32) != 32 or bitand(tc.type#,
  20) = 20) and (   c.obj#=:2 and (bitand(tc.type#, 1024) = :3 or tc.type# = 
  0)      or c.obj#=:4 and bitand(tc.type#, 1024) = :5      or c.obj#=:6 and 
  tc.type# = 0 and tc.position# = 0) union select type#,intcol#,position#,69,
  0,0,0,0,0,0 from triggercol$ where obj#=:7 and intcol#=1001 union select 
  tc.type#,tc.intcol#,tc.position#,121,0,0,0,0,0,0 from triggercol$ tc,
  trigger$ tr where tr.obj# = tc.obj# and bitand(tr.property,32) = 32 and 
  tc.obj# = :8 and bitand(tc.type#,20) != 20


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        2      0.00       0.00          0          0          0           0
Execute      2      0.00       0.00          0          0          0           0
Fetch        7      0.00       0.00          0         59          0           5
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total       11      0.00       0.00          0         59          0           5

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 2

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          3          5  SORT UNIQUE (cr=30 pr=0 pw=0 time=411 us starts=1 cost=12 size=205 card=5)
         0          3          5   UNION-ALL  (cr=30 pr=0 pw=0 time=380 us starts=1)
         0          3          5    CONCATENATION  (cr=26 pr=0 pw=0 time=353 us starts=1)
         0          0          0     NESTED LOOPS  (cr=8 pr=0 pw=0 time=90 us starts=1 cost=2 size=56 card=1)
         0          3          5      NESTED LOOPS  (cr=5 pr=0 pw=0 time=80 us starts=1 cost=2 size=588 card=14)
         1          1          1       TABLE ACCESS BY INDEX ROWID TRIGGER$ (cr=2 pr=0 pw=0 time=58 us starts=1 cost=1 size=9 card=1)
         1          1          1        INDEX UNIQUE SCAN I_TRIGGER2 (cr=1 pr=0 pw=0 time=34 us starts=1 cost=0 size=0 card=1)(object id 280)
         0          3          5       TABLE ACCESS CLUSTER COL$ (cr=3 pr=0 pw=0 time=18 us starts=1 cost=1 size=462 card=14)
         0          1          1        INDEX UNIQUE SCAN I_OBJ# (cr=2 pr=0 pw=0 time=12 us starts=1 cost=0 size=0 card=1)(object id 3)
         0          0          0      INDEX RANGE SCAN I_TRIGGERCOL2 (cr=4 pr=0 pw=0 time=5 us starts=0 cost=0 size=14 card=1)(object id 282)
         0          3          5     NESTED LOOPS  (cr=10 pr=0 pw=0 time=246 us starts=1 cost=3 size=56 card=1)
         0          3          5      NESTED LOOPS  (cr=8 pr=0 pw=0 time=241 us starts=1 cost=3 size=56 card=1)
         0          3          5       NESTED LOOPS  (cr=4 pr=0 pw=0 time=43 us starts=1 cost=2 size=23 card=1)
         1          1          1        TABLE ACCESS BY INDEX ROWID TRIGGER$ (cr=2 pr=0 pw=0 time=7 us starts=1 cost=1 size=9 card=1)
         1          1          1         INDEX UNIQUE SCAN I_TRIGGER2 (cr=1 pr=0 pw=0 time=4 us starts=1 cost=0 size=0 card=1)(object id 280)
         0          3          5        INDEX RANGE SCAN I_TRIGGERCOL2 (cr=2 pr=0 pw=0 time=34 us starts=1 cost=1 size=14 card=1)(object id 282)
         0          3          5       INDEX UNIQUE SCAN I_COL3 (cr=4 pr=0 pw=0 time=189 us starts=0 cost=0 size=0 card=1)(object id 50)
         0          3          5      TABLE ACCESS BY INDEX ROWID COL$ (cr=3 pr=0 pw=0 time=5 us starts=0 cost=1 size=33 card=1)
         0          0          0     NESTED LOOPS  (cr=8 pr=0 pw=0 time=17 us starts=1 cost=3 size=56 card=1)
         0          0          0      NESTED LOOPS  (cr=8 pr=0 pw=0 time=16 us starts=1 cost=3 size=56 card=1)
         0          3          5       NESTED LOOPS  (cr=4 pr=0 pw=0 time=11 us starts=1 cost=2 size=23 card=1)
         1          1          1        TABLE ACCESS BY INDEX ROWID TRIGGER$ (cr=2 pr=0 pw=0 time=5 us starts=1 cost=1 size=9 card=1)
         1          1          1         INDEX UNIQUE SCAN I_TRIGGER2 (cr=1 pr=0 pw=0 time=3 us starts=1 cost=0 size=0 card=1)(object id 280)
         0          3          5        INDEX RANGE SCAN I_TRIGGERCOL2 (cr=2 pr=0 pw=0 time=5 us starts=1 cost=1 size=14 card=1)(object id 282)
         0          0          0       INDEX UNIQUE SCAN I_COL3 (cr=4 pr=0 pw=0 time=3 us starts=0 cost=0 size=0 card=1)(object id 50)
         0          0          0      TABLE ACCESS BY INDEX ROWID COL$ (cr=0 pr=0 pw=0 time=0 us starts=0 cost=1 size=33 card=1)
         0          0          0    INDEX RANGE SCAN I_TRIGGERCOL2 (cr=2 pr=0 pw=0 time=7 us starts=1 cost=1 size=14 card=1)(object id 282)
         0          0          0    NESTED LOOPS  (cr=2 pr=0 pw=0 time=13 us starts=1 cost=2 size=23 card=1)
         0          0          0     TABLE ACCESS BY INDEX ROWID TRIGGER$ (cr=2 pr=0 pw=0 time=13 us starts=1 cost=1 size=9 card=1)
         1          1          1      INDEX UNIQUE SCAN I_TRIGGER2 (cr=1 pr=0 pw=0 time=2 us starts=1 cost=0 size=0 card=1)(object id 280)
         0          0          0     INDEX RANGE SCAN I_TRIGGERCOL2 (cr=0 pr=0 pw=0 time=0 us starts=0 cost=1 size=14 card=1)(object id 282)

********************************************************************************

SQL ID: 4zzxr8rvht74z Plan Hash: 3368685730

select case when (bitand(u.spare1, 16) = 0) then         0        when 
  (u.type# = 2) then         (u.spare2)        else         1        end 
from
 obj$ o, user$ u where o.obj# = :1 and o.owner# = u.user#


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        2      0.00       0.00          0          0          0           0
Execute      2      0.00       0.00          0          0          0           0
Fetch        2      0.00       0.00          0          6          0           2
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        6      0.00       0.00          0          6          0           2

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 2

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  HASH JOIN  (cr=3 pr=0 pw=0 time=50 us starts=1 cost=3 size=32 card=1)
         1          1          1   NESTED LOOPS  (cr=3 pr=0 pw=0 time=45 us starts=1 cost=3 size=32 card=1)
         1          1          1    STATISTICS COLLECTOR  (cr=2 pr=0 pw=0 time=40 us starts=1)
         1          1          1     INDEX RANGE SCAN I_OBJ1 (cr=2 pr=0 pw=0 time=30 us starts=1 cost=2 size=8 card=1)(object id 36)
         1          1          1    INDEX RANGE SCAN I_USER2 (cr=1 pr=0 pw=0 time=4 us starts=1 cost=1 size=24 card=1)(object id 47)
         0          0          0   INDEX FULL SCAN I_USER2 (cr=0 pr=0 pw=0 time=0 us starts=0 cost=1 size=24 card=1)(object id 47)

********************************************************************************

SQL ID: 3pzwf21p9utb0 Plan Hash: 2386738268

select count(*)                                      
from
 user$ u                                         where bitand(u.spare1, 256) =
   256                      and u.type#               = 1                     
     and u.name                = :1


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute      1      0.00       0.00          0          0          0           0
Fetch        1      0.00       0.00          0          2          0           1
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        3      0.00       0.00          0          2          0           1

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  SORT AGGREGATE (cr=2 pr=0 pw=0 time=31 us starts=1)
         0          0          0   TABLE ACCESS BY INDEX ROWID USER$ (cr=2 pr=0 pw=0 time=26 us starts=1 cost=1 size=22 card=1)
         1          1          1    INDEX UNIQUE SCAN I_USER1 (cr=1 pr=0 pw=0 time=11 us starts=1 cost=0 size=0 card=1)(object id 46)

********************************************************************************

SQL ID: 9gq78x8ns3q1x Plan Hash: 3192087044

select source 
from
 source$ where obj#=:1 order by line


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute      1      0.00       0.00          0          0          0           0
Fetch        1      0.00       0.00          0          8          0         342
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        3      0.00       0.00          0          8          0         342

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
       342        342        342  TABLE ACCESS BY INDEX ROWID SOURCE$ (cr=8 pr=0 pw=0 time=293 us starts=1 cost=3 size=4488 card=51)
       342        342        342   INDEX RANGE SCAN I_SOURCE1 (cr=4 pr=0 pw=0 time=158 us starts=1 cost=2 size=0 card=51)(object id 377)

********************************************************************************

SQL ID: gngtvs38t0060 Plan Hash: 3679945446

SELECT /*+ CONNECT_BY_FILTERING */ s.privilege# 
FROM
 sys.sysauth$ s        CONNECT BY s.grantee# = PRIOR s.privilege#             
                      AND (s.privilege# > 0 OR s.privilege# = -352)           
                     START WITH (s.privilege# > 0 OR s.privilege# = -352) AND 
  s.grantee# IN     (SELECT c1.privilege# FROM sys.codeauth$ c1 WHERE c1.obj# 
  = :1)            UNION                                                      
                  SELECT c2.privilege# FROM sys.codeauth$ c2 WHERE c2.obj# = 
  :2              ORDER BY 1 ASC


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute      1      0.00       0.00          0          0          0           0
Fetch        1      0.00       0.00          0          2          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        3      0.00       0.00          0          2          0           0

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  SORT UNIQUE (cr=2 pr=0 pw=0 time=33 us starts=1 cost=9 size=294 card=12)
         0          0          0   UNION-ALL  (cr=2 pr=0 pw=0 time=28 us starts=1)
         0          0          0    CONNECT BY WITH FILTERING (UNIQUE) (cr=1 pr=0 pw=0 time=23 us starts=1)
         0          0          0     HASH JOIN  (cr=1 pr=0 pw=0 time=12 us starts=1 cost=2 size=48 card=3)
         0          0          0      NESTED LOOPS  (cr=1 pr=0 pw=0 time=10 us starts=1 cost=2 size=48 card=3)
         0          0          0       STATISTICS COLLECTOR  (cr=1 pr=0 pw=0 time=8 us starts=1)
         0          0          0        INDEX RANGE SCAN I_CODEAUTH1 (cr=1 pr=0 pw=0 time=5 us starts=1 cost=1 size=8 card=1)(object id 519)
         0          0          0       INDEX RANGE SCAN I_SYSAUTH1 (cr=0 pr=0 pw=0 time=0 us starts=0 cost=1 size=24 card=3)(object id 148)
         0          0          0      INDEX FAST FULL SCAN I_SYSAUTH1 (cr=0 pr=0 pw=0 time=0 us starts=0 cost=1 size=24 card=3)(object id 148)
         0          0          0     HASH JOIN  (cr=0 pr=0 pw=0 time=0 us starts=0 cost=5 size=168 card=8)
         0          0          0      NESTED LOOPS  (cr=0 pr=0 pw=0 time=0 us starts=0 cost=5 size=168 card=8)
         0          0          0       STATISTICS COLLECTOR  (cr=0 pr=0 pw=0 time=0 us starts=0)
         0          0          0        CONNECT BY PUMP  (cr=0 pr=0 pw=0 time=0 us starts=0)
         0          0          0       INDEX RANGE SCAN I_SYSAUTH1 (cr=0 pr=0 pw=0 time=0 us starts=0 cost=1 size=24 card=3)(object id 148)
         0          0          0      INDEX FAST FULL SCAN I_SYSAUTH1 (cr=0 pr=0 pw=0 time=0 us starts=0 cost=1 size=24 card=3)(object id 148)
         0          0          0    INDEX RANGE SCAN I_CODEAUTH1 (cr=1 pr=0 pw=0 time=3 us starts=1 cost=1 size=8 card=1)(object id 519)

********************************************************************************

SQL ID: 7jpt4cpfvcy1k Plan Hash: 284504113

select ts#,online$ 
from
 ts$ where name=:1


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute      1      0.00       0.00          0          0          0           0
Fetch        1      0.00       0.00          0          2          0           1
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        3      0.00       0.00          0          2          0           1

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  TABLE ACCESS BY INDEX ROWID TS$ (cr=2 pr=0 pw=0 time=13 us starts=1 cost=1 size=13 card=1)
         1          1          1   INDEX UNIQUE SCAN I_TS1 (cr=1 pr=0 pw=0 time=9 us starts=1 cost=0 size=0 card=1)(object id 45)

********************************************************************************

SQL ID: 9zbjgq87hy6uv Plan Hash: 2035254952

select t.ts#,t.file#,t.block#,nvl(t.bobj#,0),nvl(t.tab#,0),t.intcols,
  nvl(t.clucols,0),t.flags,t.pctfree$,t.pctused$,t.initrans,t.maxtrans,
  t.rowcnt,t.blkcnt,t.empcnt,t.avgspc,t.chncnt,t.avgrln,t.analyzetime,
  t.samplesize,t.cols,t.property,nvl(t.degree,1),nvl(t.instances,1),
  t.avgspc_flb,t.flbcnt,t.kernelcols,nvl(t.trigflag, 0),nvl(t.spare1,0),
  nvl(t.spare2,0),t.spare4,t.spare6,ts.cachedblk,ts.cachehit,ts.logicalread,
  ts.im_imcu_count,ts.im_block_count,ts.im_sys_incarnation,
  ts.im_stat_update_time,ts.scanrate,nvl(t.acdrflags, 0),nvl(t.acdrtsobj#, 0),
  t.acdrdefaulttime, nvl(t.acdrrowtsintcol#, 0) 
from
 tab$ t,tab_stats$ ts where t.obj#= :1 and t.obj# = ts.obj# (+)


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute      2      0.00       0.00          0          0          0           0
Fetch        2      0.00       0.00          0          9          0           2
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        5      0.00       0.00          0          9          0           2

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  MERGE JOIN OUTER (cr=4 pr=0 pw=0 time=39 us starts=1 cost=2 size=252 card=1)
         1          1          1   TABLE ACCESS CLUSTER TAB$ (cr=3 pr=0 pw=0 time=21 us starts=1 cost=2 size=135 card=1)
         1          1          1    INDEX UNIQUE SCAN I_OBJ# (cr=2 pr=0 pw=0 time=9 us starts=1 cost=1 size=0 card=1)(object id 3)
         0          0          0   BUFFER SORT (cr=1 pr=0 pw=0 time=8 us starts=1 cost=0 size=117 card=1)
         0          0          0    TABLE ACCESS BY INDEX ROWID TAB_STATS$ (cr=1 pr=0 pw=0 time=3 us starts=1 cost=0 size=117 card=1)
         0          0          0     INDEX UNIQUE SCAN I_TAB_STATS$_OBJ# (cr=1 pr=0 pw=0 time=3 us starts=1 cost=0 size=0 card=1)(object id 74)

********************************************************************************

SQL ID: 9tgj4g8y4rwy8 Plan Hash: 3755742892

select type#,blocks,extents,minexts,maxexts,extsize,extpct,user#,iniexts,
  NVL(lists,65535),NVL(groups,65535),cachehint,hwmincr, NVL(spare1,0),
  NVL(scanhint,0),NVL(bitmapranges,0) 
from
 seg$ where ts#=:1 and file#=:2 and block#=:3


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute     25      0.00       0.00          0          0          0           0
Fetch       25      0.00       0.00          0         72          0          19
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total       51      0.00       0.00          0         72          0          19

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 3)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  TABLE ACCESS CLUSTER SEG$ (cr=3 pr=0 pw=0 time=14 us starts=1 cost=2 size=64 card=1)
         1          1          1   INDEX UNIQUE SCAN I_FILE#_BLOCK# (cr=2 pr=0 pw=0 time=7 us starts=1 cost=1 size=0 card=1)(object id 9)

********************************************************************************

SQL ID: gd28w82ct6rva Plan Hash: 2970138452

select audit$ 
from
 tab$ where obj# = :1


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute      2      0.00       0.00          0          0          0           0
Fetch        2      0.00       0.00          0          7          0           2
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        5      0.00       0.00          0          7          0           2

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  TABLE ACCESS CLUSTER TAB$ (cr=3 pr=0 pw=0 time=22 us starts=1 cost=2 size=44 card=1)
         1          1          1   INDEX UNIQUE SCAN I_OBJ# (cr=2 pr=0 pw=0 time=11 us starts=1 cost=1 size=0 card=1)(object id 3)

********************************************************************************

SQL ID: 6h3cwmunz5z8q Plan Hash: 2968095032

select col#, grantee#, privilege#,max(mod(nvl(option$,0),2)), 
  max(bitand(nvl(option$,0), 8) /8), max(bitand(nvl(option$,0), 16) /16), 
  max(bitand(nvl(option$,0),64) /64), max(bitand(nvl(option$,0), 128) /128) 
from
 objauth$ where obj#=:1 and col# is not null group by privilege#, col#, 
  grantee# order by col#, grantee#


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        0      0.00       0.00          0          0          0           0
Execute     21      0.00       0.00          0          0          0           0
Fetch       21      0.00       0.00          0         42          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total       42      0.00       0.00          0         42          0           0

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 3)
********************************************************************************

SQL ID: a4n4ayr88dbhy Plan Hash: 2968095032

select grantee#,privilege#,nvl(col#,0),max(mod(nvl(option$,0),2)),
  max(bitand(nvl(option$,0), 8) /8), max(bitand(nvl(option$,0), 16) /16), 
  max(bitand(nvl(option$,0),64) /64), max(bitand(nvl(option$,0), 128) /128) 
from
 objauth$ where obj#=:1 group by grantee#,privilege#,nvl(col#,0) order by 
  grantee#


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        0      0.00       0.00          0          0          0           0
Execute     21      0.00       0.00          0          0          0           0
Fetch       22      0.00       0.00          0         43          0           1
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total       43      0.00       0.00          0         43          0           1

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 3)
********************************************************************************

SQL ID: 7a1j63zh85ubk Plan Hash: 1201634703

delete from procedureinfo$ 
where
 obj#=:1


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute      1      0.00       0.00          0          2          0           0
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        2      0.00       0.00          0          2          0           0

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  DELETE  PROCEDUREINFO$ (cr=2 pr=0 pw=0 time=25 us starts=1)
         0          0          0   INDEX RANGE SCAN I_PROCEDUREINFO1 (cr=2 pr=0 pw=0 time=22 us starts=1 cost=2 size=336 card=14)(object id 374)

********************************************************************************

SQL ID: 4fkbtysdca10f Plan Hash: 1952736548

delete from argument$ 
where
 obj#=:1


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute      1      0.01       0.00          0          3          0           0
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        2      0.01       0.00          0          3          0           0

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  DELETE  ARGUMENT$ (cr=3 pr=0 pw=0 time=456 us starts=1)
         0          0          0   INDEX RANGE SCAN I_ARGUMENT2 (cr=3 pr=0 pw=0 time=440 us starts=1 cost=2 size=1760 card=55)(object id 376)

********************************************************************************

SQL ID: cn6hhn36a4rrs Plan Hash: 3845132125

select con#,obj#,rcon#,enabled,nvl(defer,0),spare2,spare3,refact 
from
 cdef$ where robj#=:1


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute     22      0.00       0.00          0          0          0           0
Fetch       22      0.00       0.00          0         22          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total       45      0.00       0.00          0         22          0           0

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 3)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  TABLE ACCESS BY INDEX ROWID BATCHED CDEF$ (cr=1 pr=0 pw=0 time=10 us starts=1 cost=2 size=58 card=2)
         0          0          0   INDEX RANGE SCAN I_CDEF3 (cr=1 pr=0 pw=0 time=8 us starts=1 cost=1 size=0 card=2)(object id 55)

********************************************************************************

SQL ID: gx4mv66pvj3xz Plan Hash: 2570921597

select con#,type#,condlength,intcols,robj#,rcon#,match#,refact,nvl(enabled,0),
  rowid,cols,nvl(defer,0),mtime,nvl(spare1,0),spare2,spare3 
from
 cdef$ where obj#=:1


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute     22      0.00       0.00          0          0          0           0
Fetch      113      0.00       0.00          0        157          0          91
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total      136      0.00       0.00          0        157          0          91

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 3)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         6          6          6  TABLE ACCESS CLUSTER CDEF$ (cr=9 pr=0 pw=0 time=14 us starts=1 cost=2 size=192 card=4)
         1          1          1   INDEX UNIQUE SCAN I_COBJ# (cr=2 pr=0 pw=0 time=7 us starts=1 cost=1 size=0 card=1)(object id 30)

********************************************************************************

SQL ID: 53saa2zkr6wc3 Plan Hash: 3038981986

select intcol#,nvl(pos#,0),col#,nvl(spare1,0) 
from
 ccol$ where con#=:1


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute     91      0.00       0.00          0          0          0           0
Fetch      182      0.00       0.00          0        364          0          91
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total      274      0.00       0.00          0        364          0          91

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 3)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  TABLE ACCESS BY INDEX ROWID BATCHED CCOL$ (cr=4 pr=0 pw=0 time=12 us starts=1 cost=3 size=15 card=1)
         1          1          1   INDEX RANGE SCAN I_CCOL1 (cr=3 pr=0 pw=0 time=9 us starts=1 cost=2 size=0 card=1)(object id 57)

********************************************************************************

SQL ID: 29qw6v6846pds Plan Hash: 1845613970

delete from procedurec$ 
where
 obj#=:1


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute      1      0.00       0.00          0          2          0           0
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        2      0.00       0.00          0          2          0           0

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  DELETE  PROCEDUREC$ (cr=2 pr=0 pw=0 time=71 us starts=1)
         0          0          0   INDEX RANGE SCAN I_PROCEDUREC$ (cr=2 pr=0 pw=0 time=69 us starts=1 cost=2 size=63 card=7)(object id 391)

********************************************************************************

SQL ID: 8hkh4yxcygxj6 Plan Hash: 3672104947

delete from procedureplsql$ 
where
 obj#=:1


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute      1      0.00       0.00          0          2         15           4
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        2      0.00       0.00          0          2         15           4

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  DELETE  PROCEDUREPLSQL$ (cr=2 pr=0 pw=0 time=803 us starts=1)
         4          4          4   INDEX RANGE SCAN I_PROCEDUREPLSQL$ (cr=2 pr=0 pw=0 time=429 us starts=1 cost=2 size=90 card=10)(object id 393)

********************************************************************************

SQL ID: 8h60j55jzkkb9 Plan Hash: 1970422144

delete from procedurejava$ 
where
 obj#=:1


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute      1      0.01       0.00          0          2          0           0
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        2      0.01       0.00          0          2          0           0

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  DELETE  PROCEDUREJAVA$ (cr=2 pr=0 pw=0 time=29 us starts=1)
         0          0          0   INDEX RANGE SCAN I_PROCEDUREJAVA$ (cr=2 pr=0 pw=0 time=25 us starts=1 cost=1 size=456 card=57)(object id 389)

********************************************************************************

SQL ID: 6hh57rs9wtbd0 Plan Hash: 2062348395

delete from vtable$ 
where
 obj#=:1


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute      1      0.00       0.00          0         30          0           0
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        2      0.00       0.00          0         30          0           0

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  DELETE  VTABLE$ (cr=30 pr=0 pw=0 time=113 us starts=1)
         0          0          0   TABLE ACCESS FULL VTABLE$ (cr=30 pr=0 pw=0 time=110 us starts=1 cost=6 size=55 card=11)

********************************************************************************

SQL ID: 60zdf0tt6px2b Plan Hash: 0

insert into procedureplsql$(obj#,procedure#,entrypoint#) 
values
 (:1,:2,:3)


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute      4      0.00       0.00          0          1         12           4
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        5      0.00       0.00          0          1         12           4

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  LOAD TABLE CONVENTIONAL  PROCEDUREPLSQL$ (cr=1 pr=0 pw=0 time=191 us starts=1)

********************************************************************************

declare
 m_event   varchar2(512);
 m_owner   varchar2(512);
 m_type    varchar2(512);
 m_name    varchar2(5120);
 m_adt     NUMBER;
 m_cnt     NUMBER;
 m_stmt    varchar2(4000);
 m_ret     varchar2(3000);
 m_ret1     varchar2(512);
begin



 m_stmt := 'select mdsys.GetMdsysEvent() from SYS.DUAL';
 execute immediate m_stmt into m_cnt;
 if ( m_cnt != 0 ) then
   return;
 end if;

 m_stmt:='select sys.dbms_standard.dictionary_obj_type from SYS.DUAL';
 execute immediate m_stmt into m_type;
 if(not (m_type='TABLE' or m_type='TRIGGER' or m_type='USER' or m_type='TABLESPACE'))
 then
   return;
 end if;

 m_stmt:='select sys.dbms_standard.dictionary_obj_owner from SYS.DUAL';
 execute immediate m_stmt into m_owner;

 m_stmt:='select sys.dbms_standard.dictionary_obj_name from SYS.DUAL';
 execute immediate m_stmt into m_name;

 m_stmt:='select sys.dbms_standard.sysevent from SYS.DUAL';
 execute immediate m_stmt into m_event;





 if ( m_type = 'TABLE' and m_event != 'DROP' and m_event != 'RENAME' ) then
   m_stmt := 'select mdsys.TblContainsAdt(:own, :tab) from SYS.DUAL';
   begin
     execute immediate m_stmt into m_adt using m_owner, m_name;
     exception
       when others then m_adt := 1;
   end;
   if ( m_adt = 0 ) then
     return;
   end if;
 end if;

 if((instr(nls_upper(m_name),'MDRT_')>0) and m_event='DROP')
 then
   return;
 end if;








 if (m_owner!='MDSYS' and m_owner!='SYS' and m_type='TABLE' and m_event='CREATE')
 then
   m_stmt:='select sdo_geor_def.listAllGeoRasterFieldsStr(:1,:2) from SYS.DUAL';
   execute immediate m_stmt  into m_ret  using m_owner,m_name;
   m_ret:=trim(m_ret);
   while (length(m_ret)!=0) loop
     if (instr(m_ret,' $$__## ')!=0)
     then
       m_ret1:=trim(substr(m_ret,1,instr(m_ret,' $$__## ')-1));
       m_ret:=trim(substr(m_ret,instr(m_ret,' $$__## ')+8));
     else
       m_ret1:=trim(m_ret);
       m_ret:='';
     end if;
     m_stmt:='begin SDO_GEOR_UTL.createDMLTrigger(:1,:2); end;';

    execute immediate m_stmt using '"'||m_owner||'".'||m_name,m_ret1;
   end loop;
   return;
 end if;






















  if (m_name!='MDSYS' and m_type='USER' and m_event='DROP')
  then
     m_stmt:='call sdo_geor_def.doDropUserAndTable()';
     execute immediate m_stmt;
  end if;

  if (m_owner!='MDSYS' and m_owner!='SYS' and m_type='TABLE' and m_event='DROP')
  then
     m_stmt:='call sdo_geor_def.doDropUserAndTable()';
     execute immediate m_stmt;
  end if;

  if (m_owner!='MDSYS' and m_owner!='SYS' and m_type='TABLE' and m_event='TRUNCATE')
  then
     m_stmt:='call sdo_geor_def.doTruncateTable()';
     execute immediate m_stmt;
  end if;

  if (m_owner!='MDSYS' and m_owner!='SYS' and m_type='TABLE' and m_event='ALTER')
  then
     m_stmt:='call sdo_geor_def.doAlterRenameTable()';
     execute immediate m_stmt;
  end if;

  if (m_owner!='MDSYS' and m_owner!='SYS' and m_type='TABLE' and m_event='RENAME')
  then
     m_stmt:='call sdo_geor_def.doRenameTable()';
     execute immediate m_stmt;
  end if;






 if (m_event='DROP' and m_type='TABLE')
 then
   m_stmt:='delete from MDSYS.sdo_geor_ddl__table$$ where id=2';
   EXECUTE IMMEDIATE m_stmt;
 end if;

 if ((m_type='USER' and m_event='DROP') or (m_type='TABLESPACE' and m_event='DROP'))
 then
   m_stmt:='delete from MDSYS.sdo_geor_ddl__table$$';
   EXECUTE IMMEDIATE m_stmt;
 end if;

 Exception
   when others then
     if(sqlcode=-13391)
     then
       m_stmt:=sqlerrm;
       m_stmt:=substr(m_stmt,11);
       m_stmt:='call mderr.raise_md_error(''MD'', ''SDO'', -13391,'''||m_stmt||''')';
       execute immediate m_stmt;
     end if;
end;

call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute      1      0.00       0.00          0          0          0           1
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        2      0.00       0.00          0          0          0           1

Misses in library cache during parse: 0
Optimizer mode: ALL_ROWS
Parsing user id: 89     (recursive depth: 2)
********************************************************************************

SQL ID: aqu3vk9zsj4aa Plan Hash: 859338574

update procedure$ set audit$=:2,options=:3 
where
 obj#=:1


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute      1      0.00       0.00          0          2          1           1
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        2      0.00       0.00          0          2          1           1

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 1)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  UPDATE  PROCEDURE$ (cr=2 pr=0 pw=0 time=123 us starts=1)
         1          1          1   INDEX UNIQUE SCAN I_PROCEDURE1 (cr=2 pr=0 pw=0 time=20 us starts=1 cost=1 size=47 card=1)(object id 373)

********************************************************************************

SQL ID: 7xq8ywd9t52hb Plan Hash: 1264386867

delete from diana_version$ 
where
 obj# = :1


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute      1      0.00       0.00          0          1          0           0
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        2      0.00       0.00          0          1          0           0

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 1)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  DELETE  DIANA_VERSION$ (cr=1 pr=0 pw=0 time=14 us starts=1)
         0          0          0   INDEX UNIQUE SCAN I_DIANA_VERSION (cr=1 pr=0 pw=0 time=9 us starts=1 cost=0 size=13 card=1)(object id 399)

********************************************************************************

SQL ID: 9t6y2nqy6qfbu Plan Hash: 1314400858

delete from idl_ub1$ 
where
 obj#=:1 and part=:2 and version<>:3


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        3      0.00       0.00          0          0          0           0
Execute      3      0.00       0.00          0          6          0           0
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        6      0.00       0.00          0          6          0           0

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 1)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  DELETE  IDL_UB1$ (cr=2 pr=0 pw=0 time=17 us starts=1)
         0          0          0   INDEX RANGE SCAN I_IDL_UB11 (cr=2 pr=0 pw=0 time=14 us starts=1 cost=2 size=19 card=1)(object id 378)

********************************************************************************

SQL ID: a3fpyja9wkr9k Plan Hash: 2807568952

delete from idl_char$ 
where
 obj#=:1 and part=:2 and version<>:3


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        3      0.00       0.00          0          0          0           0
Execute      3      0.00       0.00          0          6          0           0
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        6      0.00       0.00          0          6          0           0

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 1)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  DELETE  IDL_CHAR$ (cr=2 pr=0 pw=0 time=9 us starts=1)
         0          0          0   INDEX RANGE SCAN I_IDL_CHAR1 (cr=2 pr=0 pw=0 time=8 us starts=1 cost=2 size=17 card=1)(object id 379)

********************************************************************************

SQL ID: gpdkgtwft4m62 Plan Hash: 2238151678

delete from idl_ub2$ 
where
 obj#=:1 and part=:2 and version<>:3


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        3      0.00       0.00          0          0          0           0
Execute      3      0.00       0.00          0          6          0           0
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        6      0.00       0.00          0          6          0           0

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 1)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  DELETE  IDL_UB2$ (cr=2 pr=0 pw=0 time=13 us starts=1)
         0          0          0   INDEX RANGE SCAN I_IDL_UB21 (cr=2 pr=0 pw=0 time=12 us starts=1 cost=2 size=17 card=1)(object id 380)

********************************************************************************

SQL ID: fbbm59qban13m Plan Hash: 1017615457

delete from idl_sb4$ 
where
 obj#=:1 and part=:2 and version<>:3


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        3      0.00       0.00          0          0          0           0
Execute      3      0.00       0.00          0          6          0           0
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        6      0.00       0.00          0          6          0           0

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 1)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  DELETE  IDL_SB4$ (cr=2 pr=0 pw=0 time=11 us starts=1)
         0          0          0   INDEX RANGE SCAN I_IDL_SB41 (cr=2 pr=0 pw=0 time=11 us starts=1 cost=2 size=18 card=1)(object id 381)

********************************************************************************

SQL ID: gdhz78y24tvnz Plan Hash: 3403092214

delete from ncomp_dll$ 
where
 obj#=:1 returning dllname into :2


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        3      0.00       0.00          0          0          0           0
Execute      3      0.00       0.00          0          3          0           0
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        6      0.00       0.00          0          3          0           0

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 1)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  DELETE  NCOMP_DLL$ (cr=1 pr=0 pw=0 time=9 us starts=1)
         1          1          1   INDEX RANGE SCAN I_NCOMP_DLL1 (cr=1 pr=0 pw=0 time=9 us starts=1 cost=0 size=540 card=1)(object id 387)

********************************************************************************

SQL ID: fbdxdptpxqv77 Plan Hash: 2719882396

select count(*),min(piece#),max(piece#) 
from
 idl_sb4$ where obj#=:1 and part=:2 and version=:3


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        2      0.00       0.00          0          0          0           0
Execute      2      0.01       0.00          0          0          0           0
Fetch        2      0.00       0.00          0          4          0           2
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        6      0.01       0.00          0          4          0           2

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 1)
Number of plan statistics captured: 2

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  SORT AGGREGATE (cr=2 pr=0 pw=0 time=18 us starts=1)
         2          2          2   INDEX RANGE SCAN I_IDL_SB41 (cr=2 pr=0 pw=0 time=10 us starts=1 cost=2 size=18 card=1)(object id 381)

********************************************************************************

SQL ID: 44h7bvys16ks0 Plan Hash: 3211949197

update idl_sb4$ set piece#=:1 ,length=:2 , piece=:3 
where
 obj#=:4 and part=:5 and piece#=:6 and version=:7


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        2      0.00       0.00          0          0          0           0
Execute      3      0.00       0.00          0          6          6           3
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        5      0.00       0.00          0          6          6           3

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 1)
Number of plan statistics captured: 2

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  UPDATE  IDL_SB4$ (cr=2 pr=0 pw=0 time=56 us starts=1)
         1          1          1   INDEX UNIQUE SCAN I_IDL_SB41 (cr=2 pr=0 pw=0 time=6 us starts=1 cost=1 size=19 card=1)(object id 381)

********************************************************************************

SQL ID: aqfwu5b36wh49 Plan Hash: 501652343

select count(*),min(piece#),max(piece#) 
from
 idl_ub1$ where obj#=:1 and part=:2 and version=:3


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        2      0.00       0.00          0          0          0           0
Execute      2      0.00       0.00          0          0          0           0
Fetch        2      0.00       0.00          0          4          0           2
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        6      0.00       0.00          0          4          0           2

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 1)
Number of plan statistics captured: 2

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  SORT AGGREGATE (cr=2 pr=0 pw=0 time=13 us starts=1)
         1          2          2   INDEX RANGE SCAN I_IDL_UB11 (cr=2 pr=0 pw=0 time=7 us starts=1 cost=2 size=38 card=2)(object id 378)

********************************************************************************

SQL ID: 9wtuatndmcpad Plan Hash: 2716377421

update idl_ub1$ set piece#=:1 ,length=:2 , piece=:3 
where
 obj#=:4 and part=:5 and piece#=:6 and version=:7


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        2      0.00       0.00          0          0          0           0
Execute      3      0.00       0.00          1          8         19           3
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        5      0.00       0.00          1          8         19           3

Misses in library cache during parse: 1
Misses in library cache during execute: 2
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 1)
Number of plan statistics captured: 2

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  UPDATE  IDL_UB1$ (cr=3 pr=1 pw=0 time=422 us starts=1)
         1          1          1   INDEX UNIQUE SCAN I_IDL_UB11 (cr=2 pr=0 pw=0 time=6 us starts=1 cost=1 size=22 card=1)(object id 378)

********************************************************************************

SQL ID: 3btfw1uabxu6t Plan Hash: 1506194338

select count(*),min(piece#),max(piece#) 
from
 idl_char$ where obj#=:1 and part=:2 and version=:3


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute      1      0.00       0.00          0          0          0           0
Fetch        1      0.00       0.00          0          2          0           1
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        3      0.00       0.00          0          2          0           1

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 1)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  SORT AGGREGATE (cr=2 pr=0 pw=0 time=23 us starts=1)
         1          1          1   INDEX RANGE SCAN I_IDL_CHAR1 (cr=2 pr=0 pw=0 time=15 us starts=1 cost=2 size=17 card=1)(object id 379)

********************************************************************************

SQL ID: 7kxakh98yfg2s Plan Hash: 399078092

update idl_char$ set piece#=:1 ,length=:2 , piece=:3 
where
 obj#=:4 and part=:5 and piece#=:6 and version=:7


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute      1      0.00       0.00          0          2          2           1
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        2      0.00       0.00          0          2          2           1

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 1)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  UPDATE  IDL_CHAR$ (cr=2 pr=0 pw=0 time=63 us starts=1)
         1          1          1   INDEX UNIQUE SCAN I_IDL_CHAR1 (cr=2 pr=0 pw=0 time=11 us starts=1 cost=1 size=21 card=1)(object id 379)

********************************************************************************

SQL ID: 746pfnmyjt1x5 Plan Hash: 1582471399

select count(*),min(piece#),max(piece#) 
from
 idl_ub2$ where obj#=:1 and part=:2 and version=:3


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute      1      0.00       0.00          0          0          0           0
Fetch        1      0.00       0.00          0          2          0           1
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        3      0.00       0.00          0          2          0           1

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 1)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  SORT AGGREGATE (cr=2 pr=0 pw=0 time=17 us starts=1)
         2          2          2   INDEX RANGE SCAN I_IDL_UB21 (cr=2 pr=0 pw=0 time=10 us starts=1 cost=2 size=34 card=2)(object id 380)

********************************************************************************

SQL ID: f86hw33vwstrs Plan Hash: 345224685

update idl_ub2$ set piece#=:1 ,length=:2 , piece=:3 
where
 obj#=:4 and part=:5 and piece#=:6 and version=:7


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute      2      0.00       0.00          0          4          4           2
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        3      0.00       0.00          0          4          4           2

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 1)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  UPDATE  IDL_UB2$ (cr=2 pr=0 pw=0 time=55 us starts=1)
         1          1          1   INDEX UNIQUE SCAN I_IDL_UB21 (cr=2 pr=0 pw=0 time=5 us starts=1 cost=1 size=21 card=1)(object id 380)

********************************************************************************

SQL ID: gr6fqd5ujdgxj Plan Hash: 1314400858

delete from idl_ub1$ 
where
 obj#=:1 and part=:2 and (piece#<:3 or piece#>:4) and version=:5


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute      1      0.00       0.00          0          2          0           0
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        2      0.00       0.00          0          2          0           0

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 1)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  DELETE  IDL_UB1$ (cr=2 pr=0 pw=0 time=17 us starts=1)
         0          0          0   INDEX RANGE SCAN I_IDL_UB11 (cr=2 pr=0 pw=0 time=17 us starts=1 cost=2 size=19 card=1)(object id 378)

********************************************************************************

SQL ID: c5swmv96474zb Plan Hash: 2807568952

delete from idl_char$ 
where
 obj#=:1 and part=:2 and (piece#<:3 or piece#>:4) and version=:5


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        2      0.00       0.00          0          0          0           0
Execute      2      0.00       0.00          0          4          0           0
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        4      0.00       0.00          0          4          0           0

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 1)
Number of plan statistics captured: 2

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  DELETE  IDL_CHAR$ (cr=2 pr=0 pw=0 time=20 us starts=1)
         0          0          0   INDEX RANGE SCAN I_IDL_CHAR1 (cr=2 pr=0 pw=0 time=10 us starts=1 cost=2 size=17 card=1)(object id 379)

********************************************************************************

SQL ID: 96una5dmhc91d Plan Hash: 2238151678

delete from idl_ub2$ 
where
 obj#=:1 and part=:2 and (piece#<:3 or piece#>:4) and version=:5


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        2      0.00       0.00          0          0          0           0
Execute      2      0.00       0.00          0          4          0           0
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        4      0.00       0.00          0          4          0           0

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 1)
Number of plan statistics captured: 2

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  DELETE  IDL_UB2$ (cr=2 pr=0 pw=0 time=8 us starts=1)
         0          0          0   INDEX RANGE SCAN I_IDL_UB21 (cr=2 pr=0 pw=0 time=7 us starts=1 cost=2 size=17 card=1)(object id 380)

********************************************************************************

SQL ID: 0cyhknkvnm4q2 Plan Hash: 1017615457

delete from idl_sb4$ 
where
 obj#=:1 and part=:2 and (piece#<:3 or piece#>:4) and version=:5


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute      1      0.00       0.00          0          2          0           0
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        2      0.00       0.00          0          2          0           0

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 1)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  DELETE  IDL_SB4$ (cr=2 pr=0 pw=0 time=13 us starts=1)
         0          0          0   INDEX RANGE SCAN I_IDL_SB41 (cr=2 pr=0 pw=0 time=12 us starts=1 cost=2 size=18 card=1)(object id 381)

********************************************************************************

SQL ID: f95k4jcm4t6pm Plan Hash: 979574713

select unique(decl_obj#) 
from
 plscope_action$ where bitand(flags, 1)=1 and obj# = :1


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute      1      0.00       0.00          0          0          0           0
Fetch        9      0.00       0.00          0         55          0           8
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total       11      0.00       0.00          0         55          0           8

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 1)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         8          8          8  SORT UNIQUE (cr=55 pr=0 pw=0 time=657 us starts=1 cost=9 size=33 card=3)
        31         31         31   INDEX FAST FULL SCAN I_PLSCOPE_FLAGS_ACTION$ (cr=55 pr=0 pw=0 time=506 us starts=1 cost=8 size=198 card=18)(object id 405)

********************************************************************************

SQL ID: 87gaftwrm2h68 Plan Hash: 1072382624

select o.owner#,o.name,o.namespace,o.remoteowner,o.linkname,o.subname 
from
 obj$ o where o.obj#=:1


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        3      0.00       0.00          0          0          0           0
Execute     52      0.00       0.00          0          0          0           0
Fetch       52      0.00       0.00          0        115          0          11
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total      107      0.00       0.00          0        115          0          11

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 3)
Number of plan statistics captured: 3

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          0          1  TABLE ACCESS BY INDEX ROWID BATCHED OBJ$ (cr=2 pr=0 pw=0 time=12 us starts=1 cost=3 size=108 card=1)
         1          0          1   INDEX RANGE SCAN I_OBJ1 (cr=2 pr=0 pw=0 time=10 us starts=1 cost=2 size=0 card=1)(object id 36)

********************************************************************************

SQL ID: gf8kbcndpp693 Plan Hash: 1923902863

select count(*) 
from
 plscope_action$  where obj# != :1 and decl_obj# = :2 and obj# != decl_obj#


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          2           0
Execute      1      0.01       0.00          0          0          0           0
Fetch        1      0.00       0.00          0         47          0           1
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        3      0.01       0.00          0         47          2           1

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 1)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  SORT AGGREGATE (cr=47 pr=0 pw=0 time=239 us starts=1)
         0          0          0   INDEX FAST FULL SCAN I_PLSCOPE_DECL_ACTION$ (cr=47 pr=0 pw=0 time=235 us starts=1 cost=7 size=6384 card=798)(object id 406)

********************************************************************************

SQL ID: 1s1p0b1vz9j0z Plan Hash: 1836894441

delete from plscope_identifier$ 
where
 obj#=:1


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse       10      0.00       0.00          0          0          0           0
Execute     10      0.00       0.00          0        390        589         115
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total       20      0.00       0.00          0        390        589         115

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 1)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  DELETE  PLSCOPE_IDENTIFIER$ (cr=39 pr=0 pw=0 time=258 us starts=1)
         0          0          0   INDEX FAST FULL SCAN I_PLSCOPE_IDENTIFIER$ (cr=39 pr=0 pw=0 time=257 us starts=1 cost=7 size=27520 card=688)(object id 402)

********************************************************************************

SQL ID: cvfzdcvq3ck9b Plan Hash: 3347296051

delete from plscope_action$ 
where
 obj#=:1


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse       10      0.00       0.00          0          0          0           0
Execute     10      0.03       0.01          0        470       3814         530
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total       20      0.03       0.01          0        470       3814         530

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 1)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  DELETE  PLSCOPE_ACTION$ (cr=47 pr=0 pw=0 time=282 us starts=1)
         0          0          0   INDEX FAST FULL SCAN I_PLSCOPE_DECL_ACTION$ (cr=47 pr=0 pw=0 time=282 us starts=1 cost=7 size=84412 card=1796)(object id 406)

********************************************************************************

SQL ID: 0184w3b9bdzah Plan Hash: 1657914403

delete from plscope_statement$ 
where
 obj#=:1


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute      1      0.00       0.00          0          1        117          23
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        2      0.00       0.00          0          1        117          23

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 1)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  DELETE  PLSCOPE_STATEMENT$ (cr=1 pr=0 pw=0 time=283 us starts=1)
        23         23         23   INDEX RANGE SCAN I_PLSCOPE_STATEMENT$ (cr=1 pr=0 pw=0 time=44 us starts=1 cost=0 size=39 card=1)(object id 413)

********************************************************************************

SQL ID: 857a7qv6s1tp1 Plan Hash: 2833537371

delete from plscope_sql$ 
where
 obj#=:1


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute      1      0.00       0.00          0          1         58          18
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        2      0.00       0.00          0          1         58          18

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 1)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  DELETE  PLSCOPE_SQL$ (cr=1 pr=0 pw=0 time=2469 us starts=1)
        18         18         18   INDEX RANGE SCAN I_PLSCOPE_OBJ_SQL_ID$ (cr=1 pr=0 pw=0 time=314 us starts=1 cost=0 size=21 card=1)(object id 410)

********************************************************************************

SQL ID: 7nuw4xwrnuwxq Plan Hash: 1720483994

select col#,intcol#,toid,version#,packed,intcols,intcol#s,flags, synobj#, 
  nvl(typidcol#, 0) 
from
 coltype$ where obj#=:1 order by intcol# desc


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute      1      0.00       0.00          0          0          0           0
Fetch        1      0.00       0.00          0          3          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        3      0.00       0.00          0          3          0           0

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  SORT ORDER BY (cr=3 pr=0 pw=0 time=10 us starts=1 cost=3 size=192 card=4)
         0          0          0   TABLE ACCESS CLUSTER COLTYPE$ (cr=3 pr=0 pw=0 time=5 us starts=1 cost=2 size=192 card=4)
         1          1          1    INDEX UNIQUE SCAN I_OBJ# (cr=2 pr=0 pw=0 time=3 us starts=1 cost=1 size=0 card=1)(object id 3)

********************************************************************************

SQL ID: 9rfqm06xmuwu0 Plan Hash: 832500465

select intcol#, toid, version#, intcols, intcol#s, flags, synobj# 
from
 subcoltype$ where obj#=:1 order by intcol# asc


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute      1      0.00       0.00          0          0          0           0
Fetch        1      0.00       0.00          0          3          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        3      0.00       0.00          0          3          0           0

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  SORT ORDER BY (cr=3 pr=0 pw=0 time=8 us starts=1 cost=3 size=700 card=20)
         0          0          0   TABLE ACCESS CLUSTER SUBCOLTYPE$ (cr=3 pr=0 pw=0 time=5 us starts=1 cost=2 size=700 card=20)
         1          1          1    INDEX UNIQUE SCAN I_OBJ# (cr=2 pr=0 pw=0 time=3 us starts=1 cost=1 size=0 card=1)(object id 3)

********************************************************************************

SQL ID: f3g84j69n0tjh Plan Hash: 2335623859

select col#,intcol#,ntab# 
from
 ntab$ where obj#=:1 order by intcol# asc


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute      1      0.00       0.00          0          0          0           0
Fetch        1      0.00       0.00          0          2          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        3      0.00       0.00          0          2          0           0

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  TABLE ACCESS BY INDEX ROWID NTAB$ (cr=2 pr=0 pw=0 time=5 us starts=1 cost=2 size=28 card=2)
         0          0          0   INDEX RANGE SCAN I_NTAB2 (cr=2 pr=0 pw=0 time=5 us starts=1 cost=1 size=0 card=2)(object id 119)

********************************************************************************

SQL ID: 6qz82dptj0qr7 Plan Hash: 3480746234

select l.col#, l.intcol#, l.lobj#, l.ind#, l.ts#, l.file#, l.block#, l.chunk, 
  l.pctversion$, l.flags, l.property, l.retention, l.freepools 
from
 lob$ l where l.obj# = :1 order by l.intcol# asc


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute      1      0.00       0.00          0          0          0           0
Fetch        2      0.00       0.00          0          4          0           1
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        4      0.00       0.00          0          4          0           1

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  TABLE ACCESS BY INDEX ROWID LOB$ (cr=4 pr=0 pw=0 time=8 us starts=1 cost=2 size=47 card=1)
         1          1          1   INDEX RANGE SCAN I_LOB1 (cr=3 pr=0 pw=0 time=7 us starts=1 cost=1 size=0 card=1)(object id 110)

********************************************************************************

SQL ID: 9g485acn2n30m Plan Hash: 3483575214

select col#,intcol#,reftyp,stabid,expctoid 
from
 refcon$ where obj#=:1 order by intcol# asc


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute      1      0.00       0.00          0          0          0           0
Fetch        1      0.00       0.00          0          1          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        3      0.00       0.00          0          1          0           0

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  TABLE ACCESS BY INDEX ROWID REFCON$ (cr=1 pr=0 pw=0 time=4 us starts=1 cost=0 size=72 card=1)
         0          0          0   INDEX RANGE SCAN I_REFCON2 (cr=1 pr=0 pw=0 time=4 us starts=1 cost=0 size=0 card=1)(object id 123)

********************************************************************************

SQL ID: 32bhha21dkv0v Plan Hash: 3765558045

select col#,intcol#,charsetid,charsetform 
from
 col$ where obj#=:1 order by intcol# asc


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute      1      0.00       0.00          0          0          0           0
Fetch        5      0.00       0.00          0          3          0           4
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        7      0.00       0.00          0          3          0           4

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         4          4          4  SORT ORDER BY (cr=3 pr=0 pw=0 time=13 us starts=1 cost=3 size=252 card=14)
         4          4          4   TABLE ACCESS CLUSTER COL$ (cr=3 pr=0 pw=0 time=6 us starts=1 cost=2 size=252 card=14)
         1          1          1    INDEX UNIQUE SCAN I_OBJ# (cr=2 pr=0 pw=0 time=2 us starts=1 cost=1 size=0 card=1)(object id 3)

********************************************************************************

SQL ID: 0fr8zhn4ymu3v Plan Hash: 1231101765

select intcol#,type,flags,lobcol,objcol,extracol,schemaoid,  elemnum 
from
 opqtype$ where obj# = :1 order by intcol# asc


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute      1      0.00       0.00          0          0          0           0
Fetch        1      0.00       0.00          0          1          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        3      0.00       0.00          0          1          0           0

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  TABLE ACCESS BY INDEX ROWID OPQTYPE$ (cr=1 pr=0 pw=0 time=4 us starts=1 cost=2 size=20 card=1)
         0          0          0   INDEX RANGE SCAN I_OPQTYPE1 (cr=1 pr=0 pw=0 time=3 us starts=1 cost=1 size=0 card=1)(object id 125)

********************************************************************************

SQL ID: c99wh3ngck396 Plan Hash: 0

insert into plscope_identifier$ (signature,symrep,obj#,type#)
values
 (:1,:2,:3,:4)


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        9      0.00       0.00          0          0          0           0
Execute    116      0.00       0.00          0          1        610         116
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total      125      0.00       0.00          0          1        610         116

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 1)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  LOAD TABLE CONVENTIONAL  PLSCOPE_IDENTIFIER$ (cr=0 pr=0 pw=0 time=62 us starts=1)

********************************************************************************

SQL ID: 799m6xwb53d4k Plan Hash: 0

insert into plscope_sql$ (sql_id,sql_text,sql_fulltext,obj#) 
values
 (:1,:2,:3,:4)


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        9      0.00       0.00          0          0          0           0
Execute      9      0.00       0.00          0          0         60          18
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total       18      0.00       0.00          0          0         60          18

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 1)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  LOAD TABLE CONVENTIONAL  PLSCOPE_SQL$ (cr=0 pr=0 pw=0 time=372 us starts=1)

********************************************************************************

SQL ID: 3vj496g9ns2sf Plan Hash: 0

insert into plscope_statement$ (signature,obj#,type#,sql_id,flags) 
values
 (:1,:2,:3,:4,:5)


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        9      0.00       0.00          0          0          0           0
Execute      9      0.00       0.00          0          0         52          23
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total       18      0.00       0.00          0          0         52          23

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 1)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  LOAD TABLE CONVENTIONAL  PLSCOPE_STATEMENT$ (cr=0 pr=0 pw=0 time=179 us starts=1)

********************************************************************************

SQL ID: 6zz0nsgryfg37 Plan Hash: 0

insert into plscope_action$(obj#,action#,signature,action,line,col,context#,
  flags,exp1,exp2,decl_obj#) 
values
 (:1,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11)


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        9      0.00       0.00          0          0          0           0
Execute      9      0.00       0.00          0         28       2056         531
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total       18      0.00       0.00          0         28       2056         531

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 1)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  LOAD TABLE CONVENTIONAL  PLSCOPE_ACTION$ (cr=20 pr=0 pw=0 time=5353 us starts=1)

********************************************************************************

SQL ID: 0kkhhb2w93cx0 Plan Hash: 2170058777

update seg$ set type#=:4,blocks=:5,extents=:6,minexts=:7,maxexts=:8,extsize=
  :9,extpct=:10,user#=:11,iniexts=:12,lists=decode(:13, 65535, NULL, :13),
  groups=decode(:14, 65535, NULL, :14), cachehint=:15, hwmincr=:16, spare1=
  DECODE(:17,0,NULL,:17),scanhint=:18, bitmapranges=:19 
where
 ts#=:1 and file#=:2 and block#=:3


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        2      0.00       0.00          0          0          0           0
Execute     15      0.00       0.00          0         46         15          15
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total       17      0.00       0.00          0         46         15          15

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 3)
Number of plan statistics captured: 2

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  UPDATE  SEG$ (cr=3 pr=0 pw=0 time=93 us starts=1)
         1          1          1   TABLE ACCESS CLUSTER SEG$ (cr=3 pr=0 pw=0 time=23 us starts=1 cost=2 size=64 card=1)
         1          1          1    INDEX UNIQUE SCAN I_FILE#_BLOCK# (cr=2 pr=0 pw=0 time=15 us starts=1 cost=1 size=0 card=1)(object id 9)

********************************************************************************

SQL ID: ahf8czff1p9f9 Plan Hash: 2610799279

delete from settings$ 
where
 obj# = :1


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute      1      0.00       0.00          0          2         24           8
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        2      0.00       0.00          0          2         24           8

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 1)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  DELETE  SETTINGS$ (cr=2 pr=0 pw=0 time=318 us starts=1)
         8          8          8   INDEX RANGE SCAN I_SETTINGS1 (cr=2 pr=0 pw=0 time=13 us starts=1 cost=1 size=40 card=8)(object id 383)

********************************************************************************

SQL ID: 1ahw3d7tfd1k3 Plan Hash: 0

insert into settings$(obj#, param, value) 
values
 (:1, :2, :3)


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute      8      0.00       0.00          0          1         24           8
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        9      0.00       0.00          0          1         24           8

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 1)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  LOAD TABLE CONVENTIONAL  SETTINGS$ (cr=1 pr=0 pw=0 time=99 us starts=1)

********************************************************************************

SQL ID: 4t8gm7xcktwnz Plan Hash: 907482226

delete from warning_settings$ 
where
 obj# = :1


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute      1      0.00       0.00          0          2          3           1
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        2      0.00       0.00          0          2          3           1

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 1)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  DELETE  WARNING_SETTINGS$ (cr=2 pr=0 pw=0 time=131 us starts=1)
         1          1          1   INDEX RANGE SCAN I_WARNING_SETTINGS (cr=2 pr=0 pw=0 time=10 us starts=1 cost=1 size=5 card=1)(object id 397)

********************************************************************************

SQL ID: fdvfrjy72us7v Plan Hash: 0

insert into warning_settings$(obj#, warning_num, global_mod, property) 
values
 (:1, :2, :3, :4)


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute      1      0.00       0.00          0          1          3           1
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        2      0.00       0.00          0          1          3           1

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 1)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  LOAD TABLE CONVENTIONAL  WARNING_SETTINGS$ (cr=1 pr=0 pw=0 time=136 us starts=1)

********************************************************************************

SQL ID: 1vpham7m95msd Plan Hash: 2087301174

delete from error$ 
where
 obj#=:1


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute      1      0.00       0.00          0          1          0           0
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        2      0.00       0.00          0          1          0           0

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 1)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  DELETE  ERROR$ (cr=1 pr=0 pw=0 time=40 us starts=1)
         0          0          0   INDEX RANGE SCAN I_ERROR1 (cr=1 pr=0 pw=0 time=38 us starts=1 cost=0 size=26 card=1)(object id 382)

********************************************************************************

SQL ID: 1gfaj4z5hn1kf Plan Hash: 1110520934

delete from dependency$ 
where
 d_obj#=:1


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute      1      0.01       0.00          0          3        100          14
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        2      0.01       0.00          0          3        100          14

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 1)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  DELETE  DEPENDENCY$ (cr=3 pr=0 pw=0 time=1094 us starts=1)
        14         14         14   INDEX RANGE SCAN I_DEPENDENCY1 (cr=3 pr=0 pw=0 time=29 us starts=1 cost=2 size=87 card=3)(object id 85)

********************************************************************************

SQL ID: 20vv6ttajyjzq Plan Hash: 98232196

delete from access$ 
where
 d_obj#=:1


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute      1      0.00       0.00          0          2         48          16
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        2      0.00       0.00          0          2         48          16

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 1)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  DELETE  ACCESS$ (cr=2 pr=0 pw=0 time=517 us starts=1)
        16         16         16   INDEX RANGE SCAN I_ACCESS1 (cr=2 pr=0 pw=0 time=29 us starts=1 cost=2 size=24 card=3)(object id 87)

********************************************************************************

SQL ID: c49tbx3qqrtm4 Plan Hash: 0

insert into dependency$(d_obj#,d_timestamp,order#,p_obj#,p_timestamp, 
  property, d_attrs)
values
 (:1,:2,:3,:4,:5,:6, :7)


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute     14      0.00       0.00          0          1        100          14
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total       15      0.00       0.00          0          1        100          14

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 1)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  LOAD TABLE CONVENTIONAL  DEPENDENCY$ (cr=1 pr=0 pw=0 time=91 us starts=1)

********************************************************************************

SQL ID: 2h0gb24h6zpnu Plan Hash: 0

insert into access$(d_obj#,order#,columns,types) 
values
 (:1,:2,:3,:4)


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute     16      0.00       0.00          0          1         48          16
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total       17      0.00       0.00          0          1         48          16

Misses in library cache during parse: 0
Misses in library cache during execute: 1
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 1)
********************************************************************************

SQL ID: c3utnxsnrx8tk Plan Hash: 2683643009

update obj$ set obj#=:4, type#=:5,ctime=:6,mtime=:7,stime=:8,status=:9,
  dataobj#=:10,flags=:11,oid$=:12,spare1=:13,spare2=:14,spare3=:15,signature=
  :16,spare7=:17,spare8=:18,spare9=:19, dflcollid=decode(:20,0,null,:20),
  creappid=:21,creverid=:22, modappid=:23,modverid=:24,crepatchid=:25,
  modpatchid=:26 
where
 owner#=:1 and name=:2 and namespace=:3 and remoteowner is null and linkname 
  is null and subname is null


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute      1      0.00       0.00          0          3          1           1
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        2      0.00       0.00          0          3          1           1

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 1)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  UPDATE  OBJ$ (cr=3 pr=0 pw=0 time=51 us starts=1)
         1          1          1   INDEX RANGE SCAN I_OBJ2 (cr=3 pr=0 pw=0 time=14 us starts=1 cost=2 size=108 card=1)(object id 37)

********************************************************************************

SQL ID: 62w9w8spnnwhs Plan Hash: 355840092

SELECT /* OPT_DYN_SAMP */ /*+ ALL_ROWS IGNORE_WHERE_CLAUSE 
  RESULT_CACHE(SNAPSHOT=3600) opt_param('parallel_execution_enabled', 'false')
   NO_PARALLEL(SAMPLESUB) NO_PARALLEL_INDEX(SAMPLESUB) NO_SQL_TUNE */ 
  NVL(SUM(C1),:"SYS_B_0"), NVL(SUM(C2),:"SYS_B_1") 
FROM
 (SELECT /*+ NO_PARALLEL("COUNTRY") FULL("COUNTRY") 
  NO_PARALLEL_INDEX("COUNTRY") */ :"SYS_B_2" AS C1, :"SYS_B_3" AS C2 FROM 
  "KOZYAR"."COUNTRY" "COUNTRY") SAMPLESUB


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute      1      0.00       0.00          0          0          0           0
Fetch        1      0.00       0.00          0          0          0           1
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        3      0.00       0.00          0          0          0           1

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: ALL_ROWS
Parsing user id: 104     (recursive depth: 2)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  RESULT CACHE  6vhn2h8usg2xf3svcg0b567vkc (cr=0 pr=0 pw=0 time=7 us starts=1)
         0          0          0   SORT AGGREGATE (cr=0 pr=0 pw=0 time=0 us starts=0)
         0          0          0    TABLE ACCESS FULL COUNTRY (cr=0 pr=0 pw=0 time=0 us starts=0 cost=3 size=0 card=409)

********************************************************************************

SQL ID: 9pwahcqq3b1uj Plan Hash: 1407531724

SELECT MAX(COUNTRY_ID) 
FROM
 COUNTRY


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        2      0.00       0.00          0          2          0           0
Execute      2      0.00       0.00          0          0          0           0
Fetch        2      0.00       0.00          0          2          0           2
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        6      0.00       0.00          0          4          0           2

Misses in library cache during parse: 1
Optimizer mode: ALL_ROWS
Parsing user id: 104     (recursive depth: 1)
Number of plan statistics captured: 2

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  SORT AGGREGATE (cr=1 pr=0 pw=0 time=15 us starts=1)
         1          1          1   INDEX FULL SCAN (MIN/MAX) COUNTRY_ID_PK (cr=1 pr=0 pw=0 time=9 us starts=1 cost=2 size=13 card=1)(object id 75127)

********************************************************************************

SQL ID: 4adwxsz1y4za6 Plan Hash: 0

LOCK TABLE HOTEL IN EXCLUSIVE MODE


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute      1      0.00       0.00          0          0          0           0
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        2      0.00       0.00          0          0          0           0

Misses in library cache during parse: 1
Optimizer mode: ALL_ROWS
Parsing user id: 104     (recursive depth: 1)
********************************************************************************

SQL ID: 9z3fj88577bqv Plan Hash: 2892329232

SELECT CASE WHEN EXISTS(SELECT * 
FROM
 HOTEL WHERE HOTEL_NAME = :B1 ) THEN 0 ELSE 1 END FROM DUAL


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute   1000      0.00       0.00          0          4          0           0
Fetch     1000      0.04       0.02          0       6996          0        1000
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total     2001      0.04       0.03          0       7000          0        1000

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: ALL_ROWS
Parsing user id: 104     (recursive depth: 1)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  TABLE ACCESS FULL HOTEL (cr=3 pr=0 pw=0 time=20 us starts=1 cost=2 size=27 card=1)
         1          1          1  FAST DUAL  (cr=0 pr=0 pw=0 time=1 us starts=1 cost=2 size=0 card=1)

********************************************************************************

SQL ID: 38gkgkt7cb4z6 Plan Hash: 3055935834

SELECT /* OPT_DYN_SAMP */ /*+ ALL_ROWS IGNORE_WHERE_CLAUSE 
  RESULT_CACHE(SNAPSHOT=3600) opt_param('parallel_execution_enabled', 'false')
   NO_PARALLEL(SAMPLESUB) NO_PARALLEL_INDEX(SAMPLESUB) NO_SQL_TUNE */ 
  NVL(SUM(C1),0), NVL(SUM(C2),0) 
FROM
 (SELECT /*+ IGNORE_WHERE_CLAUSE NO_PARALLEL("HOTEL") FULL("HOTEL") 
  NO_PARALLEL_INDEX("HOTEL") */ 1 AS C1, CASE WHEN "HOTEL"."HOTEL_NAME"=:B1 
  THEN 1 ELSE 0 END AS C2 FROM "KOZYAR"."HOTEL" "HOTEL") SAMPLESUB


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        2      0.00       0.00          0          0          0           0
Execute      2      0.00       0.00          0          0          0           0
Fetch        2      0.00       0.00          0          3          0           2
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        6      0.00       0.00          0          3          0           2

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: ALL_ROWS
Parsing user id: 104     (recursive depth: 2)
Number of plan statistics captured: 2

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  RESULT CACHE  bvxytt3bjnw6u5hh417851xk0j (cr=2 pr=0 pw=0 time=40 us starts=1)
         1          1          1   SORT AGGREGATE (cr=2 pr=0 pw=0 time=12 us starts=1)
         0          0          0    TABLE ACCESS FULL HOTEL (cr=2 pr=0 pw=0 time=10 us starts=1 cost=2 size=2214 card=82)

********************************************************************************

SQL ID: 2uv96c3cban8p Plan Hash: 2198952967

INSERT INTO HOTEL 
VALUES
(HOTEL_S.NEXTVAL, :B2 , :B1 , TRUNC(DBMS_RANDOM.VALUE(6, 20)))


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute   1000      0.20       0.21          5         27       4171        1000
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total     1001      0.20       0.21          5         27       4171        1000

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: ALL_ROWS
Parsing user id: 104     (recursive depth: 1)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  LOAD TABLE CONVENTIONAL  HOTEL (cr=77 pr=4 pw=0 time=12842 us starts=1)
         1          1          1   SEQUENCE  HOTEL_S (cr=1 pr=0 pw=0 time=325 us starts=1)

********************************************************************************

SQL ID: ajdnw3a4jjz3u Plan Hash: 3339926435

select max(intcol#) 
from
 col$ where obj#=:1


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        2      0.00       0.00          0          0          0           0
Execute      2      0.00       0.00          0          0          0           0
Fetch        2      0.00       0.00          0          4          0           2
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        6      0.00       0.00          0          4          0           2

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 2

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  SORT AGGREGATE (cr=2 pr=0 pw=0 time=20 us starts=1)
         1          1          1   FIRST ROW  (cr=2 pr=0 pw=0 time=14 us starts=1 cost=2 size=9 card=1)
         1          1          1    INDEX RANGE SCAN (MIN/MAX) I_COL3 (cr=2 pr=0 pw=0 time=13 us starts=1 cost=2 size=9 card=1)(object id 50)

********************************************************************************

SQL ID: 2k3rd8ruusy3x Plan Hash: 3625463896

select log, flag, to_date('4000-01-01:00:00:00','YYYY-MM-DD:HH24:MI:SS')  
from
 sys.mlog$ where mowner = :1 and master = :2


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        2      0.00       0.00          0          0          0           0
Execute      2      0.00       0.00          0          0          0           0
Fetch        2      0.00       0.00          0          4          0           2
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        6      0.00       0.00          0          4          0           2

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 2

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  TABLE ACCESS CLUSTER MLOG$ (cr=2 pr=0 pw=0 time=12 us starts=1 cost=0 size=211 card=1)
         1          1          1   INDEX UNIQUE SCAN I_MLOG# (cr=1 pr=0 pw=0 time=5 us starts=1 cost=0 size=0 card=1)(object id 865)

********************************************************************************

SQL ID: 1fg26zq234bg2 Plan Hash: 2970138452

SELECT 1 
FROM
 sys.tab$  WHERE obj# = :1 AND bitand(property, 262144) != 0


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        2      0.00       0.00          0          0          0           0
Execute      2      0.00       0.00          0          0          0           0
Fetch        2      0.00       0.00          0          7          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        6      0.00       0.00          0          7          0           0

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 2

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  TABLE ACCESS CLUSTER TAB$ (cr=4 pr=0 pw=0 time=13 us starts=1 cost=2 size=12 card=1)
         1          1          1   INDEX UNIQUE SCAN I_OBJ# (cr=2 pr=0 pw=0 time=5 us starts=1 cost=1 size=0 card=1)(object id 3)

********************************************************************************

SQL ID: 8hr29vsv5pn39 Plan Hash: 1789958272

select                                                               
  decode(logc.name,                                                     
  'M_ROW$$',         9990, /*KNT_M_ROW*/                         'SEQUENCE$$',
        9991, /*KNT_SEQUENCE*/                      'SNAPTIME$$',      9992, 
  /*KNT_SNAPTIME*/                      'DMLTYPE$$' ,      9993, 
  /*KNT_DMLTYPE*/                       'OLD_NEW$$' ,      9994, 
  /*KNT_OLD_NEW*/                       'CHANGE_VECTOR$$', 9995, 
  /*KNT_CHANGE_VECTOR*/                 'XID$$',           9996, /*KNT_XID*/  
                           decode(NVL(masc.intcol#,-1),                       
                     -1, 9999,         /*KNT_INVALID*/                        
        masc.intcol#)) intcol#,                          '"'||masc.name||'"', 
                                          logc.segcol#,                       
                             logc.type#                                       
         
from
 sys.col$ logc,                                                 (select /*+ 
  NO_MERGE */* from sys.col$ masc                     where masc.obj# = :1) 
  masc                               where logc.obj# = :2 and                 
                              bitand(logc.property, 32) = 0 and               
                logc.name = masc.name(+)                                  
  order by intcol# asc


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        2      0.00       0.00          0          0          0           0
Execute      2      0.00       0.00          0          0          0           0
Fetch       21      0.00       0.00          0         13          0          19
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total       25      0.00       0.00          0         13          0          19

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 2

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
        10         10         10  SORT ORDER BY (cr=7 pr=0 pw=0 time=174 us starts=1 cost=5 size=53 card=1)
        10         10         10   HASH JOIN OUTER (cr=7 pr=0 pw=0 time=131 us starts=1 cost=4 size=53 card=1)
        10         10         10    TABLE ACCESS CLUSTER COL$ (cr=3 pr=0 pw=0 time=17 us starts=1 cost=2 size=28 card=1)
         1          1          1     INDEX UNIQUE SCAN I_OBJ# (cr=2 pr=0 pw=0 time=4 us starts=1 cost=1 size=0 card=1)(object id 3)
         4         10         16    VIEW  (cr=4 pr=0 pw=0 time=6 us starts=1 cost=2 size=350 card=14)
         4         10         16     TABLE ACCESS CLUSTER COL$ (cr=4 pr=0 pw=0 time=5 us starts=1 cost=2 size=294 card=14)
         1          1          1      INDEX UNIQUE SCAN I_OBJ# (cr=2 pr=0 pw=0 time=2 us starts=1 cost=1 size=0 card=1)(object id 3)

********************************************************************************

SQL ID: 622ufbrgvxdc7 Plan Hash: 727816792

select decode(u.type#, 2, u.ext_username, u.name), o.name,        t.update$, 
  t.insert$, t.delete$, t.enabled,        decode(bitand(t.property, 8192),
  8192, 1, 0),        decode(bitand(t.property, 65536), 65536, 1, 0),       
  decode(bitand(t.property, 131072), 131072, 1, 0),       (select o.name 
from
 obj$ o          where o.obj# = u.spare2 and o.type# =57),        
  decode(bitand(t.property, 524288), 524288, 1, 0)  from sys.obj$ o, 
  sys.user$ u, sys.trigger$ t, sys.obj$ bo where t.baseobject=bo.obj# and 
  bo.name = :1 and bo.spare3 = :2  and bo.namespace = 1  and t.obj#=o.obj# 
  and o.owner#=u.user#  and o.type# = 12 and bitand(property,16)=0 and 
  bitand(property,8)=0  order by o.obj#


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        3      0.01       0.00          0          0          0           0
Execute      3      0.00       0.00          0          0          0           0
Fetch        4      0.00       0.00          0        394          0           1
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total       10      0.01       0.00          0        394          0           1

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 2

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  TABLE ACCESS BY INDEX ROWID BATCHED OBJ$ (cr=0 pr=0 pw=0 time=1 us starts=0 cost=3 size=29 card=1)
         0          0          0   INDEX RANGE SCAN I_OBJ1 (cr=0 pr=0 pw=0 time=1 us starts=0 cost=2 size=0 card=1)(object id 36)
         0          1          1  NESTED LOOPS  (cr=42 pr=0 pw=0 time=234 us starts=1 cost=6 size=236 card=1)
         0          1          1   NESTED LOOPS  (cr=41 pr=0 pw=0 time=229 us starts=1 cost=5 size=87 card=1)
         0          1          1    NESTED LOOPS  (cr=39 pr=0 pw=0 time=221 us starts=1 cost=3 size=55 card=1)
       126        126        126     TABLE ACCESS BY INDEX ROWID TRIGGER$ (cr=25 pr=0 pw=0 time=147 us starts=1 cost=2 size=23 card=1)
       147        147        147      INDEX FULL SCAN I_TRIGGER2 (cr=1 pr=0 pw=0 time=8 us starts=1 cost=1 size=0 card=7)(object id 280)
         0          1          1     INDEX RANGE SCAN I_OBJ5 (cr=14 pr=0 pw=0 time=92 us starts=126 cost=1 size=32 card=1)(object id 40)
         0          1          1    TABLE ACCESS BY INDEX ROWID OBJ$ (cr=2 pr=0 pw=0 time=8 us starts=0 cost=2 size=32 card=1)
         0          1          1     INDEX RANGE SCAN I_OBJ1 (cr=2 pr=0 pw=0 time=4 us starts=0 cost=1 size=0 card=1)(object id 36)
         0          1          1   TABLE ACCESS CLUSTER USER$ (cr=2 pr=0 pw=0 time=4 us starts=0 cost=1 size=149 card=1)
         0          1          1    INDEX UNIQUE SCAN I_USER# (cr=1 pr=0 pw=0 time=2 us starts=0 cost=0 size=0 card=1)(object id 11)

********************************************************************************

SQL ID: 3c32a4bk574vp Plan Hash: 3139037929

select d.sumobj# 
from
 sys.sumdetail$ d, sys.sum$ s where d.sumobj# = s.obj# and bitand(d.flags, 2) 
  = 2 and bitand(s.xpflags, 34359738368) = 34359738368 and d.detailobj# = :1


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse   1001001      5.59       5.63          0          0          0           0
Execute 1001001      9.45       9.14          0          0          0           0
Fetch   1001001      3.79       3.62          0    1001001          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total   3003003     18.84      18.40          0    1001001          0           0

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 3

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  NESTED LOOPS  (cr=1 pr=0 pw=0 time=7 us starts=1 cost=1 size=65 card=1)
         0          0          0   NESTED LOOPS  (cr=1 pr=0 pw=0 time=7 us starts=1 cost=1 size=65 card=1)
         0          0          0    TABLE ACCESS BY INDEX ROWID BATCHED SUMDETAIL$ (cr=1 pr=0 pw=0 time=6 us starts=1 cost=1 size=39 card=1)
         0          0          0     INDEX RANGE SCAN I_SUMDETAIL$_2 (cr=1 pr=0 pw=0 time=5 us starts=1 cost=1 size=0 card=1)(object id 1249)
         0          0          0    INDEX UNIQUE SCAN I_SUM$_1 (cr=0 pr=0 pw=0 time=0 us starts=0 cost=0 size=0 card=1)(object id 1246)
         0          0          0   TABLE ACCESS BY INDEX ROWID SUM$ (cr=0 pr=0 pw=0 time=0 us starts=0 cost=0 size=26 card=1)

********************************************************************************

SQL ID: 4m7m0t6fjcs5x Plan Hash: 1935744642

update seq$ set increment$=:2,minvalue=:3,maxvalue=:4,cycle#=:5,order$=:6,
  cache=:7,highwater=:8,audit$=:9,flags=:10 
where
 obj#=:1


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        2      0.00       0.00          0          0          0           0
Execute   1100      0.04       0.04          0       1100       2213        1100
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total     1102      0.04       0.04          0       1100       2213        1100

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 2

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  UPDATE  SEQ$ (cr=1 pr=0 pw=0 time=57 us starts=1)
         1          1          1   INDEX UNIQUE SCAN I_SEQ1 (cr=1 pr=0 pw=0 time=5 us starts=1 cost=0 size=69 card=1)(object id 105)

********************************************************************************

SQL ID: 0yn07bvqs30qj Plan Hash: 866645418

select pctfree_stg, pctused_stg, size_stg,initial_stg, next_stg, minext_stg, 
  maxext_stg, maxsiz_stg, lobret_stg,mintim_stg, pctinc_stg, initra_stg, 
  maxtra_stg, optimal_stg, maxins_stg,frlins_stg, flags_stg, bfp_stg, enc_stg,
   cmpflag_stg, cmplvl_stg,imcflag_stg, ccflag_stg, flags2_stg 
from
 deferred_stg$  where obj# =:1


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute     30      0.00       0.00          0          0          0           0
Fetch       30      0.00       0.00          0         90          0          30
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total       61      0.00       0.00          0         90          0          30

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 3)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  TABLE ACCESS BY INDEX ROWID DEFERRED_STG$ (cr=3 pr=0 pw=0 time=44 us starts=1 cost=1 size=27 card=1)
         1          1          1   INDEX UNIQUE SCAN I_DEFERRED_STG1 (cr=2 pr=0 pw=0 time=24 us starts=1 cost=0 size=0 card=1)(object id 82)

********************************************************************************

SQL ID: g8csnvf6qkqzx Plan Hash: 1333514192

INSERT /*+ NO_DST_UPGRADE_INSERT_CONV IDX(0) */ INTO "KOZYAR"."MLOG$_HOTEL" 
  (dmltype$$,old_new$$,snaptime$$,change_vector$$,xid$$,sequence$$,m_row$$,
  "HOTEL_ID","HOTEL_NAME","COUNTRY_ID") 
VALUES
 (:d,:o,to_date('4000-01-01:00:00:00','YYYY-MM-DD:HH24:MI:SS'),:c,:x,
  sys.cdc_rsid_seq$.nextval,:m,:1,:2,:3)


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute   1000      0.01       0.03          0        137       3379        1000
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total     1001      0.01       0.03          0        137       3379        1000

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  LOAD TABLE CONVENTIONAL  MLOG$_HOTEL (cr=4 pr=0 pw=0 time=157 us starts=1)
         1          1          1   SEQUENCE  CDC_RSID_SEQ$ (cr=0 pr=0 pw=0 time=7 us starts=1)

********************************************************************************

SQL ID: 9rzjf5cqv4qv1 Plan Hash: 2714355898

delete from deferred_stg$ 
where
 obj# = :1


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        2      0.00       0.00          0          0          0           0
Execute      6      0.00       0.00          0         12         24           6
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        8      0.00       0.00          0         12         24           6

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 3)
Number of plan statistics captured: 2

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  DELETE  DEFERRED_STG$ (cr=2 pr=0 pw=0 time=79 us starts=1)
         1          1          1   INDEX UNIQUE SCAN I_DEFERRED_STG1 (cr=2 pr=0 pw=0 time=4 us starts=1 cost=0 size=5 card=1)(object id 82)

********************************************************************************

SQL ID: g7mt7ptq286u7 Plan Hash: 0

insert into seg$ (file#,block#,type#,ts#,blocks,extents,minexts,maxexts,
  extsize,extpct,user#,iniexts,lists,groups,cachehint,hwmincr, spare1, 
  scanhint, bitmapranges) 
values
 (:1,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,DECODE(:17,0,NULL,
  :17),:18,:19)


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        2      0.00       0.00          0          0          0           0
Execute      6      0.00       0.00          0         15         55           6
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        8      0.00       0.00          0         15         55           6

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 3)
Number of plan statistics captured: 2

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  LOAD TABLE CONVENTIONAL  SEG$ (cr=2 pr=0 pw=0 time=70 us starts=1)

********************************************************************************

SQL ID: gsfnqdfcvy33q Plan Hash: 2453887050

delete from superobj$ 
where
 subobj# = :1


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        3      0.00       0.00          0          0          0           0
Execute      3      0.00       0.00          0          3          0           0
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        6      0.00       0.00          0          3          0           0

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 3)
Number of plan statistics captured: 2

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  DELETE  SUPEROBJ$ (cr=1 pr=0 pw=0 time=5 us starts=1)
         0          0          0   INDEX UNIQUE SCAN I_SUPEROBJ1 (cr=1 pr=0 pw=0 time=4 us starts=1 cost=0 size=26 card=1)(object id 98)

********************************************************************************

SQL ID: 3kywng531fcxu Plan Hash: 2667651180

delete from tab_stats$ 
where
 obj#=:1


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        3      0.00       0.00          0          0          0           0
Execute      3      0.00       0.00          0          3          0           0
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        6      0.00       0.00          0          3          0           0

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 3)
Number of plan statistics captured: 2

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  DELETE  TAB_STATS$ (cr=1 pr=0 pw=0 time=3 us starts=1)
         0          0          0   INDEX UNIQUE SCAN I_TAB_STATS$_OBJ# (cr=1 pr=0 pw=0 time=2 us starts=1 cost=0 size=13 card=1)(object id 74)

********************************************************************************

SQL ID: gxm18860ab67a Plan Hash: 2918346288

update tab$ set ts#=:2,file#=:3,block#=:4,bobj#=decode(:5,0,null,:5),tab#=
  decode(:6,0,null,:6),intcols=:7,kernelcols=:8,clucols=decode(:9,0,null,:9),
  audit$=:10,flags=:11,pctfree$=:12,pctused$=:13,initrans=:14,maxtrans=:15,
  rowcnt=:16,blkcnt=:17,empcnt=:18,avgspc=:19,chncnt=:20,avgrln=:21,
  analyzetime=:22,samplesize=:23,cols=:24,property=:25,degree=decode(:26,1,
  null,:26),instances=decode(:27,1,null,:27),dataobj#=:28,avgspc_flb=:29,
  flbcnt=:30,trigflag=:31,spare1=:32,spare2=decode(:33,0,null,:33),spare4=:34,
  spare6=:35,acdrflags=decode(:36,0,null,:36),acdrtsobj#=decode(:37,0,null,
  :37),acdrdefaulttime=:38,acdrrowtsintcol#=:39 
where
 obj#=:1


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        2      0.00       0.00          0          0          0           0
Execute      3      0.00       0.00          0          9          3           3
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        5      0.00       0.00          0          9          3           3

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 3)
Number of plan statistics captured: 2

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  UPDATE  TAB$ (cr=3 pr=0 pw=0 time=66 us starts=1)
         1          1          1   TABLE ACCESS CLUSTER TAB$ (cr=3 pr=0 pw=0 time=13 us starts=1 cost=2 size=135 card=1)
         1          1          1    INDEX UNIQUE SCAN I_OBJ# (cr=2 pr=0 pw=0 time=5 us starts=1 cost=1 size=0 card=1)(object id 3)

********************************************************************************

SQL ID: gg8cpx0kn7ksf Plan Hash: 2580332476

update ind$ set ts#=:2,file#=:3,block#=:4,intcols=:5,type#=:6,flags=:7,
  property=:8,pctfree$=:9,initrans=:10,maxtrans=:11,blevel=:12,leafcnt=:13,
  distkey=:14,lblkkey=:15,dblkkey=:16,clufac=:17,cols=:18,analyzetime=:19,
  samplesize=:20,dataobj#=:21,degree=decode(:22,1,null,:22),instances=
  decode(:23,1,null,:23),rowcnt=:24,pctthres$=:31*256+:25, indmethod#=:26, 
  trunccnt=:27,evaledition#=decode(:33,1,null,:33),unusablebefore#=decode(:34,
  0,null,:34),unusablebeginning#=decode(:35,0,null,:35),spare4=:29,spare2=:30,
  spare6=:32 
where
 obj#=:1


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        2      0.00       0.00          0          0          0           0
Execute      3      0.00       0.00          0          6          3           3
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        5      0.00       0.00          0          6          3           3

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 3)
Number of plan statistics captured: 2

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  UPDATE  IND$ (cr=2 pr=0 pw=0 time=60 us starts=1)
         1          1          1   INDEX UNIQUE SCAN I_IND1 (cr=2 pr=0 pw=0 time=5 us starts=1 cost=1 size=86 card=1)(object id 41)

********************************************************************************

SQL ID: 8ggw94h7mvxd7 Plan Hash: 0

COMMIT


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        6      0.00       0.00          0          0          0           0
Execute      6      0.43       0.39          0      13150         39           0
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total       12      0.43       0.39          0      13150         39           0

Misses in library cache during parse: 0
Parsing user id: 104     (recursive depth: 1)
********************************************************************************

SQL ID: a2bjjqxwjtq89 Plan Hash: 1150674808

select s.sowner, s.vname, s.flag2, s.flag3 
from
 snap$ s, (select distinct sowner, vname from snap_reftime$ where instsite=0  
   start with masobj# in (75120) connect by prior sowner = mowner and   prior 
  vname = master) v   where s.sowner=v.sowner and s.vname=v.vname and 
  bitand(s.flag,32768)!=0


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        2      0.00       0.00          0          0          0           0
Execute      2      0.00       0.00          0          0          0           0
Fetch        4      0.00       0.00          0          8          0           2
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        8      0.00       0.00          0          8          0           2

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 2

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  NESTED LOOPS  (cr=4 pr=0 pw=0 time=78 us starts=1 cost=3 size=303 card=1)
         1          1          1   NESTED LOOPS  (cr=3 pr=0 pw=0 time=71 us starts=1 cost=3 size=303 card=1)
         1          1          1    VIEW  (cr=2 pr=0 pw=0 time=63 us starts=1 cost=3 size=132 card=1)
         1          1          1     SORT UNIQUE (cr=2 pr=0 pw=0 time=62 us starts=1 cost=3 size=277 card=1)
         1          1          1      FILTER  (cr=2 pr=0 pw=0 time=55 us starts=1)
         1          1          1       CONNECT BY NO FILTERING WITH SW (UNIQUE) (cr=2 pr=0 pw=0 time=53 us starts=1)
         3          3          3        TABLE ACCESS FULL SNAP_REFTIME$ (cr=2 pr=0 pw=0 time=20 us starts=1 cost=2 size=290 card=1)
         1          1          1    INDEX RANGE SCAN I_SNAP1 (cr=1 pr=0 pw=0 time=7 us starts=1 cost=0 size=0 card=1)(object id 875)
         1          1          1   TABLE ACCESS BY INDEX ROWID SNAP$ (cr=1 pr=0 pw=0 time=7 us starts=1 cost=0 size=171 card=1)

********************************************************************************

SQL ID: 7vfxjkrp4agf3 Plan Hash: 1706039865

SELECT DISTINCT s.masobj#  
FROM
 snap_reftime$ s, user$ u, obj$ o WHERE o.owner# = u.user# and u.name = 
  s.sowner and o.name = s.vname        and s.instsite = 0 and o.obj# IN 
  (75488) order by s.masobj#


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        3      0.00       0.00          0          0          0           0
Execute      3      0.00       0.00          0          0          0           0
Fetch       12      0.00       0.00          0         30          0           9
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total       18      0.00       0.00          0         30          0           9

Misses in library cache during parse: 1
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 3

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         3          3          3  SORT UNIQUE (cr=10 pr=0 pw=0 time=242 us starts=1 cost=3 size=205 card=1)
         3          3          3   HASH JOIN  (cr=10 pr=0 pw=0 time=220 us starts=1 cost=2 size=205 card=1)
         3          3          3    NESTED LOOPS  (cr=7 pr=0 pw=0 time=61 us starts=1 cost=2 size=205 card=1)
         3          3          3     STATISTICS COLLECTOR  (cr=7 pr=0 pw=0 time=60 us starts=1)
         3          3          3      NESTED LOOPS  (cr=7 pr=0 pw=0 time=47 us starts=1 cost=1 size=177 card=1)
         3          3          3       TABLE ACCESS BY INDEX ROWID BATCHED SNAP_REFTIME$ (cr=2 pr=0 pw=0 time=25 us starts=1 cost=1 size=158 card=1)
         3          3          3        INDEX SKIP SCAN I_SNAP_REFTIME1 (cr=1 pr=0 pw=0 time=19 us starts=1 cost=1 size=0 card=1)(object id 879)
         3          3          3       TABLE ACCESS BY INDEX ROWID USER$ (cr=5 pr=0 pw=0 time=18 us starts=3 cost=0 size=19 card=1)
         3          3          3        INDEX UNIQUE SCAN I_USER1 (cr=2 pr=0 pw=0 time=11 us starts=3 cost=0 size=0 card=1)(object id 46)
         0          0          0     INDEX RANGE SCAN I_OBJ2 (cr=0 pr=0 pw=0 time=0 us starts=0 cost=1 size=28 card=1)(object id 37)
         1          1          1    TABLE ACCESS BY INDEX ROWID BATCHED OBJ$ (cr=3 pr=0 pw=0 time=13 us starts=1 cost=1 size=28 card=1)
         1          1          1     INDEX RANGE SCAN I_OBJ1 (cr=2 pr=0 pw=0 time=11 us starts=1 cost=1 size=0 card=1)(object id 36)

********************************************************************************

SQL ID: 5rxyky934dryy Plan Hash: 1397588387

SELECT DISTINCT s.sowner, s.vname, s.auto_fast, o.obj#, r.masobj# 
FROM
 snap_reftime$ r, snap$ s, obj$ o, user$ u WHERE r.vname=s.vname AND r.sowner=
  s.sowner and o.type#=42 AND        o.name=s.vname AND o.owner#= u.user# AND 
  s.sowner=u.name AND        bitand(s.flag,32768)!=0 AND r.masobj# IN (75120) 
  ORDER BY obj# 


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        2      0.00       0.00          0          0          0           0
Execute      2      0.00       0.00          0          0          0           0
Fetch        4      0.00       0.00          0         18          0           2
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        8      0.00       0.00          0         18          0           2

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 2

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  SORT UNIQUE (cr=9 pr=0 pw=0 time=67 us starts=1 cost=4 size=343 card=1)
         1          1          1   HASH JOIN  (cr=9 pr=0 pw=0 time=62 us starts=1 cost=3 size=343 card=1)
         1          1          1    NESTED LOOPS  (cr=9 pr=0 pw=0 time=58 us starts=1 cost=3 size=343 card=1)
         1          1          1     STATISTICS COLLECTOR  (cr=6 pr=0 pw=0 time=48 us starts=1)
         1          1          1      NESTED LOOPS  (cr=6 pr=0 pw=0 time=41 us starts=1 cost=2 size=311 card=1)
         1          1          1       NESTED LOOPS  (cr=4 pr=0 pw=0 time=41 us starts=1 cost=2 size=292 card=1)
         1          1          1        TABLE ACCESS FULL SNAP_REFTIME$ (cr=2 pr=0 pw=0 time=28 us starts=1 cost=2 size=145 card=1)
         1          1          1        TABLE ACCESS BY INDEX ROWID BATCHED SNAP$ (cr=2 pr=0 pw=0 time=12 us starts=1 cost=0 size=147 card=1)
         1          1          1         INDEX RANGE SCAN I_SNAP1 (cr=1 pr=0 pw=0 time=7 us starts=1 cost=0 size=0 card=1)(object id 875)
         1          1          1       TABLE ACCESS BY INDEX ROWID USER$ (cr=2 pr=0 pw=0 time=4 us starts=1 cost=0 size=19 card=1)
         1          1          1        INDEX UNIQUE SCAN I_USER1 (cr=1 pr=0 pw=0 time=3 us starts=1 cost=0 size=0 card=1)(object id 46)
         1          1          1     INDEX RANGE SCAN I_OBJ2 (cr=3 pr=0 pw=0 time=10 us starts=1 cost=1 size=32 card=1)(object id 37)
         0          0          0    INDEX FAST FULL SCAN I_OBJ5 (cr=0 pr=0 pw=0 time=0 us starts=0 cost=1 size=32 card=1)(object id 40)

********************************************************************************

SQL ID: a419x427ya67k Plan Hash: 1397588387

SELECT DISTINCT s.sowner, s.vname, s.auto_fast, o.obj#, r.masobj#  
FROM
 snap_reftime$ r, snap$ s, obj$ o, user$ u WHERE r.vname=s.vname AND r.sowner=
  s.sowner AND o.type#=2 AND        o.name=s.vname AND o.owner#= u.user# AND 
  s.sowner=u.name AND        bitand(s.flag,32768)!=0 AND bitand(s.objflag,
  536870912)!=0 AND        bitand(s.flag3,134217728)!=0 AND r.masobj# IN 
  (75120) ORDER BY obj# 


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        2      0.00       0.00          0          0          0           0
Execute      2      0.00       0.00          0          0          0           0
Fetch        2      0.00       0.00          0          8          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        6      0.00       0.00          0          8          0           0

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 2

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  SORT UNIQUE (cr=4 pr=0 pw=0 time=28 us starts=1 cost=4 size=369 card=1)
         0          0          0   HASH JOIN  (cr=4 pr=0 pw=0 time=25 us starts=1 cost=3 size=369 card=1)
         0          0          0    NESTED LOOPS  (cr=4 pr=0 pw=0 time=23 us starts=1 cost=3 size=369 card=1)
         0          0          0     STATISTICS COLLECTOR  (cr=4 pr=0 pw=0 time=23 us starts=1)
         0          0          0      NESTED LOOPS  (cr=4 pr=0 pw=0 time=22 us starts=1 cost=2 size=337 card=1)
         0          0          0       NESTED LOOPS  (cr=4 pr=0 pw=0 time=22 us starts=1 cost=2 size=318 card=1)
         1          1          1        TABLE ACCESS FULL SNAP_REFTIME$ (cr=2 pr=0 pw=0 time=13 us starts=1 cost=2 size=145 card=1)
         0          0          0        TABLE ACCESS BY INDEX ROWID BATCHED SNAP$ (cr=2 pr=0 pw=0 time=8 us starts=1 cost=0 size=173 card=1)
         1          1          1         INDEX RANGE SCAN I_SNAP1 (cr=1 pr=0 pw=0 time=4 us starts=1 cost=0 size=0 card=1)(object id 875)
         0          0          0       TABLE ACCESS BY INDEX ROWID USER$ (cr=0 pr=0 pw=0 time=0 us starts=0 cost=0 size=19 card=1)
         0          0          0        INDEX UNIQUE SCAN I_USER1 (cr=0 pr=0 pw=0 time=0 us starts=0 cost=0 size=0 card=1)(object id 46)
         0          0          0     INDEX RANGE SCAN I_OBJ2 (cr=0 pr=0 pw=0 time=0 us starts=0 cost=1 size=32 card=1)(object id 37)
         0          0          0    INDEX FAST FULL SCAN I_OBJ5 (cr=0 pr=0 pw=0 time=0 us starts=0 cost=1 size=32 card=1)(object id 40)

********************************************************************************

SQL ID: 3udwu3qqyf7z9 Plan Hash: 1145716214

SELECT DISTINCT s.sowner, s.vname, s.auto_fast, do.obj#, sm.containerobj# 
FROM
 dependency$ d, snap$ s, obj$ po, obj$ do, user$ u, sum$ sm WHERE d.p_obj#= 
  po.obj# AND po.obj#=sm.obj# AND sm.containertype=2 AND        d.d_obj#=
  do.obj# AND do.type#=42 AND        do.name=s.vname AND do.owner#= u.user# 
  AND s.sowner=u.name AND        bitand(s.flag,32768)!=0 AND d.p_obj# IN 
  (75490) ORDER BY obj# 


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        3      0.01       0.01          0          0          0           0
Execute      3      0.00       0.00          0          0          0           0
Fetch        3      0.00       0.00          0         39          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        9      0.01       0.01          0         39          0           0

Misses in library cache during parse: 1
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 3

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  SORT UNIQUE (cr=13 pr=0 pw=0 time=63 us starts=1 cost=7 size=252 card=1)
         0          0          0   MERGE JOIN CARTESIAN (cr=13 pr=0 pw=0 time=58 us starts=1 cost=6 size=252 card=1)
         0          0          0    NESTED LOOPS  (cr=13 pr=0 pw=0 time=56 us starts=1 cost=5 size=247 card=1)
         4          4          4     NESTED LOOPS  (cr=12 pr=0 pw=0 time=49 us starts=1 cost=5 size=247 card=3)
         1          1          1      NESTED LOOPS  (cr=9 pr=0 pw=0 time=42 us starts=1 cost=3 size=237 card=1)
         1          1          1       NESTED LOOPS  (cr=6 pr=0 pw=0 time=34 us starts=1 cost=2 size=205 card=1)
         1          1          1        NESTED LOOPS  (cr=4 pr=0 pw=0 time=29 us starts=1 cost=2 size=186 card=1)
         1          1          1         TABLE ACCESS BY INDEX ROWID SUM$ (cr=2 pr=0 pw=0 time=9 us starts=1 cost=0 size=39 card=1)
         1          1          1          INDEX UNIQUE SCAN I_SUM$_1 (cr=1 pr=0 pw=0 time=5 us starts=1 cost=0 size=0 card=1)(object id 1246)
         1          1          1         TABLE ACCESS FULL SNAP$ (cr=2 pr=0 pw=0 time=19 us starts=1 cost=2 size=147 card=1)
         1          1          1        TABLE ACCESS BY INDEX ROWID USER$ (cr=2 pr=0 pw=0 time=4 us starts=1 cost=0 size=19 card=1)
         1          1          1         INDEX UNIQUE SCAN I_USER1 (cr=1 pr=0 pw=0 time=3 us starts=1 cost=0 size=0 card=1)(object id 46)
         1          1          1       INDEX RANGE SCAN I_OBJ2 (cr=3 pr=0 pw=0 time=7 us starts=1 cost=1 size=32 card=1)(object id 37)
         4          4          4      INDEX RANGE SCAN I_DEPENDENCY1 (cr=3 pr=0 pw=0 time=11 us starts=1 cost=1 size=0 card=3)(object id 85)
         0          0          0     TABLE ACCESS BY INDEX ROWID DEPENDENCY$ (cr=1 pr=0 pw=0 time=3 us starts=4 cost=2 size=10 card=1)
         0          0          0    BUFFER SORT (cr=0 pr=0 pw=0 time=0 us starts=0 cost=5 size=5 card=1)
         0          0          0     INDEX RANGE SCAN I_OBJ1 (cr=0 pr=0 pw=0 time=0 us starts=0 cost=1 size=5 card=1)(object id 36)

********************************************************************************

SQL ID: 3gdsgkhwux87s Plan Hash: 2845333568

select distinct s.sowner, s.vname  
from
 sys.snap$ s, sys.snap_reftime$ r where r.masobj# in (75120) and        
  s.sowner = r.sowner and s.vname = r.vname and        bitand(s.flag3, 
  67108864) = 67108864


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        2      0.00       0.00          0          0          0           0
Execute      2      0.00       0.00          0          0          0           0
Fetch        2      0.00       0.00          0          4          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        6      0.00       0.00          0          4          0           0

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 2

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  SORT UNIQUE (cr=2 pr=0 pw=0 time=17 us starts=1 cost=3 size=290 card=1)
         0          0          0   NESTED LOOPS  (cr=2 pr=0 pw=0 time=13 us starts=1 cost=2 size=290 card=1)
         0          0          0    NESTED LOOPS  (cr=2 pr=0 pw=0 time=13 us starts=1 cost=2 size=290 card=1)
         0          0          0     TABLE ACCESS FULL SNAP$ (cr=2 pr=0 pw=0 time=12 us starts=1 cost=2 size=145 card=1)
         0          0          0     INDEX RANGE SCAN I_SNAP_REFTIME1 (cr=0 pr=0 pw=0 time=0 us starts=0 cost=0 size=0 card=1)(object id 879)
         0          0          0    TABLE ACCESS BY INDEX ROWID SNAP_REFTIME$ (cr=0 pr=0 pw=0 time=0 us starts=0 cost=0 size=145 card=1)

********************************************************************************

SQL ID: 091fb1shwqyn8 Plan Hash: 3949148835

select o.owner#, o.name, o.namespace, o.obj#, d.d_timestamp,         
  nvl(d.property,0), o.type#, o.subname, d.d_attrs  
from
 dependency$ d, obj$ o   where d.p_obj#=:1  and   (d.p_timestamp=nvl(:2,
  d.p_timestamp) or d.property=2)  and   o.owner#=nvl(:3,o.owner#)  and   
  d.d_obj#=o.obj#  order by o.obj#


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        3      0.00       0.00          0          0          0           0
Execute      3      0.00       0.00          0          0          0           0
Fetch        9      0.00       0.00          0         30          0           6
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total       15      0.00       0.00          0         30          0           6

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 3

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         2          2          2  SORT ORDER BY (cr=10 pr=0 pw=0 time=44 us starts=1 cost=17 size=292 card=4)
         2          2          2   CONCATENATION  (cr=10 pr=0 pw=0 time=31 us starts=1)
         2          2          2    FILTER  (cr=10 pr=0 pw=0 time=29 us starts=1)
         2          2          2     NESTED LOOPS  (cr=10 pr=0 pw=0 time=28 us starts=1 cost=8 size=146 card=2)
         2          2          2      NESTED LOOPS  (cr=8 pr=0 pw=0 time=22 us starts=1 cost=8 size=146 card=2)
         2          2          2       TABLE ACCESS BY INDEX ROWID BATCHED DEPENDENCY$ (cr=4 pr=0 pw=0 time=12 us starts=1 cost=4 size=70 card=2)
         2          2          2        INDEX RANGE SCAN I_DEPENDENCY2 (cr=3 pr=0 pw=0 time=9 us starts=1 cost=2 size=0 card=4)(object id 86)
         2          2          2       INDEX RANGE SCAN I_OBJ1 (cr=4 pr=0 pw=0 time=9 us starts=2 cost=1 size=0 card=1)(object id 36)
         2          2          2      TABLE ACCESS BY INDEX ROWID OBJ$ (cr=2 pr=0 pw=0 time=4 us starts=2 cost=2 size=38 card=1)
         0          0          0    FILTER  (cr=0 pr=0 pw=0 time=0 us starts=1)
         0          0          0     NESTED LOOPS  (cr=0 pr=0 pw=0 time=0 us starts=0 cost=8 size=146 card=2)
         0          0          0      NESTED LOOPS  (cr=0 pr=0 pw=0 time=0 us starts=0 cost=8 size=146 card=2)
         0          0          0       TABLE ACCESS BY INDEX ROWID BATCHED DEPENDENCY$ (cr=0 pr=0 pw=0 time=0 us starts=0 cost=4 size=70 card=2)
         0          0          0        INDEX RANGE SCAN I_DEPENDENCY2 (cr=0 pr=0 pw=0 time=0 us starts=0 cost=2 size=0 card=4)(object id 86)
         0          0          0       INDEX RANGE SCAN I_OBJ1 (cr=0 pr=0 pw=0 time=0 us starts=0 cost=1 size=0 card=1)(object id 36)
         0          0          0      TABLE ACCESS BY INDEX ROWID OBJ$ (cr=0 pr=0 pw=0 time=0 us starts=0 cost=2 size=38 card=1)

********************************************************************************

SQL ID: 60mwj5fxv4ur9 Plan Hash: 2918346288

update tab$ set spare3 = :1, spare5 = :3 
where
 obj# = :2


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        6      0.00       0.00          0          0          0           0
Execute      6      0.00       0.00          0         20          6           6
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total       12      0.00       0.00          0         20          6           6

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 2

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  UPDATE  TAB$ (cr=3 pr=0 pw=0 time=83 us starts=1)
         1          1          1   TABLE ACCESS CLUSTER TAB$ (cr=3 pr=0 pw=0 time=14 us starts=1 cost=2 size=135 card=1)
         1          1          1    INDEX UNIQUE SCAN I_OBJ# (cr=2 pr=0 pw=0 time=6 us starts=1 cost=1 size=0 card=1)(object id 3)

********************************************************************************

SQL ID: 7qu3bryxttc5k Plan Hash: 2288262421

SELECT /*+ NOPARALLEL */          masobj#, masflag, mowner, master, 
  lastsuccess, snaptime, sysdate,         loadertime, sysdate, NVL(refscn, 0),
   fcmaskvec, ejmaskvec,         sub_handle, change_view  
FROM
 sys.snap_reftime$  WHERE sowner = :1 AND vname = :2 AND instsite = :3 ORDER 
  BY tablenum


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        3      0.00       0.00          0          0          0           0
Execute      3      0.00       0.00          0          0          0           0
Fetch        9      0.00       0.00          0         18          0           9
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total       15      0.00       0.00          0         18          0           9

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         3          3          3  TABLE ACCESS BY INDEX ROWID SNAP_REFTIME$ (cr=6 pr=0 pw=0 time=7 us starts=1 cost=0 size=693 card=1)
         3          3          3   INDEX RANGE SCAN I_SNAP_REFTIME1 (cr=3 pr=0 pw=0 time=10 us starts=1 cost=0 size=0 card=1)(object id 879)

********************************************************************************

SQL ID: fzutsu6fmdm9m Plan Hash: 1814730689

select sys.mvref$_stats_seq.nextval 
from
 dual


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute      3      0.00       0.00          0          0          0           0
Fetch        6      0.00       0.00          0          0          0           3
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total       10      0.00       0.00          0          0          0           3

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  SEQUENCE  MVREF$_STATS_SEQ (cr=0 pr=0 pw=0 time=13 us starts=1)
         1          1          1   FAST DUAL  (cr=0 pr=0 pw=0 time=0 us starts=1 cost=2 size=0 card=1)

********************************************************************************

SQL ID: b6gt6h4562xw9 Plan Hash: 2345283616

with defvals as    (select collection_level, retention_period     from 
  sys.mvref$_stats_sys_defaults)     select nvl(e.collection_level, 
  d.collection_level) collection_level,            nvl(e.retention_period, 
  d.retention_period) retention_period     from     (select mv_owner, mv_name,
   collection_level, retention_period      from sys.mvref$_stats_params p 
  right outer join      (select sowner mv_owner, vname as mv_name       from 
  sys.snap$) s1       using (mv_owner, mv_name)) e, defvals d      where 
  mv_owner = :1 and  mv_name = :2


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute      3      0.00       0.00          0          0          0           0
Fetch        6      0.00       0.00          0         12          0           3
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total       10      0.00       0.00          0         12          0           3

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  MERGE JOIN CARTESIAN (cr=4 pr=0 pw=0 time=124 us starts=1 cost=4 size=296 card=1)
         1          1          1   HASH JOIN OUTER (cr=2 pr=0 pw=0 time=115 us starts=1 cost=2 size=290 card=1)
         1          1          1    INDEX RANGE SCAN I_SNAP1 (cr=1 pr=0 pw=0 time=5 us starts=1 cost=0 size=132 card=1)(object id 875)
         0          0          0    TABLE ACCESS FULL MVREF$_STATS_PARAMS (cr=1 pr=0 pw=0 time=18 us starts=1 cost=2 size=158 card=1)
         1          1          1   BUFFER SORT (cr=2 pr=0 pw=0 time=17 us starts=1 cost=2 size=6 card=1)
         1          1          1    TABLE ACCESS FULL MVREF$_STATS_SYS_DEFAULTS (cr=2 pr=0 pw=0 time=9 us starts=1 cost=2 size=6 card=1)

********************************************************************************

SQL ID: 3axb1b2rus9vk Plan Hash: 2924192112

update sys.sumpartlog$ s set s.timestamp = :1, s.scn = :2  
where
  s.bo# = :3  and    s.timestamp >= to_date('4000-01-01:00:00:00',
  'YYYY-MM-DD:HH24:MI:SS')


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        3      0.00       0.00          0          0          0           0
Execute      3      0.00       0.00          0          3          0           0
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        6      0.00       0.00          0          3          0           0

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 3

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  UPDATE  SUMPARTLOG$ (cr=1 pr=0 pw=0 time=6 us starts=1)
         0          0          0   TABLE ACCESS BY INDEX ROWID BATCHED SUMPARTLOG$ (cr=1 pr=0 pw=0 time=5 us starts=1 cost=0 size=35 card=1)
         0          0          0    INDEX RANGE SCAN I_SUMPARTLOG$ (cr=1 pr=0 pw=0 time=4 us starts=1 cost=0 size=0 card=1)(object id 856)

********************************************************************************

SQL ID: 5p06akzdb4y5s Plan Hash: 3625463896

select log, oldest, oldest_pk, oldest_oid, oldest_new, youngest+1/86400,  
  flag, yscn, oldest_seq, oscn, oscn_pk, oscn_oid, oscn_new, oscn_seq  
from
 sys.mlog$ where mowner = :1 and master = :2


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse       27      0.00       0.00          0          0          0           0
Execute     27      0.00       0.00          0          0          0           0
Fetch       27      0.00       0.00          0         54          0          27
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total       81      0.00       0.00          0         54          0          27

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 3

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  TABLE ACCESS CLUSTER MLOG$ (cr=2 pr=0 pw=0 time=16 us starts=1 cost=0 size=343 card=1)
         1          1          1   INDEX UNIQUE SCAN I_MLOG# (cr=1 pr=0 pw=0 time=5 us starts=1 cost=0 size=0 card=1)(object id 865)

********************************************************************************

SQL ID: 2vnzfjzg6px33 Plan Hash: 1551139906

select log, oldest, oldest_pk, oldest_oid, oldest_new, youngest+1/86400,  
  flag, yscn, oldest_seq, oscn, oscn_pk, oscn_oid, oscn_new, oscn_seq  
from
 sys.mlog$ where mowner = :1 and master = :2 for update


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse       18      0.00       0.00          0          0          0           0
Execute     18      0.00       0.00          0         36         18           0
Fetch       18      0.00       0.00          0          0          0          18
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total       54      0.00       0.00          0         36         18          18

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 3

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  FOR UPDATE  (cr=2 pr=0 pw=0 time=69 us starts=1)
         2          2          2   BUFFER SORT (cr=2 pr=0 pw=0 time=19 us starts=2)
         1          1          1    TABLE ACCESS CLUSTER MLOG$ (cr=2 pr=0 pw=0 time=7 us starts=1 cost=0 size=343 card=1)
         1          1          1     INDEX UNIQUE SCAN I_MLOG# (cr=1 pr=0 pw=0 time=4 us starts=1 cost=0 size=0 card=1)(object id 865)

********************************************************************************

SQL ID: atcy52r3wvpr7 Plan Hash: 1037824108

SELECT oldest, youngest+1/86400 
FROM
 sys.snap_loadertime$ WHERE tableobj# = :1 FOR UPDATE


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        9      0.00       0.00          0          0          0           0
Execute      9      0.00       0.00          0         18          9           0
Fetch        9      0.00       0.00          0          0          0           9
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total       27      0.00       0.00          0         18          9           9

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 3

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  FOR UPDATE  (cr=2 pr=0 pw=0 time=26 us starts=1)
         1          1          1   TABLE ACCESS BY INDEX ROWID SNAP_LOADERTIME$ (cr=2 pr=0 pw=0 time=7 us starts=1 cost=0 size=31 card=1)
         1          1          1    INDEX UNIQUE SCAN I_SNAP_LOADERTIME1 (cr=1 pr=0 pw=0 time=3 us starts=1 cost=0 size=0 card=1)(object id 863)

********************************************************************************

SQL ID: 6mm7jhrut7qak Plan Hash: 3017298823

UPDATE sys.snap_loadertime$ SET youngest = :1   
WHERE
 tableobj# = :2


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        9      0.00       0.00          0          0          0           0
Execute      9      0.00       0.00          0          9          9           9
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total       18      0.00       0.00          0          9          9           9

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 3

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  UPDATE  SNAP_LOADERTIME$ (cr=1 pr=0 pw=0 time=33 us starts=1)
         1          1          1   INDEX UNIQUE SCAN I_SNAP_LOADERTIME1 (cr=1 pr=0 pw=0 time=6 us starts=1 cost=0 size=22 card=1)(object id 863)

********************************************************************************

SQL ID: 8w9udmaddscwc Plan Hash: 2541877506

update sys.sumdelta$ s set s.timestamp = :1, s.scn = :2  
where
  rowid in  (select rowid from sys.sumdelta$ AS OF SNAPSHOT (:3) s1  where 
  s1.tableobj# = :4   and s1.timestamp >= to_date('4000-01-01:00:00:00',
  'YYYY-MM-DD:HH24:MI:SS'))


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        9      0.00       0.00          0          0          0           0
Execute      9      0.00       0.00          0          9          0           0
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total       18      0.00       0.00          0          9          0           0

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 3

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  UPDATE  SUMDELTA$ (cr=1 pr=0 pw=0 time=15 us starts=1)
         0          0          0   NESTED LOOPS  (cr=1 pr=0 pw=0 time=14 us starts=1)
         0          0          0    INDEX RANGE SCAN I_SUMDELTA$ (cr=1 pr=0 pw=0 time=13 us starts=1)(object id 859)
         0          0          0    TABLE ACCESS BY USER ROWID SUMDELTA$ (cr=0 pr=0 pw=0 time=0 us starts=0)

********************************************************************************

SQL ID: chbgkk6tmzmmj Plan Hash: 2479012696

update sys.sumpartlog$ s set s.timestamp = :1, s.scn = :2  
where
  rowid in  (select rowid from sumpartlog$ AS OF SNAPSHOT(:3) s1  where 
  s1.bo# = :4   and s1.timestamp >= to_date('4000-01-01:00:00:00',
  'YYYY-MM-DD:HH24:MI:SS'))


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        9      0.00       0.00          0          0          0           0
Execute      9      0.00       0.00          0          9          0           0
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total       18      0.00       0.00          0          9          0           0

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 3

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  UPDATE  SUMPARTLOG$ (cr=1 pr=0 pw=0 time=10 us starts=1)
         0          0          0   NESTED LOOPS  (cr=1 pr=0 pw=0 time=10 us starts=1 cost=1 size=81 card=1)
         0          0          0    TABLE ACCESS BY INDEX ROWID BATCHED SUMPARTLOG$ (cr=1 pr=0 pw=0 time=9 us starts=1 cost=0 size=34 card=1)
         0          0          0     INDEX RANGE SCAN I_SUMPARTLOG$ (cr=1 pr=0 pw=0 time=5 us starts=1 cost=0 size=0 card=1)(object id 856)
         0          0          0    TABLE ACCESS BY USER ROWID SUMPARTLOG$ (cr=0 pr=0 pw=0 time=0 us starts=0 cost=1 size=47 card=1)

********************************************************************************

SQL ID: 514qzmya0zsmh Plan Hash: 4055348452

select NVL(max(s.scn), 0) 
from
 sys.sumdelta$ s  where s.tableobj# = :1 and NVL(s.scn,0) <= :2 


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        9      0.00       0.00          0          0          0           0
Execute      9      0.00       0.00          0          0          0           0
Fetch        9      0.00       0.00          0          9          0           9
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total       27      0.00       0.00          0          9          0           9

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 3

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  SORT AGGREGATE (cr=1 pr=0 pw=0 time=8 us starts=1)
         0          0          0   TABLE ACCESS BY INDEX ROWID SUMDELTA$ (cr=1 pr=0 pw=0 time=4 us starts=1)
         0          0          0    INDEX RANGE SCAN I_SUMDELTA$ (cr=1 pr=0 pw=0 time=3 us starts=1)(object id 859)

********************************************************************************

SQL ID: 63qrr16x01bat Plan Hash: 4281387941

select decode(bitand(s.flags,1),0,0,1), NVL(max(s.scn), 0)  
from
 sumpartlog$ s  where s.bo# = :1 and nvl(s.scn,0) <= :2  group by 
  decode(bitand(s.flags,1),0,0,1)


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        9      0.00       0.00          0          0          0           0
Execute      9      0.00       0.00          0          0          0           0
Fetch        9      0.00       0.00          0          9          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total       27      0.00       0.00          0          9          0           0

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 3

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  SORT GROUP BY (cr=1 pr=0 pw=0 time=10 us starts=1 cost=1 size=39 card=1)
         0          0          0   TABLE ACCESS BY INDEX ROWID BATCHED SUMPARTLOG$ (cr=1 pr=0 pw=0 time=4 us starts=1 cost=0 size=39 card=1)
         0          0          0    INDEX RANGE SCAN I_SUMPARTLOG$ (cr=1 pr=0 pw=0 time=3 us starts=1 cost=0 size=0 card=1)(object id 856)

********************************************************************************

SQL ID: 2gdu55njxq8cs Plan Hash: 1191833520

SELECT o.obj#  
FROM
 sys.obj$ o  WHERE o.owner# = :1 AND o.name = :2    AND o.type# = 2 AND 
  o.namespace = 1    AND o.linkname IS NULL AND o.remoteowner IS NULL


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        9      0.00       0.00          0          0          0           0
Execute      9      0.00       0.00          0          0          0           0
Fetch        9      0.00       0.00          0         27          0           9
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total       27      0.00       0.00          0         27          0           9

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 3

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  INDEX RANGE SCAN I_OBJ2 (cr=3 pr=0 pw=0 time=9 us starts=1 cost=2 size=108 card=1)(object id 37)

********************************************************************************

SQL ID: 1h6pa55x1zgft Plan Hash: 2325658193

select m.intcol#, f.oldest, f.oldest_scn 
from
 sys.col$ m, sys.mlog_refcol$ f  where  m.obj# = :1 and exists (select 1 from 
  sys.col$ l                                 where l.obj# = :2 and m.name = 
  l.name)    and f.mowner = :3 and f.master = :4 and f.colname = m.name  
  order by f.oldest, f.oldest_scn desc


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        9      0.00       0.00          0          0          0           0
Execute      9      0.00       0.00          0          0          0           0
Fetch       30      0.00       0.00          0        162          0          21
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total       48      0.00       0.00          0        162          0          21

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 3

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         2          2          2  SORT ORDER BY (cr=16 pr=0 pw=0 time=52 us starts=1 cost=4 size=241 card=1)
         2          2          2   NESTED LOOPS  (cr=16 pr=0 pw=0 time=43 us starts=1 cost=1 size=241 card=1)
         2          2          2    NESTED LOOPS  (cr=14 pr=0 pw=0 time=34 us starts=1 cost=1 size=241 card=1)
         2          2          2     TABLE ACCESS BY INDEX ROWID BATCHED MLOG_REFCOL$ (cr=2 pr=0 pw=0 time=9 us starts=1 cost=0 size=220 card=1)
         2          2          2      INDEX RANGE SCAN I_MLOG_REFCOL1 (cr=1 pr=0 pw=0 time=5 us starts=1 cost=0 size=0 card=1)(object id 881)
         2          2          2     INDEX UNIQUE SCAN I_COL1 (cr=12 pr=0 pw=0 time=24 us starts=2 cost=1 size=0 card=1)(object id 48)
         2          2          2      INDEX UNIQUE SCAN I_COL1 (cr=6 pr=0 pw=0 time=4 us starts=2 cost=2 size=17 card=1)(object id 48)
         2          2          2    TABLE ACCESS BY INDEX ROWID COL$ (cr=2 pr=0 pw=0 time=7 us starts=2 cost=1 size=21 card=1)

********************************************************************************

SQL ID: bmky724xxxpyv Plan Hash: 138948722

SELECT oldest, oldest_scn 
FROM
 sys.snap_loadertime$ WHERE tableobj# = :1


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        9      0.00       0.00          0          0          0           0
Execute      9      0.00       0.00          0          0          0           0
Fetch        9      0.00       0.00          0         18          0           9
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total       27      0.00       0.00          0         18          0           9

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 3

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  TABLE ACCESS BY INDEX ROWID SNAP_LOADERTIME$ (cr=2 pr=0 pw=0 time=5 us starts=1 cost=0 size=35 card=1)
         1          1          1   INDEX UNIQUE SCAN I_SNAP_LOADERTIME1 (cr=1 pr=0 pw=0 time=3 us starts=1 cost=0 size=0 card=1)(object id 863)

********************************************************************************

SQL ID: 336ch0ukv9xwa Plan Hash: 2381934836

UPDATE sys.snap$ set status = :1   
WHERE
 vname = :2 AND sowner = :3 AND instsite = :4


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        3      0.00       0.00          0          0          0           0
Execute      3      0.00       0.00          0          3          3           3
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        6      0.00       0.00          0          3          3           3

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 3

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  UPDATE  SNAP$ (cr=1 pr=0 pw=0 time=63 us starts=1)
         1          1          1   INDEX UNIQUE SCAN I_SNAP1 (cr=1 pr=0 pw=0 time=6 us starts=1 cost=0 size=158 card=1)(object id 875)

********************************************************************************

SQL ID: czbjavaavnum5 Plan Hash: 2381934836

update sys.snap$ set snapshot = :1, snaptime = :2,    auto_date = :3, snapid =
   :4, error# = 0  
where
 vname = :6 and sowner = :5 and instsite = :7


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        3      0.00       0.00          0          0          0           0
Execute      3      0.00       0.00          0          3          3           3
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        6      0.00       0.00          0          3          3           3

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 3

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  UPDATE  SNAP$ (cr=1 pr=0 pw=0 time=23 us starts=1)
         1          1          1   INDEX UNIQUE SCAN I_SNAP1 (cr=1 pr=0 pw=0 time=5 us starts=1 cost=0 size=198 card=1)(object id 875)

********************************************************************************

SQL ID: 0sbbcuruzd66f Plan Hash: 2239883476

select /*+ rule */ bucket_cnt, row_cnt, cache_cnt, null_cnt, timestamp#, 
  sample_size, minimum, maximum, distcnt, lowval, hival, density, col#, 
  spare1, spare2, avgcln, minimum_enc, maximum_enc 
from
 hist_head$ where obj#=:1 and intcol#=:2


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        2      0.00       0.00          0          0          0           0
Execute     89      0.03       0.00          0          0          0           0
Fetch       89      0.00       0.00          0        245          0          67
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total      180      0.03       0.00          0        245          0          67

Misses in library cache during parse: 0
Optimizer mode: RULE
Parsing user id: SYS   (recursive depth: 3)
Number of plan statistics captured: 2

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  TABLE ACCESS BY INDEX ROWID HIST_HEAD$ (cr=3 pr=0 pw=0 time=18 us starts=1)
         1          1          1   INDEX RANGE SCAN I_HH_OBJ#_INTCOL# (cr=2 pr=0 pw=0 time=15 us starts=1)(object id 70)

********************************************************************************

SQL ID: cu9q0uzyuu3yt Plan Hash: 4758086

SELECT REL_QUERY 
FROM
 sys.snap$  WHERE  sowner = :1 and vname = :2 AND instsite = :3


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        3      0.00       0.00          0          0          0           0
Execute      3      0.00       0.00          0          0          0           0
Fetch        3      0.00       0.00          0          6          0           3
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        9      0.00       0.00          0          6          0           3

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 3

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  TABLE ACCESS BY INDEX ROWID SNAP$ (cr=2 pr=0 pw=0 time=14 us starts=1 cost=0 size=2147 card=1)
         1          1          1   INDEX UNIQUE SCAN I_SNAP1 (cr=1 pr=0 pw=0 time=7 us starts=1 cost=0 size=0 card=1)(object id 875)

********************************************************************************

SQL ID: 7ggm58t3935kt Plan Hash: 4758086

SELECT query_txt 
FROM
 sys.snap$  WHERE  sowner = :1 and vname = :2 AND instsite = :3


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        3      0.00       0.00          0          0          0           0
Execute      3      0.00       0.00          0          0          0           0
Fetch        3      0.00       0.00          0          9          0           3
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        9      0.00       0.00          0          9          0           3

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 3

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  TABLE ACCESS BY INDEX ROWID SNAP$ (cr=2 pr=0 pw=0 time=7 us starts=1 cost=0 size=148 card=1)
         1          1          1   INDEX UNIQUE SCAN I_SNAP1 (cr=1 pr=0 pw=0 time=4 us starts=1 cost=0 size=0 card=1)(object id 875)

********************************************************************************

SQL ID: c5nv7v0zn32cu Plan Hash: 2384037004

select 1 
from
 sumpartlog$ a where  a.bo# = :1 and bitand(a.flags,5) != 5 and 
  bitand(a.flags,16) != 16 and  rownum = 1


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        3      0.00       0.00          0          0          0           0
Execute      3      0.00       0.00          0          0          0           0
Fetch        3      0.00       0.00          0          3          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        9      0.00       0.00          0          3          0           0

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 3)
Number of plan statistics captured: 3

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  COUNT STOPKEY (cr=1 pr=0 pw=0 time=10 us starts=1)
         0          0          0   TABLE ACCESS BY INDEX ROWID BATCHED SUMPARTLOG$ (cr=1 pr=0 pw=0 time=7 us starts=1 cost=0 size=26 card=1)
         0          0          0    INDEX RANGE SCAN I_SUMPARTLOG$ (cr=1 pr=0 pw=0 time=6 us starts=1 cost=0 size=0 card=1)(object id 856)

********************************************************************************

SQL ID: 8b1dyng89rkar Plan Hash: 3708888762

select dmltype$$ 
from
 "KOZYAR"."MLOG$_HOTEL"  where xid$$ = :1  group by dmltype$$


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        2      0.00       0.00          0          0          0           0
Execute      2      0.00       0.00          0          0          0           0
Fetch        4      0.00       0.00          0         52          0           2
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        8      0.00       0.00          0         52          0           2

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 3)
Number of plan statistics captured: 2

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  SORT GROUP BY (cr=26 pr=0 pw=0 time=674 us starts=1)
      1000       1500       2000   TABLE ACCESS BY INDEX ROWID MLOG$_HOTEL (cr=26 pr=0 pw=0 time=576 us starts=1)
      1000       1500       2000    INDEX RANGE SCAN I_MLOG$_HOTEL (cr=10 pr=0 pw=0 time=196 us starts=1)(object id 75482)

********************************************************************************

SQL ID: 1hn9shuwddgh1 Plan Hash: 0

SELECT /*+ RESULT_CACHE(LIFETIME=SESSION, NAME="DMLTYPES:MLOG$_HOTEL") */ 
  "MAS$"."RID$" "RID$" , "MAS$"."HOTEL_NAME", "MAS$"."HOTEL_ID", 
  "MAS$"."COUNTRY_ID", DECODE("MAS$"."OLD_NEW$$", 'N', 'I', 'D') "DML$$", 
  "MAS$"."OLD_NEW$$" "OLD_NEW$$",  "MAS$"."DMLTYPE$$" "DMLTYPE$$" 
FROM
 (SELECT "MAS$".*, MIN("MAS$"."SEQ$$") OVER (PARTITION BY "MAS$"."RID$") 
  "MINSEQ$$", MAX("MAS$"."SEQ$$") OVER (PARTITION BY "MAS$"."RID$") 
  "MAXSEQ$$" FROM (SELECT  CHARTOROWID("MAS$"."M_ROW$$") RID$  ,  
  "MAS$"."HOTEL_NAME", "MAS$"."HOTEL_ID", "MAS$"."COUNTRY_ID"  , 
  DECODE("MAS$".OLD_NEW$$, 'N', 'I', 'D') DML$$, "MAS$"."DMLTYPE$$" 
  "DMLTYPE$$", "MAS$"."SEQUENCE$$" "SEQ$$", "MAS$"."OLD_NEW$$" "OLD_NEW$$"  
  FROM "KOZYAR"."MLOG$_HOTEL" "MAS$"   WHERE "MAS$".XID$$ = :1 )  "MAS$" ) 
  "MAS$" WHERE ((("MAS$"."OLD_NEW$$" = 'N') AND ("MAS$"."SEQ$$" = 
  "MAS$"."MAXSEQ$$")) OR (("MAS$"."OLD_NEW$$" IN ('O','U')) AND 
  ("MAS$"."SEQ$$" = "MAS$"."MINSEQ$$")))  


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        6      0.00       0.00          0          0          0           0
Execute      0      0.00       0.00          0          0          0           0
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        6      0.00       0.00          0          0          0           0

Misses in library cache during parse: 6
Optimizer mode: ALL_ROWS
Parsing user id: 104     (recursive depth: 3)
********************************************************************************

SQL ID: d7zvk9bn8dyr6 Plan Hash: 3646447030

select /* QOSD */ /*+ index(do) */ dir_cnt 
from
 opt_directive_own$ do where dir_own# = :1


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        2      0.00       0.00          0          0          0           0
Execute      2      0.00       0.00          0          0          0           0
Fetch        2      0.00       0.00          0          2          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        6      0.00       0.00          0          2          0           0

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 4)
Number of plan statistics captured: 2

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  TABLE ACCESS BY INDEX ROWID OPT_DIRECTIVE_OWN$ (cr=1 pr=0 pw=0 time=7 us starts=1 cost=0 size=26 card=1)
         0          0          0   INDEX UNIQUE SCAN I_OPT_DIRECTIVE_OWN# (cr=1 pr=0 pw=0 time=6 us starts=1 cost=0 size=0 card=1)(object id 700)

********************************************************************************

SQL ID: 10gywwmwk6xfy Plan Hash: 1426583507

select /* QOSD */ /*+ index(eh)*/ objn, sub_id, fixed_cost, text, col_list, 
  flags, ctime 
from
 exp_head$ eh where exp_id = :1


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        2      0.00       0.00          0          0          0           0
Execute     17      0.00       0.00          0          0          0           0
Fetch       17      0.00       0.00          0         34          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total       36      0.00       0.00          0         34          0           0

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 4)
Number of plan statistics captured: 2

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  TABLE ACCESS BY INDEX ROWID EXP_HEAD$ (cr=2 pr=0 pw=0 time=21 us starts=1 cost=0 size=4078 card=1)
         0          0          0   INDEX UNIQUE SCAN I_EXP_HEAD$ (cr=2 pr=0 pw=0 time=20 us starts=1 cost=0 size=0 card=1)(object id 718)

********************************************************************************

SQL ID: 31n2fdrtx30dr Plan Hash: 574255729

MERGE INTO "KOZYAR"."MOST_POPULAR_HOTEL" "SNA$" USING ( WITH "TMPDLT$_HOTEL" 
  AS  ( SELECT /*+ RESULT_CACHE(LIFETIME=SESSION, NAME="DMLTYPES:MLOG$_HOTEL")
   */ "MAS$"."RID$" "RID$" , "MAS$"."HOTEL_NAME", "MAS$"."HOTEL_ID", 
  "MAS$"."COUNTRY_ID", DECODE("MAS$"."OLD_NEW$$", 'N', 'I', 'D') "DML$$", 
  "MAS$"."OLD_NEW$$" "OLD_NEW$$",  "MAS$"."DMLTYPE$$" "DMLTYPE$$" FROM 
  (SELECT "MAS$".*, MIN("MAS$"."SEQ$$") OVER (PARTITION BY "MAS$"."RID$") 
  "MINSEQ$$", MAX("MAS$"."SEQ$$") OVER (PARTITION BY "MAS$"."RID$") 
  "MAXSEQ$$" FROM (SELECT  CHARTOROWID("MAS$"."M_ROW$$") RID$  ,  
  "MAS$"."HOTEL_NAME", "MAS$"."HOTEL_ID", "MAS$"."COUNTRY_ID"  , 
  DECODE("MAS$".OLD_NEW$$, 'N', 'I', 'D') DML$$, "MAS$"."DMLTYPE$$" 
  "DMLTYPE$$", "MAS$"."SEQUENCE$$" "SEQ$$", "MAS$"."OLD_NEW$$" "OLD_NEW$$"  
  FROM "KOZYAR"."MLOG$_HOTEL" "MAS$"   WHERE "MAS$".XID$$ = :1 )  "MAS$" ) 
  "MAS$" WHERE ((("MAS$"."OLD_NEW$$" = 'N') AND ("MAS$"."SEQ$$" = 
  "MAS$"."MAXSEQ$$")) OR (("MAS$"."OLD_NEW$$" IN ('O','U')) AND 
  ("MAS$"."SEQ$$" = "MAS$"."MINSEQ$$")))  ) SELECT   /*+  
  OPT_ESTIMATE(QUERY_BLOCK MAX=1000)   */ "DLT$2"."HOTEL_NAME" "GB0", 
  "MAS$1"."COUNTRY_NAME" "GB1", NVL(SUM(1* ("MAS$0"."STAYS_IN_NIGHTS")), 0) 
  "D0", SUM(1* DECODE(("MAS$0"."STAYS_IN_NIGHTS"), NULL, 0, 1)) "H0" FROM 
  (SELECT "MAS$"."ROWID" "RID$"  ,  "MAS$"."HOTEL_ID", 
  "MAS$"."STAYS_IN_NIGHTS"  FROM "KOZYAR"."BOOKING" "MAS$") AS OF 
  SNAPSHOT(:B_SCN)  "MAS$0" , (SELECT "MAS$"."ROWID" "RID$"  ,  
  "MAS$"."COUNTRY_NAME", "MAS$"."COUNTRY_ID"  FROM "KOZYAR"."COUNTRY" "MAS$") 
  AS OF SNAPSHOT(:B_SCN)  "MAS$1" , (SELECT  "MAS$"."RID$" "RID$"  ,  
  "MAS$"."HOTEL_NAME", "MAS$"."HOTEL_ID", "MAS$"."COUNTRY_ID" , 
  "MAS$"."DML$$" "DML$$"  FROM "TMPDLT$_HOTEL" "MAS$") "DLT$2"  WHERE 
  ("MAS$0"."HOTEL_ID"="DLT$2"."HOTEL_ID" AND "MAS$1"."COUNTRY_ID"=
  "DLT$2"."COUNTRY_ID") GROUP BY "DLT$2"."HOTEL_NAME","MAS$1"."COUNTRY_NAME")
  "AV$" ON (SYS_OP_MAP_NONNULL("SNA$"."HOTEL")=SYS_OP_MAP_NONNULL("AV$"."GB0")
   AND SYS_OP_MAP_NONNULL("SNA$"."COUNTRY")=SYS_OP_MAP_NONNULL("AV$"."GB1")) 
  WHEN MATCHED THEN UPDATE  SET "SNA$"."SUM_NIGHTS"=
  DECODE("SNA$"."SUM_NIGHTS", NULL, DECODE("AV$"."H0", 0, NULL, "AV$"."D0"), 
  ("SNA$"."SUM_NIGHTS" + "AV$"."D0")) WHEN NOT MATCHED THEN INSERT 
  ("SNA$"."HOTEL", "SNA$"."COUNTRY", "SNA$"."SUM_NIGHTS") VALUES ( 
  "AV$"."GB0", "AV$"."GB1", DECODE ("AV$"."H0", 0, NULL, "AV$"."D0"))
   

call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.01          0         15         22           0
Execute      1      0.04       0.02          0         26         66           0
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        2      0.04       0.03          0         41         88           0

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: ALL_ROWS
Parsing user id: 104     (recursive depth: 2)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  MERGE  MOST_POPULAR_HOTEL (cr=3 pr=0 pw=0 time=113 us starts=1)
         0          0          0   VIEW  (cr=3 pr=0 pw=0 time=104 us starts=1)
         0          0          0    NESTED LOOPS OUTER (cr=3 pr=0 pw=0 time=103 us starts=1 cost=6 size=213 card=1)
         0          0          0     VIEW  (cr=3 pr=0 pw=0 time=102 us starts=1 cost=6 size=80 card=1)
         0          0          0      SORT GROUP BY (cr=3 pr=0 pw=0 time=102 us starts=1 cost=6 size=119 card=1)
         0          0          0       NESTED LOOPS  (cr=3 pr=0 pw=0 time=93 us starts=1 cost=5 size=119 card=1)
         0          0          0        NESTED LOOPS  (cr=3 pr=0 pw=0 time=93 us starts=1 cost=5 size=119 card=1)
         0          0          0         HASH JOIN  (cr=3 pr=0 pw=0 time=93 us starts=1 cost=4 size=79 card=1)
         0          0          0          TABLE ACCESS FULL BOOKING (cr=3 pr=0 pw=0 time=34 us starts=1 cost=2 size=26 card=1)
         0          0          0          VIEW  (cr=0 pr=0 pw=0 time=0 us starts=0 cost=2 size=530 card=10)
         0          0          0           RESULT CACHE  111k7ky1mkrp342kt8wdqacgm6 (cr=0 pr=0 pw=0 time=0 us starts=0)
         0          0          0            VIEW  (cr=0 pr=0 pw=0 time=0 us starts=0 cost=2 size=1080 card=10)
         0          0          0             WINDOW SORT (cr=0 pr=0 pw=0 time=0 us starts=0 cost=2 size=2120 card=10)
         0          0          0              TABLE ACCESS BY INDEX ROWID BATCHED MLOG$_HOTEL (cr=0 pr=0 pw=0 time=0 us starts=0 cost=1 size=2120 card=10)
         0          0          0               INDEX RANGE SCAN I_MLOG$_HOTEL (cr=0 pr=0 pw=0 time=0 us starts=0 cost=1 size=0 card=4)(object id 75482)
         0          0          0         INDEX UNIQUE SCAN COUNTRY_ID_PK (cr=0 pr=0 pw=0 time=0 us starts=0 cost=0 size=0 card=1)(object id 75127)
         0          0          0        TABLE ACCESS BY INDEX ROWID COUNTRY (cr=0 pr=0 pw=0 time=0 us starts=0 cost=1 size=40 card=1)
         0          0          0     MAT_VIEW ACCESS BY INDEX ROWID MOST_POPULAR_HOTEL (cr=0 pr=0 pw=0 time=0 us starts=0 cost=0 size=133 card=1)
         0          0          0      INDEX UNIQUE SCAN I_SNAP$_MOST_POPULAR_HOTEL (cr=0 pr=0 pw=0 time=0 us starts=0 cost=0 size=0 card=1)(object id 75489)

********************************************************************************

SQL ID: czyb11u8y9awp Plan Hash: 1103421634

SELECT /* OPT_DYN_SAMP */ /*+ ALL_ROWS IGNORE_WHERE_CLAUSE 
  RESULT_CACHE(SNAPSHOT=3600) opt_param('parallel_execution_enabled', 'false')
   NO_PARALLEL(SAMPLESUB) NO_PARALLEL_INDEX(SAMPLESUB) NO_SQL_TUNE */ 
  NVL(SUM(C1),:"SYS_B_0"), NVL(SUM(C2),:"SYS_B_1") 
FROM
 (SELECT /*+ NO_PARALLEL("MAS$") FULL("MAS$") NO_PARALLEL_INDEX("MAS$") */ 
  :"SYS_B_2" AS C1, :"SYS_B_3" AS C2 FROM "KOZYAR"."MLOG$_HOTEL" "MAS$") 
  SAMPLESUB


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        4      0.00       0.00          0          0          0           0
Execute      4      0.00       0.00          0          0          0           0
Fetch        4      0.00       0.00          0         16          0           4
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total       12      0.00       0.00          0         16          0           4

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: ALL_ROWS
Parsing user id: 104     (recursive depth: 3)
Number of plan statistics captured: 3

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  RESULT CACHE  89u9jpbyarwzxcv0fra1m1cdka (cr=5 pr=0 pw=0 time=55 us starts=1)
         1          0          1   SORT AGGREGATE (cr=5 pr=0 pw=0 time=41 us starts=1)
      1000        333       1000    TABLE ACCESS FULL MLOG$_HOTEL (cr=5 pr=0 pw=0 time=23 us starts=1 cost=2 size=0 card=82)

********************************************************************************

SQL ID: 5zx7bugub0nqg Plan Hash: 13044410

SELECT /* OPT_DYN_SAMP */ /*+ ALL_ROWS IGNORE_WHERE_CLAUSE 
  RESULT_CACHE(SNAPSHOT=3600) opt_param('parallel_execution_enabled', 'false')
   NO_PARALLEL(SAMPLESUB) NO_PARALLEL_INDEX(SAMPLESUB) NO_SQL_TUNE */ 
  NVL(SUM(C1),:"SYS_B_0"), NVL(SUM(C2),:"SYS_B_1"), COUNT(DISTINCT C3), 
  NVL(SUM(CASE WHEN C3 IS NULL THEN :"SYS_B_2" ELSE :"SYS_B_3" END),
  :"SYS_B_4") 
FROM
 (SELECT /*+ NO_PARALLEL("MAS$") FULL("MAS$") NO_PARALLEL_INDEX("MAS$") */ 
  :"SYS_B_5" AS C1, :"SYS_B_6" AS C2, "MAS$"."HOTEL_ID" AS C3 FROM 
  "KOZYAR"."BOOKING" "MAS$") SAMPLESUB


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        4      0.00       0.00          0          0          0           0
Execute      4      0.00       0.00          0          0          0           0
Fetch        4      0.00       0.00          0          0          0           4
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total       12      0.00       0.00          0          0          0           4

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: ALL_ROWS
Parsing user id: 104     (recursive depth: 3)
Number of plan statistics captured: 3

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  RESULT CACHE  dhhvuyz4kf8hq3t8zkdgp11jh3 (cr=0 pr=0 pw=0 time=5 us starts=1)
         0          0          0   SORT AGGREGATE (cr=0 pr=0 pw=0 time=0 us starts=0)
         0          0          0    VIEW  VW_DAG_0 (cr=0 pr=0 pw=0 time=0 us starts=0 cost=3 size=3198 card=82)
         0          0          0     HASH GROUP BY (cr=0 pr=0 pw=0 time=0 us starts=0 cost=3 size=1066 card=82)
         0          0          0      TABLE ACCESS FULL BOOKING (cr=0 pr=0 pw=0 time=0 us starts=0 cost=2 size=1066 card=82)

********************************************************************************

SQL ID: 6gwpng9av3qds Plan Hash: 3975543124

SELECT /* OPT_DYN_SAMP */ /*+ ALL_ROWS IGNORE_WHERE_CLAUSE 
  RESULT_CACHE(SNAPSHOT=3600) opt_param('parallel_execution_enabled', 'false')
   NO_PARALLEL(SAMPLESUB) NO_PARALLEL_INDEX(SAMPLESUB) NO_SQL_TUNE */ 
  NVL(SUM(C1),:"SYS_B_0"), NVL(SUM(C2),:"SYS_B_1"), COUNT(DISTINCT C3), 
  NVL(SUM(CASE WHEN C3 IS NULL THEN :"SYS_B_2" ELSE :"SYS_B_3" END),
  :"SYS_B_4") 
FROM
 (SELECT /*+ NO_PARALLEL("SYS_ALIAS_0001") FULL("SYS_ALIAS_0001") 
  NO_PARALLEL_INDEX("SYS_ALIAS_0001") */ :"SYS_B_5" AS C1, :"SYS_B_6" AS C2, 
  "SYS_ALIAS_0001"."COUNTRY_ID" AS C3 FROM "KOZYAR"."COUNTRY" 
  "SYS_ALIAS_0001") SAMPLESUB


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        6      0.00       0.00          0          0          0           0
Execute      6      0.00       0.00          0          0          0           0
Fetch        6      0.00       0.00          0          0          0           6
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total       18      0.00       0.00          0          0          0           6

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: ALL_ROWS
Parsing user id: 104     (recursive depth: 3)
Number of plan statistics captured: 4

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  RESULT CACHE  cmk12x5jk53nz2q812y8f15vgr (cr=0 pr=0 pw=0 time=4 us starts=1)
         0          0          0   SORT AGGREGATE (cr=0 pr=0 pw=0 time=0 us starts=0)
         0          0          0    VIEW  VW_DAG_0 (cr=0 pr=0 pw=0 time=0 us starts=0 cost=4 size=15951 card=409)
         0          0          0     HASH GROUP BY (cr=0 pr=0 pw=0 time=0 us starts=0 cost=4 size=5317 card=409)
         0          0          0      TABLE ACCESS FULL COUNTRY (cr=0 pr=0 pw=0 time=0 us starts=0 cost=3 size=5317 card=409)

********************************************************************************

SQL ID: 81aj4367ac18z Plan Hash: 2381934836

UPDATE sys.snap$ SET status = :1, rscn = :2, refhnt = :3,         flag = :4, 
  flag3 = :5  
WHERE
 vname = :6 AND sowner = :7 AND instsite = :8


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        2      0.00       0.00          0          0          0           0
Execute      2      0.00       0.00          0          2          2           2
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        4      0.00       0.00          0          2          2           2

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 2

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  UPDATE  SNAP$ (cr=1 pr=0 pw=0 time=36 us starts=1)
         1          1          1   INDEX UNIQUE SCAN I_SNAP1 (cr=1 pr=0 pw=0 time=4 us starts=1 cost=0 size=210 card=1)(object id 875)

********************************************************************************

SQL ID: g7z4n2kpnzw6f Plan Hash: 3866428682

UPDATE sys.snap_reftime$  SET snaptime = :1, loadertime = :2, refscn = :3,    
    fcmaskvec = :4, ejmaskvec = :5, masobj# = :6,     sub_handle = :7, 
  change_view = :8, mowner = :9, master = :10  
WHERE
 sowner = :11 AND vname = :12 AND tablenum = :13 AND instsite = :14


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        2      0.00       0.00          0          0          0           0
Execute      6      0.00       0.00          0          6          6           6
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        8      0.00       0.00          0          6          6           6

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 2

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  UPDATE  SNAP_REFTIME$ (cr=1 pr=0 pw=0 time=25 us starts=1)
         1          1          1   INDEX UNIQUE SCAN I_SNAP_REFTIME1 (cr=1 pr=0 pw=0 time=4 us starts=1 cost=0 size=671 card=1)(object id 879)

********************************************************************************

SQL ID: 7f9sk6wcpy76f Plan Hash: 2384632538

select min(s1.lastrefreshscn)  
from
 sum$ s1, sumdetail$ s2  where s1.obj#= s2.sumobj# and s2.detailobj# = :1 and 
  s1.obj#!= :2


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        2      0.00       0.00          0          0          0           0
Execute      2      0.00       0.00          0          0          0           0
Fetch        2      0.00       0.00          0          2          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        6      0.00       0.00          0          2          0           0

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 2

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  SORT AGGREGATE (cr=1 pr=0 pw=0 time=14 us starts=1)
         0          0          0   NESTED LOOPS  (cr=1 pr=0 pw=0 time=9 us starts=1 cost=1 size=52 card=1)
         0          0          0    NESTED LOOPS  (cr=1 pr=0 pw=0 time=8 us starts=1 cost=1 size=52 card=1)
         0          0          0     TABLE ACCESS BY INDEX ROWID BATCHED SUMDETAIL$ (cr=1 pr=0 pw=0 time=7 us starts=1 cost=1 size=26 card=1)
         0          0          0      INDEX RANGE SCAN I_SUMDETAIL$_2 (cr=1 pr=0 pw=0 time=7 us starts=1 cost=1 size=0 card=1)(object id 1249)
         0          0          0     INDEX UNIQUE SCAN I_SUM$_1 (cr=0 pr=0 pw=0 time=0 us starts=0 cost=0 size=0 card=1)(object id 1246)
         0          0          0    TABLE ACCESS BY INDEX ROWID SUM$ (cr=0 pr=0 pw=0 time=0 us starts=0 cost=0 size=26 card=1)

********************************************************************************

SQL ID: 121ffmrc95v7g Plan Hash: 2007068531

select i.obj#,i.ts#,i.file#,i.block#,i.intcols,i.type#,i.flags,i.property,
  i.pctfree$,i.initrans,i.maxtrans,i.blevel,i.leafcnt,i.distkey,i.lblkkey,
  i.dblkkey,i.clufac,i.cols,i.analyzetime,i.samplesize,i.dataobj#,
  nvl(i.degree,1),nvl(i.instances,1),i.rowcnt,mod(i.pctthres$,256),
  i.indmethod#,i.trunccnt,nvl(c.unicols,0),nvl(c.deferrable#+c.valid#,0),
  nvl(i.spare1,i.intcols),i.spare4,i.spare2,i.spare6,decode(i.pctthres$,null,
  null,mod(trunc(i.pctthres$/256),256)),nvl(i.evaledition#,1),
  nvl(i.unusablebefore#,0),nvl(i.unusablebeginning#,0), ist.cachedblk,
  ist.cachehit,ist.logicalread 
from
 ind$ i, ind_stats$ ist, (select enabled, min(intcols) unicols,
  min(to_number(bitand(defer,1))) deferrable#,min(to_number(bitand(defer,4))) 
  valid# from cdef$ where obj#=:1 and enabled > 1 group by enabled) c where 
  i.obj#=c.enabled(+) and i.obj# = ist.obj#(+) and i.bo#=:1 order by i.obj#


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute     18      0.00       0.00          0          0          0           0
Fetch       43      0.00       0.00          0        128          0          25
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total       62      0.00       0.01          0        128          0          25

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 3)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         2          2          2  SORT ORDER BY (cr=8 pr=0 pw=0 time=510 us starts=1 cost=6 size=181 card=1)
         2          2          2   HASH JOIN OUTER (cr=8 pr=0 pw=0 time=475 us starts=1 cost=5 size=181 card=1)
         2          2          2    JOIN FILTER CREATE :BF0000 (cr=5 pr=0 pw=0 time=38 us starts=1 cost=2 size=138 card=1)
         2          2          2     NESTED LOOPS OUTER (cr=5 pr=0 pw=0 time=24 us starts=1 cost=2 size=138 card=1)
         2          2          2      TABLE ACCESS CLUSTER IND$ (cr=4 pr=0 pw=0 time=17 us starts=1 cost=2 size=86 card=1)
         1          1          1       INDEX UNIQUE SCAN I_OBJ# (cr=2 pr=0 pw=0 time=9 us starts=1 cost=1 size=0 card=1)(object id 3)
         0          0          0      TABLE ACCESS BY INDEX ROWID IND_STATS$ (cr=1 pr=0 pw=0 time=4 us starts=2 cost=0 size=52 card=1)
         0          0          0       INDEX UNIQUE SCAN I_IND_STATS$_OBJ# (cr=1 pr=0 pw=0 time=2 us starts=2 cost=0 size=0 card=1)(object id 76)
         0          0          0    VIEW  (cr=3 pr=0 pw=0 time=28 us starts=1 cost=3 size=172 card=4)
         0          0          0     SORT GROUP BY (cr=3 pr=0 pw=0 time=26 us starts=1 cost=3 size=60 card=4)
         0          0          0      JOIN FILTER USE :BF0000 (cr=3 pr=0 pw=0 time=14 us starts=1 cost=2 size=60 card=4)
         0          0          0       TABLE ACCESS CLUSTER CDEF$ (cr=3 pr=0 pw=0 time=11 us starts=1 cost=2 size=60 card=4)
         1          1          1        INDEX UNIQUE SCAN I_COBJ# (cr=2 pr=0 pw=0 time=5 us starts=1 cost=1 size=0 card=1)(object id 30)

********************************************************************************

SQL ID: g0t052az3rx44 Plan Hash: 3765558045

select name,intcol#,segcol#,type#,length,nvl(precision#,0),decode(type#,2,
  nvl(scale,-127/*MAXSB1MINAL*/),178,scale,179,scale,180,scale,181,scale,182,
  scale,183,scale,231,scale,0),null$,fixedstorage,nvl(deflength,0),default$,
  rowid,col#,property, nvl(charsetid,0),nvl(charsetform,0),spare1,spare2,
  nvl(spare3,0), nvl(evaledition#,1),nvl(unusablebefore#,0),
  nvl(unusablebeginning#,0), case when (type# in (1,8,9,96,112)) then 
  nvl(collid, 16382) else 0 end case, nvl(collintcol#,0), nvl(acdrrescol#, 0),
   nvl(spare7, 0), nvl(spare9, 0), nvl(spare10, 0) 
from
 col$ where obj#=:1 order by intcol#


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute     18      0.00       0.00          0          0          0           0
Fetch      150      0.00       0.00          0         59          0         132
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total      169      0.00       0.00          0         59          0         132

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 3)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
        16         16         16  SORT ORDER BY (cr=4 pr=0 pw=0 time=48 us starts=1 cost=3 size=924 card=14)
        16         16         16   TABLE ACCESS CLUSTER COL$ (cr=4 pr=0 pw=0 time=14 us starts=1 cost=2 size=924 card=14)
         1          1          1    INDEX UNIQUE SCAN I_OBJ# (cr=2 pr=0 pw=0 time=8 us starts=1 cost=1 size=0 card=1)(object id 3)

********************************************************************************

SQL ID: cghj1704ac95h Plan Hash: 4155019366

delete from sumpartlog$ 
where
 bo#=:1 and         ((bitand(flags, 8) = 0 and scn<:2) or          
  (bitand(flags, 8) = 8 and cscn<:2))


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        2      0.00       0.00          0          0          0           0
Execute      2      0.00       0.00          0          2          0           0
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        4      0.00       0.00          0          2          0           0

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 2

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  DELETE  SUMPARTLOG$ (cr=1 pr=0 pw=0 time=8 us starts=1)
         0          0          0   TABLE ACCESS BY INDEX ROWID BATCHED SUMPARTLOG$ (cr=1 pr=0 pw=0 time=5 us starts=1 cost=0 size=78 card=1)
         0          0          0    INDEX RANGE SCAN I_SUMPARTLOG$ (cr=1 pr=0 pw=0 time=5 us starts=1 cost=0 size=0 card=1)(object id 856)

********************************************************************************

SQL ID: 6f0p92vq1g505 Plan Hash: 714987947

update sys.slog$ set snaptime = :1, tscn = :2  
where
 snapid = :3 and mowner = :4 and master = :5


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        9      0.00       0.00          0          0          0           0
Execute      9      0.00       0.00          0         36         45           9
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total       18      0.00       0.00          0         36         45           9

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 3

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  UPDATE  SLOG$ (cr=4 pr=0 pw=0 time=113 us starts=1)
         1          1          1   TABLE ACCESS BY INDEX ROWID BATCHED SLOG$ (cr=4 pr=0 pw=0 time=19 us starts=1 cost=0 size=167 card=1)
         3          3          3    INDEX FULL SCAN I_SLOG1 (cr=1 pr=0 pw=0 time=7 us starts=1 cost=0 size=0 card=1)(object id 869)

********************************************************************************

SQL ID: 7v0nyhn8g1ys2 Plan Hash: 3925693735

SELECT NVL(SUM(DBMS_ROWID.ROWID_BLOCK_NUMBER(HIGHROWID) -                  
  DBMS_ROWID.ROWID_BLOCK_NUMBER(LOWROWID) + 1), 0)  cnt1,         COUNT(*) 
  cnt2, MIN(LOWROWID) minrid, MAX(HIGHROWID) maxrid  
FROM
 ALL_SUMDELTA DL$  WHERE DL$.TABLEOBJ# = :1 AND DL$.XID = :2


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        9      0.00       0.00          0          0          0           0
Execute      9      0.00       0.00          0          0          0           0
Fetch       18      0.00       0.00          0          9          0           9
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total       36      0.00       0.00          0          9          0           9

Misses in library cache during parse: 0
Optimizer mode: ALL_ROWS
Parsing user id: 104     (recursive depth: 2)
Number of plan statistics captured: 3

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  SORT AGGREGATE (cr=1 pr=0 pw=0 time=15 us starts=1)
         0          0          0   FILTER  (cr=1 pr=0 pw=0 time=7 us starts=1)
         0          0          0    MERGE JOIN CARTESIAN (cr=1 pr=0 pw=0 time=7 us starts=1 cost=2 size=62 card=1)
         0          0          0     TABLE ACCESS BY INDEX ROWID BATCHED SUMDELTA$ (cr=1 pr=0 pw=0 time=5 us starts=1 cost=1 size=50 card=1)
         0          0          0      INDEX RANGE SCAN I_SUMDELTA$ (cr=1 pr=0 pw=0 time=5 us starts=1 cost=2 size=0 card=1)(object id 859)
         0          0          0     BUFFER SORT (cr=0 pr=0 pw=0 time=0 us starts=0 cost=1 size=12 card=1)
         0          0          0      INDEX RANGE SCAN I_OBJ1 (cr=0 pr=0 pw=0 time=0 us starts=0 cost=1 size=12 card=1)(object id 36)
         0          0          0    NESTED LOOPS  (cr=0 pr=0 pw=0 time=0 us starts=0 cost=2 size=44 card=2)
         0          0          0     INDEX RANGE SCAN I_OBJAUTH1 (cr=0 pr=0 pw=0 time=0 us starts=0 cost=2 size=9 card=1)(object id 62)
         0          0          0     FIXED TABLE FULL X$KZSRO (cr=0 pr=0 pw=0 time=0 us starts=0 cost=0 size=26 card=2)
         0          0          0    FIXED TABLE FULL X$KZSPR (cr=0 pr=0 pw=0 time=0 us starts=0 cost=0 size=26 card=1)

********************************************************************************

SQL ID: 9fw00wpqnck0g Plan Hash: 1179876754

SELECT /*+ NO_MERGE(DL$) ROWID(MAS$) ORDERED USE_NL(MAS$) NO_INDEX(MAS$)      
         PQ_DISTRIBUTE(MAS$,RANDOM,NONE) */ COUNT(*) cnt  
FROM
 (         SELECT LOWROWID, HIGHROWID         FROM ALL_SUMDELTA DL$         
  WHERE DL$.TABLEOBJ#= :1 AND DL$.XID = :2       ) DL$,       
  "KOZYAR"."BOOKING"  MAS$  WHERE MAS$.ROWID BETWEEN DL$.LOWROWID AND 
  DL$.HIGHROWID


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        3      0.00       0.00          0          0          0           0
Execute      3      0.01       0.01          0         30          0           0
Fetch        6      2.62       2.62          0      16383          0           3
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total       12      2.64       2.63          0      16413          0           3

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: ALL_ROWS
Parsing user id: 104     (recursive depth: 2)
Number of plan statistics captured: 3

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  SORT AGGREGATE (cr=5461 pr=0 pw=0 time=874274 us starts=1)
         0          0          0   NESTED LOOPS  (cr=5461 pr=0 pw=0 time=874269 us starts=1 cost=4 size=16 card=1)
         0     666667    1000000    TABLE ACCESS FULL BOOKING (cr=5460 pr=0 pw=0 time=58100 us starts=1 cost=2 size=12 card=1)
         0          0          0    VIEW PUSHED PREDICATE  (cr=1 pr=0 pw=0 time=741890 us starts=0 cost=2 size=4 card=1)
         0          0          0     FILTER  (cr=1 pr=0 pw=0 time=610664 us starts=0)
         0          0          0      MERGE JOIN CARTESIAN (cr=1 pr=0 pw=0 time=483848 us starts=0 cost=2 size=62 card=1)
         0          0          0       TABLE ACCESS BY INDEX ROWID BATCHED SUMDELTA$ (cr=1 pr=0 pw=0 time=216174 us starts=0 cost=1 size=50 card=1)
         0          0          0        INDEX RANGE SCAN I_SUMDELTA$ (cr=1 pr=0 pw=0 time=73617 us starts=0 cost=2 size=0 card=1)(object id 859)
         0          0          0       BUFFER SORT (cr=0 pr=0 pw=0 time=0 us starts=0 cost=1 size=12 card=1)
         0          0          0        INDEX RANGE SCAN I_OBJ1 (cr=0 pr=0 pw=0 time=0 us starts=0 cost=1 size=12 card=1)(object id 36)
         0          0          0      NESTED LOOPS  (cr=0 pr=0 pw=0 time=0 us starts=0 cost=2 size=44 card=2)
         0          0          0       INDEX RANGE SCAN I_OBJAUTH1 (cr=0 pr=0 pw=0 time=0 us starts=0 cost=2 size=9 card=1)(object id 62)
         0          0          0       FIXED TABLE FULL X$KZSRO (cr=0 pr=0 pw=0 time=0 us starts=0 cost=0 size=26 card=2)
         0          0          0      FIXED TABLE FULL X$KZSPR (cr=0 pr=0 pw=0 time=0 us starts=0 cost=0 size=26 card=1)

********************************************************************************

SQL ID: grwydz59pu6mc Plan Hash: 3684871272

select text 
from
 view$ where rowid=:1


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        3      0.00       0.00          0          0          0           0
Execute      3      0.00       0.00          0          0          0           0
Fetch        3      0.00       0.00          0          6          0           3
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        9      0.00       0.00          0          6          0           3

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 3)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  TABLE ACCESS BY USER ROWID VIEW$ (cr=1 pr=0 pw=0 time=21 us starts=1 cost=1 size=15 card=1)

********************************************************************************

SQL ID: 5f9mu1t4193s2 Plan Hash: 727718418

SELECT /* OPT_DYN_SAMP */ /*+ ALL_ROWS IGNORE_WHERE_CLAUSE 
  RESULT_CACHE(SNAPSHOT=3600) opt_param('parallel_execution_enabled', 'false')
   NO_PARALLEL(SAMPLESUB) NO_PARALLEL_INDEX(SAMPLESUB) NO_SQL_TUNE */ 
  NVL(SUM(C1),:"SYS_B_0"), NVL(SUM(C2),:"SYS_B_1"), COUNT(DISTINCT C3), 
  NVL(SUM(CASE WHEN C3 IS NULL THEN :"SYS_B_2" ELSE :"SYS_B_3" END),
  :"SYS_B_4") 
FROM
 (SELECT /*+ NO_PARALLEL("S") FULL("S") NO_PARALLEL_INDEX("S") */ :"SYS_B_5" 
  AS C1, :"SYS_B_6" AS C2, "S"."TABLEOBJ#" AS C3 FROM "SYS"."SUMDELTA$" "S") 
  SAMPLESUB


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse       36      0.00       0.00          0          0          0           0
Execute     36      0.00       0.00          0          0          0           0
Fetch       36      0.00       0.00          0        108          0          36
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total      108      0.00       0.00          0        108          0          36

Misses in library cache during parse: 0
Optimizer mode: ALL_ROWS
Parsing user id: 104     (recursive depth: 3)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  SORT AGGREGATE (cr=3 pr=0 pw=0 time=50 us starts=1)
         0          0          0   VIEW  VW_DAG_0 (cr=3 pr=0 pw=0 time=43 us starts=1 cost=3 size=3198 card=82)
         0          0          0    HASH GROUP BY (cr=3 pr=0 pw=0 time=42 us starts=1 cost=3 size=1066 card=82)
         0          0          0     TABLE ACCESS FULL SUMDELTA$ (cr=3 pr=0 pw=0 time=17 us starts=1 cost=2 size=1066 card=82)

********************************************************************************

SQL ID: bbft4wgk4sm6x Plan Hash: 590630599

SELECT /* OPT_DYN_SAMP */ /*+ ALL_ROWS IGNORE_WHERE_CLAUSE 
  RESULT_CACHE(SNAPSHOT=3600) opt_param('parallel_execution_enabled', 'false')
   NO_PARALLEL(SAMPLESUB) NO_PARALLEL_INDEX(SAMPLESUB) NO_SQL_TUNE */ 
  NVL(SUM(C1),:"SYS_B_0"), NVL(SUM(C2),:"SYS_B_1") 
FROM
 (SELECT /*+ NO_PARALLEL("MAS$") FULL("MAS$") NO_PARALLEL_INDEX("MAS$") */ 
  :"SYS_B_2" AS C1, :"SYS_B_3" AS C2 FROM "KOZYAR"."BOOKING" "MAS$") 
  SAMPLESUB


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        6      0.00       0.00          0          0          0           0
Execute      6      0.00       0.00          0          0          0           0
Fetch        6      0.00       0.00          0          0          0           6
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total       18      0.00       0.00          0          0          0           6

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: ALL_ROWS
Parsing user id: 104     (recursive depth: 3)
Number of plan statistics captured: 3

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  RESULT CACHE  gpdcf4pawcm9v3agjkaxpa61pq (cr=0 pr=0 pw=0 time=3 us starts=1)
         0          0          0   SORT AGGREGATE (cr=0 pr=0 pw=0 time=0 us starts=0)
         0          0          0    TABLE ACCESS FULL BOOKING (cr=0 pr=0 pw=0 time=0 us starts=0 cost=2 size=0 card=82)

********************************************************************************

SQL ID: 9y9gj87n5cf05 Plan Hash: 1913183331

select dmltype$$, count(*) cnt 
from
 "KOZYAR"."MLOG$_BOOKING"  where snaptime$$ > :1 and snaptime$$ <= :2  group 
  by dmltype$$  order by dmltype$$


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        3      0.00       0.00          0          0          0           0
Execute      3      0.00       0.00          0          0          0           0
Fetch        3      0.03       0.03          0      17914          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        9      0.03       0.03          0      17914          0           0

Misses in library cache during parse: 2
Misses in library cache during execute: 2
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 3

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  SORT ORDER BY (cr=5971 pr=0 pw=0 time=12487 us starts=1 cost=0 size=0 card=0)
         0          0          0   SORT GROUP BY (cr=5971 pr=0 pw=0 time=12478 us starts=1)
         0          0          0    TABLE ACCESS FULL MLOG$_BOOKING (cr=5971 pr=0 pw=0 time=12458 us starts=1)

********************************************************************************

SQL ID: axncctz56smzg Plan Hash: 3058698946

SELECT /*+ NO_MERGE(DL$) ROWID(MAS$) ORDERED USE_NL(MAS$) NO_INDEX(MAS$)      
         PQ_DISTRIBUTE(MAS$,RANDOM,NONE) */ COUNT(*) cnt  
FROM
 (         SELECT LOWROWID, HIGHROWID         FROM ALL_SUMDELTA DL$         
  WHERE DL$.TABLEOBJ#= :1 AND DL$.XID = :2       ) DL$,       
  "KOZYAR"."COUNTRY"  MAS$  WHERE MAS$.ROWID BETWEEN DL$.LOWROWID AND 
  DL$.HIGHROWID


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        3      0.00       0.00          0          0          0           0
Execute      3      0.01       0.01          0         36          0           0
Fetch        6      0.00       0.00          0          3          0           3
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total       12      0.01       0.01          0         39          0           3

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: ALL_ROWS
Parsing user id: 104     (recursive depth: 2)
Number of plan statistics captured: 3

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  SORT AGGREGATE (cr=1 pr=0 pw=0 time=12 us starts=1)
         0          0          0   NESTED LOOPS  (cr=1 pr=0 pw=0 time=9 us starts=1 cost=5 size=36 card=1)
         0          0          0    VIEW  (cr=1 pr=0 pw=0 time=8 us starts=1 cost=2 size=24 card=1)
         0          0          0     FILTER  (cr=1 pr=0 pw=0 time=7 us starts=1)
         0          0          0      MERGE JOIN CARTESIAN (cr=1 pr=0 pw=0 time=6 us starts=1 cost=2 size=62 card=1)
         0          0          0       TABLE ACCESS BY INDEX ROWID BATCHED SUMDELTA$ (cr=1 pr=0 pw=0 time=5 us starts=1 cost=1 size=50 card=1)
         0          0          0        INDEX RANGE SCAN I_SUMDELTA$ (cr=1 pr=0 pw=0 time=4 us starts=1 cost=2 size=0 card=1)(object id 859)
         0          0          0       BUFFER SORT (cr=0 pr=0 pw=0 time=0 us starts=0 cost=1 size=12 card=1)
         0          0          0        INDEX RANGE SCAN I_OBJ1 (cr=0 pr=0 pw=0 time=0 us starts=0 cost=1 size=12 card=1)(object id 36)
         0          0          0      NESTED LOOPS  (cr=0 pr=0 pw=0 time=0 us starts=0 cost=2 size=44 card=2)
         0          0          0       INDEX RANGE SCAN I_OBJAUTH1 (cr=0 pr=0 pw=0 time=0 us starts=0 cost=2 size=9 card=1)(object id 62)
         0          0          0       FIXED TABLE FULL X$KZSRO (cr=0 pr=0 pw=0 time=0 us starts=0 cost=0 size=26 card=2)
         0          0          0      FIXED TABLE FULL X$KZSPR (cr=0 pr=0 pw=0 time=0 us starts=0 cost=0 size=26 card=1)
         0          0          0    TABLE ACCESS BY ROWID RANGE COUNTRY (cr=0 pr=0 pw=0 time=0 us starts=0 cost=3 size=12 card=1)

********************************************************************************

SQL ID: cch3s6hnyyhm1 Plan Hash: 355840092

SELECT /* OPT_DYN_SAMP */ /*+ ALL_ROWS IGNORE_WHERE_CLAUSE 
  RESULT_CACHE(SNAPSHOT=3600) opt_param('parallel_execution_enabled', 'false')
   NO_PARALLEL(SAMPLESUB) NO_PARALLEL_INDEX(SAMPLESUB) NO_SQL_TUNE */ 
  NVL(SUM(C1),:"SYS_B_0"), NVL(SUM(C2),:"SYS_B_1") 
FROM
 (SELECT /*+ NO_PARALLEL("MAS$") FULL("MAS$") NO_PARALLEL_INDEX("MAS$") */ 
  :"SYS_B_2" AS C1, :"SYS_B_3" AS C2 FROM "KOZYAR"."COUNTRY" "MAS$") 
  SAMPLESUB


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        6      0.00       0.00          0          0          0           0
Execute      6      0.00       0.00          0          0          0           0
Fetch        6      0.00       0.00          0          0          0           6
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total       18      0.00       0.00          0          0          0           6

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: ALL_ROWS
Parsing user id: 104     (recursive depth: 3)
Number of plan statistics captured: 3

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  RESULT CACHE  484vashstrayn1wkyptwmq838y (cr=0 pr=0 pw=0 time=3 us starts=1)
         0          0          0   SORT AGGREGATE (cr=0 pr=0 pw=0 time=0 us starts=0)
         0          0          0    TABLE ACCESS FULL COUNTRY (cr=0 pr=0 pw=0 time=0 us starts=0 cost=3 size=0 card=409)

********************************************************************************

SQL ID: 7gmckpzq9w3nu Plan Hash: 3070279871

select dmltype$$, count(*) cnt 
from
 "KOZYAR"."MLOG$_COUNTRY"  where snaptime$$ > :1 and snaptime$$ <= :2  group 
  by dmltype$$  order by dmltype$$


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        3      0.00       0.00          0          0          0           0
Execute      3      0.00       0.00          0          0          0           0
Fetch        3      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        9      0.00       0.00          0          0          0           0

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 3

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  SORT ORDER BY (cr=0 pr=0 pw=0 time=16 us starts=1 cost=0 size=0 card=0)
         0          0          0   SORT GROUP BY (cr=0 pr=0 pw=0 time=12 us starts=1)
         0          0          0    TABLE ACCESS FULL MLOG$_COUNTRY (cr=0 pr=0 pw=0 time=5 us starts=1)

********************************************************************************

SQL ID: 33jkk2zrrh3dk Plan Hash: 429586188

SELECT /*+ NO_MERGE(DL$) ROWID(MAS$) ORDERED USE_NL(MAS$) NO_INDEX(MAS$)      
         PQ_DISTRIBUTE(MAS$,RANDOM,NONE) */ COUNT(*) cnt  
FROM
 (         SELECT LOWROWID, HIGHROWID         FROM ALL_SUMDELTA DL$         
  WHERE DL$.TABLEOBJ#= :1 AND DL$.XID = :2       ) DL$,       
  "KOZYAR"."HOTEL"  MAS$  WHERE MAS$.ROWID BETWEEN DL$.LOWROWID AND 
  DL$.HIGHROWID


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        3      0.00       0.00          0          0          0           0
Execute      3      0.01       0.01          0         36          0           0
Fetch        6      0.00       0.00          0          3          0           3
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total       12      0.01       0.01          0         39          0           3

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: ALL_ROWS
Parsing user id: 104     (recursive depth: 2)
Number of plan statistics captured: 3

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  SORT AGGREGATE (cr=1 pr=0 pw=0 time=10 us starts=1)
         0          0          0   NESTED LOOPS  (cr=1 pr=0 pw=0 time=7 us starts=1 cost=5 size=108 card=3)
         0          0          0    VIEW  (cr=1 pr=0 pw=0 time=6 us starts=1 cost=2 size=24 card=1)
         0          0          0     FILTER  (cr=1 pr=0 pw=0 time=5 us starts=1)
         0          0          0      MERGE JOIN CARTESIAN (cr=1 pr=0 pw=0 time=5 us starts=1 cost=2 size=62 card=1)
         0          0          0       TABLE ACCESS BY INDEX ROWID BATCHED SUMDELTA$ (cr=1 pr=0 pw=0 time=4 us starts=1 cost=1 size=50 card=1)
         0          0          0        INDEX RANGE SCAN I_SUMDELTA$ (cr=1 pr=0 pw=0 time=3 us starts=1 cost=2 size=0 card=1)(object id 859)
         0          0          0       BUFFER SORT (cr=0 pr=0 pw=0 time=0 us starts=0 cost=1 size=12 card=1)
         0          0          0        INDEX RANGE SCAN I_OBJ1 (cr=0 pr=0 pw=0 time=0 us starts=0 cost=1 size=12 card=1)(object id 36)
         0          0          0      NESTED LOOPS  (cr=0 pr=0 pw=0 time=0 us starts=0 cost=2 size=44 card=2)
         0          0          0       INDEX RANGE SCAN I_OBJAUTH1 (cr=0 pr=0 pw=0 time=0 us starts=0 cost=2 size=9 card=1)(object id 62)
         0          0          0       FIXED TABLE FULL X$KZSRO (cr=0 pr=0 pw=0 time=0 us starts=0 cost=0 size=26 card=2)
         0          0          0      FIXED TABLE FULL X$KZSPR (cr=0 pr=0 pw=0 time=0 us starts=0 cost=0 size=26 card=1)
         0          0          0    TABLE ACCESS BY ROWID RANGE HOTEL (cr=0 pr=0 pw=0 time=0 us starts=0 cost=3 size=36 card=3)

********************************************************************************

SQL ID: b84g810magqrz Plan Hash: 3055935834

SELECT /* OPT_DYN_SAMP */ /*+ ALL_ROWS IGNORE_WHERE_CLAUSE 
  RESULT_CACHE(SNAPSHOT=3600) opt_param('parallel_execution_enabled', 'false')
   NO_PARALLEL(SAMPLESUB) NO_PARALLEL_INDEX(SAMPLESUB) NO_SQL_TUNE */ 
  NVL(SUM(C1),:"SYS_B_0"), NVL(SUM(C2),:"SYS_B_1") 
FROM
 (SELECT /*+ NO_PARALLEL("MAS$") FULL("MAS$") NO_PARALLEL_INDEX("MAS$") */ 
  :"SYS_B_2" AS C1, :"SYS_B_3" AS C2 FROM "KOZYAR"."HOTEL" "MAS$") SAMPLESUB


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        6      0.00       0.00          0          0          0           0
Execute      6      0.00       0.00          0          0          0           0
Fetch        6      0.00       0.00          0          0          0           6
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total       18      0.00       0.00          0          0          0           6

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: ALL_ROWS
Parsing user id: 104     (recursive depth: 3)
Number of plan statistics captured: 3

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  RESULT CACHE  faccywyn09d64crc9n0dbtzgv7 (cr=0 pr=0 pw=0 time=22 us starts=1)
         0          0          0   SORT AGGREGATE (cr=0 pr=0 pw=0 time=0 us starts=0)
         0          0          0    TABLE ACCESS FULL HOTEL (cr=0 pr=0 pw=0 time=0 us starts=0 cost=2 size=0 card=82)

********************************************************************************

SQL ID: 6n2sr0zn37cnk Plan Hash: 4035637060

select dmltype$$, count(*) cnt 
from
 "KOZYAR"."MLOG$_HOTEL"  where snaptime$$ > :1 and snaptime$$ <= :2  group by 
  dmltype$$  order by dmltype$$


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        3      0.00       0.00          0          0          0           0
Execute      3      0.00       0.00          0          0          0           0
Fetch        3      0.00       0.00          0         63          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        9      0.00       0.00          0         63          0           0

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 3

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  SORT ORDER BY (cr=21 pr=0 pw=0 time=110 us starts=1 cost=0 size=0 card=0)
         0          0          0   SORT GROUP BY (cr=21 pr=0 pw=0 time=106 us starts=1)
         0          0          0    TABLE ACCESS FULL MLOG$_HOTEL (cr=21 pr=0 pw=0 time=100 us starts=1)

********************************************************************************

SQL ID: cczgn99wd591j Plan Hash: 3293419388

SELECT count(*) 
FROM
 sys.snap_loadertime$  WHERE tableobj# = :1 AND rownum = 1


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        9      0.00       0.00          0          0          0           0
Execute      9      0.00       0.00          0          0          0           0
Fetch        9      0.00       0.00          0          9          0           9
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total       27      0.00       0.00          0          9          0           9

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 3

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  SORT AGGREGATE (cr=1 pr=0 pw=0 time=9 us starts=1)
         1          1          1   COUNT STOPKEY (cr=1 pr=0 pw=0 time=7 us starts=1)
         1          1          1    INDEX UNIQUE SCAN I_SNAP_LOADERTIME1 (cr=1 pr=0 pw=0 time=4 us starts=1 cost=0 size=13 card=1)(object id 863)

********************************************************************************

SQL ID: ca59jnaq436jh Plan Hash: 1385365215

UPDATE sys.snap_logdep$ SET snaptime = :1, rscn = :2  
WHERE
 snapid = :3 AND tableobj# = :4


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        9      0.00       0.00          0          0          0           0
Execute      9      0.00       0.00          0         10         11           9
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total       18      0.00       0.00          0         10         11           9

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 3

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  UPDATE  SNAP_LOGDEP$ (cr=1 pr=0 pw=0 time=30 us starts=1)
         1          1          1   INDEX UNIQUE SCAN I_SNAP_LOGDEP1 (cr=1 pr=0 pw=0 time=3 us starts=1 cost=0 size=48 card=1)(object id 861)

********************************************************************************

SQL ID: 3b61kzq77ph71 Plan Hash: 336674935

select DISTINCT d.d_obj# 
from
 dependency$ d, obj$ o where o.obj#= d.d_obj# and o.type#=42 and        
  d.p_obj# = (SELECT o.obj# FROM obj$ o, user$ pu                     WHERE 
  o.owner#=pu.user# and o.name = :1 and                           pu.name = 
  :2 and o.type#=2)


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        9      0.00       0.00          0          0          0           0
Execute      9      0.00       0.00          0         45          0           0
Fetch       18      0.00       0.00          0         72          0           9
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total       36      0.00       0.00          0        117          0           9

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 3

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  SORT UNIQUE (cr=13 pr=0 pw=0 time=62 us starts=1 cost=9 size=19 card=1)
         1          1          1   HASH JOIN  (cr=13 pr=0 pw=0 time=54 us starts=1 cost=8 size=76 card=4)
         1          1          1    NESTED LOOPS  (cr=13 pr=0 pw=0 time=51 us starts=1 cost=8 size=76 card=4)
         2          2          2     STATISTICS COLLECTOR  (cr=9 pr=0 pw=0 time=32 us starts=1)
         2          2          2      TABLE ACCESS BY INDEX ROWID BATCHED DEPENDENCY$ (cr=9 pr=0 pw=0 time=28 us starts=1 cost=4 size=40 card=4)
         2          2          2       INDEX RANGE SCAN I_DEPENDENCY2 (cr=8 pr=0 pw=0 time=24 us starts=1 cost=2 size=0 card=4)(object id 86)
         1          1          1        NESTED LOOPS  (cr=5 pr=0 pw=0 time=18 us starts=1 cost=2 size=51 card=1)
         1          1          1         TABLE ACCESS BY INDEX ROWID USER$ (cr=2 pr=0 pw=0 time=6 us starts=1 cost=1 size=19 card=1)
         1          1          1          INDEX UNIQUE SCAN I_USER1 (cr=1 pr=0 pw=0 time=4 us starts=1 cost=0 size=0 card=1)(object id 46)
         1          1          1         INDEX RANGE SCAN I_OBJ2 (cr=3 pr=0 pw=0 time=9 us starts=1 cost=1 size=32 card=1)(object id 37)
         1          1          1     INDEX RANGE SCAN I_OBJ1 (cr=4 pr=0 pw=0 time=15 us starts=2 cost=1 size=9 card=1)(object id 36)
         0          0          0    INDEX FAST FULL SCAN I_OBJ1 (cr=0 pr=0 pw=0 time=0 us starts=0 cost=1 size=9 card=1)(object id 36)

********************************************************************************

SQL ID: g76xcjp91z49f Plan Hash: 2019104204

select count(*) 
from
 sys.slog$ l  where l.MOWNER = :1 and l.MASTER = :2 and        l.SNAPID not 
  in (select SNAPID from sys.snap$ s                         where  
  bitand(s.flag,64) = 0)


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        9      0.00       0.00          0          0          0           0
Execute      9      0.00       0.00          0          0          0           0
Fetch        9      0.00       0.00          0         54          0           9
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total       27      0.00       0.00          0         54          0           9

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 3

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  SORT AGGREGATE (cr=6 pr=0 pw=0 time=229 us starts=1)
         0          0          0   HASH JOIN ANTI NA (cr=6 pr=0 pw=0 time=226 us starts=1 cost=2 size=171 card=1)
         1          1          1    TABLE ACCESS BY INDEX ROWID BATCHED SLOG$ (cr=4 pr=0 pw=0 time=25 us starts=1 cost=0 size=145 card=1)
         3          3          3     INDEX FULL SCAN I_SLOG1 (cr=1 pr=0 pw=0 time=13 us starts=1 cost=0 size=0 card=1)(object id 869)
         1          1          1    TABLE ACCESS FULL SNAP$ (cr=2 pr=0 pw=0 time=17 us starts=1 cost=2 size=26 card=1)

********************************************************************************

SQL ID: gsqjcvuqv2cgz Plan Hash: 1895754967

delete from "KOZYAR"."MLOG$_BOOKING" 
where
 xid$$ = :1


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        3      0.00       0.00          0          0          0           0
Execute      3      8.35      11.84          0       4994    4109160     1000000
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        6      8.35      11.84          0       4994    4109160     1000000

Misses in library cache during parse: 2
Misses in library cache during execute: 2
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 3

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  DELETE  MLOG$_BOOKING (cr=1665 pr=0 pw=0 time=3949169 us starts=1)
         0     333333    1000000   INDEX RANGE SCAN I_MLOG$_BOOKING (cr=1456 pr=0 pw=0 time=77274 us starts=1)(object id 75486)

********************************************************************************

SQL ID: 101g03rjbwpm8 Plan Hash: 3963144320

UPDATE sys.snap_loadertime$ SET oldest = :1  
WHERE
 tableobj# = :2 AND oldest < :1


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        9      0.00       0.00          0          0          0           0
Execute      9      0.00       0.00          0         18          9           9
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total       18      0.00       0.00          0         18          9           9

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 3

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  UPDATE  SNAP_LOADERTIME$ (cr=2 pr=0 pw=0 time=53 us starts=1)
         1          1          1   TABLE ACCESS BY INDEX ROWID SNAP_LOADERTIME$ (cr=2 pr=0 pw=0 time=11 us starts=1 cost=0 size=22 card=1)
         1          1          1    INDEX UNIQUE SCAN I_SNAP_LOADERTIME1 (cr=1 pr=0 pw=0 time=4 us starts=1 cost=0 size=0 card=1)(object id 863)

********************************************************************************

SQL ID: 0nqb7gc2189ba Plan Hash: 4155019366

DELETE FROM sys.sumpartlog$ sp   
WHERE
 sp.bo# = :1 AND sp.timestamp <= :2


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        9      0.00       0.00          0          0          0           0
Execute      9      0.00       0.00          0          9          0           0
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total       18      0.00       0.00          0          9          0           0

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 3

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  DELETE  SUMPARTLOG$ (cr=1 pr=0 pw=0 time=12 us starts=1)
         0          0          0   TABLE ACCESS BY INDEX ROWID BATCHED SUMPARTLOG$ (cr=1 pr=0 pw=0 time=11 us starts=1 cost=0 size=48 card=1)
         0          0          0    INDEX RANGE SCAN I_SUMPARTLOG$ (cr=1 pr=0 pw=0 time=9 us starts=1 cost=0 size=0 card=1)(object id 856)

********************************************************************************

SQL ID: 45mj9vnf6kkk5 Plan Hash: 2787454261

delete from "KOZYAR"."MLOG$_COUNTRY" 
where
 xid$$ = :1


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        3      0.00       0.00          0          0          0           0
Execute      3      0.00       0.00          0          0          0           0
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        6      0.00       0.00          0          0          0           0

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 3

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  DELETE  MLOG$_COUNTRY (cr=0 pr=0 pw=0 time=2 us starts=1)
         0          0          0   INDEX RANGE SCAN I_MLOG$_COUNTRY (cr=0 pr=0 pw=0 time=1 us starts=1)(object id 75484)

********************************************************************************

SQL ID: 70cyzuhzr4jkw Plan Hash: 3771682250

delete from "KOZYAR"."MLOG$_HOTEL" 
where
 xid$$ = :1


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        3      0.00       0.00          0          0          0           0
Execute      3      0.03       0.02          0         21       9361        3000
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        6      0.03       0.02          0         21       9361        3000

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 3

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  DELETE  MLOG$_HOTEL (cr=7 pr=0 pw=0 time=8398 us starts=1)
      1000       1000       2000   INDEX RANGE SCAN I_MLOG$_HOTEL (cr=6 pr=0 pw=0 time=182 us starts=1)(object id 75482)

********************************************************************************

SQL ID: 9f0j8pj4fvj7h Plan Hash: 3868164852

select  /*+ NOPARALLEL */  count(*), max(scn)  
from
 (        select d.scn scn        from sys.sumdelta$ d, sys.sumdep$ o        
  where o.sumobj# = :1 and o.p_obj# = d.tableobj# and              d.spare1 = 
  0 and d.scn > :2        union all        select m.commit_scn scn        
  from sys.sumdelta$ d, sys.sumdep$ o, sys.snap_xcmt$ m        where 
  o.sumobj# = :1 and o.p_obj# = d.tableobj# and              d.spare1 = 1 and 
  d.xid = m.xid and m.commit_scn > :2        )


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        2      0.00       0.00          0          0          0           0
Execute      2      0.00       0.00          0          0          0           0
Fetch        2      0.00       0.00          0         20          0           2
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        6      0.00       0.00          0         20          0           2

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 2

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  SORT AGGREGATE (cr=10 pr=0 pw=0 time=171 us starts=1)
         0          0          0   VIEW  (cr=10 pr=0 pw=0 time=166 us starts=1 cost=4 size=26 card=2)
         0          0          0    UNION-ALL  (cr=10 pr=0 pw=0 time=165 us starts=1)
         0          0          0     HASH JOIN  (cr=5 pr=0 pw=0 time=130 us starts=1 cost=1 size=65 card=1)
         3          3          3      NESTED LOOPS  (cr=2 pr=0 pw=0 time=35 us starts=1 cost=1 size=65 card=1)
         3          3          3       NESTED LOOPS  (cr=2 pr=0 pw=0 time=33 us starts=1 cost=1 size=65 card=1)
         3          3          3        STATISTICS COLLECTOR  (cr=2 pr=0 pw=0 time=33 us starts=1)
         3          3          3         TABLE ACCESS BY INDEX ROWID BATCHED SUMDEP$ (cr=2 pr=0 pw=0 time=17 us starts=1 cost=0 size=26 card=1)
         3          3          3          INDEX RANGE SCAN I_SUMDEP$_1 (cr=1 pr=0 pw=0 time=10 us starts=1 cost=0 size=0 card=1)(object id 1261)
         0          0          0        INDEX RANGE SCAN I_SUMDELTA$ (cr=0 pr=0 pw=0 time=0 us starts=0 cost=1 size=0 card=1)(object id 859)
         0          0          0       TABLE ACCESS BY INDEX ROWID SUMDELTA$ (cr=0 pr=0 pw=0 time=0 us starts=0 cost=1 size=39 card=1)
         0          0          0      TABLE ACCESS FULL SUMDELTA$ (cr=3 pr=0 pw=0 time=20 us starts=1 cost=1 size=39 card=1)
         0          0          0     HASH JOIN  (cr=5 pr=0 pw=0 time=29 us starts=1 cost=3 size=91 card=1)
         0          0          0      NESTED LOOPS  (cr=5 pr=0 pw=0 time=28 us starts=1 cost=3 size=91 card=1)
         0          0          0       NESTED LOOPS  (cr=5 pr=0 pw=0 time=27 us starts=1 cost=3 size=91 card=1)
         0          0          0        STATISTICS COLLECTOR  (cr=5 pr=0 pw=0 time=26 us starts=1)
         0          0          0         MERGE JOIN CARTESIAN (cr=5 pr=0 pw=0 time=23 us starts=1 cost=2 size=52 card=1)
         3          3          3          TABLE ACCESS BY INDEX ROWID BATCHED SUMDEP$ (cr=2 pr=0 pw=0 time=7 us starts=1 cost=0 size=26 card=1)
         3          3          3           INDEX RANGE SCAN I_SUMDEP$_1 (cr=1 pr=0 pw=0 time=3 us starts=1 cost=0 size=0 card=1)(object id 1261)
         0          0          0          BUFFER SORT (cr=3 pr=0 pw=0 time=15 us starts=3 cost=2 size=858 card=33)
         0          0          0           TABLE ACCESS FULL SNAP_XCMT$ (cr=3 pr=0 pw=0 time=10 us starts=1 cost=2 size=858 card=33)
         0          0          0        INDEX RANGE SCAN I_SUMDELTA$ (cr=0 pr=0 pw=0 time=0 us starts=0 cost=1 size=0 card=1)(object id 859)
         0          0          0       TABLE ACCESS BY INDEX ROWID SUMDELTA$ (cr=0 pr=0 pw=0 time=0 us starts=0 cost=1 size=39 card=1)
         0          0          0      TABLE ACCESS FULL SUMDELTA$ (cr=0 pr=0 pw=0 time=0 us starts=0 cost=1 size=39 card=1)

********************************************************************************

SQL ID: cd3yq6pcqx0p1 Plan Hash: 3787231054

select  count(*), max(scn)   
from
   (select sp.BO#, sp.PMOPTYPE,           case bitand(sp.flags, 8) when 0 
  then sp.scn           else sp.cscn end as scn, sp.flags    from sumpartlog$ 
  sp, sumdep$ sd    where sd.sumobj# = :1 and sd.p_obj# = sp.bo#    group by 
  sp.BO#, sp.PMOPTYPE,             case bitand(sp.flags, 8) when 0 then 
  sp.scn             else sp.cscn end, sp.flags    minus    select sp.BO#, 
  sp.PMOPTYPE,           case bitand(sp.flags, 8) when 0 then sp.scn          
   else sp.cscn end as scn, sp.flags    from sumpartlog$ sp    where sp.bo# 
  not in          (select sk.DETAILOBJ#           from sumkey$ sk           
  where sk.sumobj# = :1          and sk.DETAILCOLFUNCTION in (2,3) )          
   and bitand(sp.flags, 2) != 2          and sp.PMOPTYPE in (2,3,5,7,8)    
  group by sp.BO#, sp.PMOPTYPE,             case bitand(sp.flags, 8) when 0 
  then sp.scn             else sp.cscn end, sp.flags)  where scn > : 2


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        2      0.00       0.00          0          0          0           0
Execute      2      0.00       0.00          0          0          0           0
Fetch        2      0.00       0.00          0          6          0           2
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        6      0.00       0.00          0          6          0           2

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 2

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  SORT AGGREGATE (cr=3 pr=0 pw=0 time=31 us starts=1)
         0          0          0   VIEW  (cr=3 pr=0 pw=0 time=28 us starts=1 cost=6 size=13 card=1)
         0          0          0    MINUS  (cr=3 pr=0 pw=0 time=27 us starts=1)
         0          0          0     SORT UNIQUE NOSORT (cr=3 pr=0 pw=0 time=26 us starts=1 cost=2 size=91 card=1)
         0          0          0      SORT GROUP BY (cr=3 pr=0 pw=0 time=23 us starts=1 cost=2 size=91 card=1)
         0          0          0       NESTED LOOPS  (cr=3 pr=0 pw=0 time=17 us starts=1 cost=0 size=91 card=1)
         0          0          0        NESTED LOOPS  (cr=3 pr=0 pw=0 time=17 us starts=1 cost=0 size=91 card=1)
         3          3          3         TABLE ACCESS BY INDEX ROWID SUMDEP$ (cr=2 pr=0 pw=0 time=13 us starts=1 cost=0 size=26 card=1)
         3          3          3          INDEX RANGE SCAN I_SUMDEP$_1 (cr=1 pr=0 pw=0 time=8 us starts=1 cost=0 size=0 card=1)(object id 1261)
         0          0          0         INDEX RANGE SCAN I_SUMPARTLOG$ (cr=1 pr=0 pw=0 time=3 us starts=3 cost=0 size=0 card=1)(object id 856)
         0          0          0        TABLE ACCESS BY INDEX ROWID SUMPARTLOG$ (cr=0 pr=0 pw=0 time=0 us starts=0 cost=0 size=65 card=1)
         0          0          0     SORT UNIQUE NOSORT (cr=0 pr=0 pw=0 time=0 us starts=0 cost=4 size=104 card=1)
         0          0          0      SORT GROUP BY (cr=0 pr=0 pw=0 time=0 us starts=0 cost=4 size=104 card=1)
         0          0          0       NESTED LOOPS ANTI (cr=0 pr=0 pw=0 time=0 us starts=0 cost=2 size=104 card=1)
         0          0          0        TABLE ACCESS FULL SUMPARTLOG$ (cr=0 pr=0 pw=0 time=0 us starts=0 cost=2 size=65 card=1)
         0          0          0        TABLE ACCESS BY INDEX ROWID SUMKEY$ (cr=0 pr=0 pw=0 time=0 us starts=0 cost=0 size=39 card=1)
         0          0          0         INDEX RANGE SCAN I_SUMKEY$_1 (cr=0 pr=0 pw=0 time=0 us starts=0 cost=0 size=0 card=1)(object id 1255)

********************************************************************************

SQL ID: 0aszhn2ndc5ux Plan Hash: 3952316262

update sum$ set containerobj#=:2,containertype=:3,containernam=:4,
  fullrefreshtim=:5,increfreshtim=:6,lastrefreshscn=:7,lastrefreshdate=:8,
  refreshmode=:9,pflags=:10,mflags=:11,numdetailtab=:12,numaggregates=:13,
  numkeycolumns=:14,numjoins=:15,numinlines=:16,fromoffset=:19,fromlen=:20,
  objcount=:21,metaversion=:22, xpflags=:23,numwhrnodes=:24, numhavnodes=:25, 
  numqbnodes=:26, qbcmarker=:27, markerdty=:28, rw_mode=:29, rw_name=:30, 
  dest_stmt=NULL, src_stmt=NULL, spare1=:31, evaledition#=:33, 
  unusablebefore#=:34, unusablebeginning#=:35 
where
 obj#=:1


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        3      0.00       0.00          0          0          0           0
Execute      3      0.00       0.00          0          3         10           3
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        6      0.00       0.00          0          3         10           3

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 3

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  UPDATE  SUM$ (cr=1 pr=0 pw=0 time=83 us starts=1)
         1          1          1   INDEX UNIQUE SCAN I_SUM$_1 (cr=1 pr=0 pw=0 time=12 us starts=1 cost=0 size=4522 card=1)(object id 1246)

********************************************************************************

SQL ID: 76j80m1tn4w4j Plan Hash: 1521121034

update sumdetail$ set detailobjtype=:3, refreshscn=:5,  detaileut=:6, spare4=
  :7, inline# =:8, dataless =:10,  tabscnctr =:12, flags = :13  
where
 sumobj#=:1 and detailobj#=:2 and detailalias=:4 and        instance# =:9 and 
  qbcid = :11 and        bitand(detaileut, 2147483648) = bitand(:6, 
  2147483648)


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        2      0.00       0.00          0          0          0           0
Execute      2      0.00       0.00          0          4          2           2
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        4      0.00       0.00          0          4          2           2

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 2

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  UPDATE  SUMDETAIL$ (cr=2 pr=0 pw=0 time=56 us starts=1)
         1          1          1   TABLE ACCESS BY INDEX ROWID BATCHED SUMDETAIL$ (cr=2 pr=0 pw=0 time=13 us starts=1 cost=1 size=218 card=1)
         1          1          1    INDEX RANGE SCAN I_SUMDETAIL$_1 (cr=1 pr=0 pw=0 time=5 us starts=1 cost=1 size=0 card=1)(object id 1248)

********************************************************************************

SQL ID: c60ya4yqvc7ds Plan Hash: 259775322

SELECT sys.mv_rf$usagestatseq.nextval 
FROM
 dual


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        3      0.00       0.00          0          0          0           0
Execute      3      0.00       0.00          0          0          0           0
Fetch        3      0.00       0.00          0          0          0           3
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        9      0.00       0.00          0          0          0           3

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 3

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  SEQUENCE  MV_RF$USAGESTATSEQ (cr=0 pr=0 pw=0 time=14 us starts=1)
         1          1          1   FAST DUAL  (cr=0 pr=0 pw=0 time=0 us starts=1 cost=2 size=0 card=1)

********************************************************************************

SQL ID: ajrpvjgsuty14 Plan Hash: 0

INSERT INTO SYS.MV_REFRESH_USAGE_STATS$  (MV_TYPE#, REFRESH_METHOD#, 
  REFRESH_MODE#, OUT_OF_PLACE#, ATOMIC#, COUNT#,   SEQ#)  
VALUES
 (:1, :2, :3, :4, :5, 1, :6)


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        3      0.00       0.00          0          0          0           0
Execute      3      0.00       0.00          0          3          6           3
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        6      0.00       0.00          0          3          6           3

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 3

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  LOAD TABLE CONVENTIONAL  MV_REFRESH_USAGE_STATS$ (cr=1 pr=0 pw=0 time=53 us starts=1)

********************************************************************************

SQL ID: 9w2wpw1sxv2kp Plan Hash: 0

insert into sys.mvref$_run_stats( run_owner_user#, refresh_id, num_mvs_total, 
  num_mvs_current, rollback_seg, atomic_refresh, start_time, end_time, 
  elapsed_time, log_setup_time, log_purge_time, complete_stats_available, 
  number_of_failures, txnflag, on_commit_flag, mviews) 
values
 (:1, :2,  :3, :4, :5, :6, :7, :8, :9, :10, :11, :12, :13, :14, :15, :16)


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute      3      0.00       0.00          0          1          6           3
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        4      0.00       0.00          0          1          6           3

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  LOAD TABLE CONVENTIONAL  MVREF$_RUN_STATS (cr=1 pr=0 pw=0 time=28 us starts=1)

********************************************************************************

SQL ID: 5w02dr3v6z8fb Plan Hash: 0

insert into sys.mvref$_stats( mv_obj#, refresh_id, atomic_refresh, 
  refresh_method, refresh_optimizations, additional_executions, start_time, 
  end_time, elapsed_time, log_setup_time, log_purge_time,  initial_num_rows, 
  final_num_rows, num_steps, refmet, refflg) 
values
 (:1, :2,  :3, :4, :5, :6, :7, :8, :9, :10, :11, :12, :13, :14, :15, :16)


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute      3      0.00       0.00          0          1          3           3
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        4      0.00       0.00          0          1          3           3

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  LOAD TABLE CONVENTIONAL  MVREF$_STATS (cr=1 pr=0 pw=0 time=24 us starts=1)

********************************************************************************

SQL ID: f4afytdmu5nu4 Plan Hash: 0

insert into sys.mvref$_change_stats( tbl_obj#, mv_obj#, refresh_id, 
  num_rows_ins, num_rows_upd, num_rows_del, num_rows_dl_ins, pmops_occurred, 
  pmop_details, num_rows) 
values
 (:1, :2,  :3, :4, :5, :6, :7, :8, :9, :10)


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute      9      0.00       0.00          0          1          9           9
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total       10      0.00       0.00          0          1          9           9

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  LOAD TABLE CONVENTIONAL  MVREF$_CHANGE_STATS (cr=1 pr=0 pw=0 time=17 us starts=1)

********************************************************************************

SQL ID: 6tbg6ydrx9jmm Plan Hash: 0

begin      dbms_irefstats.purge_stats_mv_rp(in_time => :1, in_objnum => :2, 
  in_retention_period => :3);    end; 


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute      3      0.00       0.00          0          0          0           3
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        4      0.00       0.00          0          0          0           3

Misses in library cache during parse: 0
Optimizer mode: ALL_ROWS
Parsing user id: SYS   (recursive depth: 2)
********************************************************************************

SQL ID: 1qcqs19s5mp1s Plan Hash: 2845333568

select distinct s.sowner, s.vname  
from
 sys.snap$ s, sys.snap_reftime$ r where r.masobj# in (75120) and        
  s.sowner = r.sowner and s.vname = r.vname and        s.mowner = r.mowner 
  and s.master = r.master and        bitand(s.flag3, 67108864) = 67108864


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        2      0.00       0.00          0          0          0           0
Execute      2      0.00       0.00          0          0          0           0
Fetch        2      0.00       0.00          0          4          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        6      0.00       0.00          0          4          0           0

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 2

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  SORT UNIQUE (cr=2 pr=0 pw=0 time=40 us starts=1 cost=3 size=554 card=1)
         0          0          0   NESTED LOOPS  (cr=2 pr=0 pw=0 time=32 us starts=1 cost=2 size=554 card=1)
         0          0          0    NESTED LOOPS  (cr=2 pr=0 pw=0 time=31 us starts=1 cost=2 size=554 card=1)
         0          0          0     TABLE ACCESS FULL SNAP$ (cr=2 pr=0 pw=0 time=29 us starts=1 cost=2 size=277 card=1)
         0          0          0     INDEX RANGE SCAN I_SNAP_REFTIME1 (cr=0 pr=0 pw=0 time=0 us starts=0 cost=0 size=0 card=1)(object id 879)
         0          0          0    TABLE ACCESS BY INDEX ROWID SNAP_REFTIME$ (cr=0 pr=0 pw=0 time=0 us starts=0 cost=0 size=277 card=1)

********************************************************************************

SQL ID: 1f0xd1cqqz8n2 Plan Hash: 0

INSERT INTO SESSION_ACTIVITY 
VALUES
('HOTEL', 'INSERT', :B1 )


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute      1      0.00       0.00          0          1          8           1
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        2      0.00       0.00          0          1          8           1

Misses in library cache during parse: 0
Optimizer mode: ALL_ROWS
Parsing user id: 104     (recursive depth: 1)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  LOAD TABLE CONVENTIONAL  SESSION_ACTIVITY (cr=1 pr=0 pw=0 time=199 us starts=1)

********************************************************************************

SQL ID: 5dt7sjr3bazty Plan Hash: 0

INSERT INTO LOG_TABLE 
VALUES
 (SYSTIMESTAMP, :B4 , :B3 , :B2 , :B1 )


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        3      0.00       0.00          0          0          0           0
Execute      3      0.01       0.00          2          6         40           3
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        6      0.01       0.00          2          6         40           3

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: ALL_ROWS
Parsing user id: 104     (recursive depth: 1)
Number of plan statistics captured: 3

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  LOAD TABLE CONVENTIONAL  LOG_TABLE (cr=2 pr=1 pw=0 time=304 us starts=1)

********************************************************************************

SQL ID: gmv2xk875vkrw Plan Hash: 1072382624

select owner#, status, name 
from
 obj$ o where obj# = :1


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute      1      0.00       0.00          0          0          0           0
Fetch        1      0.00       0.00          0          3          0           1
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        3      0.00       0.00          0          3          0           1

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  TABLE ACCESS BY INDEX ROWID BATCHED OBJ$ (cr=3 pr=0 pw=0 time=25 us starts=1 cost=3 size=31 card=1)
         1          1          1   INDEX RANGE SCAN I_OBJ1 (cr=2 pr=0 pw=0 time=17 us starts=1 cost=2 size=0 card=1)(object id 36)

********************************************************************************

SQL ID: gmq9sq8bw3wxg Plan Hash: 1388734953

SELECT (SYSDATE - :B2 ) / :B1 
FROM
 DUAL


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute      1      0.00       0.00          0          0          0           0
Fetch        1      0.00       0.00          0          0          0           1
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        3      0.00       0.00          0          0          0           1

Misses in library cache during parse: 0
Optimizer mode: ALL_ROWS
Parsing user id: 104     (recursive depth: 1)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  FAST DUAL  (cr=0 pr=0 pw=0 time=0 us starts=1 cost=2 size=0 card=1)

********************************************************************************

SQL ID: 9w26qwzwxz962 Plan Hash: 3055935834

SELECT /* OPT_DYN_SAMP */ /*+ ALL_ROWS IGNORE_WHERE_CLAUSE 
  RESULT_CACHE(SNAPSHOT=3600) opt_param('parallel_execution_enabled', 'false')
   NO_PARALLEL(SAMPLESUB) NO_PARALLEL_INDEX(SAMPLESUB) NO_SQL_TUNE */ 
  NVL(SUM(C1),:"SYS_B_0"), NVL(SUM(C2),:"SYS_B_1") 
FROM
 (SELECT /*+ NO_PARALLEL("HOTEL") FULL("HOTEL") NO_PARALLEL_INDEX("HOTEL") */ 
  :"SYS_B_2" AS C1, :"SYS_B_3" AS C2 FROM "KOZYAR"."HOTEL" "HOTEL") SAMPLESUB


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        2      0.00       0.00          0          0          0           0
Execute      2      0.00       0.00          0          0          0           0
Fetch        2      0.00       0.00          0          0          0           2
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        6      0.00       0.00          0          0          0           2

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: ALL_ROWS
Parsing user id: 104     (recursive depth: 2)
Number of plan statistics captured: 2

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  RESULT CACHE  gjrgzm6jy2p4u1x9vq0x08y2h2 (cr=0 pr=0 pw=0 time=8 us starts=1)
         0          0          0   SORT AGGREGATE (cr=0 pr=0 pw=0 time=0 us starts=0)
         0          0          0    TABLE ACCESS FULL HOTEL (cr=0 pr=0 pw=0 time=0 us starts=0 cost=2 size=0 card=82)

********************************************************************************

SQL ID: 41a2qa5wu0bk5 Plan Hash: 2733414593

SELECT MAX(HOTEL_ID) 
FROM
 HOTEL


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          2          2           0
Execute      1      0.00       0.00          0          0          0           0
Fetch        1      0.00       0.00          0          2          0           1
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        3      0.00       0.00          0          4          2           1

Misses in library cache during parse: 1
Optimizer mode: ALL_ROWS
Parsing user id: 104     (recursive depth: 1)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  SORT AGGREGATE (cr=2 pr=0 pw=0 time=16 us starts=1)
         1          1          1   INDEX FULL SCAN (MIN/MAX) HOTEL_ID_PK (cr=2 pr=0 pw=0 time=11 us starts=1 cost=2 size=13 card=1)(object id 75121)

********************************************************************************

SQL ID: dm5d0mprdnatw Plan Hash: 953926429

SELECT MAX(ROOM_TYPE_ID) 
FROM
 ROOM


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute      1      0.00       0.00          0          0          0           0
Fetch        1      0.00       0.00          0          1          0           1
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        3      0.00       0.00          0          1          0           1

Misses in library cache during parse: 0
Optimizer mode: ALL_ROWS
Parsing user id: 104     (recursive depth: 1)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  SORT AGGREGATE (cr=1 pr=0 pw=0 time=6 us starts=1)
         1          1          1   INDEX FULL SCAN (MIN/MAX) ROOM_TYPE_ID_PK (cr=1 pr=0 pw=0 time=4 us starts=1 cost=2 size=13 card=1)(object id 75129)

********************************************************************************

SQL ID: d4t9xf34gy3zw Plan Hash: 1388734953

SELECT (:B3 - :B2 ) / :B1 
FROM
 DUAL


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute      1      0.00       0.00          0          0          0           0
Fetch        1      0.00       0.00          0          0          0           1
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        3      0.00       0.00          0          0          0           1

Misses in library cache during parse: 0
Optimizer mode: ALL_ROWS
Parsing user id: 104     (recursive depth: 1)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  FAST DUAL  (cr=0 pr=0 pw=0 time=0 us starts=1 cost=2 size=0 card=1)

********************************************************************************

SQL ID: 7g7406u70qd7s Plan Hash: 0

INSERT INTO BOOKING 
VALUES
 (:B9 , DECODE(TRUNC(DBMS_RANDOM.VALUE(1, 6)), 1, 0, 2, 0, 3, 0, 4, 0, 5, 1), 
  TRUNC(DBMS_RANDOM.VALUE(20, 250)), :B8 , TRUNC(DBMS_RANDOM.VALUE(1, 21)), 
  :B1 , TRUNC(DBMS_RANDOM.VALUE(1, 3)), TRUNC(DBMS_RANDOM.VALUE(0, 2)), :B7 , 
  :B6 , :B5 , :B4 , :B3 , TRUNC(DBMS_RANDOM.VALUE(1, 500)), :B2 , 
  TRUNC(DBMS_RANDOM.VALUE(0, :B1 + 1)) )


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute 1000000    178.56     178.90          2       9107    1079106     1000000
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total   1000001    178.56     178.90          2       9107    1079106     1000000

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: ALL_ROWS
Parsing user id: 104     (recursive depth: 1)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  LOAD TABLE CONVENTIONAL  BOOKING (cr=63 pr=2 pw=0 time=7784 us starts=1)

********************************************************************************

SQL ID: ftj9uawt4wwzb Plan Hash: 1884964958

select condition 
from
 cdef$ where rowid=:1


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        2      0.00       0.00          0          0          0           0
Execute      2      0.00       0.00          0          0          0           0
Fetch        2      0.00       0.00          0          4          0           2
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        6      0.00       0.00          0          4          0           2

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  TABLE ACCESS BY USER ROWID CDEF$ (cr=1 pr=0 pw=0 time=3 us starts=1 cost=1 size=15 card=1)

********************************************************************************

SQL ID: a8vbsd73jctvm Plan Hash: 4134209399

select d.sumobj#, s.zmapscale, decode(bitand(d.flags, 2), 2, 1, 0) isfact 
from
 sys.sumdetail$ d, sys.sum$ s where d.sumobj# = s.obj# and bitand(s.xpflags, 
  34359738368) = 34359738368 and d.detailobj# = :1 order by 1


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        3      0.00       0.00          0          0          0           0
Execute      3      0.00       0.00          0          0          0           0
Fetch        3      0.00       0.00          0          6          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        9      0.00       0.00          0          6          0           0

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 3

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  NESTED LOOPS  (cr=2 pr=0 pw=0 time=22 us starts=1 cost=0 size=78 card=1)
         0          0          0   NESTED LOOPS  (cr=2 pr=0 pw=0 time=20 us starts=1 cost=0 size=78 card=1)
         0          0          0    TABLE ACCESS BY INDEX ROWID SUM$ (cr=2 pr=0 pw=0 time=20 us starts=1 cost=0 size=39 card=1)
         1          1          1     INDEX FULL SCAN I_SUM$_1 (cr=1 pr=0 pw=0 time=12 us starts=1 cost=0 size=0 card=1)(object id 1246)
         0          0          0    INDEX RANGE SCAN I_SUMDETAIL$_1 (cr=0 pr=0 pw=0 time=0 us starts=0 cost=0 size=0 card=1)(object id 1248)
         0          0          0   TABLE ACCESS BY INDEX ROWID SUMDETAIL$ (cr=0 pr=0 pw=0 time=0 us starts=0 cost=0 size=39 card=1)

********************************************************************************

SQL ID: 95j6w500nknq6 Plan Hash: 1333514192

INSERT /*+ NO_DST_UPGRADE_INSERT_CONV IDX(0) */ INTO "KOZYAR"."MLOG$_BOOKING" 
  (dmltype$$,old_new$$,snaptime$$,change_vector$$,xid$$,sequence$$,m_row$$,
  "HOTEL_ID","STAYS_IN_NIGHTS") 
VALUES
 (:d,:o,to_date('4000-01-01:00:00:00','YYYY-MM-DD:HH24:MI:SS'),:c,:x,
  sys.cdc_rsid_seq$.nextval,:m,:1,:2)


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute 1000000     26.07      29.24          0      21518    4096161     1000000
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total   1000001     26.07      29.24          0      21518    4096161     1000000

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  LOAD TABLE CONVENTIONAL  MLOG$_BOOKING (cr=4 pr=0 pw=0 time=258 us starts=1)
         1          1          1   SEQUENCE  CDC_RSID_SEQ$ (cr=0 pr=0 pw=0 time=9 us starts=1)

********************************************************************************

SQL ID: 95nx0kvvb2r8m Plan Hash: 3312860272

select indmethod# 
from
 ind$ where obj#=:1


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        3      0.00       0.00          0          0          0           0
Execute      3      0.00       0.00          0          0          0           0
Fetch        3      0.00       0.00          0          9          0           3
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        9      0.00       0.00          0          9          0           3

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 3)
Number of plan statistics captured: 2

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  TABLE ACCESS BY INDEX ROWID IND$ (cr=3 pr=0 pw=0 time=17 us starts=1 cost=2 size=7 card=1)
         1          1          1   INDEX UNIQUE SCAN I_IND1 (cr=2 pr=0 pw=0 time=11 us starts=1 cost=1 size=0 card=1)(object id 41)

********************************************************************************

SQL ID: 3axxxnjp5jjwj Plan Hash: 1596536394

delete from ind_stats$ 
where
 obj#=:1


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        3      0.00       0.00          0          0          0           0
Execute      3      0.00       0.00          0          3          0           0
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        6      0.00       0.00          0          3          0           0

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 3)
Number of plan statistics captured: 2

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  DELETE  IND_STATS$ (cr=1 pr=0 pw=0 time=3 us starts=1)
         0          0          0   INDEX UNIQUE SCAN I_IND_STATS$_OBJ# (cr=1 pr=0 pw=0 time=3 us starts=1 cost=0 size=13 card=1)(object id 76)

********************************************************************************

SQL ID: 7ug26gsddtymh Plan Hash: 1150674808

select s.sowner, s.vname, s.flag2, s.flag3 
from
 snap$ s, (select distinct sowner, vname from snap_reftime$ where instsite=0  
   start with masobj# in (75386) connect by prior sowner = mowner and   prior 
  vname = master) v   where s.sowner=v.sowner and s.vname=v.vname and 
  bitand(s.flag,32768)!=0


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute      1      0.00       0.00          0          0          0           0
Fetch        2      0.00       0.00          0          4          0           1
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        4      0.00       0.00          0          4          0           1

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  NESTED LOOPS  (cr=4 pr=0 pw=0 time=168 us starts=1 cost=3 size=303 card=1)
         1          1          1   NESTED LOOPS  (cr=3 pr=0 pw=0 time=151 us starts=1 cost=3 size=303 card=1)
         1          1          1    VIEW  (cr=2 pr=0 pw=0 time=139 us starts=1 cost=3 size=132 card=1)
         1          1          1     SORT UNIQUE (cr=2 pr=0 pw=0 time=136 us starts=1 cost=3 size=277 card=1)
         1          1          1      FILTER  (cr=2 pr=0 pw=0 time=118 us starts=1)
         1          1          1       CONNECT BY NO FILTERING WITH SW (UNIQUE) (cr=2 pr=0 pw=0 time=116 us starts=1)
         3          3          3        TABLE ACCESS FULL SNAP_REFTIME$ (cr=2 pr=0 pw=0 time=63 us starts=1 cost=2 size=290 card=1)
         1          1          1    INDEX RANGE SCAN I_SNAP1 (cr=1 pr=0 pw=0 time=7 us starts=1 cost=0 size=0 card=1)(object id 875)
         1          1          1   TABLE ACCESS BY INDEX ROWID SNAP$ (cr=1 pr=0 pw=0 time=20 us starts=1 cost=0 size=171 card=1)

********************************************************************************

SQL ID: 90ngsfb6rdghn Plan Hash: 1397588387

SELECT DISTINCT s.sowner, s.vname, s.auto_fast, o.obj#, r.masobj# 
FROM
 snap_reftime$ r, snap$ s, obj$ o, user$ u WHERE r.vname=s.vname AND r.sowner=
  s.sowner and o.type#=42 AND        o.name=s.vname AND o.owner#= u.user# AND 
  s.sowner=u.name AND        bitand(s.flag,32768)!=0 AND r.masobj# IN (75386) 
  ORDER BY obj# 


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute      1      0.00       0.00          0          0          0           0
Fetch        2      0.00       0.00          0          9          0           1
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        4      0.00       0.00          0          9          0           1

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  SORT UNIQUE (cr=9 pr=0 pw=0 time=69 us starts=1 cost=4 size=343 card=1)
         1          1          1   HASH JOIN  (cr=9 pr=0 pw=0 time=63 us starts=1 cost=3 size=343 card=1)
         1          1          1    NESTED LOOPS  (cr=9 pr=0 pw=0 time=61 us starts=1 cost=3 size=343 card=1)
         1          1          1     STATISTICS COLLECTOR  (cr=6 pr=0 pw=0 time=49 us starts=1)
         1          1          1      NESTED LOOPS  (cr=6 pr=0 pw=0 time=39 us starts=1 cost=2 size=311 card=1)
         1          1          1       NESTED LOOPS  (cr=4 pr=0 pw=0 time=40 us starts=1 cost=2 size=292 card=1)
         1          1          1        TABLE ACCESS FULL SNAP_REFTIME$ (cr=2 pr=0 pw=0 time=27 us starts=1 cost=2 size=145 card=1)
         1          1          1        TABLE ACCESS BY INDEX ROWID BATCHED SNAP$ (cr=2 pr=0 pw=0 time=11 us starts=1 cost=0 size=147 card=1)
         1          1          1         INDEX RANGE SCAN I_SNAP1 (cr=1 pr=0 pw=0 time=4 us starts=1 cost=0 size=0 card=1)(object id 875)
         1          1          1       TABLE ACCESS BY INDEX ROWID USER$ (cr=2 pr=0 pw=0 time=4 us starts=1 cost=0 size=19 card=1)
         1          1          1        INDEX UNIQUE SCAN I_USER1 (cr=1 pr=0 pw=0 time=4 us starts=1 cost=0 size=0 card=1)(object id 46)
         1          1          1     INDEX RANGE SCAN I_OBJ2 (cr=3 pr=0 pw=0 time=12 us starts=1 cost=1 size=32 card=1)(object id 37)
         0          0          0    INDEX FAST FULL SCAN I_OBJ5 (cr=0 pr=0 pw=0 time=0 us starts=0 cost=1 size=32 card=1)(object id 40)

********************************************************************************

SQL ID: 42r6x46hpcd3p Plan Hash: 1397588387

SELECT DISTINCT s.sowner, s.vname, s.auto_fast, o.obj#, r.masobj#  
FROM
 snap_reftime$ r, snap$ s, obj$ o, user$ u WHERE r.vname=s.vname AND r.sowner=
  s.sowner AND o.type#=2 AND        o.name=s.vname AND o.owner#= u.user# AND 
  s.sowner=u.name AND        bitand(s.flag,32768)!=0 AND bitand(s.objflag,
  536870912)!=0 AND        bitand(s.flag3,134217728)!=0 AND r.masobj# IN 
  (75386) ORDER BY obj# 


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute      1      0.00       0.00          0          0          0           0
Fetch        1      0.00       0.00          0          4          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        3      0.00       0.00          0          4          0           0

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  SORT UNIQUE (cr=4 pr=0 pw=0 time=32 us starts=1 cost=4 size=369 card=1)
         0          0          0   HASH JOIN  (cr=4 pr=0 pw=0 time=28 us starts=1 cost=3 size=369 card=1)
         0          0          0    NESTED LOOPS  (cr=4 pr=0 pw=0 time=26 us starts=1 cost=3 size=369 card=1)
         0          0          0     STATISTICS COLLECTOR  (cr=4 pr=0 pw=0 time=25 us starts=1)
         0          0          0      NESTED LOOPS  (cr=4 pr=0 pw=0 time=24 us starts=1 cost=2 size=337 card=1)
         0          0          0       NESTED LOOPS  (cr=4 pr=0 pw=0 time=23 us starts=1 cost=2 size=318 card=1)
         1          1          1        TABLE ACCESS FULL SNAP_REFTIME$ (cr=2 pr=0 pw=0 time=12 us starts=1 cost=2 size=145 card=1)
         0          0          0        TABLE ACCESS BY INDEX ROWID BATCHED SNAP$ (cr=2 pr=0 pw=0 time=7 us starts=1 cost=0 size=173 card=1)
         1          1          1         INDEX RANGE SCAN I_SNAP1 (cr=1 pr=0 pw=0 time=4 us starts=1 cost=0 size=0 card=1)(object id 875)
         0          0          0       TABLE ACCESS BY INDEX ROWID USER$ (cr=0 pr=0 pw=0 time=0 us starts=0 cost=0 size=19 card=1)
         0          0          0        INDEX UNIQUE SCAN I_USER1 (cr=0 pr=0 pw=0 time=0 us starts=0 cost=0 size=0 card=1)(object id 46)
         0          0          0     INDEX RANGE SCAN I_OBJ2 (cr=0 pr=0 pw=0 time=0 us starts=0 cost=1 size=32 card=1)(object id 37)
         0          0          0    INDEX FAST FULL SCAN I_OBJ5 (cr=0 pr=0 pw=0 time=0 us starts=0 cost=1 size=32 card=1)(object id 40)

********************************************************************************

SQL ID: 1uhjfhj78jqtx Plan Hash: 2845333568

select distinct s.sowner, s.vname  
from
 sys.snap$ s, sys.snap_reftime$ r where r.masobj# in (75386) and        
  s.sowner = r.sowner and s.vname = r.vname and        bitand(s.flag3, 
  67108864) = 67108864


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute      1      0.00       0.00          0          0          0           0
Fetch        1      0.00       0.00          0          2          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        3      0.00       0.00          0          2          0           0

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  SORT UNIQUE (cr=2 pr=0 pw=0 time=18 us starts=1 cost=3 size=290 card=1)
         0          0          0   NESTED LOOPS  (cr=2 pr=0 pw=0 time=14 us starts=1 cost=2 size=290 card=1)
         0          0          0    NESTED LOOPS  (cr=2 pr=0 pw=0 time=13 us starts=1 cost=2 size=290 card=1)
         0          0          0     TABLE ACCESS FULL SNAP$ (cr=2 pr=0 pw=0 time=13 us starts=1 cost=2 size=145 card=1)
         0          0          0     INDEX RANGE SCAN I_SNAP_REFTIME1 (cr=0 pr=0 pw=0 time=0 us starts=0 cost=0 size=0 card=1)(object id 879)
         0          0          0    TABLE ACCESS BY INDEX ROWID SNAP_REFTIME$ (cr=0 pr=0 pw=0 time=0 us starts=0 cost=0 size=145 card=1)

********************************************************************************

SQL ID: 4fkpv3mt8my9w Plan Hash: 4758086

SELECT tname, snapid, flag, flag2, status, master_version,        tables, 
  lobmaskvec, query_len, mas_roll_seg,         mlink, snapshot, auto_fun, 
  uslog, NVL(rscn, 0), refhnt, objflag,        auto_fast,         
  sna_type_oid, sna_type_hashcode, sna_type_owner, sna_type_name,         
  mas_type_oid, mas_type_hashcode, mas_type_owner, mas_type_name,         
  syn_count, flag3, eval_edition, flag4  
FROM
 sys.snap$ WHERE sowner = :1 and vname = :2 and instsite = :3


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        3      0.00       0.00          0          0          0           0
Execute      3      0.00       0.00          0          0          0           0
Fetch        3      0.00       0.00          0          6          0           3
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        9      0.00       0.00          0          6          0           3

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 3

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  TABLE ACCESS BY INDEX ROWID SNAP$ (cr=2 pr=0 pw=0 time=8 us starts=1 cost=0 size=1190 card=1)
         1          1          1   INDEX UNIQUE SCAN I_SNAP1 (cr=1 pr=0 pw=0 time=3 us starts=1 cost=0 size=0 card=1)(object id 875)

********************************************************************************

SQL ID: 8m69huks3nvt4 Plan Hash: 3887014925

select dmltype$$ 
from
 "KOZYAR"."MLOG$_BOOKING"  where xid$$ = :1  group by dmltype$$


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute      1      0.00       0.00          0          0          0           0
Fetch        2      0.28       0.27          0      13063          0           1
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        4      0.28       0.27          0      13063          0           1

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 3)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  SORT GROUP BY (cr=13063 pr=0 pw=0 time=274289 us starts=1)
   1000000    1000000    1000000   TABLE ACCESS BY INDEX ROWID MLOG$_BOOKING (cr=13063 pr=0 pw=0 time=304686 us starts=1)
   1000000    1000000    1000000    INDEX RANGE SCAN I_MLOG$_BOOKING (cr=4367 pr=0 pw=0 time=108083 us starts=1)(object id 75486)

********************************************************************************

SQL ID: a7qxnf0gcb7vt Plan Hash: 3656921454

select null 
from
 ind$ i, obj$ o, user$ u   where i.bo#=o.obj# and i.type#=9 and o.name=:1     
  and o.owner# = u.user# and u.name= :2


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        2      0.00       0.00          0          0          0           0
Execute      2      0.00       0.00          0          0          0           0
Fetch        2      0.00       0.00          0         20          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        6      0.00       0.00          0         20          0           0

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 3)
Number of plan statistics captured: 2

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  HASH JOIN  (cr=10 pr=0 pw=0 time=59 us starts=1 cost=3 size=55 card=1)
         0          0          0   NESTED LOOPS  (cr=10 pr=0 pw=0 time=55 us starts=1 cost=3 size=55 card=1)
         2          2          2    STATISTICS COLLECTOR  (cr=5 pr=0 pw=0 time=38 us starts=1)
         2          2          2     NESTED LOOPS  (cr=5 pr=0 pw=0 time=23 us starts=1 cost=2 size=47 card=1)
         1          1          1      TABLE ACCESS BY INDEX ROWID USER$ (cr=2 pr=0 pw=0 time=12 us starts=1 cost=1 size=19 card=1)
         1          1          1       INDEX UNIQUE SCAN I_USER1 (cr=1 pr=0 pw=0 time=8 us starts=1 cost=0 size=0 card=1)(object id 46)
         2          2          2      INDEX RANGE SCAN I_OBJ2 (cr=3 pr=0 pw=0 time=10 us starts=1 cost=1 size=28 card=1)(object id 37)
         0          0          0    TABLE ACCESS CLUSTER IND$ (cr=5 pr=0 pw=0 time=14 us starts=2 cost=1 size=8 card=1)
         1          1          1     INDEX UNIQUE SCAN I_OBJ# (cr=4 pr=0 pw=0 time=6 us starts=2 cost=0 size=0 card=1)(object id 3)
         0          0          0   TABLE ACCESS BY INDEX ROWID BATCHED IND$ (cr=0 pr=0 pw=0 time=0 us starts=0 cost=1 size=8 card=1)
         0          0          0    INDEX FULL SCAN I_IND1 (cr=0 pr=0 pw=0 time=0 us starts=0 cost=0 size=0 card=1)(object id 41)

********************************************************************************

SQL ID: dcrvmtmjayma5 Plan Hash: 2336291866

SELECT credential_type# 
FROM
 proxy_info$ WHERE client# = :1 AND proxy# = :2


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse       10      0.00       0.00          0          0          0           0
Execute     10      0.00       0.00          0          0          0           0
Fetch       10      0.00       0.00          0         10          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total       30      0.00       0.00          0         10          0           0

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 3)
Number of plan statistics captured: 2

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  TABLE ACCESS BY INDEX ROWID PROXY_INFO$ (cr=1 pr=0 pw=0 time=7 us starts=1 cost=0 size=39 card=1)
         0          0          0   INDEX UNIQUE SCAN I_PROXY_INFO$ (cr=1 pr=0 pw=0 time=6 us starts=1 cost=0 size=0 card=1)(object id 609)

********************************************************************************

SQL ID: 7b456vkq692yn Plan Hash: 0

SELECT /*+ RESULT_CACHE(LIFETIME=SESSION, NAME="DMLTYPES:MLOG$_BOOKING") */ 
  "MAS$"."RID$" "RID$" , "MAS$"."HOTEL_ID", "MAS$"."STAYS_IN_NIGHTS", 
  DECODE("MAS$"."OLD_NEW$$", 'N', 'I', 'D') "DML$$", "MAS$"."OLD_NEW$$" 
  "OLD_NEW$$",  "MAS$"."DMLTYPE$$" "DMLTYPE$$" 
FROM
 (SELECT "MAS$".*, MIN("MAS$"."SEQ$$") OVER (PARTITION BY "MAS$"."RID$") 
  "MINSEQ$$", MAX("MAS$"."SEQ$$") OVER (PARTITION BY "MAS$"."RID$") 
  "MAXSEQ$$" FROM (SELECT  CHARTOROWID("MAS$"."M_ROW$$") RID$  ,  
  "MAS$"."HOTEL_ID", "MAS$"."STAYS_IN_NIGHTS"  , DECODE("MAS$".OLD_NEW$$, 'N',
   'I', 'D') DML$$, "MAS$"."DMLTYPE$$" "DMLTYPE$$", "MAS$"."SEQUENCE$$" 
  "SEQ$$", "MAS$"."OLD_NEW$$" "OLD_NEW$$"  FROM "KOZYAR"."MLOG$_BOOKING" 
  "MAS$"   WHERE "MAS$".XID$$ = :1 )  "MAS$" ) "MAS$" WHERE 
  ((("MAS$"."OLD_NEW$$" = 'N') AND ("MAS$"."SEQ$$" = "MAS$"."MAXSEQ$$")) OR 
  (("MAS$"."OLD_NEW$$" IN ('O','U')) AND ("MAS$"."SEQ$$" = "MAS$"."MINSEQ$$"))
  )  


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        4      0.00       0.00          0          0          0           0
Execute      0      0.00       0.00          0          0          0           0
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        4      0.00       0.00          0          0          0           0

Misses in library cache during parse: 4
Optimizer mode: ALL_ROWS
Parsing user id: 104     (recursive depth: 3)
********************************************************************************

SQL ID: dbvj6jc977hqh Plan Hash: 0

insert /* QOSD */ into exp_head$ (exp_id, objn, sub_id, fixed_cost, text, 
  col_list, flags, ctime) 
values
 (:1, :2, :3, :4, :5, :6, :7, :8)


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        2      0.00       0.00          0          0          0           0
Execute     17      0.00       0.00          0          0         71          17
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total       19      0.00       0.00          0          0         71          17

Misses in library cache during parse: 1
Misses in library cache during execute: 2
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 3)
Number of plan statistics captured: 2

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  LOAD TABLE CONVENTIONAL  EXP_HEAD$ (cr=0 pr=0 pw=0 time=149 us starts=1)

********************************************************************************

SQL ID: b8k9nhxjry0rz Plan Hash: 2685471085

MERGE INTO "KOZYAR"."MOST_POPULAR_HOTEL" "SNA$" USING ( WITH 
  "TMPDLT$_BOOKING" AS  ( SELECT /*+ RESULT_CACHE(LIFETIME=SESSION, NAME=
  "DMLTYPES:MLOG$_BOOKING") */ "MAS$"."RID$" "RID$" , "MAS$"."HOTEL_ID", 
  "MAS$"."STAYS_IN_NIGHTS", DECODE("MAS$"."OLD_NEW$$", 'N', 'I', 'D') "DML$$",
   "MAS$"."OLD_NEW$$" "OLD_NEW$$",  "MAS$"."DMLTYPE$$" "DMLTYPE$$" FROM 
  (SELECT "MAS$".*, MIN("MAS$"."SEQ$$") OVER (PARTITION BY "MAS$"."RID$") 
  "MINSEQ$$", MAX("MAS$"."SEQ$$") OVER (PARTITION BY "MAS$"."RID$") 
  "MAXSEQ$$" FROM (SELECT  CHARTOROWID("MAS$"."M_ROW$$") RID$  ,  
  "MAS$"."HOTEL_ID", "MAS$"."STAYS_IN_NIGHTS"  , DECODE("MAS$".OLD_NEW$$, 'N',
   'I', 'D') DML$$, "MAS$"."DMLTYPE$$" "DMLTYPE$$", "MAS$"."SEQUENCE$$" 
  "SEQ$$", "MAS$"."OLD_NEW$$" "OLD_NEW$$"  FROM "KOZYAR"."MLOG$_BOOKING" 
  "MAS$"   WHERE "MAS$".XID$$ = :1 )  "MAS$" ) "MAS$" WHERE 
  ((("MAS$"."OLD_NEW$$" = 'N') AND ("MAS$"."SEQ$$" = "MAS$"."MAXSEQ$$")) OR 
  (("MAS$"."OLD_NEW$$" IN ('O','U')) AND ("MAS$"."SEQ$$" = "MAS$"."MINSEQ$$"))
  )  ) SELECT   /*+  OPT_ESTIMATE(QUERY_BLOCK MAX=1000)   */ 
  "MAS$2"."HOTEL_NAME" "GB0", "MAS$1"."COUNTRY_NAME" "GB1", NVL(SUM(1* 
  ("DLT$0"."STAYS_IN_NIGHTS")), 0) "D0", SUM(1* 
  DECODE(("DLT$0"."STAYS_IN_NIGHTS"), NULL, 0, 1)) "H0" FROM (SELECT  
  "MAS$"."RID$" "RID$"  ,  "MAS$"."HOTEL_ID", "MAS$"."STAYS_IN_NIGHTS" , 
  "MAS$"."DML$$" "DML$$"  FROM "TMPDLT$_BOOKING" "MAS$") "DLT$0" , (SELECT 
  "MAS$"."ROWID" "RID$"  ,  "MAS$"."COUNTRY_NAME", "MAS$"."COUNTRY_ID"  FROM 
  "KOZYAR"."COUNTRY" "MAS$") AS OF SNAPSHOT(:B_SCN)  "MAS$1" , (SELECT 
  "MAS$"."ROWID" "RID$"  ,  "MAS$"."HOTEL_NAME", "MAS$"."HOTEL_ID", 
  "MAS$"."COUNTRY_ID"  FROM "KOZYAR"."HOTEL" "MAS$") AS OF SNAPSHOT(:B_SCN)  
  "MAS$2"  WHERE ("DLT$0"."HOTEL_ID"="MAS$2"."HOTEL_ID" AND 
  "MAS$1"."COUNTRY_ID"="MAS$2"."COUNTRY_ID") GROUP BY "MAS$2"."HOTEL_NAME",
  "MAS$1"."COUNTRY_NAME")"AV$" ON (SYS_OP_MAP_NONNULL("SNA$"."HOTEL")=
  SYS_OP_MAP_NONNULL("AV$"."GB0") AND SYS_OP_MAP_NONNULL("SNA$"."COUNTRY")=
  SYS_OP_MAP_NONNULL("AV$"."GB1")) WHEN MATCHED THEN UPDATE  SET 
  "SNA$"."SUM_NIGHTS"=DECODE("SNA$"."SUM_NIGHTS", NULL, DECODE("AV$"."H0", 0, 
  NULL, "AV$"."D0"), ("SNA$"."SUM_NIGHTS" + "AV$"."D0")) WHEN NOT MATCHED 
  THEN INSERT ("SNA$"."HOTEL", "SNA$"."COUNTRY", "SNA$"."SUM_NIGHTS") VALUES 
  ( "AV$"."GB0", "AV$"."GB1", DECODE ("AV$"."H0", 0, NULL, "AV$"."D0"))
   

call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.01       0.01          0         19         21           0
Execute      1      2.43       2.50          0      13215        316        1000
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        2      2.45       2.51          0      13234        337        1000

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: ALL_ROWS
Parsing user id: 104     (recursive depth: 2)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  MERGE  MOST_POPULAR_HOTEL (cr=13209 pr=0 pw=0 time=2491623 us starts=1)
      1000       1000       1000   VIEW  (cr=13076 pr=0 pw=0 time=2486830 us starts=1)
      1000       1000       1000    NESTED LOOPS OUTER (cr=13076 pr=0 pw=0 time=2486704 us starts=1 cost=420 size=213000 card=1000)
      1000       1000       1000     VIEW  (cr=13075 pr=0 pw=0 time=2486062 us starts=1 cost=420 size=80000 card=1000)
      1000       1000       1000      SORT GROUP BY (cr=13075 pr=0 pw=0 time=2485930 us starts=1 cost=420 size=119000 card=1000)
   1000000    1000000    1000000       HASH JOIN  (cr=13075 pr=0 pw=0 time=1947873 us starts=1 cost=419 size=1182979 card=9941)
      1000       1000       1000        HASH JOIN  (cr=14 pr=0 pw=0 time=979 us starts=1 cost=12 size=93000 card=1000)
        23         23         23         TABLE ACCESS FULL COUNTRY (cr=7 pr=0 pw=0 time=84 us starts=1 cost=6 size=920 card=23)
      1000       1000       1000         TABLE ACCESS FULL HOTEL (cr=7 pr=0 pw=0 time=563 us starts=1 cost=6 size=53000 card=1000)
   1000000    1000000    1000000        VIEW  (cr=13061 pr=0 pw=0 time=2558183 us starts=1 cost=406 size=258466 card=9941)
   1000000    1000000    1000000         RESULT CACHE  f95fqf9usy0zwdbngfsb84f46f (cr=13061 pr=0 pw=0 time=2439901 us starts=1)
   1000000    1000000    1000000          VIEW  (cr=13061 pr=0 pw=0 time=2338327 us starts=1 cost=406 size=805221 card=9941)
   1000000    1000000    1000000           WINDOW SORT (cr=13061 pr=0 pw=0 time=1953785 us starts=1 cost=406 size=1839085 card=9941)
   1000000    1000000    1000000            TABLE ACCESS BY INDEX ROWID BATCHED MLOG$_BOOKING (cr=13061 pr=0 pw=0 time=340625 us starts=1 cost=1 size=1839085 card=9941)
   1000000    1000000    1000000             INDEX RANGE SCAN I_MLOG$_BOOKING (cr=4365 pr=0 pw=0 time=121749 us starts=1 cost=1 size=0 card=3977)(object id 75486)
         0          0          0     MAT_VIEW ACCESS BY INDEX ROWID MOST_POPULAR_HOTEL (cr=1 pr=0 pw=0 time=356 us starts=1000 cost=0 size=133 card=1)
         0          0          0      INDEX UNIQUE SCAN I_SNAP$_MOST_POPULAR_HOTEL (cr=1 pr=0 pw=0 time=120 us starts=1000 cost=0 size=0 card=1)(object id 75489)

********************************************************************************

SQL ID: au2mncf4sgx08 Plan Hash: 2344379167

SELECT /* OPT_DYN_SAMP */ /*+ ALL_ROWS IGNORE_WHERE_CLAUSE 
  RESULT_CACHE(SNAPSHOT=3600) opt_param('parallel_execution_enabled', 'false')
   NO_PARALLEL(SAMPLESUB) NO_PARALLEL_INDEX(SAMPLESUB) NO_SQL_TUNE */ 
  NVL(SUM(C1),:"SYS_B_0"), NVL(SUM(C2),:"SYS_B_1") 
FROM
 (SELECT /*+ NO_PARALLEL("MAS$") FULL("MAS$") NO_PARALLEL_INDEX("MAS$") */ 
  :"SYS_B_2" AS C1, :"SYS_B_3" AS C2 FROM "KOZYAR"."MLOG$_BOOKING" SAMPLE 
  BLOCK (:"SYS_B_4" , :"SYS_B_5") SEED (:"SYS_B_6") "MAS$") SAMPLESUB


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        2      0.00       0.00          0          0          0           0
Execute      2      0.00       0.00          0          0          0           0
Fetch        2      0.00       0.00          0        197          0           2
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        6      0.00       0.00          0        197          0           2

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: ALL_ROWS
Parsing user id: 104     (recursive depth: 3)
Number of plan statistics captured: 2

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  RESULT CACHE  0s4dtbxh0js9vck7y4b8awru9k (cr=99 pr=0 pw=0 time=643 us starts=1)
         0          1          1   SORT AGGREGATE (cr=99 pr=0 pw=0 time=626 us starts=0)
         0       3450       6900    TABLE ACCESS SAMPLE MLOG$_BOOKING (cr=99 pr=0 pw=0 time=515 us starts=0 cost=2 size=48 card=4)

********************************************************************************

SQL ID: crcgkjt6mgxhz Plan Hash: 3962189047

SELECT /* OPT_DYN_SAMP */ /*+ ALL_ROWS IGNORE_WHERE_CLAUSE 
  RESULT_CACHE(SNAPSHOT=3600) opt_param('parallel_execution_enabled', 'false')
   NO_PARALLEL(SAMPLESUB) NO_PARALLEL_INDEX(SAMPLESUB) NO_SQL_TUNE */ 
  NVL(SUM(C1),:"SYS_B_0"), NVL(SUM(C2),:"SYS_B_1"), COUNT(DISTINCT C3), 
  NVL(SUM(CASE WHEN C3 IS NULL THEN :"SYS_B_2" ELSE :"SYS_B_3" END),
  :"SYS_B_4"), COUNT(DISTINCT C4), NVL(SUM(CASE WHEN C4 IS NULL THEN 
  :"SYS_B_5" ELSE :"SYS_B_6" END),:"SYS_B_7") 
FROM
 (SELECT /*+ NO_PARALLEL("SYS_ALIAS_0000") FULL("SYS_ALIAS_0000") 
  NO_PARALLEL_INDEX("SYS_ALIAS_0000") */ :"SYS_B_8" AS C1, :"SYS_B_9" AS C2, 
  "SYS_ALIAS_0000"."COUNTRY_ID" AS C3, "SYS_ALIAS_0000"."HOTEL_ID" AS C4 FROM 
  "KOZYAR"."HOTEL" "SYS_ALIAS_0000") SAMPLESUB


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        2      0.00       0.00          0          0          0           0
Execute      2      0.00       0.00          0          0          0           0
Fetch        2      0.00       0.00          0          0          0           2
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        6      0.00       0.00          0          0          0           2

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: ALL_ROWS
Parsing user id: 104     (recursive depth: 3)
Number of plan statistics captured: 2

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  RESULT CACHE  1njfuv62zg64a90cazy4fwsch2 (cr=0 pr=0 pw=0 time=3 us starts=1)
         0          0          0   SORT GROUP BY (cr=0 pr=0 pw=0 time=0 us starts=0)
         0          0          0    TABLE ACCESS FULL HOTEL (cr=0 pr=0 pw=0 time=0 us starts=0 cost=2 size=2132 card=82)

********************************************************************************

SQL ID: 3h1g1sszzr4xr Plan Hash: 1551139906

select OLDEST, flag 
from
 sys.mlog$ where mowner = :1 and master = :2 for update


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        9      0.00       0.00          0          0          0           0
Execute      9      0.00       0.00          0         18          9           0
Fetch        9      0.00       0.00          0          0          0           9
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total       27      0.00       0.00          0         18          9           9

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 3

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  FOR UPDATE  (cr=2 pr=0 pw=0 time=52 us starts=1)
         2          2          2   BUFFER SORT (cr=2 pr=0 pw=0 time=27 us starts=2)
         1          1          1    TABLE ACCESS CLUSTER MLOG$ (cr=2 pr=0 pw=0 time=15 us starts=1 cost=0 size=154 card=1)
         1          1          1     INDEX UNIQUE SCAN I_MLOG# (cr=1 pr=0 pw=0 time=6 us starts=1 cost=0 size=0 card=1)(object id 865)

********************************************************************************

SQL ID: 0agc8gu13raqj Plan Hash: 1037824108

SELECT oldest 
FROM
 sys.snap_loadertime$  WHERE tableobj# = :1 FOR UPDATE


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        9      0.00       0.00          0          0          0           0
Execute      9      0.00       0.00          0         18          9           0
Fetch        9      0.00       0.00          0          0          0           9
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total       27      0.00       0.00          0         18          9           9

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 3

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  FOR UPDATE  (cr=2 pr=0 pw=0 time=11 us starts=1)
         1          1          1   TABLE ACCESS BY INDEX ROWID SNAP_LOADERTIME$ (cr=2 pr=0 pw=0 time=7 us starts=1 cost=0 size=22 card=1)
         1          1          1    INDEX UNIQUE SCAN I_SNAP_LOADERTIME1 (cr=1 pr=0 pw=0 time=3 us starts=1 cost=0 size=0 card=1)(object id 863)

********************************************************************************

SQL ID: dqq4wtk6jr39f Plan Hash: 1446323721

SELECT snaptime, min(rscn) rscn  
FROM
 sys.snap_logdep$  WHERE tableobj# = :1  GROUP BY snaptime  ORDER BY snaptime
 
call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        9      0.00       0.00          0          0          0           0
Execute      9      0.01       0.00          0          0          0           0
Fetch        9      0.00       0.00          0         18          0           9
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total       27      0.01       0.00          0         18          0           9

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 3

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  SORT GROUP BY (cr=2 pr=0 pw=0 time=41 us starts=1 cost=1 size=35 card=1)
         1          1          1   TABLE ACCESS BY INDEX ROWID BATCHED SNAP_LOGDEP$ (cr=2 pr=0 pw=0 time=14 us starts=1 cost=0 size=35 card=1)
         1          1          1    INDEX RANGE SCAN I_SNAP_LOGDEP1 (cr=1 pr=0 pw=0 time=9 us starts=1 cost=0 size=0 card=1)(object id 861)

********************************************************************************

SQL ID: 9wb7u7x708yvr Plan Hash: 4164700817

DELETE FROM sys.sumdelta$ sd   
WHERE
 sd.tableobj# = :1 AND sd.timestamp <= :2


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        9      0.00       0.00          0          0          0           0
Execute      9      0.00       0.00          0          9          0           0
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total       18      0.00       0.00          0          9          0           0

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 3

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  DELETE  SUMDELTA$ (cr=1 pr=0 pw=0 time=7 us starts=1)
         0          0          0   INDEX RANGE SCAN I_SUMDELTA$ (cr=1 pr=0 pw=0 time=5 us starts=1)(object id 859)

********************************************************************************

SQL ID: 9qxm38rs6frwq Plan Hash: 2845333568

select distinct s.sowner, s.vname  
from
 sys.snap$ s, sys.snap_reftime$ r where r.masobj# in (75386) and        
  s.sowner = r.sowner and s.vname = r.vname and        s.mowner = r.mowner 
  and s.master = r.master and        bitand(s.flag3, 67108864) = 67108864


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute      1      0.00       0.00          0          0          0           0
Fetch        1      0.00       0.00          0          2          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        3      0.00       0.00          0          2          0           0

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  SORT UNIQUE (cr=2 pr=0 pw=0 time=54 us starts=1 cost=3 size=554 card=1)
         0          0          0   NESTED LOOPS  (cr=2 pr=0 pw=0 time=41 us starts=1 cost=2 size=554 card=1)
         0          0          0    NESTED LOOPS  (cr=2 pr=0 pw=0 time=39 us starts=1 cost=2 size=554 card=1)
         0          0          0     TABLE ACCESS FULL SNAP$ (cr=2 pr=0 pw=0 time=39 us starts=1 cost=2 size=277 card=1)
         0          0          0     INDEX RANGE SCAN I_SNAP_REFTIME1 (cr=0 pr=0 pw=0 time=0 us starts=0 cost=0 size=0 card=1)(object id 879)
         0          0          0    TABLE ACCESS BY INDEX ROWID SNAP_REFTIME$ (cr=0 pr=0 pw=0 time=0 us starts=0 cost=0 size=277 card=1)

********************************************************************************

SQL ID: 68ah65amvkpwb Plan Hash: 0

INSERT INTO SESSION_ACTIVITY 
VALUES
('BOOKING', 'INSERT', :B1 )


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute      1      0.00       0.00          0          1          2           1
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        2      0.00       0.00          0          1          2           1

Misses in library cache during parse: 0
Optimizer mode: ALL_ROWS
Parsing user id: 104     (recursive depth: 1)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  LOAD TABLE CONVENTIONAL  SESSION_ACTIVITY (cr=1 pr=0 pw=0 time=59 us starts=1)

********************************************************************************

SQL ID: 04akgry29qjyx Plan Hash: 2733414593

SELECT MIN(HOTEL_ID) 
FROM
 HOTEL


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          2          0           0
Execute      1      0.00       0.00          0          0          0           0
Fetch        1      0.00       0.00          0          3          0           1
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        3      0.00       0.00          0          5          0           1

Misses in library cache during parse: 1
Optimizer mode: ALL_ROWS
Parsing user id: 104     (recursive depth: 1)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  SORT AGGREGATE (cr=3 pr=0 pw=0 time=51 us starts=1)
         1          1          1   INDEX FULL SCAN (MIN/MAX) HOTEL_ID_PK (cr=3 pr=0 pw=0 time=44 us starts=1 cost=2 size=13 card=1)(object id 75121)

********************************************************************************

SQL ID: fy4capuw2kth0 Plan Hash: 3055935834

SELECT /* OPT_DYN_SAMP */ /*+ ALL_ROWS IGNORE_WHERE_CLAUSE 
  RESULT_CACHE(SNAPSHOT=3600) opt_param('parallel_execution_enabled', 'false')
   NO_PARALLEL(SAMPLESUB) NO_PARALLEL_INDEX(SAMPLESUB) NO_SQL_TUNE */ 
  NVL(SUM(C1),:"SYS_B_0"), NVL(SUM(C2),:"SYS_B_1") 
FROM
 (SELECT /*+ IGNORE_WHERE_CLAUSE NO_PARALLEL("HOTEL") FULL("HOTEL") 
  NO_PARALLEL_INDEX("HOTEL") */ :"SYS_B_2" AS C1, CASE WHEN 
  "HOTEL"."HOTEL_ID"<:"SYS_B_3" THEN :"SYS_B_4" ELSE :"SYS_B_5" END AS C2 
  FROM "KOZYAR"."HOTEL" "HOTEL") SAMPLESUB


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute      1      0.00       0.00          0          0          0           0
Fetch        1      0.00       0.00          0          0          0           1
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        3      0.00       0.00          0          0          0           1

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: ALL_ROWS
Parsing user id: 104     (recursive depth: 2)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  RESULT CACHE  5zjvjc03r6kgs2bv5sackfsj82 (cr=0 pr=0 pw=0 time=6 us starts=1)
         0          0          0   SORT AGGREGATE (cr=0 pr=0 pw=0 time=0 us starts=0)
         0          0          0    TABLE ACCESS FULL HOTEL (cr=0 pr=0 pw=0 time=0 us starts=0 cost=2 size=1066 card=82)

********************************************************************************

SQL ID: ad994x19c4fhs Plan Hash: 3401472585

SELECT /* OPT_DYN_SAMP */ /*+ ALL_ROWS  RESULT_CACHE(SNAPSHOT=3600) 
  opt_param('parallel_execution_enabled', 'false') NO_PARALLEL(SAMPLESUB) 
  NO_PARALLEL_INDEX(SAMPLESUB) NO_SQL_TUNE */ NVL(SUM(C1),:"SYS_B_0"), 
  NVL(SUM(C2),:"SYS_B_1"), NVL(SUM(C3),:"SYS_B_2") 
FROM
 (SELECT /*+ NO_PARALLEL("HOTEL") INDEX("HOTEL" HOTEL_ID_PK) 
  NO_PARALLEL_INDEX("HOTEL") */ :"SYS_B_3" AS C1, :"SYS_B_4" AS C2, 
  :"SYS_B_5" AS C3  FROM "KOZYAR"."HOTEL" "HOTEL" WHERE 
  "HOTEL"."HOTEL_ID"<:"SYS_B_6" AND ROWNUM <= :"SYS_B_7") SAMPLESUB


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute      1      0.00       0.00          0          0          0           0
Fetch        1      0.00       0.00          0          0          0           1
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        3      0.00       0.00          0          0          0           1

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: ALL_ROWS
Parsing user id: 104     (recursive depth: 2)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  RESULT CACHE  4vhcsc4h99ng82s36yrd77j9pk (cr=0 pr=0 pw=0 time=4 us starts=1)
         0          0          0   SORT AGGREGATE (cr=0 pr=0 pw=0 time=0 us starts=0)
         0          0          0    VIEW  (cr=0 pr=0 pw=0 time=0 us starts=0 cost=12 size=390 card=10)
         0          0          0     COUNT STOPKEY (cr=0 pr=0 pw=0 time=0 us starts=0)
         0          0          0      INDEX RANGE SCAN HOTEL_ID_PK (cr=0 pr=0 pw=0 time=0 us starts=0 cost=12 size=429 card=33)(object id 75121)

********************************************************************************

SQL ID: bfq11nsc0qmx4 Plan Hash: 2717540409

select room_count 
from
 hotel where hotel_id < 100001 for update nowait


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          2          0           0
Execute      1      0.00       0.00          0          7       1016           0
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        2      0.00       0.00          0          9       1016           0

Misses in library cache during parse: 1
Optimizer mode: ALL_ROWS
Parsing user id: 104     (recursive depth: 1)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  FOR UPDATE  (cr=7 pr=0 pw=0 time=3618 us starts=1)
      1000       1000       1000   BUFFER SORT (cr=7 pr=0 pw=0 time=666 us starts=2)
      1000       1000       1000    TABLE ACCESS FULL HOTEL (cr=7 pr=0 pw=0 time=157 us starts=1 cost=3 size=78000 card=3000)

********************************************************************************

SQL ID: 3w9z8sgc8pr1d Plan Hash: 3582085874

UPDATE HOTEL SET ROOM_COUNT = ROOM_COUNT + 1 
WHERE
 HOTEL_ID < :B2 + :B1 


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute      1      0.03       0.04          0        180       7507        1000
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        2      0.03       0.04          0        180       7507        1000

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: ALL_ROWS
Parsing user id: 104     (recursive depth: 1)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  UPDATE  HOTEL (cr=138 pr=0 pw=0 time=33930 us starts=1)
      1000       1000       1000   TABLE ACCESS FULL HOTEL (cr=7 pr=0 pw=0 time=420 us starts=1 cost=3 size=198000 card=3000)

********************************************************************************

SQL ID: 316ma0k9utrbr Plan Hash: 1103421634

SELECT /* OPT_DYN_SAMP */ /*+ ALL_ROWS IGNORE_WHERE_CLAUSE 
  RESULT_CACHE(SNAPSHOT=3600) opt_param('parallel_execution_enabled', 'false')
   NO_PARALLEL(SAMPLESUB) NO_PARALLEL_INDEX(SAMPLESUB) NO_SQL_TUNE */ 
  NVL(SUM(C1),0), NVL(SUM(C2),0) 
FROM
 (SELECT /*+ NO_PARALLEL("MLOG$_HOTEL") FULL("MLOG$_HOTEL") 
  NO_PARALLEL_INDEX("MLOG$_HOTEL") */ 1 AS C1, 1 AS C2 FROM 
  "KOZYAR"."MLOG$_HOTEL" "MLOG$_HOTEL") SAMPLESUB


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute      1      0.00       0.00          0          0          0           0
Fetch        1      0.00       0.00          0         16          0           1
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        3      0.00       0.00          0         16          0           1

Misses in library cache during parse: 1
Optimizer mode: ALL_ROWS
Parsing user id: SYS   (recursive depth: 3)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  RESULT CACHE  71czyx2k0qxaa9uvk97gzwjd67 (cr=16 pr=0 pw=0 time=99 us starts=1)
         1          1          1   SORT AGGREGATE (cr=16 pr=0 pw=0 time=64 us starts=1)
         0          0          0    TABLE ACCESS FULL MLOG$_HOTEL (cr=16 pr=0 pw=0 time=59 us starts=1 cost=2 size=0 card=82)

********************************************************************************

SQL ID: 8az4299w08pa6 Plan Hash: 3055935834

SELECT /* OPT_DYN_SAMP */ /*+ ALL_ROWS IGNORE_WHERE_CLAUSE 
  RESULT_CACHE(SNAPSHOT=3600) opt_param('parallel_execution_enabled', 'false')
   NO_PARALLEL(SAMPLESUB) NO_PARALLEL_INDEX(SAMPLESUB) NO_SQL_TUNE */ 
  NVL(SUM(C1),0), NVL(SUM(C2),0) 
FROM
 (SELECT /*+ IGNORE_WHERE_CLAUSE NO_PARALLEL("HOTEL") FULL("HOTEL") 
  NO_PARALLEL_INDEX("HOTEL") */ 1 AS C1, CASE WHEN "HOTEL"."HOTEL_ID"<:B1+:B2 
  THEN 1 ELSE 0 END AS C2 FROM "KOZYAR"."HOTEL" "HOTEL") SAMPLESUB


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        2      0.00       0.00          0          0          0           0
Execute      2      0.00       0.00          0          0          0           0
Fetch        2      0.00       0.00          0          0          0           2
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        6      0.00       0.00          0          0          0           2

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: ALL_ROWS
Parsing user id: 104     (recursive depth: 2)
Number of plan statistics captured: 2

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  RESULT CACHE  bs10h84t1g3r851vcfsaajat2a (cr=0 pr=0 pw=0 time=6 us starts=1)
         0          0          0   SORT AGGREGATE (cr=0 pr=0 pw=0 time=0 us starts=0)
         0          0          0    TABLE ACCESS FULL HOTEL (cr=0 pr=0 pw=0 time=0 us starts=0 cost=2 size=1066 card=82)

********************************************************************************

SQL ID: 1qn9ajq10x24s Plan Hash: 3401472585

SELECT /* OPT_DYN_SAMP */ /*+ ALL_ROWS  RESULT_CACHE(SNAPSHOT=3600) 
  opt_param('parallel_execution_enabled', 'false') NO_PARALLEL(SAMPLESUB) 
  NO_PARALLEL_INDEX(SAMPLESUB) NO_SQL_TUNE */ NVL(SUM(C1),0), NVL(SUM(C2),0), 
  NVL(SUM(C3),0) 
FROM
 (SELECT /*+ NO_PARALLEL("HOTEL") INDEX("HOTEL" HOTEL_ID_PK) 
  NO_PARALLEL_INDEX("HOTEL") */ 1 AS C1, 1 AS C2, 1 AS C3  FROM 
  "KOZYAR"."HOTEL" "HOTEL" WHERE "HOTEL"."HOTEL_ID"<:B1+:B2 AND ROWNUM <= 
  2500) SAMPLESUB


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        2      0.00       0.00          0          0          0           0
Execute      2      0.00       0.00          0          0          0           0
Fetch        2      0.00       0.00          0          0          0           2
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        6      0.00       0.00          0          0          0           2

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: ALL_ROWS
Parsing user id: 104     (recursive depth: 2)
Number of plan statistics captured: 2

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  RESULT CACHE  a46a3whd3nr6xct8ztsmqh82s8 (cr=0 pr=0 pw=0 time=3 us starts=1)
         0          0          0   SORT AGGREGATE (cr=0 pr=0 pw=0 time=0 us starts=0)
         0          0          0    VIEW  (cr=0 pr=0 pw=0 time=0 us starts=0 cost=12 size=297 card=33)
         0          0          0     COUNT STOPKEY (cr=0 pr=0 pw=0 time=0 us starts=0)
         0          0          0      INDEX RANGE SCAN HOTEL_ID_PK (cr=0 pr=0 pw=0 time=0 us starts=0 cost=12 size=429 card=33)(object id 75121)

********************************************************************************

SQL ID: c9b4y4rwvb14f Plan Hash: 2668472143

SELECT DISTINCT M.REFRESH_ID 
FROM
 SYS.MVREF$_STATS M WHERE EXTRACT(DAY FROM (SYSDATE - END_TIME) DAY TO SECOND)
   > :B2 AND M.MV_OBJ# = :B1 


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        3      0.00       0.00          0          0          0           0
Execute      3      0.00       0.00          0          0          0           0
Fetch        3      0.00       0.00          0          6          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        9      0.00       0.00          0          6          0           0

Misses in library cache during parse: 0
Optimizer mode: ALL_ROWS
Parsing user id: SYS   (recursive depth: 3)
Number of plan statistics captured: 3

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  HASH UNIQUE (cr=2 pr=0 pw=0 time=60 us starts=1 cost=3 size=39 card=1)
         0          0          0   TABLE ACCESS FULL MVREF$_STATS (cr=2 pr=0 pw=0 time=29 us starts=1 cost=2 size=39 card=1)

********************************************************************************

SQL ID: 9x47atu69xt2g Plan Hash: 4007268932

DELETE FROM SYS.MVREF$_STATS M 
WHERE
 EXTRACT(DAY FROM (SYSDATE - END_TIME) DAY TO SECOND) > :B2 AND M.MV_OBJ# = 
  :B1 


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        3      0.00       0.00          0          0          0           0
Execute      3      0.00       0.00          0          6          0           0
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        6      0.00       0.00          0          6          0           0

Misses in library cache during parse: 0
Optimizer mode: ALL_ROWS
Parsing user id: SYS   (recursive depth: 3)
Number of plan statistics captured: 3

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  DELETE  MVREF$_STATS (cr=2 pr=0 pw=0 time=20 us starts=1)
         0          0          0   TABLE ACCESS FULL MVREF$_STATS (cr=2 pr=0 pw=0 time=17 us starts=1 cost=2 size=26 card=1)

********************************************************************************

SQL ID: ajbw977xc0a9z Plan Hash: 1636083302

SELECT COUNT(HOTEL_ID) 
FROM
 HOTEL WHERE HOTEL_ID < :B2 + :B1 


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute      1      0.01       0.00          0          2          0           0
Fetch        1      0.00       0.00          0          8          0           1
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        3      0.01       0.00          0         10          0           1

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: ALL_ROWS
Parsing user id: 104     (recursive depth: 1)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  SORT AGGREGATE (cr=8 pr=0 pw=0 time=90 us starts=1)
      1000       1000       1000   INDEX FAST FULL SCAN HOTEL_ID_PK (cr=8 pr=0 pw=0 time=271 us starts=1 cost=3 size=39000 card=3000)(object id 75121)

********************************************************************************

SQL ID: 5dsm4tqjbv7kz Plan Hash: 0

INSERT INTO SESSION_ACTIVITY 
VALUES
('HOTEL', 'UPDATE', :B1 )


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute      1      0.00       0.00          0          3          2           1
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        2      0.00       0.00          0          3          2           1

Misses in library cache during parse: 0
Optimizer mode: ALL_ROWS
Parsing user id: 104     (recursive depth: 1)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  LOAD TABLE CONVENTIONAL  SESSION_ACTIVITY (cr=3 pr=0 pw=0 time=54 us starts=1)

********************************************************************************

declare
    l_line varchar2(32767);
    l_done number;
    l_buffer varchar2(32767) := '';
    l_lengthbuffer number := 0;
    l_lengthline number := 0;
begin 
  loop 
    dbms_output.get_line( l_line, l_done ); 
    if (l_buffer is null) then 
      l_lengthbuffer := 0; 
    else 
      l_lengthbuffer := length(l_buffer); 
    end if; 
    if (l_line is null) then 
      l_lengthline := 0; 
    else 
      l_lengthline := length(l_line); 
    end if; 
  exit when l_lengthbuffer + l_lengthline > :maxbytes OR l_lengthbuffer + l_lengthline > 32767 OR l_done = 1; 
  l_buffer := l_buffer || l_line || chr(10); 
    end loop; 
    :done := l_done; 
    :buffer := l_buffer; 
    :line := l_line; 
end;

call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute      1      0.00       0.00          0          0          0           1
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        2      0.00       0.00          0          0          0           1

Misses in library cache during parse: 0
Optimizer mode: ALL_ROWS
Parsing user id: 104  



********************************************************************************

OVERALL TOTALS FOR ALL NON-RECURSIVE STATEMENTS

call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        2      0.00       0.00          0          0          0           0
Execute      2     54.37      55.17          0          2          1           2
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        4     54.37      55.17          0          2          1           2

Misses in library cache during parse: 0


OVERALL TOTALS FOR ALL RECURSIVE STATEMENTS

call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse   1001739      5.67       5.74          0         42         47           0
Execute 3006510    226.00     232.71         10      65025    9320659     3009711
Fetch   1003526      6.78       6.62          0    1059381          0        2355
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total   5011775    238.45     245.08         10    1124448    9320706     3012066

Misses in library cache during parse: 115
Misses in library cache during execute: 99

   87  user  SQL statements in session.
  342  internal SQL statements in session.
  429  SQL statements in session.
********************************************************************************
Trace file: orcl_ora_18244.trc
Trace file compatibility: 12.2.0.0
Sort options: default

       1  session in tracefile.
      87  user  SQL statements in trace file.
     342  internal SQL statements in trace file.
     429  SQL statements in trace file.
     238  unique SQL statements in trace file.
 8022619  lines in trace file.
     299  elapsed seconds in trace file.


