<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>F1 Drivers statistics</title>
    <link rel="stylesheet" href="driverStatistics.css">
    <?php
    include "db.php";

        $result = $conn->query("SELECT * FROM standings");
    ?>
</head>
<body>
    <header class="site-header">
  <nav class="navbar">
    <div class="nav-inner">

      <a href="drivers.php" class="nav-logo">
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

  <section class="standings">
    <h1>მიმდინარე სეზონის რეიტინგი</h1>
    <table>
        <thead>
            <tr>
                <th>მდგომარეობა</th>
                <th>მრბოლელი</th>
                <th>კომპანია</th>
                <th>ქულები</th>
            </tr>
        </thead>
        <tbody>
          <?php while ($row = $result->fetch_assoc()) { ?>
          <tr>
            <td><?= $row['position'] ?></td>
            <td><?= $row['driver'] ?></td>
            <td><?= $row['team'] ?></td>
            <td><?= $row['points'] ?></td>
          </tr>
          <?php } ?>
        </tbody>

    </table>
</section>
</body>
</html>