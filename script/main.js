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
    $scope.twitter="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAADTklEQVRoQ+1Y3VHbQBD+9kTMZCwGdxB3EFEBTgWBFwxPmAowFQAVxB3gPGH7BaeCKBXEqQDTAYwFCZm528yd+XGwJZ1OAoYZ6VXan+/bb/f2RHjjD73x/FECeO0KlhUoK5CTgVJCOQnMbf6yFTj9XRdC7gNoEBDo7BkYAQhVpXqMTbqcQzSIAmz5+puFTzqA00kDOythXqpE//qQwEdxfhh8SUQHcsvv4oxruL1Z98BtJlyopt9yA3DGNfE3OgfTUG37e64gRC86IUJsEv/5ZYQgNKbV4StV8esLK3NnlFyB00nDE/TdOGN0XUB4g6gFxklW8CZ5ogbeVcf4EwVxKkgEIPqTIwIdPgbnoaz4e0mMPE1U9KJzItSzAgB4CKYaE68ZIDF9kBGAqcRYMe9Z9cUgCjzGz+zJP1pI0Caa1aFbD8xIaN4BD6VaOsDO+3Gcc1f5POg/gfn7mMk9MG3iMYFW41nkoWTRxXb125x85iRoX4s05u0AABC9qEMEPbsTHzMGgZCZQiW8ESCvPD3rHRpYB5KKP9nINP0c0FW4vR4R4UMaiCLfFwOgf73hgVel8n4IkkMifCwyySRfkrCWdAJbSUj0ojYRvrxU0rNxZNNPVweQcqUsYAy6gGfGL7Xtm10p7UlF6fUnIUDraY6KfM/A16T9ZzZWKgC8QhVsR6gGkg4AQJ4DKWtlzA7UXKnZ2lkBMM5MJbjz3HJi8LFqrsSu3U+B2QPQ9wJviQXLDQLatgxl+c6wr5aCpPXEGcD8ZpolNbtvs7Jv3QMmvNVeZJfooq+YcaGWq0GWVT0bgLs+EMxh8nLnBsJ2dXCW0IPh9GJ+RMCuW6rzVi7Sufdi38RP4w6iQCj9d4EbIPrsCibLobUohjuA6aq9D2J97bSe27NJ5E0+ew/cRff60S4D7ft/Oy7s55GN3SqhfyjBe7iJCVYNggrY/JRyY1wHNtOGuWVzWbEhJl5C07GpD6x2EVNHH1IAOqrid7KOyiQg6T2gpw7JDQAtlwuNZtwkvlztFpm42xTS+xAQMJvpU2em+uxVU7NMwIiZRiQwktILs6wFNpLJfw64RHlGm3QJPWPwIlyXAIpgMY+PsgJ52CvCtqxAESzm8VFWIA97Rdj+A7EwUUCG28orAAAAAElFTkSuQmCC";
    $scope.linkedin="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAACQUlEQVRoQ+1Zz0sbQRh9s2JVcrAUqoKYFnKuK0JPHpIm/QO81ovSf0D0orlI9BJzae2tN38c4rFevGnYQHt3kxxEFEqkBz1UBAMqdKdMcEWTnUxWdrM7OHv9Pmbe+977Zpb5CCT/iOT4oQgEraBSIPwK5EqThFqzBCTRSbAU1KBE+4aF0Z1W+7a0kLZ6sA6QmU4Cb9qLYtlK6xkeBj6BXGlSo/RHoODvNreo9gHpd4YTFi4BkjUNQhAPAwFKUaRp3dHCXALaqknDAN7GYC3qjlifHwF9oBdfUsNIRCMwqjXM7/+BeX7tu1ieKVCYiiE+ErkHzEiktk/kIfBvYbQJbFeuJA+BRgWKpzUk8xIpwHrg68fhuo0Y+Lk9yXrAd69wNvCsiaUnIGpiXvxNfzeWJoYwNtiHsYHeeh3YCbZZ/outyoWwLp4p8BQC4+tHYM3/sqfLEejB+TWS+WNc3lhcIoES+H15i7f9L1pWWXSfBEpA6I+7hOT2CYrVmmN64ARWfp3BqF7VbTT7/vWj29xGvFm5wOfd0/ARYOCXf549AtZ4IbIgs1rs+2H4CLxaqzQ1aDwaQeFTrO3fkkAtxPtXEp1oD9kpAnY1RFUTxR9W1U2uUkAp4HA4KgsB/Od13rOKqGqiuGriBiu6fhcSVVgUD1yBdv8svc7z7B7wGli767kmIP3jLmR/XmfSallzAwTT7crsS96TBxw2mmw5QWBlOj0rqM8EoGV4gw0bnppS+mIbF4sqBVwUy5dUpYAvZXWx6H+KpYVA1gC++wAAAABJRU5ErkJggg==";
    $scope.github = "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEAAAABACAYAAACqaXHeAAAFe0lEQVR4Xu2aS3oaRxDHq3q0j30C4xMEnSAokLWkDFkbncA8sjfah4dPILyOiKR1hgifQOQEJicw3jNd/noAaUAzU9UzI4VPMNvpV/36X9XVD4Qd/3DH7Yc9gL0CdpzA3gV2XAD7IPgsLtArXb0ixz8mxCICFYGwAAiFNfURTAFpioBjIpqi79w0xqezp1bokwFYGv0OEGoAWExnCE2AYIC+8+mpYOQOoFe6KugD/R4JaoDwKp3hG7UIZoQwUHP1sTE+nebS5rKRXAH0KsMPRFDPzfBNSwlmiNBveO55XhByAdD75apI5F+kl7qtOTTBuXOahxoyA+j8PKwhQu/JZj2ODcFMA539Pqpe2+ILl88EIDBewUWWAWStSxrOWv+4g7TtpAawDcavjM4CIRWAbTJ+BUETnaZxB2sAQcDT+vbZfZ7TuFkhfHVoGxitAXQrl3dx0R5BHzW838YGkiZ9AkB1BPyBG3vSfwL6BoB9heq68ffppFf5s0SgbqPr0KTpVQ9t+rMC0KkM2wjwIaoDM9CWV11LfEw2qA90PVzHlEPAyaINWqa6GNQjoGIYGAGcq7nqb2aB3cqQ4hcHOG95blsKQQzAZHjk6LsE6X9uem4pqmNT13f8ouM7E06ikrLdynAMAD9FGmnpCmIA3fJlHxDfJ5CNBSCdDWm5RACBkuQqEAFYbGz0FybwbQ0AWKjgrWQDJQLQqQyNH/cSZ4hg1hy5r6WzmKVctzz8yq1C0txABCAp8t8nIxFBMIuRSXU7lcsZv7rIVgQWQCD/A/2VM2a1BHLl8vifvBQ+9IBz9ZpzAxaALOujm6ZXPcnDOGkbXCA07UiyQxaAIPrDc87+CtAf5csThXiVnETxqwEPIGnNXSQvjxIg6SxmLSeIBezKxAMoD83yt36AuT5ytpOshsbVZ92AYNocuW+T+ucBJKSdy4a3FwAAND030cY9AE6eSRuPnVBApzycIsKbJFCczDjIaf9zk0ME/7VGblL84q/G2EADADgP8u5cz+s5KMHu9EB/Ycqx8UkSA+K3nsvepXk3Z5TNf1mCBjkA4LfBJhsYN73qkY0BWct2K5e3ABh5/nDfNtHH5qhaz7QMSjIu08FzZoPSvUAuqbB0MwQQ3NYccZuPrDO/GI9vZp+9cM1lM2QG3CkPJ4jwIz/4p4VgYzwR/NsauTwk3igAYcBZhcQJonNmTnAlbUvLBLIndcGk5Q/uL7wxYlcB0+LidNc3jxdCR9x0QxqvEakEiO82DSGia0Q1aHq/3kiNjCrXrfx1TKRriCjebtts0EQAzMAeb4sfbmiDewCtr+MTJhqblx+A6oZThplpDeo4eEnCRfk4soLov6oqBhCpAnP4qNRRcGERXIb4xtDIixCTlSlfFbkgGfTjaBNzErPPWNuBvqm5U+D6sQYQBMOow1GC6fJKapYUK2ySJdEhbAwBAmi0PLcvdTuxAlYNRqXG4XP4uMEjqkNO/qs+pOt8hJFs5rdZxxpApNQ3zuGNjH3HLyFiQYGewPzA3AhZvfjiNjqPgq6RPjolKeRULnA/Q8GTGH0XHgQRDFoj90wqPa6cLQAbhYX7tlbAqnKUvxNAv+W5Dc44yX8bADbxJbMLhBuIDHomKCIMCNHsIhef1oXmqPpJYngo1sTeAK8pT5jwxPWdWgFhd0ha/lblbA9NOAWYZCeNz+eqgI2YYJae6CtrweHk5sAYAJ8RVd024EWpILMC1lyiMqwDUDsqGcpDAcvXIm2bdZ5zu1wBmM6Wb4TbhFALg8gCIHhVsngz3LZdTp8dQESQrAHRhDuZeeQCi5OoImkYZHkH+L8C4Drfhv+5u8A2GGUzhj0AG1ovsexeAS9xVm1s2ivAhtZLLLvzCvgONXbWX5bVTsIAAAAASUVORK5CYII=";
    $scope.google ="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAC30lEQVRoQ+2ZPVATURSFv+2ZkRIqwwzWhp7wU2IjzEhaAWshlqQxabTlp0/SUxgbLEkkPem1oNNOmMF6ncPLG5mwb13ZZ7Jx9jaZgff2nXPvuT9vN2DCLZhw/OQExh3BPAKZj0BYYp2QPQJWRgo2pEPAYXBOO+7cWAmFJZrA1kiBDx8WUg961FwYnARuPQ8fxgreHh6yGvToRGFxE1i8DeFyRgh0g160hOMiEGYC/ABEcB7ds3ICo4pSHgGnp4srsPYS9DtbuL+s34VGDfqRRSRxAP1HYGoa9pswOwfVdfh+CfNFqLZg/incXMHuKnztJwYZ27C8J/G7Niw+h/KcAW9tpgCNPkw9gi99eLWQQQLydOMCbq7h2fR9gK8PYHPP/F1RSCkfPcavhLZrsP3WAFyKqMTKh6Mz8//jN3BykDoK/47AsIQs1M+DPljdgF7sPJaInF8Ca1smgWXNOjQjZi0RkMTKBZPQUWZJRkVxaL1fAnq4EtVVbSzB99vwqeX28FgJqNqoZBaXjYePKvDtEkrrUK5AEumMlYD1qxL2SRFEyFYel6y0x4J2xcUhJ/8SGgZwt/JMJAF15tMfv2lpfGjV4ytMJiSkpqZkloSkf8nJmhJYieyysRLYrMCLPfh5DedtuBgMa4qEklujhOzkEI4rGSqjAnh4Zjzt6rJac9QxkZHtLKQe6vwlsZ1zeh/NFOoykVCvmHlsZBTXDxL0Yn8ETq+MPOIqjQVkZyYPA50/AjbxdFHZ/cO7rv3WoLHFjBMJvK8l/ggIlG5gsjhpqDppIlWepJSPXwLSti4zGiFkurQIoH6tqZwubZjxwsMk6peABamBTUDlaSWqTNOnLi8qqSLlmkITyubuMn8SesDhPrbkBHx4Mc0z/j4C/8HL3cl+va5whyV0HxwU/TQCSLH3oR847JHh4u17+drIvxWEdHWu68OGxZd/pUwhDi9b8wh4cWOKh+QRSOE8L1t/AR5fMUDBTdheAAAAAElFTkSuQmCC";

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
var ans_verify_array=[];
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
                    ans_verify_array.push(window.atob(obj[i].ans));
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
    //console.log("initial");
    //document.getElementById("question-section").style.display = "none";

    //document.getElementById("test_section").style.display = "";
    console.log("main.js function called"+data);
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
function submitTest() {
    var attempted = checkAttemptedQuestions();
    var submitValue = window.confirm("Do you want to submit the Test?\n"+"       Attempted Questions: "+attempted+"\n       Unattempted Questions:"+(10-attempted));
    if (submitValue == true) {
        calculateResult(attempted,(10-attempted));
    }
}
function checkAttemptedQuestions() {
    var attempt = 0;
    for(var i = 1; i <= 10; i++) {
        if (document.getElementById("radio_a"+i).checked == true ||
            document.getElementById("radio_b"+i).checked == true ||
            document.getElementById("radio_c"+i).checked == true ||
            document.getElementById("radio_d"+i).checked == true) {
            attempt++;
        }
    }
    //console.log(attempt);
    return attempt;
}
//
function calculateResult(attempted,unattempted) {
    var correct = 0
    var correct_array=[];
    for(var i = 1; i <= 10; i++) {
        if (document.getElementById("radio_"+ans_verify_array[i-1]+i).checked == true) {
            correct++;
            correct_array.push(i);
        }
    }
    displayResult(attempted,unattempted,correct,correct_array);
    //console.log("correct"+correct);
}
function displayResult(attempted,unattempted,correctAnswer,correctArray) {
    //console.log(result);
    document.getElementById("test-section").style.display="none";
    document.getElementById("result-section").style.display="";
    document.getElementById("result-section-title-text").innerHTML = testTopic + " Programming";
    document.getElementById('attempted-question').innerHTML = attempted;
    document.getElementById('unattempted-question').innerHTML = unattempted;
    document.getElementById('correct-answer').innerHTML = correctAnswer;
    document.getElementById('correct-array').innerHTML = correctArray;
    if (correctAnswer > 7) {
        document.getElementById('percent').style.color ="green";
    }
    else if(correctAnswer > 3) {
        document.getElementById('percent').style.color ="coral";
    }
    else {
        document.getElementById('percent').style.color ="red";
    }
    document.getElementById('percent').innerHTML = (correctAnswer * 10)+'%';
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