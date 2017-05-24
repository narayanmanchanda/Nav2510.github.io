<?php
extract($_POST);
#$error = "";
session_start();
echo "login";
if(isset($log))
{
    if(empty($user)||empty($password))
    {
        $error = "Enter Username and password";
    }
    else
    {
        include("conn.php");
        $query = "SELECT * from sign_up where email='$user'and pass='$password' ";
        $result = mysqli_query($con,$query) or die ("invalid ".mysql_error());
        $rows = mysqli_num_rows($result);
        if($rows == 1)
        {
            $_SESSION['login_user'] = $user;
            header("location:profile.php");
        }
        else
        {
            $error = "Password incorrect";
            echo "<script>alert('Wrong password');</script>";
        }
        mysqli_close($con);
    }
}
?>
