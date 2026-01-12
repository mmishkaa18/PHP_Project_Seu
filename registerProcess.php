<?php
require "db.php";


if ($_SERVER["REQUEST_METHOD"] !== "POST") {
    header("Location: registration1.php");
    exit;
}

$title = $_POST['title'] ?? '';
$firstname = $_POST['firstname'] ?? '';
$lastname = $_POST['lastname'] ?? '';
$birth_date = $_POST['birth_date'] ?? '';
$country = $_POST['country'] ?? '';
$email = $_POST['email'] ?? '';
$password = $_POST['password'] ?? '';


if (!$firstname || !$email || !$password) {
    die("Requiered fields are missing");
}

// $hashedPassword = password_hash($password, PASSWORD_DEFAULT);

$sql = "INSERT INTO users (title, firstname, lastname, birth_date, country, email, password)
VALUES (?, ?, ?, ?, ?, ?, ?)";


$stmt = mysqli_prepare($conn, $sql);
mysqli_stmt_bind_param(
    $stmt,
    "sssssss",
    $title,
    $firstname,
    $lastname,
    $birth_date,
    $country,
    $email,
    $password
);

if (mysqli_stmt_execute($stmt)) {
    header("Location: drivers.php?registered=1");
    exit;
} else {
    echo "Error: " . mysqli_error($conn);
}
?>

