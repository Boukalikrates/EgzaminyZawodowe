<?php 
    $ads=array(
        array('img/nicecon/csharp-dev.jpg','http://csharp-dev.pl/'),
        array('img/nicecon/cdnasprzedaz2.jpg','https://www.youtube.com/c/GrzegorzWusiewicz'),
        array('img/nicecon/tetrahecta.jpg','https://bouk.pl/tetrahecta'),
    );
    $adpicked=$ads[rand(0,count($ads)-1)];
    $adimg=$adpicked[0];
    $adlink=$adpicked[1];
    echo "<a href=\"$adlink\" class=\"nicecon\"><img src=\"$adimg\" alt=\"$adlink\"></a>"

?>