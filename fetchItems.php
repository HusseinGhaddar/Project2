<?php
// Database credentials
$host = 'sql207.infinityfree.com';
$user = 'if0_37992921';
$password = 'jHxeu0Ru9Iy';
$dbname = 'if0_37992921_db_pet';

// Create a connection
$conn = new mysqli($host, $user, $password, $dbname);

// Check the connection
if ($conn->connect_error) {
    die(json_encode(['error' => $conn->connect_error]));
}

// Query the database
$sql = "
        SELECT products.title, products.price, products.description, products.image, categories.name
        FROM products, categories where products.cid = categories.cid";
        
$result = $conn->query($sql);

// Fetch results as an associative array
$data = [];
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $data[] = $row;
    }
}

// Return JSON
echo json_encode($data);

// Close the connection
$conn->close();
?>
