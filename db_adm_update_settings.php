<?php
require_once 'adminskel.php';
$redir = '';
$sql = '';
if ($_POST['classid']) {
    $redir = 'class=' . $_POST['classid'] . '&';
    if ($_POST['delclassid']) {
        if ($_POST['newremove']) {
            $redir = '';
            $sql = "DELETE FROM classes WHERE id = " . $_POST['classid'];
            $result = $connect->query($sql);
            if ($connect->query($sql)) {
                $info = "Klasa usunięta!";
            } else {
                $info = ("Error: " . $sql . "<br>" . $connect->error);
            }
        } else {
            $info = "Nie usuwam bo nie jesteś pewien";
        }
    } else {
        $sql = "UPDATE classes SET className='{$_POST["name"]}' WHERE id = " . $_POST['classid'];
        if ($connect->query($sql)) {
            $info = "Ustawienia zapisane!";
        } else {
            $info = ("Error: " . $sql . "<br>" . $connect->error);
        }
    }
} else if ($_POST['examid']) {
    $redir = 'exam=' . $_POST['examid'] . '&';
    if ($_POST['delexamid']) {
        if ($_POST['newremove']) {
            $redir = '';
            $sql = "DELETE FROM examtypes WHERE id = " . $_POST['examid'];
            if ($connect->query($sql)) {
                $info = "Test usunięty!";
            } else {
                $info = ("Error: " . $sql . "<br>" . $connect->error);
            }
        } else {
            $info = "Nie usuwam bo nie jesteś pewien";
        }
    } else {
        $sql = "UPDATE examtypes SET name='{$_POST["name"]}',time='{$_POST["time"]}',questions='{$_POST["questions"]}',icon='{$_POST["iconpick"]}',theme='{$_POST["theme"]}' WHERE id = " . $_POST['examid'];
        if ($connect->query($sql)) {
            $info = "Ustawienia zapisane!";
        } else {
            $info = ("Error: " . $sql . "<br>" . $connect->error);
        }
    }
} else if ($_POST['teacherid']) {
    $redir = 'teacher=' . $_POST['teacherid'] . '&';
    if ($_POST['delteacherid']) {
        if ($_POST['newremove']) {
            $redir = '';
            $sql = "DELETE FROM teachers WHERE id = " . $_POST['teacherid'];
            if ($connect->query($sql)) {
                $info = "Nauczyciel usunięty!";
            } else {
                $info = ("Error: " . $sql . "<br>" . $connect->error);
            }
        } else {
            $info = "Nie usuwam bo nie jesteś pewien";
        }
    } else if ($_POST['resetteacherid']) {
        if ($_POST['newremove']) {
            $newpass=randomPassword();
            $sql = "UPDATE teachers SET password=MD5('{$newpass}Bounce'),resetpass='1' WHERE id = " . $_POST['teacherid'];
            if ($connect->query($sql)) {
                $info = "Hasło zresetowane.<br>Nazwa użytkownika: {$_POST["name"]}<br>Hasło: {$newpass}<br>Hasło będzie musiało być zmienione przy następnym zalogowaniu.";
            } else {
                $info = ("Error: " . $sql . "<br>" . $connect->error);
            }
        } else {
            $info = "Nie resetuję bo nie jesteś pewien";
        }
    } else {
        $sql = "UPDATE teachers SET username='{$_POST["name"]}',power='{$_POST["power"]}' WHERE id = " . $_POST['teacherid'];
        if ($connect->query($sql)) {
            $info = "Ustawienia zapisane!";
        } else {
            $info = ("Error: " . $sql . "<br>" . $connect->error);
        }
    }
} else if ($_POST['newclassid']) {
    $sql = "INSERT INTO classes (className) VALUES ('{$_POST["name"]}')";
    if ($connect->query($sql)) {
        $info = "Klasa {$_POST["name"]} dodana!";
    } else {
        $info = ("Error: " . $sql . "<br>" . $connect->error);
    }
} else if ($_POST['newexamid']) {
    $sql = "INSERT INTO examtypes (name,time,questions,icon) VALUES ('{$_POST["name"]}',60,40,'fa-file-alt')";
    if ($connect->query($sql)) {
        $info = "Test {$_POST["name"]} dodany!";
    } else {
        $info = ("Error: " . $sql . "<br>" . $connect->error);
    }
} else if ($_POST['newteacherid']) {
    $newpass=randomPassword();
    $sql = "INSERT INTO teachers (username,password,power,resetpass) VALUES ('{$_POST["name"]}',MD5('{$newpass}Bounce'),'0','1')";
    if ($connect->query($sql)) {
        $info = "Nauczyciel dodany.<br>Nazwa użytkownika: {$_POST["name"]}<br>Hasło: {$newpass}<br>Hasło będzie musiało być zmienione przy pierwszym zalogowaniu.";
    } else {
        $info = ("Error: " . $sql . "<br>" . $connect->error);
    }
} else {
    $info = "Nie wiem co mam zrobić";
}

function randomPassword() {
    $alphabet = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890';
    $pass = array(); //remember to declare $pass as an array
    $alphaLength = strlen($alphabet) - 1; //put the length -1 in cache
    for ($i = 0; $i < 10; $i++) {
        $n = rand(0, $alphaLength);
        $pass[] = $alphabet[$n];
    }
    return implode($pass); //turn the array into a string
}

header("Location: admin.php?{$redir}info=" . $info);
echo $info;
// echo "<script>window.location=\"../adm/index.php?class=".$_POST['className']."&info=".$info."\"</script>";
