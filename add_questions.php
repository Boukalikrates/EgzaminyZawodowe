<?php
require_once('adminskel.php');
require_once('skel.php');
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
}
$sql = "SELECT COUNT(*) AS c FROM questions WHERE exam='{$_GET['exam']}'";
$result = $connect->query($sql);
while ($row = $result->fetch_assoc()) {
    $numberOfQuestions = $row['c'];
}
if ($numberOfQuestions < 1) {
    $page = 'new';
} else {
    $page = $_GET['page'] ? $_GET['page'] : 1;
}
$newpage = $page == 'new';
?>

<body>
    <link rel="stylesheet" href="add_questions.css">
    <script>
        const examid = <?php echo $_GET['exam'] ?>;
    </script>
    <script src="add_questions.js"></script>
    <h1>
        <a href="admin.php?exam=<?php echo $examId ?>">
            <i class="fas fa-arrow-left"></i>
            Edycja testu:
            <?php echo $examName ?>
        </a>
    </h1>
    <?php echo $loginbar ?>
    <div>Strona:
        <?php
        for ($i = 1; $i < $numberOfQuestions / 100 + 1; $i++) {
            $checked = $i == $page ? 'checked' : '';
            echo "<a href=\"?exam={$examId}&page={$i}\" class=\"pagenumbers $checked\">$i</a>";
        }
        $checked = $newpage ? 'checked' : '';
        echo "<a href=\"?exam={$examId}&page=new\" class=\"pagenumbers $checked\">Nowa strona</a>";

        ?>
    </div>
    <table class="questions">
        <thead>
            <tr>

                <th>Treść pytania</th>
                <th>Odpowiedzi</th>
                <th>Status</th>
            </tr>
        </thead>
        <tbody>

            <?php
            if ($newpage) {
                $sql = "SELECT 'new' as 'id', '' as 'q', '[\"\",\"\",\"\",\"\"]' as 'at', 0 as 'ans'";
            } else {
                $limit = $page * 100 - 100;
                $sql = "SELECT * FROM questions WHERE exam='{$_GET['exam']}' LIMIT $limit,100";
            }
            $result = $connect->query($sql);
            $repetiton = $newpage ? 100 : 1;
            while ($row = $result->fetch_assoc()) {
                for ($j = 0; $j < $repetiton; $j++) {
            ?>
                    <tr class="questionitem <?php echo $newpage ? 'new' : ''; ?>" data-questionid="<?php echo $row['id']; ?>">
                        <td>
                            <div><textarea><?php echo $row['q']; ?></textarea></div>
                        </td>
                        <td>
                            <div class="hidden"></div>
                            <?php
                            $anslist = json_decode($row['at']);
                            for ($i = 0; $i < count($anslist); $i++) {
                                $checked = $i == $row['ans'] ? 'checked' : '';
                                $ans = htmlentities($anslist[$i]);
                                echo "<div><input $checked type=\"radio\" name=\"q{$row['id']}\" value=\"{$i}\" class=\"answerchecker\"> <input class=\"answerinput\" value=\"{$ans}\"></div>";
                            }
                            ?>
                            <span>
                                <button class="aadd" title="Dodaj możliwą odpowiedź">+</button>
                                <button class="asub" title="Usuń możliwą odpowiedź">-</button>
                                <button class="adel" title="Usuń to pytanie">Usuń pytanie</button>
                            </span>
                        </td>
                        <td>
                            <input class="queryoutput" type="hidden">
                            <output class="statusicon"><i class="fas fa-square" title="Niezmodyfikowane"></i></output>
                        </td>
                    </tr>
            <?php
                }
            }









            ?>

        </tbody>
        <!-- <tfoot>
            <tr>
                <td>

                    <button class="qadd">Dodaj pytanie</button>
                </td>

            </tr>
        </tfoot> -->
    </table>
</body>