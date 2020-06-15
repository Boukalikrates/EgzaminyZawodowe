<?php require_once('skel.php') ?>

<body>
    <?php

    $ARR = count($_POST) ? $_POST : $_GET;
    if ($ARR['userCode']) {
        $code = $ARR['userCode'];
        $type = $ARR['examtype'];
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
    }
    $sql = "SELECT theme FROM examtypes  WHERE id = '{$ARR['examtype']}'";
    $result = $connect->query($sql);
    $row = $result->fetch_assoc();
    theme($row['theme']);
    $correctans = 0;
    $incorrectans = 0;
    $a = 0;
    $toSave = '';
    $toShow = '';
    foreach ($ARR as $item => $value) {
        if (($item != "examtype") && ($item != "previous") && ($item != "userCode")) {
            $toSave .= $item . "=" . $value . "&";

            $result = $connect->query("SELECT * FROM questions WHERE id = $item;");

            $row = $result->fetch_assoc();


            $toShow .= "<div class=\"q \"><h2>" . ++$i . ". " . htmlentities($row['q']) . "</h2>";
            if ($row['i']) {
                $toShow .= "<figure><img src=\"img/" . $row['i'] . "\" alt=\"" . htmlentities($row['q']) . "\"/></figure>";
            }
            $toShow .= "<ul>";
            $ans = json_decode($row['at']);
            for ($a = 0; $a < count($ans); $a++) {
                $correct = $a == $row['ans'];
                $chosen = $value == $a;
                $classname = ($correct ? 'correct' : '') . ' ' . ($chosen ? 'chosen' : '');
                $toShow .= "<li><label class=\"$classname\">" . htmlentities($ans[$a]) . "</label></li>";
            }
            $toShow .= "</ul></div>";

            ($row['ans'] == $value) ? $correctans++ : $incorrectans++;
        }
    }
    $total = $incorrectans + $correctans;
    $shortcut = $ARR["previous"] ? $ARR["previous"] : ("index.php" . ($incorrectans == 0 ? "?you=spin&me=round" : ""));
    $percent = $total == 0 ? 100 : number_format($correctans / $total * 100, 2);

    echo "<div class=\"top columns\"><h1><a href=\"" . $shortcut . "\"><i class=\"fas fa-arrow-left\"></i> Liczba poprawnych odpowiedzi: " . $correctans . "/" . $total . "</a><br>";
    echo "Twój wynik to: " . $percent . "%" . "</h1>";
    echo $toShow;
    echo "</div>";

    //save in database
    if ($ARR['userCode'] != null) {
        $date = date("Y-m-d H:i:s");
        $sql = "INSERT INTO history (Id, Data, userCode, Date, examid, Score, Total) VALUES ('', '{$toSave}', '{$ARR['userCode']}', '{$date}', '{$ARR['examtype']}', '{$correctans}', '{$total}')";

        if ($connect->query($sql) === TRUE) {
            echo "<br><div class=\"center\">Twój wynik został pomyślnie zapisany!</div>";
            $sql = "DELETE FROM allowance WHERE userCode = '{$ARR['userCode']}' AND examid = {$ARR['examtype']}";
            $connect->query($sql);
        } else {
            echo "Error: " . $sql . "<br>" . $conn->error;
        }
    }
    ?>
</body>

</html>