<?php
require_once 'adminskel.php';
if ($_POST['id'] == 'new') { {
        $at = addslashes($_POST['at']);
        $sql = "INSERT INTO questions(exam,q,ans,at) VALUES ('{$_POST['exam']}','{$_POST['q']}','{$_POST['ans']}','{$at}')";
        if ($connect->query($sql)) {
            $sql = "SELECT id FROM questions ORDER BY id DESC LIMIT 1";
            $result = $connect->query($sql);
            while ($row = $result->fetch_assoc()) {
                $newid = $row['id'];
            }
            $info = "<i class=\"fas fa-check\" title=\"Dodane pomyślnie\"></i><input type=\"hidden\" class=\"newid\" value=\"$newid\">";
        } else {
            $info = ("Error: " . $sql . "<br>" . $connect->error);
        }
    }
} else if ($_POST['id']) { 
    if($_POST['deletion']){
        $sql = "DELETE FROM questions WHERE id = '{$_POST['id']}'";
        if ($connect->query($sql)) {
            $info = "<i class=\"fas fa-trash-alt\" title=\"Usunięte pomyślnie\"></i>";
        } else {
            $info = ("Error: " . $sql . "<br>" . $connect->error);
        }
    }else{
        $at = addslashes($_POST['at']);
        $sql = "UPDATE questions SET q='{$_POST['q']}', ans='{$_POST['ans']}', at='{$at}' WHERE id = '{$_POST['id']}'";
        if ($connect->query($sql)) {
            $info = "<i class=\"fas fa-check\" title=\"Zapisane pomyślnie\"></i>";
        } else {
            $info = ("Error: " . $sql . "<br>" . $connect->error);
        }
    }
} else {
    $info = "Nie wiem co mam zrobić";
}

// header("Location: admin.php?class=".$_POST['class']."&info=".$info);
echo $info;
