<?php

$con=mysql_connect("localhost","root","");
if($con)
{
    $db=mysql_select_db("interview",$con);
        if(!$db)
        {
            echo "database connection failed";
        }
}
?>