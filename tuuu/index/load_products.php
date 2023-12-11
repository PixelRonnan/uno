<?php
// Include the database connection code here$hostname = "localhost";
$username = "root";
$password = "";
$dbname = "yumis";

try {
    $conn = new ("mysql:host=$hostname;dbname=$dbname", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

} catch (PDOException $e) {
    echo "Connection failed: " . $e->getMessage();
}


// Pagination setup
$itemsPerPage = 12;
$page = isset($_GET['page']) ? intval($_GET['page']) : 1;
$offset = ($page - 1) * $itemsPerPage;

$query = $conn->prepare("SELECT * FROM products LIMIT ?, ?");
$query->bind_param("ii", $offset, $itemsPerPage);
$query->execute();
$result = $query->get_result();

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        // Output product HTML as before
    }
} else {
    echo 'No more products';
}

// Close the database connection
$conn->close();
?>
