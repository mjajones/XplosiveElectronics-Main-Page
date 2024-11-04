const express = require('express');
const mysql = require('mysql2');
const app = express();
const port = 3000;
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

// Create connection to MySQL database
const connection = mysql.createConnection({
    host: 'localhost',  
    user: 'root',      
    password: 'Oneofus0548!', 
    database: 'xplosiveelectronics'  
});

// Connect to the database
connection.connect((err) => {
    if (err) {
        console.error('Error connecting to the database: ', err);
        return;
    }
    console.log('Connected to the MySQL database.');
});

// Serve static files - I used HTML, CSS and Javascript
app.use(express.static(__dirname));

// Route for index.html
app.get('/', (req, res) => {
    res.sendFile(__dirname + '/index.html');
});

// API route to get products from DB
app.get('/api/products', (req, res) => {
    let sql = 'SELECT * FROM product';
    
    // If a category is specified in query, select category
    if (req.query.category) {
        sql = `SELECT * FROM product WHERE Product_Type = '${req.query.category}'`;
    }

    connection.query(sql, (err, results) => {
        if (err) {
            console.error('Error fetching data from database: ', err);
            res.status(500).send('Error fetching data');
            return;
        }
        res.json(results); 
    });
});

// API to get inventory by location
app.get('/inventory/:locationId', (req, res) => {
    const locationId = req.params.locationId;
    const sql = `
        SELECT Product_ID, Quantity 
        FROM Inventory 
        WHERE Location_ID = ?;
    `;

    connection.query(sql, [locationId], (err, results) => {
        if (err) {
            console.error('Error fetching inventory: ', err);
            res.status(500).send('Error fetching inventory data');
            return;
        }
        res.json(results);
    });
});

// API to get specific product by ID
app.get('/api/products/:id', (req, res) => {
    const productId = req.params.id;
    const sql = 'SELECT * FROM product WHERE Product_ID = ?';
    connection.query(sql, [productId], (err, result) => {
        if (err) throw err;
        res.json(result[0]);
    });
});

// Start server
app.listen(port, () => {
    console.log(`Server running at http://localhost:${port}`);
});

