SELECT 
    p.Product_ID,
    p.Name AS Product_Name,
    l.Name AS Store_Name
FROM 
    product p
JOIN 
    inventory i ON p.Product_ID = i.Product_ID
JOIN 
    location l ON i.Location_ID = l.Location_ID
WHERE 
    l.Location_Type = 'Store'
GROUP BY 
    p.Product_ID, p.Name, l.Name
HAVING 
    SUM(i.Quantity) = 0;