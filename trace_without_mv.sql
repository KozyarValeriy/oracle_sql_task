
TKPROF: Release 18.0.0.0.0 - Development on Tue Mar 3 17:01:39 2020

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
Execute      4      0.00       0.00          0          0          0           0
Fetch        4      0.00       0.00          0         17          0           4
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        9      0.00       0.00          0         17          0           4

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 3)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  MERGE JOIN OUTER (cr=4 pr=0 pw=0 time=63 us starts=1 cost=2 size=252 card=1)
         1          1          1   TABLE ACCESS CLUSTER TAB$ (cr=3 pr=0 pw=0 time=45 us starts=1 cost=2 size=135 card=1)
         1          1          1    INDEX UNIQUE SCAN I_OBJ# (cr=2 pr=0 pw=0 time=21 us starts=1 cost=1 size=0 card=1)(object id 3)
         0          0          0   BUFFER SORT (cr=1 pr=0 pw=0 time=14 us starts=1 cost=0 size=117 card=1)
         0          0          0    TABLE ACCESS BY INDEX ROWID TAB_STATS$ (cr=1 pr=0 pw=0 time=5 us starts=1 cost=0 size=117 card=1)
         0          0          0     INDEX UNIQUE SCAN I_TAB_STATS$_OBJ# (cr=1 pr=0 pw=0 time=4 us starts=1 cost=0 size=0 card=1)(object id 74)

********************************************************************************

SQL ID: gd28w82ct6rva Plan Hash: 2970138452

select audit$ 
from
 tab$ where obj# = :1


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute      4      0.00       0.00          0          0          0           0
Fetch        4      0.00       0.00          0         13          0           4
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        9      0.00       0.00          0         13          0           4

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 3)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  TABLE ACCESS CLUSTER TAB$ (cr=3 pr=0 pw=0 time=7 us starts=1 cost=2 size=44 card=1)
         1          1          1   INDEX UNIQUE SCAN I_OBJ# (cr=2 pr=0 pw=0 time=3 us starts=1 cost=1 size=0 card=1)(object id 3)

********************************************************************************

SQL ID: 04kug40zbu4dm Plan Hash: 4006480256

select policy#, action# 
from
 aud_object_opt$ where object# = :1 and type = 2


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute      4      0.00       0.00          0          0          0           0
Fetch        4      0.00       0.00          0         32          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        9      0.00       0.00          0         32          0           0

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 3)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  TABLE ACCESS FULL AUD_OBJECT_OPT$ (cr=8 pr=0 pw=0 time=49 us starts=1 cost=2 size=114 card=1)

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
Execute      4      0.00       0.00          0          0          0           0
Fetch        7      0.01       0.00          0         25          0           3
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total       12      0.01       0.00          0         25          0           3

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 3)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  SORT ORDER BY (cr=7 pr=0 pw=0 time=1350 us starts=1 cost=6 size=181 card=1)
         1          1          1   HASH JOIN OUTER (cr=7 pr=0 pw=0 time=1301 us starts=1 cost=5 size=181 card=1)
         1          1          1    JOIN FILTER CREATE :BF0000 (cr=4 pr=0 pw=0 time=119 us starts=1 cost=2 size=138 card=1)
         1          1          1     NESTED LOOPS OUTER (cr=4 pr=0 pw=0 time=49 us starts=1 cost=2 size=138 card=1)
         1          1          1      TABLE ACCESS CLUSTER IND$ (cr=3 pr=0 pw=0 time=37 us starts=1 cost=2 size=86 card=1)
         1          1          1       INDEX UNIQUE SCAN I_OBJ# (cr=2 pr=0 pw=0 time=16 us starts=1 cost=1 size=0 card=1)(object id 3)
         0          0          0      TABLE ACCESS BY INDEX ROWID IND_STATS$ (cr=1 pr=0 pw=0 time=7 us starts=1 cost=0 size=52 card=1)
         0          0          0       INDEX UNIQUE SCAN I_IND_STATS$_OBJ# (cr=1 pr=0 pw=0 time=5 us starts=1 cost=0 size=0 card=1)(object id 76)
         1          1          1    VIEW  (cr=3 pr=0 pw=0 time=138 us starts=1 cost=3 size=172 card=4)
         1          1          1     SORT GROUP BY (cr=3 pr=0 pw=0 time=136 us starts=1 cost=3 size=60 card=4)
         1          1          1      JOIN FILTER USE :BF0000 (cr=3 pr=0 pw=0 time=84 us starts=1 cost=2 size=60 card=4)
         1          1          1       TABLE ACCESS CLUSTER CDEF$ (cr=3 pr=0 pw=0 time=69 us starts=1 cost=2 size=60 card=4)
         1          1          1        INDEX UNIQUE SCAN I_COBJ# (cr=2 pr=0 pw=0 time=17 us starts=1 cost=1 size=0 card=1)(object id 30)

