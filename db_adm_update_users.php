<?php
require_once 'adminskel.php'; 
switch($_POST['action'] ){ 
    case "grant":
    $sql = "INSERT INTO `allowance` (`userCode`, `examid`) SELECT userCode,'{$_POST['newgrant']}' FROM users WHERE {$_POST['where']}";
        $result = $connect->query($sql);
        $info="Zrobione!";

        break;
    case "revoke":
        $sql="DELETE FROM allowance WHERE examid='{$_POST['newrevoke']}' AND ( {$_POST['where']} )";
        $result = $connect->query($sql);
        $info="Zrobione!";

        break;
    case "reclass":
       $sql = "UPDATE users SET class=\"".$_POST['newreclass']."\" WHERE ".$_POST['where'];
        $result = $connect->query($sql);
        $info="Zrobione!";

        break;
    case "inclass":
       $sql = "UPDATE users SET class=\"".$_POST['newinclass']."\" WHERE ".$_POST['where'];
        $result = $connect->query($sql);
        $info="Zrobione!";

        break;
    case "remove":
        if($_POST['newremove']){
            $result = $connect->query($sql);
            $egg=$connect->query("SELECT * FROM users WHERE Name='Monika' AND ".$_POST['where'])->num_rows;
            $sql = "DELETE FROM users WHERE ".$_POST['where'];
            $result = $connect->query($sql);
            
            $info=$egg?"Just Monika.":"Zrobione!";
        }else{
            $info="Nie usuwam bo nie jesteś pewien";
        }

        break;




    default:
        
        $info="Nie wiem co mam zrobić";
        


}

header("Location: admin.php?class=".$_POST['classid']."&info=".$info);
echo $info;
// echo "<script>window.location=\"../adm/index.php?class=".$_POST['className']."&info=".$info."\"</script>";
