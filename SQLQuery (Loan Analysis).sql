select * from financial_loan

select count(id)as MTD_Total_Loan_Applications from financial_loan
where MONTH(issue_date) = 12 AND YEAR(issue_date) = 2021

select count(id)as PMTD_Total_Loan_Applications from financial_loan
where MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021

select sum(loan_amount) as MTD_Total_Funded_Amount from financial_loan
where month(issue_date) = 12 and YEAR(issue_date) = 2021

select sum(loan_amount) as PMTD_Total_Funded_Amount from financial_loan
where month(issue_date) = 11 and YEAR(issue_date) = 2021

select sum(total_payment) as MTD_Total_Amount_Recieved from financial_loan
where month(issue_date) = 12 and YEAR(issue_date) = 2021

select sum(total_payment) as PMTD_Total_Amount_Recieved from financial_loan
where month(issue_date) = 11 and YEAR(issue_date) = 2021

select Round(AVG(int_rate),4) * 100 as MTD_Average_Interest_Rate from financial_loan
where month(issue_date) = 12 and YEAR(issue_date) = 2021

select Round(AVG(int_rate),4) * 100 as PMTD_Average_Interest_Rate from financial_loan
where month(issue_date) = 11 and YEAR(issue_date) = 2021

select Round(AVG(dti),4) * 100 as MTD_Debt_to_Income_Ratio from financial_loan
where month(issue_date) = 12 and YEAR(issue_date) = 2021

select Round(AVG(dti),4) * 100 as PMTD_Debt_to_Income_Ratio from financial_loan
where month(issue_date) = 11 and YEAR(issue_date) = 2021

select
	(count(case when loan_status = 'Fully Paid' or loan_status = 'current' then id end) * 100)
	/ 
	COUNT(id) AS Good_loan_Percentage
From financial_loan

select count(id) as Total_Good_Loan_Applications from financial_loan
where loan_status = 'fully Paid' or loan_status = 'current'

select Sum(loan_amount) as Total_Good_Loan_Funded_Amount from financial_loan
where loan_status = 'fully Paid' or loan_status = 'current'

select Sum(total_payment) as Total_Good_Loan_Recieved_Amount from financial_loan
where loan_status = 'fully Paid' or loan_status = 'current'

select
	(count(case when loan_status = 'Charged Off' then id end) * 100)
	/ 
	COUNT(id) AS Bad_loan_Percentage
From financial_loan

select count(id) as Total_Bad_Loan_Applications from financial_loan
where loan_status = 'Charged Off'

select Sum(loan_amount) as Total_Bad_Loan_Funded_Amount from financial_loan
where loan_status = 'Charged Off'

select Sum(total_payment) as Total_Bad_Loan_Recieved_Amount from financial_loan
where loan_status = 'Charged Off'

select 
		loan_status,
		count(id) AS Total_Loan_Applications,
		sum(total_payment) as Total_Amount,
		sum(loan_amount) as Total_Funded_Amount,
		Avg(int_rate * 100) as Interest_Rate,
		Avg(dti * 100) as DTI
	from	
		financial_loan
	Group By	
		loan_status

select	
		loan_status,
		sum(total_payment) as MTD_Total_Amount_Received,
		sum(loan_amount) as MTD_Total_Funded_Amount
	From financial_loan
	where month(issue_date) = 12
	Group by loan_status

SELECT
	Month(issue_date)as Month_Count,
	Datename(month,issue_date)as Month_Name,
	count(id) as Total_Loan_Applications,
	sum(loan_amount) as Total_Funded_Amount,
	sum(total_payment)as Total_Received_Amount
From	
	financial_loan
Group by
	Month(issue_date), Datename(month,issue_date)
order by
	Month(issue_date)

SELECT	
	address_state,
	count(id) as Total_Loan_Applications,
	sum(loan_amount) as Total_Funded_Amount,
	sum(total_payment)as Total_Received_Amount
from financial_loan
group by address_state
order by sum(loan_amount)
	

SELECT	
	term,
	count(id) as Total_Loan_Applications,
	sum(loan_amount) as Total_Funded_Amount,
	sum(total_payment)as Total_Received_Amount
from financial_loan
group by term
order by term

SELECT
	emp_length as Experience,
	count(id) as Total_Loan_Applications,
	sum(loan_amount) as Total_Funded_Amount,
	sum(total_payment)as Total_Received_Amount
from financial_loan
group by emp_length
order by count(id) DESC

SELECT
	purpose,
	count(id) as Total_Loan_Applications,
	sum(loan_amount) as Total_Funded_Amount,
	sum(total_payment)as Total_Received_Amount
from financial_loan
group by purpose
order by purpose

SELECT
	home_ownership,
	count(id) as Total_Loan_Applications,
	sum(loan_amount) as Total_Funded_Amount,
	sum(total_payment)as Total_Received_Amount
from financial_loan
group by home_ownership
order by home_ownership




