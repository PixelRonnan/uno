<?php
// add_to_cart.php

session_start();

if (isset($_SESSION['user_id']) && isset($_GET['product_id'])) {
    $userId = $_SESSION['user_id'];
    $productId = $_GET['product_id'];

    require 'connection.php';

    try {
        // Insert the product into the user's cart
        $stmt = $conn->prepare("INSERT INTO user_cart (user_id, product_id) VALUES (:user_id, :product_id)");
        $stmt->bindParam(':user_id', $userId, PDO::PARAM_INT);
        $stmt->bindParam(':product_id', $productId, PDO::PARAM_INT);
        $stmt->execute();

        // Send a success response to the client
        http_response_code(200);
        echo 'Product added to cart successfully';
    } catch (PDOException $e) {
        // Handle database errors
        http_response_code(500);
        echo 'Error adding product to cart: ' . $e->getMessage();
    } finally {
        // Close the database connection
        $conn = null;
    }
} else {
    // Send an error response if user ID or product ID is not set
    http_response_code(400);
    echo 'Invalid request';
}
?>
