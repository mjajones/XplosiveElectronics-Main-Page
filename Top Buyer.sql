SELECT 
    c.Customer_ID,
    c.Name,
    c.Email,
    SUM(od.Quantity * od.Price) AS Total_Spent
FROM 
    customer c
JOIN 
    orders o ON c.Customer_ID = o.Customer_ID
JOIN 
    order_detail od ON o.Order_ID = od.Order_ID
WHERE 
    o.Order_Date >= DATE_SUB(CURDATE(), INTERVAL 1 YEAR)
GROUP BY 
    c.Customer_ID, c.Name, c.Email
ORDER BY 
    Total_Spent DESC
LIMIT 1;