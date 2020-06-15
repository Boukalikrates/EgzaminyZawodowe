<?php
require_once('skel.php');
$info = '';
if (isset($_COOKIE['ID_Testy_offline'])&&isset($_COOKIE['Key_Testy_offline'])) {

    $username = $_COOKIE['ID_Testy_offline'];
    $pass = $_COOKIE['Key_Testy_offline'];
    $result = $connect->query("SELECT * FROM teachers WHERE username = '$username'");
    while ($info = $result->fetch_assoc()) {
        if ($pass == $info['password']) {
            header("Location: admin.php");
        }
    }
} 

if ($_POST['login'] && $_POST['password']) {
    $username = stripslashes($_POST['login']);
    $result = $connect->query("SELECT * FROM teachers WHERE username = '$username'");
    if ($result->num_rows == 0) {
        $info = 'Nie ma takiego użytkownika!';
    }
    while ($row = $result->fetch_assoc()) {
        $password = stripslashes($row['password']);
        $pass = md5(stripslashes($_POST['password']) . 'Bounce');
        if ($pass != $password) {
            $info = 'Nieprawidłowy login lub hasło!';
        } else {
            $hour = time() + 7200;
            setcookie('ID_Testy_offline', $username, $hour);
            setcookie('Key_Testy_offline', $pass, $hour);
            header("Location: admin.php");
        }
    }
}
$adminpage = true;
?>

<body>
    <div class="top">
        <?php
        if ($_GET["info"] != null) {
            echo "<div class=\"info\"><i class=\"fas fa-exclamation-triangle\"></i> ";
            echo $_GET["info"];
            echo "</div>";
        }
        if ($info) {
            echo "<div class=\"info\"><i class=\"fas fa-exclamation-triangle\"></i> ";
            echo $info;
            echo "</div>";
        }
        ?>

        <h1>Logowanie – Panel administracyjny</h1>
        <form class="q" method="post" action="login.php">
            <?php
            if ($config['gdprinfo']) {
                echo "<p class=\"labellike\">";
                echo $config['gdprinfo'];
                echo "</p>";
            }
            ?>
            <label><span>Login: </span><input name="login" type="text"></label>
            <label><span>Hasło: </span><input name="password" type="password"></label>

            <button type="submit">Zaloguj</button>
        </form>
    </div>
</body>