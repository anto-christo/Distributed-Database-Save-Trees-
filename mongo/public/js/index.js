$(document).ready(function(){

    $('#login_btn').click(function(){

        var username = $('#username').val();
        var password = $('#password').val();

        $.ajax({
            type : 'POST',
            url : '/login',
            data: {username:username, password:password},
            success: function(data){

                if(data=="success"){
                    alert("Login Successfull");
                    window.location.href = "index.html";
                }

                else if(data=="failed")
                    alert("Login Failed");

            }
        });
    });

    $('#reg_btn').click(function(){

        var username = $('#username').val();
        var email = $('#email').val();
        var state = $('#state').val();
        var city = $('#city').val();
        var password = $('#password').val();
        var con_pass = $('#con_pass').val();

        if(password!=con_pass){
            alert("Both passwords don't match");
        }

        else{
            $.ajax({
                type : 'POST',
                url : '/register',
                data: {username:username, email:email, state:state, city:city, password:password},
                success: function(data){
    
                    if(data=="success"){
                        alert("Registration Successfull");
                        window.location.href = "index.html";
                    }
                    
                    else if(data=="failed")
                        alert("Registration Failed");
    
                }
            });
        }
    });

    $('#comp_btn').click(function(){

        var add = $('#add').val();
        var email = $('#email').val();
        var number = $('#contact').val();
        var issue = $('#issue').val();

        $.ajax({
            type : 'POST',
            url : '/complain',
            data: {address:add, email:email, number:number, issue:issue},
            success: function(data){
                console.log(data);

                if(data=="success"){
                    alert("Complaint Registered Successfull");
                    window.location.href = "index.html";
                }

                else if(data=="failed")
                    alert("Complaint Failed");

            }
        });
    });
});