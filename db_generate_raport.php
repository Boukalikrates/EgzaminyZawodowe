<table id="resultstable" class="tablesorter">
    <thead>
        <th>Data i godzina</th>
        <th>Rodzaj</th>
        <th>Uczeń</th>
        <th>Klasa</th>
        <th>Wynik</th>
        <th>Opcje</th>
    </thead>
    <tbody>
        <?php
        error_reporting(E_ALL);
        require_once 'adminskel.php';
        require_once 'db_connect.php';
        $sqlbegin = "SELECT Data, Date, Score, Total, icon, history.examid, users.userCode, users.Name, LastName, className, examtypes.name AS exam FROM history LEFT JOIN examtypes ON history.examid = examtypes.id LEFT JOIN users ON history.userCode = users.userCode LEFT JOIN classes ON users.classid = classes.id  LEFT JOIN subjects ON subjects.classid = classes.id   LEFT JOIN examowners ON examowners.examid = history.examid ";

        switch ($_GET["who"]) {
            case "class":
                $sqlwhere = "WHERE users.classid = '{$_GET["class"]}' ";
                break;
            case "user":
                $sqlwhere = "WHERE users.userCode = '{$_GET["user"]}' ";
                break;
            case "where":
                $sqlwhere = "WHERE ({$_GET["where"]}) ";
                break;
            default:
                $sqlwhere = "WHERE 1 ";
                break;
        }

        switch ($_GET["which"]) {
            case "exam":
                $sqlwhich = "AND history.examid = '{$_GET["exam"]}' ";
                break;
        }

        if(!$power){
            $sqlteacher="AND subjects.teacherid = '{$teacherid}' AND examowners.teacherid = '{$teacherid}' ";
        }

        switch ($_GET["time"]) {
            case "today":
                $today=date("Y-m-d");
                $sqltime = "AND Date > '{$today} 00:00:00' ";
                break;
            case "period":
                $before = $_GET["before"] ? ("AND Date < '{$_GET["before"]}' ") : "";
                $after = $_GET["after"] ? ("AND Date > '{$_GET["after"]}' ") : "";
                $sqltime = $before . $after;
                break;
        }

        $sql = $sqlbegin . $sqlwhere . $sqlwhich . $sqlteacher . $sqltime . "GROUP BY history.id ORDER BY Date ASC ";
        $result = $connect->query($sql);
        if ($result->num_rows > 0) {
            while ($row = $result->fetch_assoc()) {

                $typeIconic = "<i class=\"fas " . $row['icon'] . " fa-fw\"></i> " . $row['exam'];

                $plotadder = "<script>graphsettings.data.labels.push('" . $row['Date'] . "');graphsettings.data.datasets[0].data.push('" . $row['Score'] * 100 / $row['Total'] . "')</script>";

                echo "<tr data-string=\"" . $row['Data'] . "\" data-type=\"" . $row['ExamID'] . "\">";
                echo "<td>" . $row['Date'] . "</td>";
                echo "<td>" . $typeIconic . "</td>";
                echo "<td>[" . $row['userCode'] . "] " . $row['Name'] . " " . $row['LastName'] . "</td>";
                echo "<td>" . $row['className'] . "</td>";
                echo "<td>" . $row['Score'] . "/" . $row['Total'] . "</td>";
                echo "<td><div class=\"look icon\"><i class=\"fas fa-search fa-fw\"></i></div>" . $plotadder . "</td>";
                echo "</tr>";
            }
        } else {
            echo "<tr><td colspan=\"6\">Brak wyników! Zmień kryteria wyszukiwania albo poczekaj aż zaczną spływać testy uczniów</td></tr>";
        }
        ?>
    </tbody>
</table>
<?php /*echo $sql;*/?>