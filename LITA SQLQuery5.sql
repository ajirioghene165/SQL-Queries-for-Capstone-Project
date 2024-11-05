/*CREATE Capstone CUSTOMER(
CustomerID INTEGER,
Customer_Name VARCHAR,
Subscription Type,
Subscription Start,
Subscription End,
Canceled,
Revenue,
Subscription Duration*/

Select region,count(distinct Customerid) as total_customers from [NEW_LITACAPSTONE].[dbo].[Customer_Data]
Group by region;

Select top 1 Subscriptiontype,
count(distinct customerid) as total_customers from [NEW_LITACAPSTONE].[dbo].[Customer_Data]
Group by subscriptiontype
Order by total_customers desc;

Select Customerid from [NEW_LITACAPSTONE].[dbo].[Customer_Data]
where datediff( month, subscriptionstart , subscriptionend) <= 6;

Select avg(datediff(day,subscriptionstart, Subscriptionend)) as avg_Subscription_duration
From [NEW_LITACAPSTONE].[dbo].[Customer_Data]

Select customerid
From [NEW_LITACAPSTONE].[dbo].[Customer_Data]
Where datediff(month,Subscriptionstart, Subscriptionend) > 12;

Select subscriptiontype,
Sum(revenue) as total_revenue
from [NEW_LITACAPSTONE].[dbo].[Customer_Data]
Group by Subscriptiontype;


Select top 3 Region,
Count(*) as subscriptioned_count
From [NEW_LITACAPSTONE].[dbo].[Customer_Data]
where SubscriptionEnd is null
Group by Region
order by subscriptioned_count desc;

select count(canceled) as Canceled_Subcription
from [NEW_LITACAPSTONE].[dbo].[Customer_Data]
where Canceled = 1; 

select count(canceled) as Active_Subcription
from [NEW_LITACAPSTONE].[dbo].[Customer_Data]
where Canceled = 0; 

select count(*) as total_customers
from [NEW_LITACAPSTONE].[dbo].[Customer_Data]

