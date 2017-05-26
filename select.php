
<?php

include ("conn.php");
    $sql = "SELECT image_link FROM i ";
    $result = mysqli_query($con,$sql) or die("invalid<br>".mysql_error());
    while($row = mysqli_fetch_array($result,MYSQLI_BOTH)){
        extract($row);
    echo "<img src='$image_link' width='50%' height='50%'>";
    }
?>

