/*Write a query to create a patients table with the fields such as date, patient id, patient name, age, weight, gender, location, phone number, disease, doctor name, and doctor id.*/
Create Database Patient_diagnosis; 
Use Patient_diagnosis;
Create Table patients(date date NOT NULL,id int NOT NULL,name varchar(25) NOT NULL,age int NOT NULL,weight float NOT NULL,gender varchar(25) NOT NULL,location varchar(25) NOT NULL,phonenumber float NOT NULL,disease varchar(25) NOT NULL,d_name varchar(25) NOT NULL,d_id int NOT NULL);
/*Write a query to display the total number of patients in the table.*/
Select Count(p_name) from patients_datasets;
/*Write a query to display the patient id, patient name, gender, and disease of the patient whose age is maximum*/
Select pid,p_name,gender,disease,Max(age) from patients_datasets;
/*Write a query to display patient id and patient name with the current date.*/
Select pid,p_name,Now() from patients_datasets;
/*Write a query to display the old patient’s name and new patient's name in uppercase*/
Select Ucase(p_name) from patients_datasets;
/*Write a query to display the patient’s name along with the length of their name.*/
Select Length(p_name) from patients_datasets;
/*Write a query to combine the names of the patient and the doctor in a new column.*/
Select *,Concat(p_name,doctor_name) from patients_datasets;
/*Write a query to extract the year from the given date in a separate column.*/
Select *, Year(date) from patients_datasets;
/*Write a query to display the doctor’s duplicate name from the table*/
Select doctor_name,count(doctor_name) from patients_datasets group by doctor_name Having count(doctor_name)>1;

