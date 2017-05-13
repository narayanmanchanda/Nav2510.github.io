<?php
include("conn.php");
extract($_POST);
if(isset($submit))
{
    $gen = $gender;
    $passs=sha1($password);
    $query = "INSERT into sign_up(name,email,pass,gender) VALUES('$name','$email','$passs','$gen')";
$result =mysql_query($query) or die("insertion error".mysql_error());
if($result)
{
    echo '<script>alert(" Registered ");</script>';
}
else
    echo '<script>alert("Registration Failed");</script>';
//header("Location:signup.php");
}
?>
<!DOCTYPE html>
<html>
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>!nterV!ewdream-SignUp</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/signup.css" rel="stylesheet">

    <!-- Google font -->
    <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">

</head>
<body>
    <div class="container form_border">
    <h1>Create an Account</h1>
    <br/>
    <h4>InterviewDream account opens a new world of opportunities.</h4>
    <br/>
    <div class="row">
    <div class="col-lg-6" style="border-right: 2px solid gray;">
        <form action="signup.php" method="POST">
            <div class="form-group">
                <input type="text" name="name" placeholder="Enter Your Name" />
            </div>
            <div class="form-group">
                <input type="email" name="email" placeholder="abc@example.com" />
            </div>
            <div class="form-group">
                <input type="password" name="password" placeholder="Create password" />
            </div>
            <div class="form-group">
                <div class="col-lg-2"><span>Male</span></div>
                <div class="col-lg-2"><input type="radio" name="gender" value="Male" checked="checked" /></div>
                <div class="col-lg-2"><span>Female</span></div>
                <div class="col-lg-2"><input type="radio" name="gender" value="Female" /></div>
            </div>
            <div class="form-group">
                <button type="submit" name = "submit" class="btn btn-primary">Create Account</button>
            </div>
        </form>
    </div>
    <div class="col-lg-2"></div>
    <div class="col-lg-5 alternate">
        <div class="row" style="padding-bottom: 20px; ">
            <span style="font-size: 21px;">
                Save your time by Signing In with:
            <span>
        </div>
        <div class="row">
            <div class="col-lg-2" style="margin-right: 30px;">
                <button class="btn btn-primary btn_social">Facebook</button>
            </div>
            <div class="col-lg-1"></div>
            <div class="col-lg-2">
                <button class="btn btn-warning btn_social">Google</button>
            </div>
        </div>
        <br/>
        <br/>
        <div class="row">
            Already have an account?
            <a href="index.html#mymodal">Click Here</a>
        </div>
    </div>
    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Scrolling Nav JavaScript -->
    <script src="js/jquery.easing.min.js"></script>
    <script src="js/scrolling-nav.js"></script>
</body>
</html>