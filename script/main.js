var app=angular
    .module("myModule",[])
    .controller('myController', function ($scope, $http) {
    //Topic values for the list used in the select tag
    $scope.topics = [
        { name: 'C', value: 'C' , type:"Languages"},
        { name: 'Cplusplus', value: 'C++', type:"Languages" },
        { name: 'Js', value: 'Js' , type:"Languages"},
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
        //console.log(selectedData);
        var JSON_selectedData = JSON.stringify(selectedData); //converting selectedData JSON-object into JSON string form
        //console.log(JSON_selectedData);

        /*calling AJAX http scope object in the angular for fetching the data from server
            get : get property is used for the asynschronous fetching of data from the server
                ->get contain argument containing link to php file that will execute required queries
                -> q= in the address will carry the data from the main.js file which is contained in the JSON_selectedData
        */
        $http
            .get('questions.php?q=' +JSON_selectedData)
            .then(successCallBack, errorCallBack);
        function successCallBack(response) {
            console.log("successCallBack");
            console.log(response.data); //Carry the data fetched from the server
            var liststring = ["Home","Questions","Sample Questions"];
            liststring = liststring.concat(questionsTopic);
            $scope.list = liststring;
            var obj = response.data;
            for (var i = 0; i < obj.length; i++) {
                //atob method used here for decoding BASE64 data into normal data
                obj[i].discription = obj[i].discription;
                obj[i].code = window.atob(obj[i].code);
                obj[i].options.a = window.atob(obj[i].options.a);
                obj[i].options.b = window.atob(obj[i].options.b);
                obj[i].options.c = window.atob(obj[i].options.c);
                obj[i].options.d = window.atob(obj[i].options.d);
            }
            $scope.questions = obj; //assingning scope to the obj so that it can be used in angular ng-repeat directive
            console.log(obj);
        }
        function errorCallBack(error) {
            //catching the error report from the server
            console.log("errorCallBack function called in showSelectValue function in the main.js");
            console.log(error);
        }
    };
});