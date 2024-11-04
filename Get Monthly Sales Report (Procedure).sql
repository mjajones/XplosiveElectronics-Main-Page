CREATE PROCEDURE GetMonthlySales(IN reportYear INT)
BEGIN
    SELECT 
        MONTH(Order_Date) AS Month,
        SUM(od.Quantity * od.Price) AS Total_Sales_Amount,
        COUNT(DISTINCT o.Order_ID) AS Total_Orders
    FROM 
        orders o
    JOIN 
        order_detail od ON o.Order_ID = od.Order_ID
    WHERE 
        YEAR(Order_Date) = reportYear
    GROUP BY 
        MONTH(Order_Date);
END;