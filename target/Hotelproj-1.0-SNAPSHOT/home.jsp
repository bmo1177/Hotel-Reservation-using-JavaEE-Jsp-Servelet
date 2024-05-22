<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Accueil - Réservation Hôtel</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            text-align: center;
            background: url('Images/hotel-background.jpg') no-repeat center center fixed;
            background-size: cover;
        }
        .container {
            background-color: rgba(255, 255, 255, 0.8);
            margin-top: 50px;
            padding: 20px;
            border-radius: 10px;
        }
        .btn-reserve {
            margin-top: 20px;
            padding: 10px 20px;
            font-size: 1.2em;
            background-color: #007BFF;
            border: none;
            color: #fff;
            border-radius: 5px;
            cursor: pointer;
        }
        .btn-reserve:hover {
            background-color: #0056b3;
        }
    </style>
    <script type="text/javascript">
        function redirectToLogin() {
            window.location.href = "login.jsp";
        }
    </script>
</head>
<body>
    <div class="container">
        <h1>Bienvenue dans notre Hôtel</h1>
        <p>Découvrez le luxe et le confort au cœur de la ville. Notre hôtel offre des équipements de classe mondiale, un service exceptionnel et un séjour mémorable pour tous nos clients. Que vous soyez ici pour affaires ou pour le loisir, nous nous assurons que votre séjour soit inoubliable.</p>
        <button class="btn-reserve" onclick="redirectToLogin()">Réserver</button>
    </div>
</body>
</html>