// My cart page code
app.post('/submit-order', (req, res) => {
    const { Name, Address, Phone, Email, isContractCustomer, accountNumber, onlineCustomer, products } = req.body;

    // Console commands EVERYWHERE because I had a lot of issues
    console.log("Received order data:", req.body);

    if (!Name || !Address || !Phone || !Email) {
        return res.status(400).json({ success: false, message: 'Missing customer information.' });
    }

    // Insert customer information into customer table
    const query = `
        INSERT INTO customer (Name, Address, Phone, Email, Is_Contract_Customer, Account_Number, Online_Customer)
        VALUES (?, ?, ?, ?, ?, ?, ?)
    `;

    const customerValues = [Name, Address, Phone, Email, isContractCustomer, accountNumber, onlineCustomer];

    connection.query(query, customerValues, (err, customerResult) => {
        if (err) {
            console.error('Database error:', err);
            return res.status(500).json({ success: false, message: 'Error saving customer.' });
        }

        const customerId = customerResult.insertId;
        console.log("Customer saved, ID:", customerId);

        // Insert the order into the "orders" table
        const orderQuery = `
            INSERT INTO orders (Order_Date, Customer_ID, Order_Type, Payment_ID)
            VALUES (NOW(), ?, ?, ?)
        `;
        const orderValues = [customerId, 'Online', 1];  

        connection.query(orderQuery, orderValues, (err, orderResult) => {
            if (err) {
                console.error('Database error:', err);
                return res.status(500).json({ success: false, message: 'Error saving order.' });
            }

            const orderId = orderResult.insertId;
            console.log("Order saved, ID:", orderId);

            // Insert order details into the order_detail table
            const orderDetailQuery = `
                INSERT INTO order_detail (Order_ID, Product_ID, Quantity, Price)
                VALUES ?
            `;
            
            const productValues = products.map(product => [orderId, product.id, product.quantity, product.price]);
            console.log("Order details to saved:", productValues);

            connection.query(orderDetailQuery, [productValues], (err, orderDetailResult) => {
                if (err) {
                    console.error('Error saving order details:', err); 
                    return res.status(500).json({ success: false, message: 'Error saving order details.' })
                }
                

                console.log("Order details saved successfully");
                
                // For shipping part of datbase
                const shipperId = determineShipperId();

                // For tracking number gen
                const trackingNumber = Math.random().toString(36).substring(2, 15).toUpperCase();
                
                // 1 day after order day - ship date
                const shipmentDate = new Date();
                shipmentDate.setDate(shipmentDate.getDate() + 1);

                // Del date 3-5
                const deliveryDate = new Date();
                const businessDaysToAdd = Math.floor(Math.random() * 3) + 3;
                let daysAdded = 0;
                while (daysAdded < businessDaysToAdd) {
                    deliveryDate.setDate(deliveryDate.getDate() + 1);
                    if (deliveryDate.getDay() !==0 && deliveryDate.getDay() !==6) {
                        daysAdded++;
                    }
                }

                // Match DATETIME for my shipment table
                const moment = require('moment');
                const formattedShipmentDate = moment(shipmentDate).format('YYYY-MM-DD HH:mm:ss');
                const formattedDeliveryDate = moment(deliveryDate).format('YYYY-MM-DD HH:mm:ss');

                // push to shipment table
                const shipmentQuery = `
                    INSERT INTO shipment (Order_ID, Shipper_ID, Tracking_Number, Shipment_Date, Delivery_Date, Shipment_Status)
                    VALUES (?, ?, ?, ?, ?, ?)
                `;

                const shipmentValues = [orderId, shipperId, trackingNumber, formattedShipmentDate, formattedDeliveryDate, 'On-Time'];
                console.log("Shipment to saved:", shipmentValues);

                connection.query(shipmentQuery, shipmentValues, (err, shipmentResult) => {
                    if (err) {
                        console.error('Error saving shipment:', err);
                        
                    } else {
                        console.log("Shipment information saved successfully");

                        
                    }
                });

                // Update inventory table here after the order here
                // I added logic to pull from either my S Warehouse or N Warehouse randomly

                products.forEach(product => {
                    const productId = product.id;
                    const quantityOrdered = product.quantity;
                    const locationId = Math.random() < 0.5 ? 4 : 5;

                    const updateInventoryQuery = `
                        UPDATE inventory
                        SET Quantity = Quantity - ?
                        WHERE Product_ID = ?
                        AND Location_ID = ${locationId};
                    `;

                    connection.query(updateInventoryQuery, [quantityOrdered, productId], (err, updateResult) => {
                        if (err) {
                            console.error('Error updating inventory:', err);
                        }  else {
                            console.log('Inventory updated successfully!');
                        }
                        
                    });
                })

                // Reorder check
                products.forEach(product => { 
                    const productId = product.id;

                    // Get current inventory quantity for the product
                    const checkInventoryQuery = `SELECT Quantity FROM inventory WHERE Product_ID = ?`;
                    connection.query(checkInventoryQuery, [productId], (err, inventoryResult) => {
                        if (err) {
                            console.error('Error checking inventory:', err);
                            return;
                        }

                        const quantity = inventoryResult[0].Quantity;
                        
                        // Check if quantity is at 5 or below and see if reorder exists
                        if (quantity <= 5) { 
                            
                            const checkReorderQuery = `SELECT * FROM reorder WHERE Product_ID = ? AND Status = 'Pending'`;
                            connection.query(checkReorderQuery, [productId], (err, reorderResults) => {
                                if (err) {
                                    console.error('Error checking reorder:', err);
                                    return;
                                }

                                if (reorderResults.length === 0) {
                                    // If no pending reorder, create a new one
                                    const reorderQuery = `INSERT INTO reorder (Product_ID, Supplier_ID, Order_Date, Quantity, Status, Expected_Arrival_Date) 
                                                          VALUES (?, 1, NOW(), 10, 'Pending', DATE_ADD(NOW(), INTERVAL 7 DAY))`;
                                    connection.query(reorderQuery, [productId], (err, reorderResult) => {
                                        if (err) {
                                            console.error('Error creating reorder:', err);
                                        } else {
                                            console.log('Reorder created successfully!');
                                        }
                                    });
                                } else {
                                    console.log('Pending reorder already exists for this product.');
                                }
                                
                            });
                        
                        }
                    });
                });
                 
            });
            return res.json({ success: true, message: 'Order placed successfully!' });
        });
    });
});

// Function for randomly assigning to one of my 5 shipper ID's when order is processed.  
function determineShipperId() {
    const shippers = [1, 2, 3, 4, 5];
    let currentShipperIndex = 0;
    const shipperId = shippers[currentShipperIndex];
    currentShipperIndex = (currentShipperIndex + 1) % shippers.length;
    console.log("Shipper ID returned:", shipperId);
    return shipperId;
    
};


app.get('/test-db', (req, res) => {
    connection.query('SELECT * FROM customer LIMIT 1', (err, result) => {
        if (err) {
            console.error('Error querying database:', err);
            res.status(500).json({ message: 'Database query error.' });
        } else {
            console.log(result);
            res.json(result);
        }
    });
});