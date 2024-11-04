SELECT 
    c.Customer_ID,
    c.Name AS Customer_Name,
    c.Email AS Customer_Email,
    SUM(od.Quantity * od.Price) AS Total_Amount,
    '2024-10-31' AS Invoice_Date, 
    DATE_ADD('2024-10-31', INTERVAL 90 DAY) AS Due_Date,
    'Pending' AS Payment_Status
FROM 
    customer c
JOIN 
    orders o ON c.Customer_ID = o.Customer_ID
JOIN 
    order_detail od ON o.Order_ID = od.Order_ID
WHERE 
    o.Order_Date >= '2024-10-01' AND o.Order_Date <= '2024-10-31'
    AND c.Is_Contract_Customer = 1
GROUP BY 
    c.Customer_ID, c.Name, c.Email;