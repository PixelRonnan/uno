<?php
require 'connection.php';

$username = $_POST['username'];
$password = $_POST['password'];
$email = $_POST['email'];

// Hash the password
$hashedPassword = password_hash($password, PASSWORD_DEFAULT);

$stmt = $conn->prepare("INSERT INTO users (username, password, email) VALUES (?, ?, ?)");
$stmt->bindParam(1, $username);
$stmt->bindParam(3, $email);
$stmt->bindParam(2, $hashedPassword); // Store the hashed password

if ($stmt->execute()) {
    header("Location: login.php");
    exit();
} else {
    echo "Registration failed!";
}

$conn = null;
?>
