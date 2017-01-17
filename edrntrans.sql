create table MDE as
SELECT column_name
FROM   all_tab_cols
WHERE  table_name = 'OBSERVATION_FACT';

--create table pca_patient_columns as
SELECT table_name, column_name, data_type
FROM   all_tab_cols
WHERE  table_name = 'PCA_PATIENT';

select * from pca_patient_columns;

--create table tmp as 
select 'select ''' || column_name  || ''', ' || column_name ||
', irid' || ' from pca_patient;' select_statement
from mde;



select 'select ''' || column_name  || ''', ' || column_name ||
', patient_num' || ' from small_obs;'
from mdc;

select 'select ''' || column_name  || ''', ' || column_name ||
', irid' || ' from pca_patient;'
from mdc;

select 'CONCEPT_CD', CONCEPT_CD, patient_num from small_obs;


select 'table_name' from mdc;

c.column_name, ''', c.column_name, ''';

SELECT c.column_name, e.column_name
FROM   mdc c, MDE e
WHERE  c.table_name = 'OBSERVATION_FACT'
and c.column_name = e.column_name;


create table small_obs as select * from observation_fact where rownum < 1000;

SELECT c.column_name, e.column_name, o.patient_num, o.tval_char
FROM   mdc c, small_obs o, MDE e
WHERE c.column_name = e.column_name
and  o.PATIENT_NUM = 2668914;


 select 'select ''' || column_name  || ''', ' || column_name || ', irid' || ' from pca_patient;'
from pca_patient_columns;

CREATE TABLE EDRN.pca_patient_as_eav AS
SELECT 'select '''  || column_name  || ''', '  || column_name  || ', irid'  || ' from EDRN.pca_patient;'
FROM EDRN.pca_patient_columns;

     