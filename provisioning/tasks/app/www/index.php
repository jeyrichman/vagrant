<?php
$server   = "MYSQL_HOST";
$database = "MYSQL_DATABASE";
$username = "MYSQL_USER";
$password = "MYSQL_PASSWORD";

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
