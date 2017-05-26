<?php
    extract($_POST);
    include("conn.php");
    if(isset($Submit))                                                          //pics by name
    {
        if(strlen($code) == 0 && strlen($explanation) == 0)
        {
        $query = "INSERT INTO `questions` (`code`,`topic`, `discription`, `a`, `b`, `c`, `d`, `ans`) VALUES (NULL,'$topic', '$discription', '$a', '$b', '$c', '$d', '$ans')";
            $result = mysql_query($query) or die("Invalid Entry : ".mysql_error());
        }
        else if(strlen($code) == 0)
        {
            $query = "INSERT INTO `questions` (`code`,`topic`,`discription`,`a`,`b`,`c`,`d`,`ans`,`explanation`)VALUES(NULL,'$topic','$discription','$a','$b','$c','$d','$ans','$explanation')";
            $result = mysql_query($query) or die("Invalid Entry : ".mysql_error());
        }
        else if(strlen($explanation) == 0)
        {
            $query = "INSERT INTO `questions` (`code`,`topic`,`discription`,`a`,`b`,`c`,`d`,`ans`)VALUES('$code','$topic','$discription','$a','$b','$c','$d','$ans')";
            $result = mysql_query($query) or die("Invalid Entry : ".mysql_error());
        }
        else
        {
            $query = "INSERT INTO `questions` (`code`,`topic`,`discription`,`a`,`b`,`c`,`d`,`ans`,`explanation`)VALUES('$code','$topic','$discription','$a','$b','$c','$d','$ans','$explanation')";
            $result = mysql_query($query) or die("Invalid Entry : ".mysql_error());
        }
        /*
        echo "Topic: ".$topic."<br>";
        echo "Discription: ".$discription."<br>";
        echo "Code: <pre>".$code."</pre><br>";
        echo "A: ".$a."<br>";
        echo "B: ".$b."<br>";
        echo "C: ".$c."<br>";
        echo "D: ".$d."<br>";
        echo "Ans: ".$ans."<br>";
        echo "Explanation: ".$explanation."<br>";
        */
    }

?>
<!DOCTYPE html>
<html>
<head>
    <title>Teacher Form</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="script/jquery.js"></script>
    <script src="script/bootstrap.min.js"></script>

</head>
<body>
<div class="container">
    <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Open Modal</button>


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

</div>

</body>
</html>