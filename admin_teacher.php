<?php
if (!$username) {
    header("Location: login.php");
    die();
}
?>
<?php
$sql = "SELECT * FROM teachers WHERE id='{$_GET['teacher']}'";
$result = $connect->query($sql);
while ($row = $result->fetch_assoc()) {
    $teacherid = $row['id'];
    $teacherName = $row['username'];
    $teacherPower = $row['power'];
}
// $sql = "SELECT COUNT(*) AS c FROM questions WHERE exam='{$_GET['exam']}'";
// $result = $connect->query($sql);
// while ($row = $result->fetch_assoc()) {
//     $numberOfQuestions = $row['c'];
// }
?>
<h1>
    <a href="admin.php">
        <i class="fas fa-arrow-left"></i>
        Nauczyciel:
        <?php echo $teacherName ?>
    </a>
</h1>
<?php echo $loginbar ?>



<form class="q" method="post" action="db_adm_update_settings.php">
    <h2 id="">Ustawienia nauczyciela</h2>
    <input type="hidden" name="teacherid" value="<?php echo $teacherid ?>">
    <ul class="">
        <li><label><span>Nazwa użytkownika: </span><input type="text" name="name" value="<?php echo $teacherName ?>"></label></li>
        <!-- <li><label><span>Hasło: </span><input type="password" name="password" readonly value="**********"></li> -->
        <li>
            <label>
                <span>Podwyższone uprawnienia: </span>
                <select name="power">
                    <option value="0" <?php echo ($teacherPower ? '' : 'selected') ?>>Nie</option>
                    <option value="1" <?php echo ($teacherPower ? 'selected' : '') ?>>Tak</option>
                </select>
            </label>
        </li>
        <li>
            <input id="resetteacherid" name="resetteacherid" type="checkbox" class="hidden">
            <label for="resetteacherid">Resetowanie hasła</label>
            <label class="auxilia"><input name="newremove" type="checkbox">TAK, chcę zresetować hasło nauczyciela <?php echo $teacherName ?>.</label>
        </li>
        <li>
            <input id="delteacherid" name="delteacherid" type="checkbox" class="hidden">
            <label for="delteacherid">Usuwanie nauczyciela</label>
            <label class="auxilia"><input name="newremove" type="checkbox"><b style="color: red">TAK, chcę usunąć nauczyciela <?php echo $teacherName ?>. Jego testy nie zostaną usunięte.</b></label>
        </li>
    </ul>

    <button type="submit" class="">Zapisz!</button>
</form>


<form class="q" method="post" action="db_adm_update_allowance.php">
    <h2>Wyznaczone klasy:</h2>
    <input type="hidden" name="action" value="class">
    <input type="hidden" name="teacherid" value="<?php echo $teacherid; ?>">
    <ul>
        <?php
        $sql = "SELECT * FROM classes ORDER BY className";
        $result = $connect->query($sql);
        if ($result->num_rows > 0) {
            while ($row = $result->fetch_assoc()) {
                $sql2 = "SELECT teacherid FROM subjects WHERE classid = '{$row['id']}' AND teacherid='{$teacherid}'";
                $result2 = $connect->query($sql2);
                $checked = $result2->num_rows == 0 ? '' : 'checked';
                echo "<li><label><input type=\"checkbox\" id=\"s-{$row['id']}\" name=\"s-{$row['id']}\" class=\"\" $checked> {$row['className']}</label></li>";
            }
        } else {
            echo "<li class=\"labellike\">Brak klas!</li>";
        }
        ?>

    </ul>
    <button type="submit" class="">Zapisz!</button>
</form>

<form class="q" method="post" action="db_adm_update_allowance.php">
    <h2>Wyznaczone testy:</h2>
    <input type="hidden" name="action" value="exam">
    <input type="hidden" name="teacherid" value="<?php echo $teacherid; ?>">
    <ul>
        <?php
        $sql = "SELECT * FROM examtypes ORDER BY name";
        $result = $connect->query($sql);
        if ($result->num_rows > 0) {
            while ($row = $result->fetch_assoc()) {
                $sql2 = "SELECT teacherid FROM examowners WHERE examid = '{$row['id']}' AND teacherid='{$teacherid}'";
                $result2 = $connect->query($sql2);
                $checked = $result2->num_rows == 0 ? '' : 'checked';
                echo "<li><label><input type=\"checkbox\" id=\"s-{$row['id']}\" name=\"s-{$row['id']}\" class=\"\" $checked> <i class=\"fas fa-fw {$row['icon']}\"></i> {$row['name']}</label></li>";
            }
        } else {
            echo "<li class=\"labellike\">Brak testów!</li>";
        }
        ?>

    </ul>
    <button type="submit" class="">Zapisz!</button>
</form>