********************************************************************************

SQL ID: 5n1fs4m2n2y0r Plan Hash: 452367486

select pos#,intcol#,col#,spare1,bo#,spare2,spare3 
from
 icol$ where obj#=:1


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute      3      0.00       0.00          0          0          0           0
Fetch        6      0.00       0.00          0         12          0           3
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total       10      0.00       0.00          0         12          0           3

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 3)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  TABLE ACCESS BY INDEX ROWID BATCHED ICOL$ (cr=4 pr=0 pw=0 time=24 us starts=1 cost=2 size=52 card=2)
         1          1          1   INDEX RANGE SCAN I_ICOL1 (cr=3 pr=0 pw=0 time=19 us starts=1 cost=1 size=0 card=2)(object id 42)

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
Execute      4      0.00       0.00          0          0          0           0
Fetch       34      0.00       0.00          0         13          0          30
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total       39      0.00       0.00          0         13          0          30

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 3)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         2          2          2  SORT ORDER BY (cr=3 pr=0 pw=0 time=97 us starts=1 cost=3 size=924 card=14)
         2          2          2   TABLE ACCESS CLUSTER COL$ (cr=3 pr=0 pw=0 time=46 us starts=1 cost=2 size=924 card=14)
         1          1          1    INDEX UNIQUE SCAN I_OBJ# (cr=2 pr=0 pw=0 time=24 us starts=1 cost=1 size=0 card=1)(object id 3)

********************************************************************************

SQL ID: cn6hhn36a4rrs Plan Hash: 3845132125

select con#,obj#,rcon#,enabled,nvl(defer,0),spare2,spare3,refact 
from
 cdef$ where robj#=:1


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute      3      0.00       0.00          0          0          0           0
Fetch        3      0.00       0.00          0          3          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        7      0.00       0.00          0          3          0           0

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  TABLE ACCESS BY INDEX ROWID BATCHED CDEF$ (cr=1 pr=0 pw=0 time=11 us starts=1 cost=2 size=58 card=2)
         0          0          0   INDEX RANGE SCAN I_CDEF3 (cr=1 pr=0 pw=0 time=9 us starts=1 cost=1 size=0 card=2)(object id 55)

********************************************************************************

SQL ID: gx4mv66pvj3xz Plan Hash: 2570921597

select con#,type#,condlength,intcols,robj#,rcon#,match#,refact,nvl(enabled,0),
  rowid,cols,nvl(defer,0),mtime,nvl(spare1,0),spare2,spare3 
from
 cdef$ where obj#=:1


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute      3      0.00       0.00          0          0          0           0
Fetch       10      0.00       0.00          0         16          0           7
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total       14      0.00       0.00          0         16          0           7

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  TABLE ACCESS CLUSTER CDEF$ (cr=4 pr=0 pw=0 time=42 us starts=1 cost=2 size=192 card=4)
         1          1          1   INDEX UNIQUE SCAN I_COBJ# (cr=2 pr=0 pw=0 time=33 us starts=1 cost=1 size=0 card=1)(object id 30)

********************************************************************************

SQL ID: 53saa2zkr6wc3 Plan Hash: 3038981986

