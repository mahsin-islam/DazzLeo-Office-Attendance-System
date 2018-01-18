<?php
@session_start();
$login = false;
$empID = '';
$username = '';

/* Checking for Logged in User */
if (isset($_SESSION['empID'])) {
    $login = true;
    $empID = $_SESSION['empID'];
    $username = $_SESSION['username'];
}

$dbCon = mysql_connect('localhost', 'root', 'NFjKHdg43');
mysql_select_db('db_attendance');

$today = date("Y-m-d");

/* Checking for Office Day */
$query = mysql_query("SELECT * FROM `office_date` WHERE `odate`='$today' ", $dbCon);
$row = mysql_fetch_object($query);
if (!isset($row->odate)) {
    $year = date('Y');
    $month = date('m');
    mysql_query("INSERT INTO `office_date` (`odate`,`month`,`year`,`generate`) VALUES ('$today','$month','$year','1');", $dbCon);
}
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>BTC IT Employee Attendance System</title>
        <link rel="stylesheet" href="css/reset.css" />
        <link rel="stylesheet" href="css/text.css" />
        <link rel="stylesheet" href="css/960.css" />
        <link rel="stylesheet" href="css/demo.css" />
        <link rel="stylesheet" href="css-user/style.css" />
    </head>
    <body>

        <div class="container_16">
            <div class="grid_16">
                <div class="banner">
                    <img src="img/btcit.png" />
                </div>
            </div>
            <div class="clear"></div>
            <div class="grid_16">
                <div class="top-nav">
                    <?php if ($login) { ?>
                        <ul>
                            <li><a href="new.php" title="Home" >New Employee</a></li>
                            <li><a href="punchio.php" title="Home" >Punch In/Out</a></li>
                            <li><a href="summary.php" title="Home" >Summary</a></li>
                            <li><a href="logout.php" title="Home" >Logout </a>(<?php echo $username; ?>)</li>
                        </ul>

                    <?php } else { ?>
                        <ul>
                            <li><a href="index.php" title="Home" >Home</a></li>
                            <li><a href="login.php" title="Home" >Login</a></li>
                        </ul>
                    <?php } ?>
                </div>
            </div>
            <div id="content">
                <div class="grid_4">
                    <div class="left-sidebar">
                        <ul>
                            <li><a href="#">Add Employee</a></li>
                            <li><a href="#">Delete Employee</a></li>
                            <li><a href="#">Enroll Employee</a></li>
                        </ul>
                    </div>
                </div>