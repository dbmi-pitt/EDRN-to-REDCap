# EDRN-to-REDCap
Migration of EDRN into REDCap

****Instructions****

1.	Create the project in REDCap, named ‘EDRN’ and enable Longitudinal data collection under main project settings.

2.	Import the data dictionary from the github repository.

3.	Run script ‘EDRN Data Export script.sql’ against schema EDRN on PRD01 and export the data into a CSV file.

4.	In REDCap, navigate to the Data Import Tool and download the import template (with records in rows).

5.	Copy the contents of the exported CSV (excluding headers) into the import template and save.

6.	Upload the import template via Data Import Tool into the project


****Yet to do****

Translate EDRN calculated fields into REDCap calculated fields. (See list of calc fields.xlsx).<br>
Refine export script to reduce number of duplicates.<br>
Reformat the exported data to place longitudinal events in the proper columns<br>
Run Data Quality checks<br>
It looks like Global Database statistics has some problems. It only fills in one field and it is a code number instead of showing the value. <br>

****COMPLETE****

Dates need date format validation - **DONE** D-M-Y validation added to consent_date1_c3, consent_date2_c5, consent_date3_c7, what_is_your_birth_date_c9, last_colonoscopy_date_d61m, date_of_procedure_a90, date_of_procedurecollection_i212, date_of_ctrt_i229.<br>
I think Yes/No may not be converted properly ( generally) . It’s a vague memory I have. - **DONE** The yes/no case when's didn't exist in the export script.<br>
Change those goofy year fields to be a number instead of check boxes like procedure_date_range I think they did it that way because of a edrn limitation. - **DONE** The range fields have been removed as they were query only fields in EDRN and REDCap doesn't have query only fields. Queries are done via reporting.<br>
Create events in REDCap for different stages of data entry, turning the project into a longitudinal study. - **DONE** GROUP BY clause run against each individual table to determine that the max for multiple entries so far is 13. Created 15 events in the project.<br>