select intcol#,nvl(pos#,0),col#,nvl(spare1,0) 
from
 ccol$ where con#=:1


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute      7      0.00       0.00          0          0          0           0
Fetch       14      0.00       0.00          0         27          0           7
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total       22      0.00       0.00          0         27          0           7

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  TABLE ACCESS BY INDEX ROWID BATCHED CCOL$ (cr=4 pr=0 pw=0 time=35 us starts=1 cost=3 size=15 card=1)
         1          1          1   INDEX RANGE SCAN I_CCOL1 (cr=3 pr=0 pw=0 time=34 us starts=1 cost=2 size=0 card=1)(object id 57)

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
         1          1          1  RESULT CACHE  6vhn2h8usg2xf3svcg0b567vkc (cr=0 pr=0 pw=0 time=44 us starts=1)
         0          0          0   SORT AGGREGATE (cr=0 pr=0 pw=0 time=0 us starts=0)
         0          0          0    TABLE ACCESS FULL COUNTRY (cr=0 pr=0 pw=0 time=0 us starts=0 cost=3 size=0 card=409)

********************************************************************************

SQL ID: 9pwahcqq3b1uj Plan Hash: 1407531724

SELECT MAX(COUNTRY_ID) 
FROM
 COUNTRY


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        2      0.00       0.01          0         41          2           0
Execute      2      0.00       0.00          0          0          0           0
Fetch        2      0.00       0.00          0          2          0           2
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        6      0.00       0.01          0         43          2           2

Misses in library cache during parse: 1
Optimizer mode: ALL_ROWS
Parsing user id: 104     (recursive depth: 1)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  SORT AGGREGATE (cr=1 pr=0 pw=0 time=27 us starts=1)
         1          1          1   INDEX FULL SCAN (MIN/MAX) COUNTRY_ID_PK (cr=1 pr=0 pw=0 time=18 us starts=1 cost=2 size=13 card=1)(object id 75127)

********************************************************************************

SQL ID: 4adwxsz1y4za6 Plan Hash: 0

LOCK TABLE HOTEL IN EXCLUSIVE MODE


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0         30          0           0
Execute      1      0.00       0.00          0          0          0           0
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        2      0.00       0.00          0         30          0           0

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
Execute   1000      0.00       0.01          0          4          0           0
Fetch     1000      0.09       0.07          0      16000          0        1000
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total     2001      0.09       0.08          0      16004          0        1000

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: ALL_ROWS
Parsing user id: 104     (recursive depth: 1)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  TABLE ACCESS FULL HOTEL (cr=16 pr=0 pw=0 time=94 us starts=1 cost=5 size=27 card=1)
         1          1          1  FAST DUAL  (cr=0 pr=0 pw=0 time=1 us starts=1 cost=2 size=0 card=1)

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
Parse        1      0.00       0.00          0          0          0           0
Execute      2      0.00       0.00          0          0          0           0
Fetch        2      0.00       0.00          0          4          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        5      0.00       0.00          0          4          0           0

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  SORT GROUP BY (cr=2 pr=0 pw=0 time=40 us starts=1 cost=4 size=17 card=1)
         0          0          0   TABLE ACCESS BY INDEX ROWID BATCHED OBJAUTH$ (cr=2 pr=0 pw=0 time=15 us starts=1 cost=3 size=17 card=1)
         0          0          0    INDEX RANGE SCAN I_OBJAUTH1 (cr=2 pr=0 pw=0 time=14 us starts=1 cost=2 size=0 card=1)(object id 62)

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
Parse        1      0.00       0.00          0          0          0           0
Execute      2      0.00       0.00          0          0          0           0
Fetch        2      0.00       0.00          0          4          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        5      0.00       0.00          0          4          0           0

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  SORT GROUP BY (cr=2 pr=0 pw=0 time=16 us starts=1 cost=4 size=17 card=1)
         0          0          0   TABLE ACCESS BY INDEX ROWID BATCHED OBJAUTH$ (cr=2 pr=0 pw=0 time=8 us starts=1 cost=3 size=17 card=1)
         0          0          0    INDEX RANGE SCAN I_OBJAUTH1 (cr=2 pr=0 pw=0 time=8 us starts=1 cost=2 size=0 card=1)(object id 62)

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
Fetch        2      0.00       0.00          0         16          0           2
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        6      0.00       0.00          0         16          0           2

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: ALL_ROWS
Parsing user id: 104     (recursive depth: 2)
Number of plan statistics captured: 2

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  RESULT CACHE  bvxytt3bjnw6u5hh417851xk0j (cr=8 pr=0 pw=0 time=476 us starts=1)
         1          1          1   SORT AGGREGATE (cr=8 pr=0 pw=0 time=364 us starts=1)
      2000       1000       2000    TABLE ACCESS FULL HOTEL (cr=8 pr=0 pw=0 time=94 us starts=1 cost=5 size=28674 card=1062)

