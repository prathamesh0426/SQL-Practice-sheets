-- create database
create database groupby_data;

-- 1. Use the database
use groupby_data;

-- 2. show tables
show tables;

-- 3. View entire startups table
select * from startups;

-- 4. Order by Query by default orders in ascending
select * 
from startups
order by profit;

-- 5. Order by MKT in descending order
select *
from startups
order by mkt desc;

-- 6. Order by STATE 
select *
from startups
order by state;

-- 7. Order by State descending order
select *
from startups
order by state desc;

-- 8. Order by STATE and PROFIT
select *
from startups
order by state, profit;


-- 9. Order by STATE in asc , Profit in Desc
select *
from startups
order by state asc, profit desc;

-- 10. Find out different states counts
select state, count(*) from startups
group by state;

-- 11. Find out average profit based on states and arange avg profit in desc order
select avg(profit) as avg_profit, state
from startups
group by state
order by avg(profit) desc;

-- 12. Find out Max MKT based on states and arrange MKT in ascending order
select state, max(mkt) as max_mkt

from startups
group by state
order by max(mkt) asc;

-- 13. Find out std deviation for ADMIN based on states
select round(std(admin),2) as std_admin, state
from startups
group by state;


-- 14. Find out total Spend by startups
select state,round((rnd+admin+mkt),2) as total_spend from startups
order by total_spend;

-- 15. Find out min total spend based on states 
select state, min(round((rnd+admin+mkt),2)) as total_spend
from startups
group by state
order by total_spend;

-- 16. view tables
show tables;

-- 17. view the tips table
select * from tips;

-- 18. Find avg of total bill based on day and time
select day, time, round(avg(total_bill),2) as avg_bill
from tips
group by day, time;

-- 19. Find out sum of total bill and tips based on smoker and gender 
-- order by tips desc
select round(sum(total_bill),2), sum(tip), smoker, sex
from tips
group by smoker, sex
order by sum(tip) desc;

-- 20. Find out top 5 tips in the data
select *
from tips
order by tip desc
limit 5;

-- 21. Find out bottom 3 total_bill in the data
select *
from tips
order by total_bill
limit 3;

-- 22. Find out highest size in the data
select max(size)
from tips;

-- 23. Find out highest total bill
select *
from tips
order by total_bill desc
limit 1;

-- 24. Find out highest tip by female and non smoker
select *
from tips
where sex = "female" and smoker = "No"
order by tip desc
limit 1;

-- 25. Find out third highest tip by female and non smoker
select *
from tips
where sex = "female" and smoker = "no"
order by tip desc
limit 1
offset 2;

-- 26. Find out the entry where lowest tip was paid
select *
from tips
order by tip
limit 1;

-- 27. Nested query
select * from tips
where tip = (select min(tip) from tips);


-- Find out 5th lowest tip paid by female, smoker
select *
from tips
where sex = "female" and smoker = "yes"
order by tip 
limit 1
offset 4;



