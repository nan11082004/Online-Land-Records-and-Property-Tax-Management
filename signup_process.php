<?php
session_start();
require_once 'config/db_connect.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = mysqli_real_escape_string($conn, $_POST['username']);
    $email = mysqli_real_escape_string($conn, $_POST['email']);
    $password = $_POST['password'];

    // Check if username already exists
    $check_sql = "SELECT * FROM users WHERE username = ? OR email = ?";
    $check_stmt = $conn->prepare($check_sql);
    $check_stmt->bind_param("ss", $username, $email);
    $check_stmt->execute();
    $check_result = $check_stmt->get_result();

    if ($check_result->num_rows > 0) {
        header("Location: signup.html?error=exists");
        exit();
    }

    // Insert new user
    $sql = "INSERT INTO users (username, email, password) VALUES (?, ?, ?)";
    $stmt = $conn->prepare($sql);
    
    if (!$stmt) {
        header("Location: signup.html?error=db");
        exit();
    }

    $stmt->bind_param("sss", $username, $email, $password);
    
    if ($stmt->execute()) {
        header("Location: login.html?signup=success");
        exit();
    } else {
        header("Location: signup.html?error=failed");
        exit();
    }
}

$stmt->close();
$conn->close();
?>
