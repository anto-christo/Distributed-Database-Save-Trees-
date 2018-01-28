$(document).ready(function(){

    $('#login_btn').click(function(){

        var username = $('#username').val();
        var password = $('#password').val();

        $.ajax({
            type : 'POST',
            url : 'http://localhost/save_trees/login.php',
            data: {username:username, password:password},
            success: function(data){

                if(data=="success")
                    alert("Login Successfull");

                else if(data=="failed")
                    alert("Login Failed");

            }
        });
    });

    $('#reg_btn').click(function(){

        var name = $('#name').val();
        var username = $('#username').val();
        var email = $('#email').val();
        var state = $('#state').val();
        var city = $('#city').val();
        var address = $('#address').val();
        var password = $('#password').val();
        var con_pass = $('#con_pass').val();

        $.ajax({
            type : 'POST',
            url : 'http://localhost/save_trees/register.php',
            data: {name:name, username:username, email:email, state:state, city:city, password:password},
            success: function(data){

                if(data=="success")
                    alert("Registration Successfull");

                else if(data=="failed")
                    alert("Registration Failed");

            }
        });
    });
});