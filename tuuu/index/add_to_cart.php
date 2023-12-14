<?php
session_start();

if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST["product_id"])) {
    $product_id = $_POST["product_id"];

    // Initialize the cart if it doesn't exist
    if (!isset($_SESSION["cart"])) {
        $_SESSION["cart"] = array();
    }

    // Add the selected product to the cart
    if (!in_array($product_id, $_SESSION["cart"])) {
        $_SESSION["cart"][] = $product_id;
    }

    // Redirect back to the product list page
    $redirect_url = isset($_GET['redirect']) ? $_GET['redirect'] : 'product_list.php';
    header("Location: $redirect_url");
    exit();
}
?>
