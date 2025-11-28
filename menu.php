<?php
// Database configuration
$host = 'localhost';
$dbname = 'foodmenu';
$username = 'root';  // Default XAMPP username
$password = '';      // Default XAMPP password is empty

try {
    // Create PDO connection
    $pdo = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8mb4", $username, $password);
    
    // Set error mode to exception
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    
    // Set default fetch mode to associative array
    $pdo->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
    
    echo "Connected successfully!";
    
    // Example: Fetch all records from food/price table
    $stmt = $pdo->query("SELECT * FROM `food/price`");
    $results = $stmt->fetchAll();
    
    // Display results
    foreach ($results as $row) {
        print_r($row);
    }
    
} catch(PDOException $e) {
    echo "Connection failed: " . $e->getMessage();
}

// Close connection (optional - PHP does this automatically)
$pdo = null;
?>