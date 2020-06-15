<?php
if (!$username) {
    header("Location: login.php");
    die();
}
?>
<?php
$sql = "SELECT * FROM examtypes WHERE id='{$_GET['exam']}'";
$result = $connect->query($sql);
while ($row = $result->fetch_assoc()) {
    $examName = $row['name'];
    $examId = $row['id'];
    $icon = $row['icon'];
    $questions = $row['questions'];
    $time = $row['time'];
    $theme = $row['theme'];
}
$sql = "SELECT COUNT(*) AS c FROM questions WHERE exam='{$_GET['exam']}'";
$result = $connect->query($sql);
while ($row = $result->fetch_assoc()) {
    $numberOfQuestions = $row['c'];
}
theme($theme);
?>
<h1>
    <a href="admin.php">
        <i class="fas fa-arrow-left"></i>
        Test:
        <?php echo $examName ?>
    </a>
</h1>
<?php echo $loginbar ?>

<div class="q">
    <h2>Liczba pytań w bazie: <?php echo $numberOfQuestions ?></h2>
    <?php
    if ($numberOfQuestions) {
    ?>
        <a href="add_questions.php?exam=<?php echo $examId ?>" class="labellike">Edytuj pytania</a>
    <?php
    }
    ?>
    <a href="add_questions.php?exam=<?php echo $examId ?>&page=new" class="labellike">Dodaj pytania</a>
</div>


<form class="q" method="post" action="db_adm_update_settings.php">
    <h2 id="settingsHeader">Ustawienia testu</h2>
    <input type="hidden" name="examid" value="<?php echo $examId ?>">
    <ul class="settings hidden">
        <li><label><span>Nazwa testu: </span><input type="text" name="name" value="<?php echo $examName ?>"></label></li>
        <li><label><span>Ilość pytań: </span><input type="number" min="1" name="questions" value="<?php echo $questions ?>"></label></li>
        <li><label><span>Czas w minutach: </span><input type="number" min="0" name="time" value="<?php echo $time ?>"></label></li>
        <li>
            <label>
                <span>Motyw: </span>
                <select name="theme">
                    <option value="0" <?php echo ($theme == 0 ? 'selected' : '') ?>>Jasny</option>
                    <option value="1" <?php echo ($theme == 1 ? 'selected' : '') ?>>Ciemny</option>
                    <option value="2" <?php echo ($theme == 2 ? 'selected' : '') ?>>Biedronka</option>
                    <option value="3" <?php echo ($theme == 3 ? 'selected' : '') ?>>Filozofia xD</option>
                    <option value="4" <?php echo ($theme == 4 ? 'selected' : '') ?>>Nocna warta w serwerowni</option>
                </select>
            </label>
        </li>
        <li class="iconpicker">
            <input type="checkbox" class="hidden" id="iconpickerauxilia">
            <label for="iconpickerauxilia"><span>Ikona: </span><output class="iconpicked"><i class="fas fa-fw <?php echo $icon ?>"></i></output></label>
            <ul class="auxilia">
                <?php
                $iconsjson = json_decode(file_get_contents('./icons.json'));
                for ($i = 0; $i < count($iconsjson); $i++) {
                    $iicon = "fa-" . $iconsjson[$i];
                    $checked = $iicon == $icon ? 'checked' : '';
                    echo "<li data-iconpick=\"$iicon\"><input type=\"radio\" id=\"$iicon\" value=\"$iicon\" $checked name=\"iconpick\"><label class=\"iconpick\" for=\"$iicon\" data-iconpick=\"$iicon\" ><i class=\"fas fa-fw $iicon\" data-iconpick=\"$iicon\"></i></label></li>";
                }
                ?>

            </ul>
        </li>

        <?php if ($power) { ?>
            <li>
                <input id="delexamid" name="delexamid" type="checkbox" class="hidden">
                <label for="delexamid">Usuwanie testu</label>
                <label class="auxilia"><input name="newremove" type="checkbox"><b style="color: red">TAK, chcę usunąć test <?php echo $examName ?> i wszystkie pytania z bazy</b></label>
            </li>
        <?php } ?>

    </ul>
    <button type="submit" class="settings hidden">Zapisz!</button>
</form>