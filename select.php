
<?php

include ("conn.php");
    $sql = "SELECT image_link FROM i ";
    $result = mysql_query($sql) or die("invalid<br>".mysql_error());
    while($row = mysql_fetch_array($result)){
        extract($row);
    echo "<img src='$image_link' width='50%' height='50%'>";
    }
?>

