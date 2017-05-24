var obj;
var testTopic;
var checkFlag = true;
var app=angular
    .module("myModule",[])
    .controller('myController', function ($scope, $http) {
    var answer = {
        "explanation" : "",
        "ans": ""
    };
    //Topic values for the list used in the select tag
    $scope.topics = [
        { name: 'C', value: 'C' , type:"Languages"},
        { name: 'Cplusplus', value: 'C++', type:"Languages" },
        { name: 'Javascript', value: 'Javascript' , type:"Languages"},
        { name: 'Java', value: 'Java', type:"Languages" },
        { name: 'Computer Network', value: 'Computer Network', type:"Languages" },
        { name: 'Database', value: 'Database', type:"Languages" },
        { name: 'HTML', value: 'HTML', type:"Languages" },
        { name: 'Probability', value: 'Probability', type:"Aptitude" },
        { name: 'Permutation and Combination', value: 'Permutation and Combination', type:"Aptitude" },
        { name: 'Time and Distance', value: 'Time and Distance', type:"Aptitude" },
        { name: 'Problems on Number', value: 'Problems on Number', type:"Aptitude" },
        { name: 'Simplification', value: 'Simplification', type:"Aptitude" },
        { name: 'Numbers', value: 'Numbers', type:"Aptitude" },
        { name: 'Calendar', value: 'Calendar', type:"Aptitude" },
        { name: 'Percentage', value: 'Percentage', type:"Aptitude" },
        { name: 'Height and Distance', value: 'Height and Distance', type:"Aptitude" },
        { name: 'Number Series', value: 'Number Series', type:"Logical Reasoning" },
        { name: 'Puzzles', value: 'Puzzles', type:"Logical Reasoning" },
        { name: 'Verbal Reasoning', value: 'Verbal Reasoning', type:"Logical Reasoning" },
        { name: 'Statement and Conclusion', value: 'Statement and Conclusion', type:"Logical Reasoning" },
    ];
    $scope.companies = [
        { name: 'Amazon', value:'Amazon'},
        { name: 'Flipkart', value:'Flipkart'},
        { name: 'Ebay', value:'Ebay'},
        { name: 'Google', value:'Google'},
        { name: 'Evive healthcare', value:'Evive healthcare'},
        { name: 'Microsoft', value:'Microsoft'},
        { name: 'Oracle', value:'Oracle'}
    ];
    $scope.years = [
        {name:'2016', value:'2016'},
        {name:'2015', value:'2015'},
        {name:'2014', value:'2014'},
        {name:'2013', value:'2013'},
        {name:'2012', value:'2012'},
        {name:'2011', value:'2011'},
    ];
    //
    //
    $scope.showSelectValue = function(questionsTopic,questionsCompany,questionsYear) {
        /*  The showSelectValue function is called by the ng-change in select list in main.html
            It contain three agruments fetching the data from the select of topic, company and year
        */
        // selectData is JSON-object containing the various topic, company and year arrays
        var selectedData = {
            "topic" : questionsTopic,
            "company" : questionsCompany,
            "year" : questionsYear
        };
        console.log(selectedData);
        var JSON_selectedData = JSON.stringify(selectedData); //converting selectedData JSON-object into JSON string form
        //console.log(JSON_selectedData);

        /*calling AJAX http scope object in the angular for fetching the data from server
            get : get property is used for the asynschronous fetching of data from the server
                ->get contain argument containing link to php file that will execute required queries
                -> q= in the address will carry the data from the main.js file which is contained in the JSON_selectedData
        */
        console.log("questions section-JSONstring"+JSON_selectedData);
        $http.get('questions.php?q=' +JSON_selectedData).then(successCallBack, errorCallBack);
        function successCallBack(response) {
            //console.log("successCallBack");
            console.log("Questions section-response"+response.data); //Carry the data fetched from the server
            var liststring = ["Home","Questions","Sample Questions"];
            liststring = liststring.concat(questionsTopic);
            $scope.list = liststring;
            obj = response.data;
            var questionNumber = 0;
            for (var i = 0; i < obj.length; i++) {
                //atob method used here for decoding BASE64 data into normal data
                obj[i].discription = (++questionNumber)+". "+window.atob(obj[i].discription);
                obj[i].code = window.atob(obj[i].code);
                obj[i].options.a = window.atob(obj[i].options.a);
                obj[i].options.b = window.atob(obj[i].options.b);
                obj[i].options.c = window.atob(obj[i].options.c);
                obj[i].options.d = window.atob(obj[i].options.d);
                obj[i].radio = questionNumber;
            }
            $scope.questions = obj; //assingning scope to the obj so that it can be used in angular ng-repeat directive
            console.log(obj);
        }
        function errorCallBack(error) {
            //catching the error report from the server
            console.log("app: errorCallBack function called in showSelectValue function in the main.js");
            console.log(error);
        }
    };
    $scope.checkAnswer = function(questionDisplayNumber,q_id) {
        check(questionDisplayNumber, q_id);
        //var answerObj = getObject();
    };

});
//====== ANGULAR ENDS HERE =======
//

