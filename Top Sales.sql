SELECT 
    p.Product_ID,
    p.Name AS Product_Name,
    SUM(od.Quantity * od.Price) AS Total_Revenue
FROM 
    product p
JOIN 
    order_detail od ON p.Product_ID = od.Product_ID
JOIN 
    orders o ON od.Order_ID = o.Order_ID
WHERE 
    o.Order_Date >= DATE_SUB(CURDATE(), INTERVAL 1 YEAR)
GROUP BY 
    p.Product_ID, p.Name
ORDER BY 
    Total_Revenue DESC
LIMIT 2;