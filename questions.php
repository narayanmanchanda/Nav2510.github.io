<?php
include("conn.php");
$receivedData = $_REQUEST['q'];
//echo $receivedData."\n";  //testing the format of the received data
error_reporting(0); //removing all the warning and errors
$JSON_string = str_replace("\\","",$receivedData);   //converting the received data to valid JSON format to decode it into the PHP object
//echo "JSONstring=" . $JSON_string."\n";   //checking for the JSON format

$obj = json_decode($JSON_string);

$topic_array = $obj->{"topic"};
$company_array = $obj->{"company"};
$year_array = $obj->{"year"};
//
//---Below is the code for making of topic string to fetch data from the tables using query
$topic_string = "";
if (count($topic_array) != 0) {
    $topic_string = 'topic="'.$topic_array[0].'"';
    if(count($topic_array) > 1) {
        for ($i = 1; $i < count($topic_array); $i++) {
            $topic_string .= ' OR topic="'.$topic_array[$i].'"';
        }
    }
}
//echo $topic_string;
//-----------------------------topic string ends here---------


//-----Below is the code for the company string to fetch the data company-wise.
$company_string = "";
//echo count($topic_array);
if (count($company_array) != 0) {
    $company_string = 'company="'.$company_array[0].'"';
    if(count($company_array) > 1) {
        for ($i = 1; $i < count($company_array); $i++) {
            $company_string .= ' OR company="'.$company_array[$i].'"';
        }
    }
}
//echo $company_string;
//----------------------company string ends here--------


//----Below is the code for the MAIN STRING to be used in the query. It contains the combined results of the both topic and company string...
$main_query_string = "SELECT * FROM questions WHERE ";
if(count($topic_array) != 0 && count($company_array) != 0) {
    $main_query_string .= '('.$topic_string.')'.' AND '.'('.$company_string.')';
}
else if (count($topic_array) == 0 && count($company_array) != 0) {
    $main_query_string .= $company_string;
}
else if (count($topic_array) != 0 && count($company_array) == 0) {
    $main_query_string .= $topic_string;
}
//echo $main_query_string."\n";
//-------mains string ends here-----------------

//------query fetching and sending starts below------
$query = $main_query_string;
//echo $query;
$result = mysqli_query($con,$query) or die (mysql_error());
$obj_array = array(); // array of objects fetched from the database using the above query
while ($row = mysqli_fetch_array($result,MYSQLI_BOTH)) { //this loop will fetch all the rows satisfying the criteria in the valid data-table
    //--below obj will make an obj in valid JSON format
    $obj = array(
        'q_id' => base64_encode($row[0]),
        'topic' => base64_encode($row[2]),
        'code'=>base64_encode($row[1]),
        'discription' =>base64_encode($row[3]),
        'options' => array(
            'a'=> base64_encode($row[4]),
            'b'=> base64_encode($row[5]),
            'c'=> base64_encode($row[6]),
            'd'=> base64_encode($row[7]),
        ),
        'ans'=> base64_encode($row['ans']),
        'company'=> base64_encode($row['company']),
        'year'=> base64_encode($row['year']),
        'explanation'=> base64_encode($row['explanation'])
    );

    $obj_array[] = $obj; //pushing the obj in the array
    //echo $obj['q_id'];
    //echo json_encode($obj, JSON_FORCE_OBJECT);  //CHECK ON INTERNET FOR VARIOUS OPTION
}
echo json_encode($obj_array);//encoding the array object in JSON string and sending it to the main.js script file
//------query fetching and sending ends here--------------
//
//
?>