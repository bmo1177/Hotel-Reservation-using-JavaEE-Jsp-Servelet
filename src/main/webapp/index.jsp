<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Reservation chambres d'hotel JavaEE</title>
    <link rel="icon" type="image/png" href="Images/logo.png">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <style type="text/css">
        .img_cls {
            top: 50%;
            left: 50%;
            position: absolute;
            transform: translate(-50%, -50%);
            padding: 30px;
            border-radius: 50%;
        }

        .loading_img {
            top: 60%;
            left: 50%;
            position: absolute;
            transform: translate(-50%, -50%);
            width: 300px;
            height: 25px;
        }
    </style>
    <script type="text/javascript">
        function redirectToHome() {
            window.location.href = "home.jsp";
        }

        setTimeout(function(){
            var user_check_val = document.getElementById('user_check').innerText;
            var usertype_check_val = document.getElementById('usertype_check').innerText;

            if(user_check_val == "null"){
                redirectToHome();
            }
            else{
                if(usertype_check_val == "owner"){
                    window.location.href = "owner/home.jsp";
                }
                else if(usertype_check_val == "manager"){
                    window.location.href = "manager/home.jsp";
                }
                else{
                    window.location.href = "user/home.jsp";
                }
            }
        }, 2500); // Adjust time as needed
    </script>
</head>
<body>
    <img src="Images/logo_white.png" class="w3-blue img_cls" alt="Logo">
    <img src="Images/hhh.png" class="loading_img" alt="Loading...">
    <p id="user_check" style="display: none;"><%= session.getAttribute("LogedInUserName") %></p>
    <p id="usertype_check" style="display: none;"><%= session.getAttribute("LogedInUserType") %></p>
</body>
</html>
