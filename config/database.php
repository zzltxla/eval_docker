<?php
$servername = $_ENV["MARIADB_DATABASE_SERVER"];
$username = $_ENV["MARIADB_USER"];
$password = $_ENV["MARIADB_PASSWORD"];
$database = $_ENV["MARIADB_DATABASE"];


try {
    $conn = new PDO("mysql:host=$servername;dbname=$database", $username, $password);
} catch (PDOException $e) {
    echo "Error when connecting to DB : " . $e->getMessage();
}
?>