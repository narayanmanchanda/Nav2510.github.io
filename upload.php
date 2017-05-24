<?php
extract($_POST);
include("conn.php");
//$con = mysqli_connect("localhost","root","","images") or die("Error in connecting database");
if(isset($submit))
{
    $target_dir = "uploads/";
    $target_file = $target_dir.basename($_FILES["fileToUpload"]["name"]);
    $ext ="";
    $uploadOk = 1;
    $imageFileType = pathinfo($target_file,PATHINFO_EXTENSION);
    $check = getimagesize(($_FILES["fileToUpload"]["tmp_name"]));
    if($check !== false)
    {
        echo "File is an image .<br>";
        $uploadOk = 1;
    }
    else {
        echo "File is not an image <br>";
        $uploadOk = 0;//
    }

if (file_exists($target_file)) {
    echo "Sorry, file already exists.<br>";
    $uploadOk = 0;
    }
    if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
&& $imageFileType != "gif" ) {
    echo "Sorry, only JPG, JPEG, PNG & GIF files are allowed.<br>";
    $uploadOk = 0;
}
if ($uploadOk == 0) {
    echo "Sorry, your file was not uploaded.<br>";
} else {
    if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $target_file)) {
        echo "The file ". basename( $_FILES["fileToUpload"]["name"]). " has been uploaded.";
        $query = "INSERT into i(image_link) VALUES ('$target_file') ";
        mysql_query($query) or die("insertion error".mysql_error());
    } else {
        echo "Sorry, there was an error uploading your file. <br>";
    }
}
}
?>
<!DOCTYPE html>
<html>
<head>
    <title>uploading a file</title>
</head>
<body>
<form action="upload.php" method="post" enctype="multipart/form-data">
    Select image to upload:
    <input type="file" name="fileToUpload" id="fileToUpload">
    <input type="submit" name="submit" value="Upload Image">
</form>

</body>
</html>