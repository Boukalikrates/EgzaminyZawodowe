<?php
require_once 'db_connect.php';
$info = '';
if (isset($_COOKIE['ID_Testy_offline']))
//if there is, it logs you in and directes you to the members page
{

    $username = $_COOKIE['ID_Testy_offline'];
    $pass = $_COOKIE['Key_Testy_offline'];
    $result = $connect->query("SELECT * FROM teachers WHERE username = '$username'");
    while ($row = $result->fetch_assoc()) {
        if ($pass == $row['password']) {
            if (!$changepasspage && $row['resetpass']) {
                header("Location: changepass.php?info=Potrzebna zmiana hasła");
            } else {
                $power = $row['power'];
                $teacherid = $row['id'];
                $loginspan = ($power ? "<span class=\"admin\">" . $username . "</span>" : $username);
                $loginbar = "<div class=\"center\">Zalogowano jako $loginspan. <a href=\"logout.php\">Wyloguj się</a> <a href=\"changepass.php\">Zmień hasło</a></div>";
            }
        } else {
            header("Location: login.php");
            die();
        }
    }
} else {
    header("Location: login.php");
    die();
}
if (!$power && $_GET['class']) {
    $result = $connect->query("SELECT * FROM subjects WHERE teacherid = '$teacherid' AND classid='{$_GET['class']}'");
    if ($result->num_rows == 0) {
        header("Location: admin.php?info=Nie masz uprawnień do tej klasy");
        die();
    }
}
if (!$power && $_GET['exam']) {
    $result = $connect->query("SELECT * FROM examowners WHERE teacherid = '$teacherid' AND examid='{$_GET['exam']}'");
    if ($result->num_rows == 0) {
        header("Location: admin.php?info=Nie masz uprawnień do tego testu");
        die();
    }
}
if (!$power && $_GET['teacher']) {
        header("Location: admin.php?info=Nie masz uprawnień");
        die();
}
$adminpage = true;
