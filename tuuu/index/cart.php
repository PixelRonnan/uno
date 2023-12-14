<?php
session_start();

// Check if the cart is empty
if (!isset($_SESSION["cart"]) || empty($_SESSION["cart"])) {
    echo "<p>Your cart is empty.</p>";
} else {
    // Display the products in the cart
    echo "<ul>";
    foreach ($_SESSION["cart"] as $product_id) {
        // Fetch and display product details (modify as needed)
        // You might want to perform a database query here to get product information
        echo "<li>Product ID: $product_id</li>";
    }
    echo "</ul>";
}
?>
