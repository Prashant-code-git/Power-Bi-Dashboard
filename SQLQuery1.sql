
select COUNT(id) as Totoal_application  from bank_loan_data 

select count(id) as Total_application from bank_loan_data where MONTH(issue_date)=12;
select count(id) as Total_application from bank_loan_data where MONTH(issue_date)=11;

select sum(loan_amount)as Total_Funded_Amount from bank_loan_data;

select sum(loan_amount)as Total_Funded_Amount from bank_loan_data where MONTH(issue_date)=12;

select sum(loan_amount)as Total_Funded_Amount from bank_loan_data where MONTH(issue_date)=11;

select sum(total_payment)as Total_Amount_Collected  from bank_loan_data ; 
select sum(total_payment)as Total_Amount_Collected from bank_loan_data where MONTH(issue_date)=12;
select sum(total_payment)as Total_Amount_Collected from bank_loan_data where MONTH(issue_date)=11;

select AVG(int_rate)*100 as Avg_rate_intrest from bank_loan_data;
select AVG(int_rate)*100 as Avg_rate_intrest from bank_loan_data where MONTH(issue_date)=12;
select AVG(int_rate)*100 as Avg_rate_intrest from bank_loan_data where MONTH(issue_date)=11;

select AVG(dti)*100 as Avg_dti from bank_loan_data;
select AVG(dti)*100 as Avg_dti from bank_loan_data where MONTH(issue_date)=12;
select AVG(dti)*100 as Avg_dti from bank_loan_data where MONTH(issue_date)=11;



select (COUNT (case when loan_status='Fully Paid' or loan_status='Current' then id end)*100)/COUNT(id) as Good_loan_percentage from bank_loan_data

select count(id) as Good_loan_application from bank_loan_data where loan_status='Fully Paid' or loan_status='Current'

select sum(loan_amount) as good_loan_funded_amount from bank_loan_data where loan_status='Fully Paid' or loan_status='Current'

select sum(total_payment) as good_loan_amount_recived from bank_loan_data where loan_status='Fully Paid' or loan_status='Current'






select (COUNT (case when loan_status='Charged Off'  then id end)*100)/COUNT(id) as Bad_loan_percentage from bank_loan_data

select count(id) as Bad_loan_application from bank_loan_data where loan_status='Charged Off' 

select sum(loan_amount) as Bad_loan_funded_amount from bank_loan_data where loan_status='Charged Off' 

select sum(total_payment) as Bad_loan_amount_recived from bank_loan_data where loan_status='Charged Off'


select loan_status, 
       COUNT(id) as loanCount,
       sum(total_payment) as Total_amount_recived,
	   sum(loan_amount) as Total_funded_amount,
	   avg(int_rate*100) as avg_intrest_rate,
	   avg(dti *100) as DIT
	   from bank_loan_data
	   group by loan_status;

SELECT 
	loan_status, 
	SUM(total_payment) AS MTD_Total_Amount_Received, 
	SUM(loan_amount) AS MTD_Total_Funded_Amount 
FROM bank_loan_data
WHERE MONTH(issue_date) = 12 
GROUP BY loan_status






#month 

SELECT MONTH(issue_date) as month_number,
       DATENAME(month,issue_date) as Month_name,
       count(id) as total_loan_application,
       sum(loan_amount) as total_funded_amount,
       sum(total_payment) as total_amount_received from bank_loan_data
	   group by month(issue_date),DATENAME(month,issue_date)
	   order by month(issue_date)
	   555555555555555555555555555555555555555
