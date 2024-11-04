SELECT 
    s.Shipment_ID,
    s.Tracking_Number,
    s.Order_ID,
    s.Shipment_Date,
    s.Delivery_Date,
    s.Shipment_Status,
    c.Name AS Customer_Name,
    c.Email AS Customer_Email
FROM 
    shipment s
JOIN 
    orders o ON s.Order_ID = o.Order_ID
JOIN 
    customer c ON o.Customer_ID = c.Customer_ID
WHERE 
    s.Shipment_Status = 'Late';