********************************************************************************

SQL ID: 2uv96c3cban8p Plan Hash: 2198952967

INSERT INTO HOTEL 
VALUES
(HOTEL_S.NEXTVAL, :B2 , :B1 , TRUNC(DBMS_RANDOM.VALUE(6, 20)))


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute   1000      0.12       0.12          0          8       4088        1000
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total     1001      0.12       0.12          0          8       4088        1000

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: ALL_ROWS
Parsing user id: 104     (recursive depth: 1)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  LOAD TABLE CONVENTIONAL  HOTEL (cr=1 pr=0 pw=0 time=351 us starts=1)
         1          1          1   SEQUENCE  HOTEL_S (cr=1 pr=0 pw=0 time=243 us starts=1)

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
Parse        2      0.00       0.00          0          0          0           0
Execute      2      0.00       0.00          0          0          0           0
Fetch        2      0.00       0.00          0        348          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        6      0.00       0.00          0        348          0           0

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  TABLE ACCESS BY INDEX ROWID BATCHED OBJ$ (cr=0 pr=0 pw=0 time=0 us starts=0 cost=3 size=29 card=1)
         0          0          0   INDEX RANGE SCAN I_OBJ1 (cr=0 pr=0 pw=0 time=0 us starts=0 cost=2 size=0 card=1)(object id 36)
         0          0          0  NESTED LOOPS  (cr=38 pr=0 pw=0 time=463 us starts=1 cost=6 size=236 card=1)
         0          0          0   NESTED LOOPS  (cr=38 pr=0 pw=0 time=463 us starts=1 cost=5 size=87 card=1)
         0          0          0    NESTED LOOPS  (cr=38 pr=0 pw=0 time=462 us starts=1 cost=3 size=55 card=1)
       126        126        126     TABLE ACCESS BY INDEX ROWID TRIGGER$ (cr=25 pr=0 pw=0 time=351 us starts=1 cost=2 size=23 card=1)
       147        147        147      INDEX FULL SCAN I_TRIGGER2 (cr=1 pr=0 pw=0 time=36 us starts=1 cost=1 size=0 card=7)(object id 280)
         0          0          0     INDEX RANGE SCAN I_OBJ5 (cr=13 pr=0 pw=0 time=89 us starts=126 cost=1 size=32 card=1)(object id 40)
         0          0          0    TABLE ACCESS BY INDEX ROWID OBJ$ (cr=0 pr=0 pw=0 time=0 us starts=0 cost=2 size=32 card=1)
         0          0          0     INDEX RANGE SCAN I_OBJ1 (cr=0 pr=0 pw=0 time=0 us starts=0 cost=1 size=0 card=1)(object id 36)
         0          0          0   TABLE ACCESS CLUSTER USER$ (cr=0 pr=0 pw=0 time=0 us starts=0 cost=1 size=149 card=1)
         0          0          0    INDEX UNIQUE SCAN I_USER# (cr=0 pr=0 pw=0 time=0 us starts=0 cost=0 size=0 card=1)(object id 11)

********************************************************************************

SQL ID: 8ggw94h7mvxd7 Plan Hash: 0

COMMIT


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        6      0.00       0.00          0          0          0           0
Execute      6      0.01       0.00          0          0          6           0
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total       12      0.01       0.00          0          0          6           0

Misses in library cache during parse: 0
Parsing user id: 104     (recursive depth: 1)
********************************************************************************

