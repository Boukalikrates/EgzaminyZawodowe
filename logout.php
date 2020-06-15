<?php
$past = time() - 100;
//this makes the time in the past to destroy the cookie
setcookie('ID_Testy_offline', 'gone', $past);
setcookie('Key_Testy_offline', 'gone', $past);
header("Location: login.php?info=Wylogowano pomyślnie");
?> 