//
var app1= angular
    .module("myTestModule",[])
    .controller('myTestController', function ($scope, $http) {
        $scope.angular_startTest = function() {
            var topic =[];
            topic.push(startTest());
            console.log("angular_startTest function called"+topic);
            var obj_topic = {
                "topic" : topic
            };
            var JSON_obj = JSON.stringify(obj_topic);
            console.log("Test-section JSON_obj="+JSON_obj);
            $http.get('questions.php?q='+JSON_obj).then(successCallBack,errorCallBack) ;
            function successCallBack(response) {
                console.log("Test-section response"+response);
                var obj = response.data;
                var obj_array=[];
                //console.log(obj);

                for(var i = 0; i < 10 ; i++) {
                    obj_array.push(obj[i]);
                }
                var questionNumber = 0;

                for (var i = 0; i < obj_array.length; i++) {
                //atob method used here for decoding BASE64 data into normal data
                    obj_array[i].discription = (++questionNumber)+". "+window.atob(obj_array[i].discription);
                    obj_array[i].code = window.atob(obj_array[i].code);
                    obj_array[i].options.a = window.atob(obj_array[i].options.a);
                    obj_array[i].options.b = window.atob(obj_array[i].options.b);
                    obj_array[i].options.c = window.atob(obj_array[i].options.c);
                    obj_array[i].options.d = window.atob(obj_array[i].options.d);
                    obj_array[i].radio = questionNumber;
                }
                console.log(obj_array);
                $scope.questions = obj_array;

            }
            function errorCallBack(error) {
                console.log("Error in startTest function"+error);
            }
            //console.log(JSON_obj);
        };
});
function startTest() {
    //---First check for the login
    //testTopic = "C";
    console.log("startTest called"+testTopic);
    document.getElementById("instruction-section").style.display = "none";
    document.getElementById("test-section").style.display="";
    document.getElementById("test-section-title-text").innerHTML = testTopic + " Programming";
    //console.log(testTopic);
    startTimer();
    return testTopic;
}
//
function initiateTest(data) {
    //document.getElementById("question_section").style.display = "none";
    //document.getElementById("test_section").style.display = "";
    //console.log("main.js function called"+data);
    console.log("initiateTest called"+data);
    document.getElementById("question-section").style.display = "none";
    document.getElementById("instruction-section").style.display="";
    document.getElementById("instruction-section-title-text").innerHTML = data + " Programming";
    testTopic = data;
}
//
function startTimer() {
    setInterval(myTimer, 1000);
    var counter = 1200;

    function myTimer() {
        var hour = Math.floor(counter/(3600));
        var min = Math.floor(counter/(60));
        var sec = Math.floor(counter - (min * 60));
        counter--;
        document.getElementById("fixedLCD").innerHTML = (('0' + hour).slice(-2))+":"+('0' + min).slice(-2)+":"+('0' + sec).slice(-2);
    }
    document.getElementById("fixedLCDContainer").style.left="0%";
}
//
function check (qNumber,q_id) {
    //console.log(qNumber+" "+q_id);
    //document.getElementById('d1').style.color = 'red';
    for (var i = 0; i < obj.length; i++) {
        if(obj[i].q_id == q_id) {
            if (checkFlag == true) {
                var answerValue = window.atob(obj[i].ans);
                var option_id_string = answerValue+qNumber;
                var answerOption = document.getElementById(option_id_string);
                answerOption.style.color = '#00c93a';
                answerOption.style.fontWeight = "bold";

                //-------DOM--------------
                if (obj[i].explanation.length == 0) {
                    document.getElementById("explanationDetail"+qNumber).innerHTML = "Sorry no explanation available..";
                    document.getElementById("explanationDetail"+qNumber).style.color = "red";
                }
                else {
                    document.getElementById("explanationDetail"+qNumber).innerHTML = window.atob(obj[i].explanation);
                }
                /*
                var spanNode = document.createElement("span");
                var textNode1 = document.createTextNode("Answer:");
                spanNode.appendChild(textNode1);
                spanNode.style.color = "green";

                var h4Node = document.createElement("h4");
                h4Node.appendChild(spanNode);
                var textNode2 = document.createTextNode(" Option "+answerValue);
                h4Node.appendChild(textNode2);
                //answer_h4Node.appendChild(textNode);
                var element = document.getElementById("explanation"+qNumber);
                element.appendChild(h4Node);

                var h4Node2 = document.createElement("h4");
                h4Node2.style.color = "green";
                var textNode3 = document.createTextNode("Explanation:");
                h4Node2.appendChild(textNode3);
                element.appendChild(h4Node2);

                var prNode = document.createElement("p");
                var explanationNode = document.createTextNode("");
                if (obj[i].explanation.length == 0) {
                    explanationNode.nodeValue = "Sorry no explanation available..";
                    prNode.style.color = 'red';
                }
                else {
                    explanationNode.nodeValue = window.atob(obj[i].explanation);
                }
                prNode.appendChild(explanationNode);
                element.appendChild(prNode);
                */
                //console.log(obj[i].explanation.length);
                $('#explanationBox'+qNumber).slideDown("slow");
                checkFlag = false;
            }
            else {
                $("#explanationBox"+qNumber).slideUp("slow");
                checkFlag = true;

            }
        }
                //document.getElementById(option_id_string).style.border = "1px solid red";
    }
}