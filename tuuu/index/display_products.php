<?php
// Step 1: Establish a database connection
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "yumis";

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Pagination setup
$itemsPerPage = 12; // Number of products per page
$page = isset($_GET['page']) ? intval($_GET['page']) : 1; // Current page number

$query = $conn->prepare("SELECT * FROM products LIMIT ?, ?");
$query->bind_param("ii", $offset, $itemsPerPage);
$query->execute();
$result = $query->get_result();


if ($result->num_rows > 0) {
    echo '<ul class="cards">';
    while ($row = $result->fetch_assoc()) {
        echo '<li class="card">';
echo '<img src="' . htmlspecialchars($row["image url"]) . '" alt="' . htmlspecialchars($row["name"]) . '">';
        echo '<h3>' . htmlspecialchars($row["name"]) . '</h3>';
        echo '<h4>' . htmlspecialchars($row["category"]) . '</h4>';
        echo '<p>' . htmlspecialchars($row["price"]) . '</p>';        
        
        // Add to Cart button
        echo '<form action="add_to_cart.php" method="post">';
        echo '<input type="hidden" name="product_id" value="' . $row["id"] . '">';
        echo '<button type="submit">View product</button>';
        echo '</form>';
        
        echo '</li>';
    }
    echo '</ul>';
}
// Pagination buttons
$query = "SELECT COUNT(*) AS total FROM products";
$totalResult = $conn->query($query);
$totalRows = $totalResult->fetch_assoc()['total'];
$totalPages = ceil($totalRows / $itemsPerPage);

echo '<div class="pagination">';
if ($page > 1) {
    echo '<a href="?page=' . ($page - 1) . '">Previous</a>';
}
if ($page < $totalPages) {
    echo '<a href="?page=' . ($page + 1) . '">Next</a>';
}
echo '</div>';

// Close the database connection
$conn->close();
?>

