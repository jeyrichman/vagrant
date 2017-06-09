<?php
$server   = "localhost";
$database = "admin";
$username = "admin";
$password = "admin";

$mysqlConnection = mysql_connect($server, $username, $password);
if (!$mysqlConnection)
{
          echo "Please try later.";
}
else
{
        mysql_select_db($database, $mysqlConnection);
        echo "Hello World";
}
?>
