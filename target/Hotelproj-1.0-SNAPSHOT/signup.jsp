<%@ page session="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reservation chambres d'hotel JavaEE</title>
    <link rel="icon" type="image/png" href="Images/logo.png">
    <style type="text/css">
        body {
            margin: 0;
            padding: 0;
            background: url('Images/hotel-background.jpg') no-repeat center center fixed;
            background-size: cover;
            font-family: sans-serif;
        }

        /* Adding the blur effect to the background image */
        body::before {
            content: '';
            position: fixed;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: inherit;
            filter: blur(8px);
            z-index: -1;
        }

        h1 {
            margin: 0;
            padding: 0 0 20px;
            text-align: center;
            font-size: 30px;
            color: darkgray;
        }

        .loginbox {
            width: 320px;
            height: 550px;
            background-color: rgba(255, 255, 255, 0.9); /* Add a slight transparency to the box */
            color: #000;
            top: 50%;
            left: 50%;
            position: absolute;
            transform: translate(-50%, -50%);
            box-sizing: border-box;
            padding: 70px 30px;
            border-radius: 20px;
            box-shadow: 5px 10px #888888;
        }

        .avatar {
            width: 50px;
            height: 50px;
            border-radius: 50%;
            position: absolute;
            top: -50px;
            left: calc(50% - 50px);
            background-color: DodgerBlue;
            padding: 25px;
        }

        .loginbox p {
            margin: 0;
            padding: 0;
            font-weight: bold;
            color: darkgray;
        }

        .loginbox input {
            width: 100%;
            margin-bottom: 20px;
        }

        .loginbox input[type="text"],
        .loginbox input[type="password"],
        .loginbox input[type="email"] {
            border: none;
            border-bottom: 1px solid darkgray;
            background: transparent;
            outline: none;
            height: 40px;
            color: darkgray;
            font-size: 16px;
            transition: 0.25s;
        }

        .loginbox input[type="text"]:focus,
        .loginbox input[type="password"]:focus,
        .loginbox input[type="email"]:focus {
            border-bottom: 2px solid #ffc107;
        }

        .loginbox input[type="submit"] {
            border: none;
            outline: none;
            height: 40px;
            background: DodgerBlue;
            color: #fff;
            font-size: 18px;
            border-radius: 20px;
            transition: 0.25s;
        }

        .loginbox input[type="submit"]:hover {
            cursor: pointer;
            background: #ffc107;
            color: #000;
        }

        .loginbox a {
            text-decoration: none;
            font-size: 12px;
            line-height: 20px;
            color: darkgrey;
            transition: 0.25s;
        }

        .loginbox a:hover {
            color: #ffc107;
        }

        .error {
            color: #FF7800;
        }

        ::placeholder {
            color: #ddd;
            opacity: 1;
        }

        :-ms-input-placeholder {
            color: #ddd;
        }

        ::-ms-input-placeholder {
            color: #ddd;
        }
    </style>
</head>
<body>
    <div class="loginbox">
        <img src="Images/logo_white.png" class="avatar">
        <h1>Inscription</h1>
        <form action="SignupServerlet" method="post">
            <p>Nom d'utilisateur</p>
            <input type="text" name="newuser" placeholder="Entrez votre nom d'utilisateur" required>
            <p>Mot de passe</p>
            <input type="password" name="newpass" placeholder="Entrez votre mot de passe" required>
            <p>Confirmer le mot de passe</p>
            <input type="password" name="newconpass" placeholder="Confirmez votre mot de passe" required>
            <p>Email</p>
            <input type="email" name="newemail" placeholder="Entrez votre adresse e-mail" required>
            <input type="submit" name="Sign up" value="S'inscrire"><br>
            <a href="login.jsp">Vous avez déjà un compte ?</a>
        </form>
    </div>
</body>
</html>