SQL ID: 1f0xd1cqqz8n2 Plan Hash: 0

INSERT INTO SESSION_ACTIVITY 
VALUES
('HOTEL', 'INSERT', :B1 )


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute      1      0.00       0.00          0          2          2           1
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        2      0.00       0.00          0          2          2           1

Misses in library cache during parse: 0
Optimizer mode: ALL_ROWS
Parsing user id: 104     (recursive depth: 1)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  LOAD TABLE CONVENTIONAL  SESSION_ACTIVITY (cr=2 pr=0 pw=0 time=53 us starts=1)

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
         1          1          1  FAST DUAL  (cr=0 pr=0 pw=0 time=1 us starts=1 cost=2 size=0 card=1)

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
Fetch        2      0.00       0.00          0         16          0           2
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        6      0.00       0.00          0         16          0           2

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: ALL_ROWS
Parsing user id: 104     (recursive depth: 2)
Number of plan statistics captured: 2

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  RESULT CACHE  gjrgzm6jy2p4u1x9vq0x08y2h2 (cr=8 pr=0 pw=0 time=92 us starts=1)
         1          1          1   SORT AGGREGATE (cr=8 pr=0 pw=0 time=57 us starts=1)
      3000       1500       3000    TABLE ACCESS FULL HOTEL (cr=8 pr=0 pw=0 time=43 us starts=1 cost=5 size=0 card=1062)

********************************************************************************

SQL ID: 41a2qa5wu0bk5 Plan Hash: 2733414593

SELECT MAX(HOTEL_ID) 
FROM
 HOTEL


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          2          0           0
Execute      1      0.00       0.00          0          0          0           0
Fetch        1      0.00       0.00          0          2          0           1
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        3      0.00       0.00          0          4          0           1

Misses in library cache during parse: 1
Optimizer mode: ALL_ROWS
Parsing user id: 104     (recursive depth: 1)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  SORT AGGREGATE (cr=2 pr=0 pw=0 time=10 us starts=1)
         1          1          1   INDEX FULL SCAN (MIN/MAX) HOTEL_ID_PK (cr=2 pr=0 pw=0 time=8 us starts=1 cost=2 size=13 card=1)(object id 75121)

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
Execute 1000000     53.51      52.84          0       7217    1074293     1000000
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total   1000001     53.51      52.84          0       7217    1074293     1000000

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: ALL_ROWS
Parsing user id: 104     (recursive depth: 1)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  LOAD TABLE CONVENTIONAL  BOOKING (cr=0 pr=0 pw=0 time=124 us starts=1)

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
         1          1          1  TABLE ACCESS BY USER ROWID CDEF$ (cr=1 pr=0 pw=0 time=5 us starts=1 cost=1 size=15 card=1)

********************************************************************************

SQL ID: 5say587752zh3 Plan Hash: 2397009925

select name,online$,contents$,undofile#,undoblock#,blocksize,dflmaxext,
  dflinit,dflincr,dflextpct,dflminext, dflminlen, owner#,scnwrp,scnbas, 
  NVL(pitrscnwrp, 0), NVL(pitrscnbas, 0), dflogging, bitmapped, inc#, 
  MOD(flags,(4294967296 * 4294967296)), plugged, NVL(spare1,0), NVL(spare2,0),
   affstrength, FLOOR(flags/(4294967296 * 4294967296)) 
from
 ts$ where ts#=:1


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute      1      0.01       0.00          0          0          0           0
Fetch        1      0.00       0.00          0          2          0           1
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        3      0.01       0.00          0          2          0           1

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 2)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  TABLE ACCESS CLUSTER TS$ (cr=2 pr=0 pw=0 time=14 us starts=1 cost=1 size=88 card=1)
         1          1          1   INDEX UNIQUE SCAN I_TS# (cr=1 pr=0 pw=0 time=7 us starts=1 cost=0 size=0 card=1)(object id 7)

********************************************************************************

SQL ID: 0sbbcuruzd66f Plan Hash: 2239883476

