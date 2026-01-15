<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" type="image/x-icon" href="images/f1-default-share.jpg"/>
    <title>F1 Drivers 2025 - Verstappen, Hamilton, Leclerc and more</title>
    <link rel="stylesheet" href="drivers.css">
    <?php
    include "db.php";

        $result = $conn->query("SELECT * FROM drivers");
?>

</head>
<body>
    <header class="site-header">
  <nav class="navbar">
    <div class="nav-inner">

      <a href="#" class="nav-logo">
        <img src="images/F1.svg.png" alt="F1 Logo">
      </a>

      <ul class="nav-links">
        <li><a href="#">Schedule</a></li>
        <li><a href="#">Results</a></li>
        <li><a href="#">News</a></li>
        <li class="active"><a href="#">Drivers</a></li>
        <li><a href="#">Teams</a></li>
        <li><a href="#">Fantasy & Gaming</a></li>
        <li><a href="#">F1 Members' Area</a></li>
        <li class="registration">
          <a href="registration1.php">Registration</a>
        </li>
      </ul>

    </div>
  </nav>
  </header>

  <main>
    <section class="drivers-section"> 
      <h1>F1 DRIVERS 2026</h1> 
      <p class="drivers-p">Find the current Formula 1 drivers for the 2026 season</p> 
      
      <div class="drivers-grid">
        <?php while ($driver = $result->fetch_assoc()) { ?>
          <div class="driver-card <?= $driver['team_slug']?>">
             
            <a href="driverStatistics.php">
            <h3 class="driver-name">
              <?= $driver['first_name'] . ' ' . $driver['last_name'] ?>
            </h3>
            <span class="driver-number"><?= $driver['driver_number'] ?></span>
            <p class="driver-team"><?= $driver['team'] ?></p>
            <img src="images/drivers/<?= $driver['image'] ?>" alt="" class="driver-image">
            </a>
          </div>
        <?php } ?>

      </div>
     

    </section>
  </main>
</body>
</html>