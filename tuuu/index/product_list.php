<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product List</title>
    <link rel="stylesheet" href="product_list.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" integrity="sha384-x8VH0GDGqn5z8XlHg8x68zJsUOpPAdkUEuPxT5U5bLw8a65zc' crossorigin='anonymous">
    
</head>
    <body style="position: relative;">
<header style="text-align: center; background-color: #1A1A1A; position: relative;">
 <div class="button">
<a id="account-settings-button" href="cart.php" style="float: right; padding: 10px 20px; background-color: #1A1A1A; color: white; text-decoration: none; border-radius: 5px; cursor: pointer;">
<i class="far fa-user-circle" style="font-size: 30px; color: white;"></i>
</a>

<h1 style="display: inline-block;">Yumis</h1>
</div>
</header>
<main>
<div class="filter" style="text-align: center; margin: auto;">
  <form id="filter-form" method="GET">
    <label for="category-filter" style="display: block; margin-bottom: 10px;">Filter by Category:</label>
    <select id="category-filter" name="category">
      <option value="all">All Categories</option>
      <option value="Vegetables">Vegetables</option>
      <option value="Fruits">Fruits</option>
    </select>
  </form>
</div>


    <div id="product-list" class="product-list">
        <?php
        require 'connection.php'; 

        $itemsPerPage = 24; 
        $currentPage = isset($_GET['page']) ? $_GET['page'] : 1; 
        $categoryFilter = isset($_GET['category']) ? $_GET['category'] : 'all';

        $offset = ($currentPage - 1) * $itemsPerPage;
        $query = "SELECT * FROM products";

        if ($categoryFilter !== 'all') {
            $query .= " WHERE category = :categoryFilter";
        }

        $query .= " LIMIT :offset, :itemsPerPage";

        $stmt = $conn->prepare($query);
        $stmt->bindValue(':offset', $offset, PDO::PARAM_INT);
        $stmt->bindValue(':itemsPerPage', $itemsPerPage, PDO::PARAM_INT);
        if ($categoryFilter !== 'all') {
            $stmt->bindValue(':categoryFilter', $categoryFilter, PDO::PARAM_STR);
        }
        $stmt->execute();
        $products = $stmt->fetchAll(PDO::FETCH_ASSOC);

        foreach ($products as $product) {
            echo '<div class="product-card">';
            echo '<div class="product">';
            echo '<img src="' . $product['image url'] . '" alt="' . $product['name'] . '">';
            echo '<h2>'. $product['name'] . '</h2>';
            echo '<p>Price: $'. $product['price'] . '</p>';
            echo '<p>Category: $'. $product['category'] . '</p>';
            
            // Add quantity selector
            echo '<label for="quantity-' . $product['id'] . '">Quantity:</label>';
            echo '<input type="number" id="quantity-' . $product['id'] . '" name="quantity" value="1" min="1" max="30">';
    
            // Add to Cart button with a data-product-id attribute
            echo '<button class="add-to-cart-btn" data-product-id="' . $product['id'] . '">Add to Cart</button>';
            
            echo '</div>';
            echo '</div>';
        }
            
        
        ?>
    </div>
    
        <div class="pagination" id="pagination-container">
        <?php
        $stmt = $conn->prepare("SELECT COUNT(*) FROM products");
        if ($categoryFilter !== 'all') {
            $stmt = $conn->prepare("SELECT COUNT(*) FROM products WHERE category = :categoryFilter");
            $stmt->bindValue(':categoryFilter', $categoryFilter, PDO::PARAM_STR);
        }
        $stmt->execute();
        $totalItems = $stmt->fetchColumn();
        $totalPages = ceil($totalItems / $itemsPerPage);

        for ($page = 1; $page <= $totalPages; $page++) {
            echo '<a href="?page='. $page. '&category='. $categoryFilter. '">'. $page . '</a>';
        }
        ?>
    </div>
</main>

<script>

    // Attach an event listener to the select element
    document.getElementById("category-filter").addEventListener("change", function() {
        // Trigger the form submission when the select element changes
        document.getElementById("filter-form").submit();
    });

    function filterProducts() {
        var categoryFilter = document.getElementById("category-filter").value;

        // Use AJAX to fetch and update product list based on the selected category
        var xhr = new XMLHttpRequest();
        xhr.onreadystatechange = function() {
            if (xhr.readyState == 4 && xhr.status == 200) {
                document.getElementById("product-list").innerHTML = xhr.responseText;
            }
        };

        xhr.open("GET", "filter_products.php?category=" + categoryFilter, true);
        xhr.send();
    }

    // Automatically trigger filtering when the page loads
    filterProducts();

            // Replace 'add_to_cart.php' with the actual server-side script to handle cart addition
            xhr.open('GET', 'add_to_cart.php?product_id=' + productId, true);
            xhr.send();


</script>

<footer style="text-align: center;">
    <p>&copy; 2023 Product List</p>
</footer>


</body>
</html>
