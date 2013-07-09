<?php
setcookie('cookieAcceptanceCookie', 'accepted', strtotime("+ 1 year"),'/');
header("Location: ".$_GET["r"],TRUE,307);
?>
