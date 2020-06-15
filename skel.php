<?php
echo "<!doctype html>";
require_once('db_connect.php');
$result = $connect->query("SELECT * FROM config");
$config = $result->fetch_assoc();
if ($adminpage && $config['demo']) {
    header("Location: index.php?info=Panel administracyjny jest niedostępny w wersji demo!");
    die();
}

function theme($no){
    switch ($no) {
    case 1:
        echo '<link rel="stylesheet" type="text/css" href="dark.css" media="screen">';
        break;
    case 2:
        echo '<link rel="stylesheet" type="text/css" href="nature.css" media="screen">';
        break;
    case 3:
        echo '<link rel="stylesheet" type="text/css" href="books.css" media="screen">';
        break;
    case 4:
        echo '<link rel="stylesheet" type="text/css" href="server.css" media="screen">';
        break;
}

}
?>

<html>

<head>
    <title><?php echo $config['pagetitle'] ?></title>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="common.css" media="screen">
    <?php

    ?>
    <link rel="stylesheet" type="text/css" href="print.css" media="print">
    <link rel="stylesheet" type="text/css" href="blue/style.css">
    <script defer src="fontawesome-all.js"></script>
    <script src="jquery-3.3.1.min.js"></script>
    <script src="common.js"></script>
    <script src="Chart.min.js"></script>
    <script src="jquery.tablesorter.min.js"></script>
</head>