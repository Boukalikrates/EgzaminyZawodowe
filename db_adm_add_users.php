<?php
require_once 'adminskel.php';
if(true){ 
    if($_POST['userCode0'] == null||$_POST['Name0'] == null||$_POST['LastName0'] == null){
        $info="Tabela musi zawierać co najmniej jednego ucznia!"; 
    }else{
        $i=0; 
        while(!($_POST['userCode'.$i] == null||$_POST['Name'.$i] == null||$_POST['LastName'.$i] == null)){
            $sql = "INSERT INTO users(userCode, Name, LastName, classid) VALUES (\"".$_POST['userCode'.$i]."\", \"".$_POST['Name'.$i]."\", \"".$_POST['LastName'.$i]."\", \"".$_POST['class']."\")"; 
            $result = $connect->query($sql); $i++; 
        } 
        $info="Dodano ".$i." uczniów!";
    }
}else{
    $info="Nie wiem co mam zrobić";
}

header("Location: admin.php?class=".$_POST['class']."&info=".$info);
echo $info;
?>
