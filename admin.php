<?php
require_once('adminskel.php');
require_once('skel.php');
?>

<body>

    <div class="top">
        <?php
        if ($_GET["info"] != null) {
            echo "<div class=\"info\"><i class=\"fas fa-exclamation-triangle\"></i> ";
            echo $_GET["info"];
            echo "</div>";
        }



        if ($power) {
            $classsql = "SELECT * FROM classes ORDER BY className ASC ";
        } else {
            $classsql = "SELECT DISTINCT classes.* FROM classes LEFT JOIN subjects ON classes.id=subjects.classid WHERE subjects.teacherid='{$teacherid}' ";
        }
        $classselect = "";
        $classresult = $connect->query($classsql);
        while ($row = $classresult->fetch_assoc()) {
            $classselect .= "<option " . ($_GET['class'] == $row['id'] ? "selected" : "") . " value=\"{$row['id']}\">{$row['className']}</option>";
        }


        if ($power) {
            $examsql = "SELECT * FROM examtypes ORDER BY name ASC ";
        } else {
            $examsql = "SELECT DISTINCT examtypes.* FROM examtypes LEFT JOIN examowners ON examtypes.id=examowners.examid WHERE examowners.teacherid='{$teacherid}' ";
        }
        $examselect = "";
        $examresult = $connect->query($examsql);
        while ($row = $examresult->fetch_assoc()) {
            $examselect .= "<option " . ($_GET['exam'] == $row['id'] ? "selected" : "") . " value=\"{$row['id']}\">{$row['name']}</option>";
        }

        ?>




        <?php
        if ($_GET['class']) {
            require_once('admin_class.php');
        } else if ($_GET['exam']) {
            require_once('admin_exam.php');
        } else if ($_GET['teacher']) {
            require_once('admin_teacher.php');
        } else { ?>
            <!-- CLASS / TEST SELECTION MENU -->

            <h1>Panel administracyjny</h1>
            <?php echo $loginbar ?>
            <div class="q">
                <h2>Wybierz klasę:</h2>
                <ul>
                    <?php
                    $classresult = $connect->query($classsql);
                    while ($row = $classresult->fetch_assoc()) {

                        echo "<li>";
                        echo "<a class=\"labellike\" href=\"?class={$row['id']}\">" . $row['className'] . "</a>";
                        echo "</li>";
                    }
                    ?>

                </ul>
                <?php if ($power) { ?>

                    <form method="post" action="db_adm_update_settings.php">
                        <h2 id="classAddHeader">Dodaj klasę</h2>
                        <input type="hidden" name="newclassid" value="1">
                        <label class="classAdd">Nazwa klasy: <input type="text" name="name" value=""></label>
                        <button type="submit" class="classAdd">Zapisz!</button>
                    </form>
                <?php } ?>
            </div>

            <div class="q">
                <h2>Wybierz test:</h2>
                <ul>
                    <?php
                    $examresult = $connect->query($examsql);
                    while ($row = $examresult->fetch_assoc()) {

                        echo "<li>";
                        echo "<a class=\"labellike\" href=\"?exam={$row['id']}\"><i class=\"fas fa-fw {$row['icon']}\"></i> " . $row['name'] . "</a>";
                        echo "</li>";
                    }
                    ?>

                </ul>
                <?php if ($power) { ?>
                    <form method="post" action="db_adm_update_settings.php">
                        <h2 id="examAddHeader">Dodaj test</h2>
                        <input type="hidden" name="newexamid" value="1">
                        <label class="examAdd">Nazwa testu: <input type="text" name="name" value=""></label>
                        <button type="submit" class="examAdd">Zapisz!</button>
                    </form>
                <?php } ?>
            </div>

            <?php if ($power) { ?>
                <div class="q">
                    <h2>Wybierz nauczyciela:</h2>
                    <ul>
                        <?php
                        $result = $connect->query("SELECT id,username,power FROM teachers");
                        while ($row = $result->fetch_assoc()) {

                            echo "<li>";
                            echo "<a class=\"labellike\" href=\"?teacher={$row['id']}\">" . $row['username'] . "</a>";
                            echo "</li>";
                        }
                        ?>
                    </ul>
                    <form method="post" action="db_adm_update_settings.php">
                        <h2 id="teacherAddHeader">Dodaj nauczyciela</h2>
                        <input type="hidden" name="newteacherid" value="1">
                        <label class="teacherAdd">Nazwa użytkownika: <input type="text" name="name" value=""></label>
                        <button type="submit" class="teacherAdd">Zapisz!</button>
                    </form>
                </div>

            <?php } ?>
        <?php } ?>





        <?php if (!$_GET['teacher']) { ?>
            <form class="q raportForm" method="GET" action="raport.php">
                <input type="hidden" name="where" id="where2">
                <input type="hidden" name="className" value="<?php echo $_GET['class'] ?>">
                <h2 id="raportHeader">Wygeneruj raport</h2>
                <div class="raport hidden">
                    <ul>
                        <li>
                            <input id="raptoday" name="time" value="today" type="radio" checked>
                            <label for="raptoday">Dzisiaj</label>
                        </li>
                        <li>
                            <input id="rapperiod" name="time" value="period" type="radio">
                            <label for="rapperiod">Przedział czasowy</label>
                            <label class="auxilia">
                                Od: <input type="date" name="after">
                                Do: <input type="date" name="before">
                            </label>
                        </li>
                        <li>
                            <input id="rapall" name="time" value="all" type="radio">
                            <label for="rapall">Cała dostępna historia</label>
                        </li>
                    </ul>
                    <hr>
                    <ul>
                        <li>
                            <input id="rapeveryone" name="who" value="everyone" type="radio" <?php echo $_GET['class'] ? "" : "checked" ?>>
                            <label for="rapeveryone">Dla wszystkich uczniów</label>
                        </li>
                        <li>
                            <input id="rapclass" name="who" value="class" type="radio" <?php echo $_GET['class'] ? "checked" : "" ?>>
                            <label for="rapclass">Dla klasy:</label>
                            <label class="auxilia">
                                <select name="class">
                                    <?php echo $classselect; ?>
                                </select>
                            </label>
                        </li>
                        <li>
                            <input id="rapwhere" name="who" value="where" type="radio">
                            <label for="rapwhere" class="forSelectedRaport">Dla zaznaczonych uczniów</label>
                        </li>
                        <li>
                            <input id="rapuser" name="who" value="user" type="radio">
                            <label for="rapuser" class="forUserRaport">Dla wybranego ucznia</label>
                            <input type="hidden" name="user" id="userRaport">
                        </li>
                    </ul>
                    <hr>
                    <ul>
                        <li>
                            <input id="rapanyexam" name="which" value="anyexam" type="radio" <?php echo $_GET['exam'] ? "" : "checked" ?>>
                            <label for="rapanyexam">Wszystkie testy</label>
                        </li>
                        <li>
                            <input id="rapexam" name="which" value="exam" type="radio" <?php echo $_GET['exam'] ? "checked" : "" ?>>
                            <label for="rapexam">Tylko test:</label>
                            <label class="auxilia">
                                <select name="exam">
                                    <?php echo $examselect; ?>
                                </select>
                            </label>
                        </li>
                    </ul>

                    <button class="raport hidden" type="submit">Wykonaj!</button>
                </div>
            </form>




        <?php } ?>














    </div>
    <script src="admin.js"></script>
</body>

</html>