SELECT Department,
COUNT(*) AS employees,
SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) AS attrition_count
FROM employee_attrition
GROUP BY Department
ORDER BY attrition_count DESC;

SELECT JobRole,
COUNT(*) AS employees,
SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) AS attrition_count
FROM employee_attrition
GROUP BY JobRole
ORDER BY attrition_count DESC;

SELECT Attrition,
ROUND(AVG(MonthlyIncome),2) AS avg_income
FROM employee_attrition
GROUP BY Attrition;