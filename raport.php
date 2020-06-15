<?php
require_once('adminskel.php');
require_once('skel.php');
?>

<body>
    <script src="raport.js"></script>
    <div class="top">
        <h1><a href="javascript:history.back()"><i class="fas fa-arrow-left"></i> Raport</a></h1>
        <div class="tablediv">
        </div>






        <?php if ($_GET["who"] == "user") { ?>
            <canvas id="myChart" width="768" height="512"></canvas>
            <script>
                var ctx = document.getElementById("myChart").getContext('2d');
                var chart = new Chart(ctx, graphsettings);
            </script>
        <?php } ?>
    </div>
</body>

</html>