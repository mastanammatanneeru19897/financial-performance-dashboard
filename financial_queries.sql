SELECT 
    SUM(Revenue) AS Total_Revenue,
    SUM(Expenses) AS Total_Expenses,
    (SUM(Revenue) - SUM(Expenses)) AS Net_Profit,
    ROUND((SUM(Revenue) - SUM(Expenses)) * 100.0 / SUM(Revenue), 2) AS Net_Profit_Margin_Percent
FROM financial_data
WHERE Year = 2026;

SELECT 
    Category,
    SUM(Budget_Amount) AS Total_Budget,
    SUM(Actual_Amount) AS Total_Actual,
    (SUM(Actual_Amount) - SUM(Budget_Amount)) AS Variance,
    ROUND((SUM(Actual_Amount) - SUM(Budget_Amount)) * 100.0 / SUM(Budget_Amount), 2) AS Variance_Percent
FROM budget_vs_actual
GROUP BY Category
ORDER BY Variance DESC;
