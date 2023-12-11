<?php
session_start();

// Check if the user is logged in
if (!isset($_SESSION['user_id'])) {
    echo "Not logged in";
    exit();
}

require 'connection.php';

$product_id = $_GET['product_id'];
$user_id = $_SESSION['user_id'];

// Check if the product is already in the cart
$stmt = $conn->prepare("SELECT * FROM cart WHERE user_id = :user_id AND product_id = :product_id");
$stmt->bindParam(':user_id', $user_id, PDO::PARAM_INT);
$stmt->bindParam(':product_id', $product_id, PDO::PARAM_INT);
$stmt->execute();

if ($stmt->rowCount() > 0) {
    echo "Product already in cart";
    exit();
}

// Add the product to the cart
$stmt = $conn->prepare("INSERT INTO cart (user_id, product_id, quantity) VALUES (:user_id, :product_id, 1)");
$stmt->bindParam(':user_id', $user_id, PDO::PARAM_INT);
$stmt->bindParam(':product_id', $product_id, PDO::PARAM_INT);
$stmt->execute();

echo "Product added to cart";
?>
