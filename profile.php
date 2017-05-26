<?php
include("conn.php");
session_start();
$user_check = $_SESSION['login_user'];
$result = mysql_query("SELECT name FROM sign_up WHERE email='$user_check'");
$row = mysql_fetch_assoc($result);
$login_session = $row['name'];
if(!isset($login_session))
{
    mysql_close($con);
    header('Location:main.html');
}

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Interview Dream Profile</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/profile_style.css" rel="stylesheet">

    <!-- jQuery -->
    <script src="script/jquery.js"></script>

    <!-- Angular Javascript -->
    <script type="text/javascript" src="script/angular.min.js"></script>


    <!-- Including Jquery-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <!-- jquery is required first befor using bootstrap.min.js -->
    <script src = "script/bootstrap.min.js"></script>
</head>

<body>
    <nav class="navbar navbar-fixed-top navbar-default">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="main.html">Interview Dreams</a>
            </div>
            <ul class="nav navbar-nav navbar-right">
                <li>
                    <a href="#"><img  src="http://cdn.growassets.net/assets/images/default_medium_profile_pic.png" style="height: 25px; width: 25px;border-radius: 50%" /></a>
                </li>
                <li class="btn" style="font-weight: bold;margin-top: 8%">Name</li>
                <li class="button"><a href="logout.php">Logout</a></li>
            </ul>
        </div>
    </nav>
    <div class="container-fluid">
        <div class="row" style="height: 50px;"></div>
        <hr/>

        <!--  banner and profile -->
        <div class="row" id="about" style="margin-bottom:5px; height:1px;"></div>
            <div class="container-fluid">
                <div class="row banner">
                    <img id="background_img"  src="img/jpg/back.jpg" />
                    <a type="submit"><img id="profile_img" src="img/icons/profile_icon.png" /></a>
                    <div id="banner_text">
                        <h3>Hi</h3>
                            <h1><i><?php echo $login_session; ?></i></h1>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <!-- Banner and profile pic ends here -->
        <div class = "jumbotron">
            <div class="row" style="text-align: center;">
                <div class="col-md-6">Upload your own questions</div>
                <div class="col-md-6">
                    <button onclick="#myModal" id="upload">Upload</button>
                </div>
            </div>
        </div>
        <div class="row" style="text-align: center";><h3>Completed Skills</h3></div>
        <div class="row" style="padding: 50px;">
            <div class="col-md-2"></div>
            <a href="#">
                <h3 class="col-md-2">C++</h3>
                <div class="col-md-5 progress" style="padding: 2px; margin:30px;">
                    <div class="progress">
                        <div class="progress-bar progress-bar-striped active" role="progressbar"
                                aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width:40%">40%
                        </div>
                    </div>
                </div>
            </a>
        </div>
    </div>

    <!-- Modal -->
<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog modal-lg">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Questions</h4>
      </div>
      <div class="modal-body">
        <form method="POST" data-toggle="validator" role="form" id="questionform" class="col-md-offset-1" action="teacherform.php">

            <div class="form-group row">
                <label for="topic" class="col-sm-2">Topic: </label>
                <div class="form-inline row col-sm-10">
                <select class="form-control" id = "topic" name="topic">
                    <option value="C">C</option>
                    <option value="Database">Database</option>
                    <option value="Computer Network">Computer Network</option>
                    <option value="Puzzle">Puzzle</option>
                    <option value="Java">Java</option>
                </select>
                </div>
            </div>

            <div class="form-group row">
                <label for="discription" class=" col-sm-2">Discription: </label>
                <div class="form-inline row col-sm-10">
                <input type="text" name="discription" id="discription" placeholder="Your question" class="form-control" size="38" required>
                </div>
            </div>

            <div class="form-group row">
                <label for="code" class=" col-sm-2">Code:</label>
                <div class="form-inline row col-sm-10">
                <textarea class="form-control" name="code" id="code" rows="9" cols="40" placeholder="Enter your Code"></textarea>
                </div>
            </div>
<hr>
            <div class="form-inline row">
                <label for="option" class="col-sm-2">Option:</label>

                    <div class="col-sm-1" style="font-weight: bold;">A</div>
                    <input  type="text" name="a" id="a" size="6" class="form-control col-sm-2" required>

                    <label for="b" class="col-sm-1">B </label>
                    <input  type="text" name="b" id="b" size="6" class="form-control col-sm-2" required>

                    <label for="c" class="col-sm-1">C </label>
                    <input type="text" name="c" id="c" size="4" class="form-control col-sm-2" required>

                    <label for="d" class="col-sm-1">D </label>
                    <input  type="text" name="d" id="d" size="4" class="form-control col-sm-2" required>
            </div>
