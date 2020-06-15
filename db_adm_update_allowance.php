<?php
require_once 'adminskel.php';

$elemarr = "";
foreach ($_POST as $key => $val) {
    if (substr($key, 0, 2) == 's-') {
        $elemarr .= "('";
        $elemarr .= substr($key, 2);
        $elemarr .= "','{$_POST['teacherid']}'),";
    }
}
$elemarr = substr($elemarr, 0, strlen($elemarr) - 1);

switch ($_POST['action']) {
    case "class":
        $sql1="DELETE FROM subjects WHERE teacherid = '{$_POST['teacherid']}' ";
        $sql2 = "INSERT INTO subjects (classid, teacherid) VALUES $elemarr ;";
        if ($connect->query($sql1)&&$connect->query($sql2)) {
            $info = "Klasy zapisane!";
        } else {
            $info = ("Error: $sql1 ; $sql2<br>" . $connect->error);
        }

        break;

        case "exam":
            $sql1="DELETE FROM examowners WHERE teacherid = '{$_POST['teacherid']}' ";
            $sql2 = "INSERT INTO examowners (examid, teacherid) VALUES $elemarr ;";
            if ($connect->query($sql1)&&$connect->query($sql2)) {
                $info = "Testy zapisane!";
            } else {
                $info = ("Error: $sql1 ; $sql2<br>" . $connect->error);
            }
    
            break;
    

    default:

        $info = "Nie wiem co mam zrobić";
}

header("Location: admin.php?teacher=" . $_POST['teacherid'] . "&info=" . $info);
echo $info;
// echo "<script>window.location=\"../adm/index.php?class=".$_POST['className']."&info=".$info."\"</script>";
