<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" type="image/x-icon" href="images/f1-default-share.jpg"/>
    <title>F1 Registration</title>
    <link rel="stylesheet" href="registration.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100..900;1,100..900&family=Oswald:wght@200..700&display=swap" rel="stylesheet">
    <?php
        include "db.php";

        $result = $conn->query("SELECT * FROM countries");
    ?>
</head>
<body>
    <nav class="navbar">
        <div class="nav-inner">
            <a href="#" class="nav-logo">
                <img src="images/F1.svg.png" alt="F1 Logo">
            </a>
        </div>
    </nav>    

    <div class="nav-inner1">
            <a href="#" class="nav-p">Register</a>
    </div>
    <div class="registration-form">
        <form action="drivers.html">
            <div class="input-box">
                <p>Title</p>
                <select name="Select" id="">
                    <option value="">Select</option>
                    <option value="">Mr</option>
                    <option value="">Mrs</option>
                    <option value="">Miss</option>
                    <option value="">Ms</option>
                </select>
            </div>
            <div class="input-box">
                <p>First Name</p>
                <input type="text" placeholder="First Name" id="">
            </div>
            <div class="input-box">
                <p>Last Name</p>
                <input type="text" placeholder="Last Name" id="">
            </div>
            <div class="input-box">
                <p>Date of birth</p>
                <input type="date" id="">
            </div>
            <div class="input-box">
                <p>Country of residence</p>
                <select name="" required>
                    <option value="">Select</option>

                    <?php while ($row = mysqli_fetch_assoc($result)) { ?>
                        <option value="<?= $row['id'] ?>">
                            <?= $row['name'] ?>
                        </option>
                    <?php } ?>
                </select>
            </div>
    </div>


    </form>

</body>
</html>