select /*+ rule */ bucket_cnt, row_cnt, cache_cnt, null_cnt, timestamp#, 
  sample_size, minimum, maximum, distcnt, lowval, hival, density, col#, 
  spare1, spare2, avgcln, minimum_enc, maximum_enc 
from
 hist_head$ where obj#=:1 and intcol#=:2


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          0          0           0
Execute     27      0.00       0.00          0          0          0           0
Fetch       27      0.00       0.00          0         81          0          27
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total       55      0.00       0.00          0         81          0          27

Misses in library cache during parse: 0
Optimizer mode: RULE
Parsing user id: SYS   (recursive depth: 3)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  TABLE ACCESS BY INDEX ROWID HIST_HEAD$ (cr=3 pr=0 pw=0 time=58 us starts=1)
         1          1          1   INDEX RANGE SCAN I_HH_OBJ#_INTCOL# (cr=2 pr=0 pw=0 time=30 us starts=1)(object id 70)

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
Fetch        1      0.00       0.00          0         16          0           1
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        3      0.00       0.00          0         16          0           1

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: ALL_ROWS
Parsing user id: 104     (recursive depth: 2)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  RESULT CACHE  5zjvjc03r6kgs2bv5sackfsj82 (cr=16 pr=0 pw=0 time=253 us starts=1)
         1          1          1   SORT AGGREGATE (cr=16 pr=0 pw=0 time=229 us starts=1)
      3000       3000       3000    TABLE ACCESS FULL HOTEL (cr=16 pr=0 pw=0 time=113 us starts=1 cost=5 size=13806 card=1062)

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
Fetch        1      0.00       0.00          0          6          0           1
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        3      0.00       0.00          0          6          0           1

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: ALL_ROWS
Parsing user id: 104     (recursive depth: 2)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  RESULT CACHE  4vhcsc4h99ng82s36yrd77j9pk (cr=6 pr=0 pw=0 time=642 us starts=1)
         1          1          1   SORT AGGREGATE (cr=6 pr=0 pw=0 time=604 us starts=1)
      2500       2500       2500    VIEW  (cr=6 pr=0 pw=0 time=767 us starts=1 cost=2 size=390 card=10)
      2500       2500       2500     COUNT STOPKEY (cr=6 pr=0 pw=0 time=265 us starts=1)
      2500       2500       2500      INDEX RANGE SCAN HOTEL_ID_PK (cr=6 pr=0 pw=0 time=137 us starts=1 cost=2 size=689 card=53)(object id 75121)

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
Execute      1      0.00       0.00          0          0          0           0
Fetch        1      0.00       0.00          0          3          0           1
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        3      0.00       0.00          0          3          0           1

Misses in library cache during parse: 0
Optimizer mode: CHOOSE
Parsing user id: SYS   (recursive depth: 3)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  TABLE ACCESS CLUSTER SEG$ (cr=3 pr=0 pw=0 time=8 us starts=1 cost=2 size=64 card=1)
         1          1          1   INDEX UNIQUE SCAN I_FILE#_BLOCK# (cr=2 pr=0 pw=0 time=5 us starts=1 cost=1 size=0 card=1)(object id 9)

********************************************************************************

SQL ID: 10gywwmwk6xfy Plan Hash: 1426583507

select /* QOSD */ /*+ index(eh)*/ objn, sub_id, fixed_cost, text, col_list, 
  flags, ctime 
from
 exp_head$ eh where exp_id = :1


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
         1          1          1  TABLE ACCESS BY INDEX ROWID EXP_HEAD$ (cr=3 pr=0 pw=0 time=34 us starts=1 cost=0 size=4078 card=1)
         1          1          1   INDEX UNIQUE SCAN I_EXP_HEAD$ (cr=2 pr=0 pw=0 time=30 us starts=1 cost=0 size=0 card=1)(object id 718)

********************************************************************************

SQL ID: bfq11nsc0qmx4 Plan Hash: 2717540409

select room_count 
from
 hotel where hotel_id < 100001 for update nowait


call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        1      0.00       0.00          0          2          2           0
Execute      1      0.01       0.00          0         17       3050           0
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        2      0.01       0.00          0         19       3052           0

