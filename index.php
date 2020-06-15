<?php require_once('skel.php') ?>

<body>

    <?php
    if ($_GET['type'] == null) {
        $spin = $_GET['you'] == "spin" && $_GET['me'] == "round" ? "fa-spin" : "";

    ?>
        <form method="GET" class="top">
            <?php
            if ($_GET["info"] != null) {
                echo "<div class=\"info\"><i class=\"fas fa-exclamation-triangle\"></i> ";
                echo $_GET["info"];
                echo "</div>";
            }
            ?>
            <h1><?php echo $config['pagetitle'] ?></h1>
            <div class="q">
                <h2>Wybierz test:</h2>
                <ul>
                    <?php
                    $sql = "SELECT * FROM examtypes ORDER BY name ASC";
                    $result = $connect->query($sql);

                    while ($row = $result->fetch_assoc()) {
                        $li = '<li class="square">
                                <input id="exam-' . $row['id'] . '" name="type" value="' . $row['id'] . '" type="radio">
                                <label for="exam-' . $row['id'] . '">
                                    <div class="qualicon"><i class="fas ' . $spin . ' ' . $row['icon'] . '"></i></div>
                                    <h3>' . $row['name'] . '</h3>
                                    <p>Ilość pytań: ' . $row['questions'] . '<br>Czas: ' . ($row['time'] ? $row['time'] . ' minut' : 'nieograniczony') . '</p>
                                </label>
                            </li>';
                        echo $li;
                    }

                    ?>
                </ul>
            </div>
            <hr>
            <?php if (!$config['demo']) { ?>
                <div class="q">
                    <?php if ($config['anonymous']) { ?>
                        <label><input type="checkbox" checked id="checkbox" name="checkbox">Zapisz wynik testu</label>
                    <?php } ?>
                    <label id="getCode">Podaj kod ucznia: <input name="userCode" type="text"></label>
                </div>
            <?php } ?>

            <div class="q">
                <button type="submit">Rozpocznij test!</button>
            </div>
            <?php if ($config['demo']) { ?>
                <div class="q">
                    <h2>Zapisz się na newsletter, aby nie przegapić żadnej nowości!</h2>
                    <label>Podaj adres email: <input name="newsletteremail" type="email"></label>
                    <button type="submit">Wyślij</button>
                </div>
            <?php include('ads.php');
            } ?>
        </form>
    <?php
    } else {
        $type = $_GET['type'];
        if ($_GET['userCode']) {
            $code = $_GET['userCode'];
            $sql = "SELECT * FROM users  WHERE userCode = '{$code}'";
            $result = $connect->query($sql);
            if ($result->num_rows <= 0) {
                //alert nie ma takiego ucznia
                echo "<script>window.location.href = \"index.php?info=Wybrany kod ucznia nie istnieje!\";</script>";
                die();
            } else {
                $sql = "SELECT * FROM allowance  WHERE userCode = '{$code}' AND examid='{$type}'";
                $result = $connect->query($sql);
                if ($result->num_rows <= 0) {
                    echo "<script>window.location.href = \"index.php?info=Administrator zablokował Ci możliwość rozwiązywania tego testu!\";</script>";
                    die();
                }
            }
        } else if (!$config['demo'] && (!$config['anonymous'] || $_GET['checkbox'])) {
            echo "<script>window.location.href = \"index.php?info=Podaj kod ucznia!\";</script>";
            die();
        }
        $result = $connect->query("SELECT * FROM examtypes WHERE id = '$type'");
        $row = $result->fetch_assoc();
        $NumberOfQuestions = $row['questions'];
        theme($row['theme']);
        $h1 = $row['time'] ? $row['name'] . '<br>Pozostało: <output id="remainingMinutes">' . $row['time'] . '</output> minut i <output id="remainingSeconds">0</output> sekund.' : $row['name'];
        echo '<div class="top columns"><h1>' . $h1 . '</h1> <form method="post" action="check_answers.php">' . '<input type="hidden" name="examtype" value="' . $type . '">' . '<input type="hidden" name="userCode" value="' . $code . '">';

        $result = $connect->query("SELECT * FROM questions WHERE exam = $type ORDER BY RAND() LIMIT $NumberOfQuestions ;");
        $i = 0;
        while ($row = $result->fetch_assoc()) {

            echo "<div class=\"q\"><h2>" . ++$i . ". " . htmlentities($row['q']) . "</h2>";
            if ($row['i']) {
                echo "<figure><img src=\"img/" . $row['i'] . "\" alt=\"" . htmlentities($row['q']) . "\"/></figure>";
            }
            echo "<ul>";
            $ans = json_decode($row['at']);
            for ($a = 0; $a < count($ans); $a++) {
                echo "<li>
                        <input type=\"radio\" id=" . $row['id'] . "-" . $a . " name=" . $row['id'] . " value =\"" . $a . "\">
                        <label for=" . $row['id'] . "-" . $a . ">" . htmlentities($ans[$a]) . "</label>
                    </li>";
            }
            echo "<li><input type=\"radio\" name=\"" . $row['id'] . "\" value=\"-1\" style=\"display:none\" checked=\"checked\"/></li>";
            echo "</ul></div>";
            if ($config['demo'] && $i % 15 == 0) {
                include('ads.php');
            }
        }
        echo "<button type=\"submit\">Sprawdź!</button>";
        if ($config['demo']) {
            include('ads.php');
        }
        echo " </form></div>";
    }
    ?>
</body>

</html>