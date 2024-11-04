SELECT 
    p.Product_ID,
    p.Name AS Product_Name,
    SUM(od.Quantity) AS Total_Units_Sold
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
    Total_Units_Sold DESC
LIMIT 2;