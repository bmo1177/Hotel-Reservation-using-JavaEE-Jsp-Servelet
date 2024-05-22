<!DOCTYPE html>
<html>
<head>
    <title>Mot de passe oublié - Réservation chambres d'hôtel JavaEE</title>
    <link rel="icon" type="image/png" href="Images/logo.png">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style type="text/css">
        body {
            margin: 0;
            padding: 0;
            background: url('Images/hotel-background.jpg') no-repeat center center fixed;
            background-size: cover;
            font-family: sans-serif;
            filter: blur(8px); /* Ajouter l'effet de flou */
        }

        /* Ajout de l'effet de flou à l'image de fond */
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

        /* Vos styles existants ici */
    </style>
</head>
<body>
    <div class="forgotpasswordbox">
        <img src="Images/logo_white.png" class="avatar">
        <h1>Mot de passe oublié</h1>
        <form action="ForgotPasswordServlet" method="post" onsubmit="showAlert()">
            <p>Email</p>
            <input type="email" name="email" placeholder="Entrez votre adresse e-mail" required="required">
            <input type="submit" name="submit" value="Réinitialiser le mot de passe"><br>
            <a href="login.jsp">Retour à la connexion</a>
        </form>
    </div>

    <script>
        function showAlert() {
            alert("Email envoyé");
        }
    </script>
</body>
</html>
