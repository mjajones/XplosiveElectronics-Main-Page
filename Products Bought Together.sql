SELECT 
    p1.Product_ID AS Product_A,
    p2.Product_ID AS Product_B,
    COUNT(*) AS Frequency
FROM 
    order_detail p1
JOIN 
    order_detail p2 ON p1.Order_ID = p2.Order_ID AND p1.Product_ID < p2.Product_ID
GROUP BY 
    Product_A, Product_B
HAVING 
    Frequency > 5;