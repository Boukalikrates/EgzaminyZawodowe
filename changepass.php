<?php
$changepasspage=true;
require_once('adminskel.php');
require_once('skel.php');
$info = '';
// if (isset($_COOKIE['ID_Testy_offline'])) {

//     $username = $_COOKIE['ID_Testy_offline'];
//     $pass = $_COOKIE['Key_Testy_offline'];
//     $result = $connect->query("SELECT * FROM teachers WHERE username = '$username'");
//     while ($info = $result->fetch_assoc()) {
//         if ($pass == $info['password']) {
//             header("Location: admin.php");
//         }
//     }
// } else 

if ($_POST['old']) {
    $result = $connect->query("SELECT * FROM teachers WHERE username = '$username'");
    while ($row = $result->fetch_assoc()) {
        $password = stripslashes($row['password']);
        $pass = md5(stripslashes($_POST['old']) . 'Bounce');
        if ($pass != $password) {
            $info = 'Nieprawidłowe stare hasło!';
        } else {
            if ($_POST['new']) {
                if ($_POST['new'] == $_POST['confirm']) {
                    $newpass = md5(stripslashes($_POST['new']) . 'Bounce');
                    $sql = "UPDATE teachers SET password='{$newpass}',resetpass='0' WHERE username = '$username'";
                    if ($connect->query($sql)) {
                        $past = time() - 100;
                        setcookie('ID_Testy_offline', 'gone', $past);
                        setcookie('Key_Testy_offline', 'gone', $past);
                        header("Location: login.php?info=Hasło pomyślnie zmienione");
                    } else {
                        $info = ("Error: " . $sql . "<br>" . $connect->error);
                    }
                } else {
                    $info = 'Podane hasła są różne';
                }
            } else {
                $info = 'Nowe hasło nie może być puste';
            }
            // $hour = time() + 7200;
            // setcookie('ID_Testy_offline', $username, $hour);
            // setcookie('Key_Testy_offline', $pass, $hour);
            // header("Location: admin.php");
        }

        $username = stripslashes($_POST['login']);
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
        <h1>
            <a href="admin.php">
                <i class="fas fa-arrow-left"></i>
                Zmiana hasła użytkownika
            </a>
        </h1>
        <?php echo $loginbar ?>
        <form class="q" method="post" action="changepass.php">

            <label class="hidden">Login: <input name="login" type="text" value="<?php echo $username ?>"></label>
            <label><span>Stare hasło: </span><input name="old" type="password"></label>
            <label><span>Nowe hasło: </span><input name="new" type="password" class="newpassword"></label>
            <label><span>Powtórz nowe hasło: </span><input name="confirm" type="password"></label>
            <label><span>Siła hasła: </span><meter min="0" max="40" value="0" low="20"></meter></label>

            <button type="submit">Zmień hasło</button>
        </form>
    </div>
    <script>
        $('.newpassword').keyup(function(){
            let val=$('.newpassword').val();

            let q1=val.search(/([A-Z])/g)!=-1;
            let q2=val.search(/([!@#$%^&*()_\+\-=\{\}\[\]\|;:'",./?><])/g)!=-1;
            let q3=val.search(/([a-z])/g)!=-1;
            let q4=val.search(/([0-9])/g)!=-1;

            let len=val.length;
            let sum=(q1+q2+q3+q4)*len;
            $('meter').val(sum);
        })
    </script>
</body>