Misses in library cache during parse: 1
Optimizer mode: ALL_ROWS
Parsing user id: 104     (recursive depth: 1)
Number of plan statistics captured: 1

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         0          0          0  FOR UPDATE  (cr=17 pr=0 pw=0 time=7785 us starts=1)
      3000       3000       3000   BUFFER SORT (cr=16 pr=0 pw=0 time=907 us starts=2)
      3000       3000       3000    TABLE ACCESS FULL HOTEL (cr=16 pr=0 pw=0 time=402 us starts=1 cost=5 size=78000 card=3000)

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
Parse        2      0.00       0.00          0          0          2           0
Execute      2      0.00       0.00          0          0          0           0
Fetch        2      0.00       0.00          0         16          0           2
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        6      0.00       0.00          0         16          2           2

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: ALL_ROWS
Parsing user id: 104     (recursive depth: 2)
Number of plan statistics captured: 2

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  RESULT CACHE  bs10h84t1g3r851vcfsaajat2a (cr=8 pr=0 pw=0 time=2037 us starts=1)
         1          1          1   SORT AGGREGATE (cr=8 pr=0 pw=0 time=2005 us starts=1)
      3000       1500       3000    TABLE ACCESS FULL HOTEL (cr=8 pr=0 pw=0 time=155 us starts=1 cost=5 size=13806 card=1062)

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
Parse        2      0.00       0.00          0          0          2           0
Execute      2      0.00       0.00          0          0          0           0
Fetch        2      0.00       0.00          0          6          0           2
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        6      0.00       0.00          0          6          2           2

Misses in library cache during parse: 1
Misses in library cache during execute: 1
Optimizer mode: ALL_ROWS
Parsing user id: 104     (recursive depth: 2)
Number of plan statistics captured: 2

Rows (1st) Rows (avg) Rows (max)  Row Source Operation
---------- ---------- ----------  ---------------------------------------------------
         1          1          1  RESULT CACHE  a46a3whd3nr6xct8ztsmqh82s8 (cr=3 pr=0 pw=0 time=198 us starts=1)
         1          1          1   SORT AGGREGATE (cr=3 pr=0 pw=0 time=189 us starts=1)
      2500       1250       2500    VIEW  (cr=3 pr=0 pw=0 time=321 us starts=1 cost=2 size=477 card=53)
      2500       1250       2500     COUNT STOPKEY (cr=3 pr=0 pw=0 time=320 us starts=1)
      2500       1250       2500      INDEX RANGE SCAN HOTEL_ID_PK (cr=3 pr=0 pw=0 time=195 us starts=1 cost=2 size=689 card=53)(object id 75121)




********************************************************************************

OVERALL TOTALS FOR ALL NON-RECURSIVE STATEMENTS

call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse        0      0.00       0.00          0          0          0           0
Execute      0      0.00       0.00          0          0          0           0
Fetch        0      0.00       0.00          0          0          0           0
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total        0      0.00       0.00          0          0          0           0

Misses in library cache during parse: 0


OVERALL TOTALS FOR ALL RECURSIVE STATEMENTS

call     count       cpu    elapsed       disk      query    current        rows
------- ------  -------- ---------- ---------- ---------- ----------  ----------
Parse       48      0.00       0.02          0         75          8           0
Execute 1002100     53.68      53.00          0       7248    1081439     1001001
Fetch     1141      0.10       0.08          0      16688          0        1107
------- ------  -------- ---------- ---------- ---------- ----------  ----------
total   1003289     53.79      53.11          0      24011    1081447     1002108

Misses in library cache during parse: 16
Misses in library cache during execute: 12

   23  user  SQL statements in session.
   17  internal SQL statements in session.
   40  SQL statements in session.
********************************************************************************
Trace file: orcl_ora_18244.trc
Trace file compatibility: 12.2.0.0
Sort options: default

       1  session in tracefile.
      23  user  SQL statements in trace file.
      17  internal SQL statements in trace file.
      40  SQL statements in trace file.
      36  unique SQL statements in trace file.
 2007935  lines in trace file.
     107  elapsed seconds in trace file.


