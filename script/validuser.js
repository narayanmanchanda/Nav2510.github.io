function user_validation(u){
            var xhttp;
            if(u == "")
            {
                document.getElementById("userval").innerHTML = "";
                return;
            }
            xhttp = new XMLHttpRequest();
            xhttp.onreadystatechange = function(){
                if(this.readyState == 4 && this.status == 200){
                    document.getElementById("userval").innerHTML = this.responseText;
                }
            };
            xhttp.open("GET","uservalid.php?q="+u,true);
            xhttp.send();
        }