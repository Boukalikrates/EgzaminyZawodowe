<?php
if (!$username) {
    header("Location: login.php");
    die();
}
// $sql = "SELECT * FROM subjects WHERE classid='{$_GET['class']}' AND teacherid='{$teacherid}'";
// $result = $connect->query($sql);
// if($result->num_rows = 0){
//     echo("Location: admin.php?info=Nie masz uprawnień do tej klasy");
// }
?>
<?php
$sql = "SELECT * FROM classes WHERE id='{$_GET['class']}'";
$result = $connect->query($sql);
while ($row = $result->fetch_assoc()) {
    $className = $row['className'];
    $classId = $row['id'];
}
?>
<h1>
    <a href="admin.php">
        <i class="fas fa-arrow-left"></i>
        Klasa:
        <?php echo $className ?>
    </a>
</h1>
<?php echo $loginbar ?>
<div class="q">
    <h2><input type="checkbox" id="selectAll" title="Zaznaczy wszystko"> Wybierz ucznia:</h2>
    <input type="hidden" name="class" value="<?php echo $classId ?>">
    <ul>
        <?php
        $sql = "SELECT * FROM users WHERE classid = '{$classId}'";
        $result = $connect->query($sql);
        if ($result->num_rows > 0) {
            while ($row = $result->fetch_assoc()) {

                $canSolveIconic = ("");
                $sql2 = "SELECT icon FROM allowance LEFT JOIN examtypes ON allowance.examid=examtypes.id WHERE allowance.userCode = '{$row['userCode']}' GROUP BY examid";
                $result2 = $connect->query($sql2);
                while ($row2 = $result2->fetch_assoc()) {
                    $canSolveIconic .= "<i class=\"fas fa-pull-right fa-fw {$row2['icon']}\"></i> ";
                }

                $displayName = "[" . $row['userCode'] . "]: " . $row['Name'] . " " . $row['LastName'];

                echo "<li><label><input type=\"checkbox\" id=\"s-" . $row['userCode'] . "\" name=\"s-" . $row['userCode'] . "\" class=\"userselector\"> " . $canSolveIconic . " " . $displayName . "</label></li>";
            }
        } else {
            echo "<li class=\"labellike\">Brak uczniów!</li>";
        }
        ?>

    </ul>
</div>





<form class="q forSelectedForm hidden" method="POST" action="db_adm_update_users.php">
    <input type="hidden" name="where" id="where">
    <input type="hidden" name="classid" value="<?php echo $classId ?>">
    <h2 class="forSelected">Dla zaznaczonych:</h2>
    <ul>
        <li>
            <input id="grant" name="action" value="grant" type="radio">
            <label for="grant">Pozwól robić test</label>
            <label class="auxilia">
                <select name="newgrant">
                    <?php echo $examselect; ?>
                </select>
            </label>
        </li>
        <li>
            <input id="revoke" name="action" value="revoke" type="radio">
            <label for="revoke">Zabroń robić test</label>
            <label class="auxilia">
                <select name="newrevoke">
                    <?php echo $examselect; ?>
                </select>
            </label>
        </li>
        <li>
            <input id="reclass" name="action" value="reclass" type="radio">
            <label for="reclass">Przepisz do klasy</label>
            <label class="auxilia">
                <select name="newreclass">
                    <?php echo $classselect; ?>
                </select>
            </label>
        </li>
        <li>
            <input id="remove" name="action" value="remove" type="radio">
            <label for="remove">Usuń uczniów</label>
            <label class="auxilia"><input name="newremove" type="checkbox"><b style="color: red">TAK, chcę usunąć wyżej zaznaczonych uczniów oraz ich historię z bazy</b></label>
        </li>
    </ul>

    <button type="submit">Wykonaj!</button>
</form>

<form class="q addUsersForm" method="post" action="db_adm_add_users.php">
    <h2 id="addUsersHeader">Dodaj uczniów</h2>
    <input type="hidden" name="class" value="<?php echo $classId ?>">
    <div class="labellike addUsers hidden">
        <table id="userTable" class="">
            <tr>
                <th>Kod ucznia</th>
                <th>Imię</th>
                <th>Nazwisko</th>
            </tr>

        </table>
    </div>

    <label class="addUsers hidden" id="addMoreRows">Dodaj więcej wierszy</label>
    <button type="submit" class="addUsers hidden">Wykonaj!</button>


</form>

<div class="q addUsersForm">
    <form method="post" action="db_adm_update_settings.php">
        <h2 id="settingsHeader">Ustawienia klasy</h2>
        <input type="hidden" name="classid" value="<?php echo $classId ?>">
        <ul class="settings hidden">
            <li><label><span>Nazwa klasy: </span><input type="text" name="name" value="<?php echo $className ?>"></label></li>

            <?php if ($power) { ?>
                <li>
                    <input id="delclassid" name="delclassid" type="checkbox" class="hidden">
                    <label for="delclassid">Usuwanie klasy</label>
                    <label class="auxilia"><input name="newremove" type="checkbox"><b style="color: red">TAK, chcę usunąć klasę <?php echo $className ?>, wszystkich uczniów oraz ich historię z bazy</b></label>
                </li>
            <?php } ?>

        </ul>
        <button type="submit" class="settings hidden">Zapisz!</button>



    </form>


</div>