<hr>


            <div class="form-group row">
                <label for="ans" class="col-sm-2">Ans: </label>
                <div class="form-inline row col-sm-10">
                <select class="form-control" id = "ans" name="ans">
                    <option value="a">A</option>
                    <option value="b">B</option>
                    <option value="c">C</option>
                    <option value="d">D</option>
                </select>
                </div>
            </div>

            <div class="form-group row">
                <label for="explanation" class="col-sm-2">Explanation: </label>
                <div class="form-inline row col-sm-10">
                <input type="text" name="explanation" id="explanation" class="form-control" placeholder="Explanation">
                </div>
            </div>

            <button type="Submit" class="btn btn-primary" name="Submit">Submit</button>



        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>
    <!-- Footer section -->

    <!-- footer starts-->
    <div class="row" style="background-color: #333333; color: #aaaaaa;">
        <div class="col-sm-6">
            <h1 class="text-center">About the page</h1>
            <p class="text-center">Made with lot of efforts and <span class="glyphicon glyphicon-music"></span>.</p>
        </div>
    <div class="col-sm-6">
    <h1 class="text-center">Know more about Us</h1>
    <p class="text-center">
        <!-- GitHub icon by Icons8 -->
        <a href="https://github.com/Nav2510" target="_blank"><img class="icon icons8-GitHub" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEAAAABACAYAAACqaXHeAAAFe0lEQVR4Xu2aS3oaRxDHq3q0j30C4xMEnSAokLWkDFkbncA8sjfah4dPILyOiKR1hgifQOQEJicw3jNd/noAaUAzU9UzI4VPMNvpV/36X9XVD4Qd/3DH7Yc9gL0CdpzA3gV2XAD7IPgsLtArXb0ixz8mxCICFYGwAAiFNfURTAFpioBjIpqi79w0xqezp1bokwFYGv0OEGoAWExnCE2AYIC+8+mpYOQOoFe6KugD/R4JaoDwKp3hG7UIZoQwUHP1sTE+nebS5rKRXAH0KsMPRFDPzfBNSwlmiNBveO55XhByAdD75apI5F+kl7qtOTTBuXOahxoyA+j8PKwhQu/JZj2ODcFMA539Pqpe2+ILl88EIDBewUWWAWStSxrOWv+4g7TtpAawDcavjM4CIRWAbTJ+BUETnaZxB2sAQcDT+vbZfZ7TuFkhfHVoGxitAXQrl3dx0R5BHzW838YGkiZ9AkB1BPyBG3vSfwL6BoB9heq68ffppFf5s0SgbqPr0KTpVQ9t+rMC0KkM2wjwIaoDM9CWV11LfEw2qA90PVzHlEPAyaINWqa6GNQjoGIYGAGcq7nqb2aB3cqQ4hcHOG95blsKQQzAZHjk6LsE6X9uem4pqmNT13f8ouM7E06ikrLdynAMAD9FGmnpCmIA3fJlHxDfJ5CNBSCdDWm5RACBkuQqEAFYbGz0FybwbQ0AWKjgrWQDJQLQqQyNH/cSZ4hg1hy5r6WzmKVctzz8yq1C0txABCAp8t8nIxFBMIuRSXU7lcsZv7rIVgQWQCD/A/2VM2a1BHLl8vifvBQ+9IBz9ZpzAxaALOujm6ZXPcnDOGkbXCA07UiyQxaAIPrDc87+CtAf5csThXiVnETxqwEPIGnNXSQvjxIg6SxmLSeIBezKxAMoD83yt36AuT5ytpOshsbVZ92AYNocuW+T+ucBJKSdy4a3FwAAND030cY9AE6eSRuPnVBApzycIsKbJFCczDjIaf9zk0ME/7VGblL84q/G2EADADgP8u5cz+s5KMHu9EB/Ycqx8UkSA+K3nsvepXk3Z5TNf1mCBjkA4LfBJhsYN73qkY0BWct2K5e3ABh5/nDfNtHH5qhaz7QMSjIu08FzZoPSvUAuqbB0MwQQ3NYccZuPrDO/GI9vZp+9cM1lM2QG3CkPJ4jwIz/4p4VgYzwR/NsauTwk3igAYcBZhcQJonNmTnAlbUvLBLIndcGk5Q/uL7wxYlcB0+LidNc3jxdCR9x0QxqvEakEiO82DSGia0Q1aHq/3kiNjCrXrfx1TKRriCjebtts0EQAzMAeb4sfbmiDewCtr+MTJhqblx+A6oZThplpDeo4eEnCRfk4soLov6oqBhCpAnP4qNRRcGERXIb4xtDIixCTlSlfFbkgGfTjaBNzErPPWNuBvqm5U+D6sQYQBMOow1GC6fJKapYUK2ySJdEhbAwBAmi0PLcvdTuxAlYNRqXG4XP4uMEjqkNO/qs+pOt8hJFs5rdZxxpApNQ3zuGNjH3HLyFiQYGewPzA3AhZvfjiNjqPgq6RPjolKeRULnA/Q8GTGH0XHgQRDFoj90wqPa6cLQAbhYX7tlbAqnKUvxNAv+W5Dc44yX8bADbxJbMLhBuIDHomKCIMCNHsIhef1oXmqPpJYngo1sTeAK8pT5jwxPWdWgFhd0ha/lblbA9NOAWYZCeNz+eqgI2YYJae6CtrweHk5sAYAJ8RVd024EWpILMC1lyiMqwDUDsqGcpDAcvXIm2bdZ5zu1wBmM6Wb4TbhFALg8gCIHhVsngz3LZdTp8dQESQrAHRhDuZeeQCi5OoImkYZHkH+L8C4Drfhv+5u8A2GGUzhj0AG1ovsexeAS9xVm1s2ivAhtZLLLvzCvgONXbWX5bVTsIAAAAASUVORK5CYII=" width="50" height="50"></a>
        <!-- Google Plus icon by Icons8 -->
        <a href="https://plus.google.com/+navdeepsingh2510" target="_blank"><img class="icon icons8-Google-Plus" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAC30lEQVRoQ+2ZPVATURSFv+2ZkRIqwwzWhp7wU2IjzEhaAWshlqQxabTlp0/SUxgbLEkkPem1oNNOmMF6ncPLG5mwb13ZZ7Jx9jaZgff2nXPvuT9vN2DCLZhw/OQExh3BPAKZj0BYYp2QPQJWRgo2pEPAYXBOO+7cWAmFJZrA1kiBDx8WUg961FwYnARuPQ8fxgreHh6yGvToRGFxE1i8DeFyRgh0g160hOMiEGYC/ABEcB7ds3ICo4pSHgGnp4srsPYS9DtbuL+s34VGDfqRRSRxAP1HYGoa9pswOwfVdfh+CfNFqLZg/incXMHuKnztJwYZ27C8J/G7Niw+h/KcAW9tpgCNPkw9gi99eLWQQQLydOMCbq7h2fR9gK8PYHPP/F1RSCkfPcavhLZrsP3WAFyKqMTKh6Mz8//jN3BykDoK/47AsIQs1M+DPljdgF7sPJaInF8Ca1smgWXNOjQjZi0RkMTKBZPQUWZJRkVxaL1fAnq4EtVVbSzB99vwqeX28FgJqNqoZBaXjYePKvDtEkrrUK5AEumMlYD1qxL2SRFEyFYel6y0x4J2xcUhJ/8SGgZwt/JMJAF15tMfv2lpfGjV4ytMJiSkpqZkloSkf8nJmhJYieyysRLYrMCLPfh5DedtuBgMa4qEklujhOzkEI4rGSqjAnh4Zjzt6rJac9QxkZHtLKQe6vwlsZ1zeh/NFOoykVCvmHlsZBTXDxL0Yn8ETq+MPOIqjQVkZyYPA50/AjbxdFHZ/cO7rv3WoLHFjBMJvK8l/ggIlG5gsjhpqDppIlWepJSPXwLSti4zGiFkurQIoH6tqZwubZjxwsMk6peABamBTUDlaSWqTNOnLi8qqSLlmkITyubuMn8SesDhPrbkBHx4Mc0z/j4C/8HL3cl+va5whyV0HxwU/TQCSLH3oR847JHh4u17+drIvxWEdHWu68OGxZd/pUwhDi9b8wh4cWOKh+QRSOE8L1t/AR5fMUDBTdheAAAAAElFTkSuQmCC" width="48" height="48"></a>
    </p>
</div>
<script>
    <script>
$(document).ready(function(){
    $("#upload").click(function(){
        $("#myModal").modal();
    });
});
</script>
</body>
</html>