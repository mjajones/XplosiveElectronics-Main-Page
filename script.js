document.addEventListener('DOMContentLoaded', function() {
    const dropdowns = document.querySelectorAll('.dropdown-content');
    dropdowns.forEach(function (dropdown) {
            dropdown.style.transition = 'max-height 0.2s ease-in-out';
        });
  });


  document.getElementById('payment-method').addEventListener('change', function() {
    const cardInfoDiv = document.getElementById('card-info');
    if (this.value === 'credit-debit-card') {
        cardInfoDiv.style.display = 'block'; // Show card info
    } else {
        cardInfoDiv.style.display = 'none'; // Hide card info 
    }
});

// For cart page to database
document.addEventListener("DOMContentLoaded", function () {
    const placeOrderBtn = document.querySelector(".place-order-btn");
    const orderForm = document.getElementById("order-form");

    if (placeOrderBtn) {
        orderForm.addEventListener("submit", function (e) {
            e.preventDefault();  

            submitOrder(); 
        });
    } else {
        console.error("Place Order button not found");
    }
});
    
    // Fetch billing details
    function submitOrder() {
        console.log("Submit order function called");
        const billingName = document.querySelector("#billingName").value;
        const billingAddress = document.querySelector("#billingAddress").value;
        const billingPhone = document.querySelector("#billingPhone").value;
        const billingEmail = document.querySelector("#billingEmail").value;
    
    // Console log, had a lot of issues and it helped
        console.log("Order Data:", {
            name: billingName,
            address: billingAddress,
            phone: billingPhone,
            email: billingEmail,
    });

    // Capture the cart information, fetch prics
    const cart = JSON.parse(localStorage.getItem('cart')) || []; 

    const products = cart.map(productId => {
        return { id: productId, quantity: 1, price: null };
    });

    // Fetch prices and send order
    Promise.all(products.map(async product => {
        const response = await fetch(`/api/products/${product.id}`);
        const data = await response.json();
        product.price = data.Price;
    })).then(() => {

        const orderData = {
            Name: billingName,
            Address: billingAddress,
            Phone: billingPhone,
            Email: billingEmail,
            isContractCustomer: false,  
            accountNumber: null, 
            onlineCustomer: true,
            products: products
        };

        console.log("Order Data:", orderData); 
        
        // Submit order button
        fetch('/submit-order', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
            },
            body: JSON.stringify(orderData),
        })
        .then(response => {
            if (!response.ok) {
                throw new Error('Network response was not ok'); 

            }
            return response.json();
        })
        .then(data => {
            console.log("Response from server:", data);
            
            // Clear cart & redirect
            if (data.success) {
                alert('Order placed successfully!');
                console.log("Cart before clearing:", localStorage.getItem('cart'));
                localStorage.removeItem('cart');  
                console.log("Cart after clearing:", localStorage.getItem('cart'));
                console.log('Redirecting to homepage...');
                window.location.href = '/index.html'; 
            } else {
                alert('Failed to place the order.');
            }
        })
        .catch((error) => {
            console.error('Error:', error);
        });
        }).catch(error => {
            console.error('Error fetching product prices:', error);
        });
    }
