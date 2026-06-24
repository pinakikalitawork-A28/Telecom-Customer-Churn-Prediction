
SELECT 
Gender, COUNT(Gender) As Total_Count,
ROUND(COUNT(Gender)*100.0/ (SELECT Count(*) from stg_Churn),2) as percentage 
FROM stg_Churn
GROUP BY Gender

SELECT Contract, Count(Contract) as TotalCount,
Count(Contract) * 100.0 / (Select Count(*) from stg_Churn)  as Percentage
from stg_Churn
Group by Contract

SELECT Customer_Status, Count(Customer_Status) as Total_churned_customers,
Count(Customer_Status) * 100.0 / (Select Count(*) from stg_Churn) as Percentage
from stg_Churn
Group by Customer_Status

SELECT Customer_Status, Count(Customer_Status) as TotalCount, Sum(Total_Revenue) as TotalRev,
Sum(Total_Revenue) / (Select sum(Total_Revenue) from stg_Churn) * 100  as RevPercentage
from stg_Churn
Group by Customer_Status

SELECT TOP 5 State, Count(State) as TotalCount,
Count(State) * 100.0 / (Select Count(*) from stg_Churn)  as Percentage
from stg_Churn
Group by State
Order by Percentage desc

SELECT DISTINCT Internet_Type
FROM stg_Churn


