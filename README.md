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
Create events in REDCap for different stages of data entry, turning the project into a longitudinal study.<br>
