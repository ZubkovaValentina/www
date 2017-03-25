<?php
error_reporting(E_ALL & ~E_DEPRECATED);
$handler = mysql_connect('localhost', 'root', '123');


mysql_select_db('remont_avto', $handler);


?>
