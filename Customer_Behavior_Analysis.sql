SELECT *
FROM customer_behavior;

SELECT City,COUNT(*) AS total_customer
FROM customer_behavior
GROUP BY City
ORDER BY total_customer DESC;

SELECT `Membership Type`,ROUND(SUM(`Total Spend`),0) AS total_revenue
FROM customer_behavior
GROUP BY `Membership Type`
ORDER BY total_revenue DESC;

SELECT `Membership Type`,`Satisfaction Level`,COUNT(*) AS count_sat
FROM customer_behavior
WHERE `Satisfaction Level` = 'Unsatisfied'
GROUP BY `Membership Type`,`Satisfaction Level`;

SELECT `Discount Applied`,AVG(`Items Purchased`) AS avg_items
FROM customer_behavior
GROUP BY `Discount Applied`;

SELECT CASE WHEN Age < 30 THEN 'Younger'
            WHEN Age BETWEEN 30 AND 45 THEN 'ADULT' ELSE 'OLDER' END AS Age_Group,
            SUM(`Total Spend`) AS Total_Revenue
FROM customer_behavior
GROUP BY Age_Group;

SELECT CASE WHEN Age < 30 THEN 'Younger'
            WHEN Age BETWEEN 30 AND 45 THEN 'Adult'
			END AS Age_Group,
		ROUND(SUM(`Total Spend`),0) AS Total_Revenue,
        ROUND(AVG(`Total Spend`),0) AS Avg_Spend_Per_Person
FROM customer_behavior
GROUP BY Age_Group
ORDER BY Total_Revenue DESC;
















