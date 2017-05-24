<?php
include("conn.php");
extract($_POST);
$us = $_REQUEST["q"];
$s = 777;
$query = "SELECT * from sign_up";
$result = mysql_query($query) or die ("invalid ".mysql_error());
    while($row = mysql_fetch_array($result))
    {
        if($us == $row['email'])
        {
            echo "";
            $s = 0;
            break;
        }
        else
        {
            $s=1;
        }
    }
    if($s == 1)
    {
        echo "Account doesn't exist";
    }

?>