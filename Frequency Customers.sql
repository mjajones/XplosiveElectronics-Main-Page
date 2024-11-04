SELECT 
    c.Customer_ID,
    c.Name,
    COUNT(o.Order_ID) AS Order_Count,
    SUM(od.Quantity * od.Price) AS Total_Spent
FROM 
    customer c
JOIN 
    orders o ON c.Customer_ID = o.Customer_ID
JOIN 
    order_detail od ON o.Order_ID = od.Order_ID
GROUP BY 
    c.Customer_ID
ORDER BY 
    Total_Spent DESC;