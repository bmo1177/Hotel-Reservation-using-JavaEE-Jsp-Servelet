<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Accueil - Réservation d'hôtel</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>   
        body, h1, h2, h3, h4, h5, h6 {
            font-family: "Raleway", Arial, Helvetica, sans-serif;
        }
        .container {
            background-color: rgba(255, 255, 255, 0.8);
            margin-top: 50px;
            padding: 20px;
            border-radius: 10px;
            text-align: center;
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
        function validatePhoneNumber(input) {
            const phonePattern = /^\+?[0-9]{10,13}$/;
            return phonePattern.test(input);
        }
        function validateForm() {
            const phone = document.forms["reservationForm"]["Phone"].value;
            if (!validatePhoneNumber(phone)) {
                alert("Veuillez saisir un numéro de téléphone valide (de 10 à 13 chiffres, signe + optionnel).");
                return false;
            }
            return true;
        }
        function updatePrice() {
            const roomType = document.forms["reservationForm"]["RoomType"].value;
            const checkInDate = new Date(document.forms["reservationForm"]["CheckIn"].value);
            const checkOutDate = new Date(document.forms["reservationForm"]["CheckOut"].value);
            const oneDay = 24 * 60 * 60 * 1000; // Un jour en millisecondes
            const nights = Math.round(Math.abs((checkOutDate - checkInDate) / oneDay)); // Calculer le nombre de nuits

            let price = 0;

            switch (roomType) {
                case "Single":
                    price = 2000; // Prix par nuitée pour une chambre simple
                    break;
                case "Double":
                    price = 4000;
                    break;
                case "Luxury":
                    price = 6000;
                    break;
            }

            const totalPrice = price * nights;
            document.getElementById("roomPrice").innerText = totalPrice + " DA (" + price + " DA par nuit)";
        }
    </script>
</head>
<body class="w3-light-grey">

<!-- Barre de navigation -->
<div class="w3-bar w3-white w3-large">
    <a href="home.jsp" class="w3-bar-item w3-button w3-blue w3-mobile"><img src="../Images/logo_white.png" style="width: 25px; height: 25px;"></a>
    <a href="myrequests.jsp" class="w3-bar-item w3-button w3-mobile">Mes demandes</a>
    <a href="rooms.jsp" class="w3-bar-item w3-button w3-mobile">Chambres</a>
    <a href="about.jsp" class="w3-bar-item w3-button w3-mobile">À propos</a>
    <a href="contact.jsp" class="w3-bar-item w3-button w3-mobile">Contact</a>
    <a href="../logout.jsp" id="user_name_div" title="logout" class="w3-bar-item w3-button w3-right w3-light-grey w3-mobile"><%= session.getAttribute("LogedInUserName") %></a>
    <script type="text/javascript">
        var pp = document.getElementById('user_name_div').innerText;
        if (pp == "null") {
            window.location.href = "../login.jsp";
        }
    </script>
</div>

<!-- En-tête -->
<header class="w3-display-container w3-content" style="max-width:1500px;">
    <img class="w3-image" src="../Images/hotel.jpg" alt="The Hotel" style="min-width:1000px" width="1500" height="800">
    <div class="w3-display-left w3-padding w3-col l6 m8">
        <div class="w3-container w3-blue">
            <h2><img src="../Images/logo_white.png" style="width: 40px; height: 40px; margin-right: 20px;">Hôtel LuXe</h2>
        </div>
        <div class="w3-container w3-white w3-padding-16">
            <form name="reservationForm" action="../ReserverARoom" method="post" onsubmit="return validateForm();">
                <div class="w3-row-padding" style="margin:0 -16px;">
                    <div class="w3-half w3-margin-bottom">
                        <label><i class="fa fa-calendar-o"></i> Date d'arrivée</label>
                        <input class="w3-input w3-border" type="date" placeholder="JJ MM AAAA" name="CheckIn" required onchange="updatePrice()">
                    </div>
                    <div class="w3-half">
                        <label><i class="fa fa-calendar-o"></i> Date de départ</label>
                        <input class="w3-input w3-border" type="date" placeholder="JJ MM AAAA" name="CheckOut" required onchange="updatePrice()">
                    </div>
                </div>
                <div class="w3-row-padding" style="margin:8px -16px;">
                    <div class="w3-half w3-margin-bottom">
                        <label><i class="fa fa-male"></i> Adultes</label>
                        <input class="w3-input w3-border" type="number" value="1" name="Adults" min="1" max="3">
                    </div>
                    <div class="w3-half">
                        <label><i class="fa fa-child"></i> Enfants</label>
                        <input class="w3-input w3-border" type="number" value="0" name="Kids" min="0" max="2">
                    </div>
                </div>
                <div class="w3-row-padding" style="margin:8px -16px;">
                    <div class="w3-half w3-margin-bottom">
                        <label><iclass="fa fa-bed"></i> Type de chambre</label>
                        <select class="w3-input w3-border" name="RoomType" onchange="updatePrice();" required>
                            <option value="Single">Chambre simple</option>
                            <option value="Double">Chambre double</option>
                            <option value="Luxury">Chambre de luxe</option>
                        </select>
                    </div>
                    <div class="w3-half">
                        <label><i class="fa fa-phone"></i> Numéro de téléphone</label>
                        <input class="w3-input w3-border" type="text" name="Phone" placeholder="+1234567890" required>
                    </div>
                </div>
                <div class="w3-row-padding" style="margin:8px -16px;">
                    <div class="w3-half w3-margin-bottom">
                        <label><i class="fa fa-envelope"></i> Email</label>
                        <input class="w3-input w3-border" type="email" name="Email" placeholder="exemple@exemple.com" required>
                    </div>
                    <div class="w3-half">
                        <label><i class="fa fa-comment"></i> Demandes spéciales</label>
                        <textarea class="w3-input w3-border" name="SpecialRequests" placeholder="Toute demande spéciale..." rows="3"></textarea>
                    </div>
                </div>
                <div class="w3-row-padding" style="margin:8px -16px;">
                    <div class="w3-half w3-margin-bottom">
                        <label><i class="fa fa-money"></i> Prix total</label>
                        <p id="roomPrice">2000 DA (2000 DA par nuit)</p>
                    </div>
                </div>
                <input class="w3-input w3-border" style="display: none;" type="text" value='<%= session.getAttribute("LogedInUserName") %>' name="current_user">
                <button class="w3-button w3-dark-grey" type="submit">Demander une chambre</button>
            </form>
        </div>
    </div>
</header>

<!-- Pied de page -->
<footer class="w3-padding-16 w3-black w3-center w3-margin-top">
    <h5>Retrouvez-nous sur</h5>
    <div class="w3-xlarge w3-padding-16">
        <i class="fa fa-facebook-official w3-hover-opacity"></i>
        <i class="fa fa-instagram w3-hover-opacity"></i>
        <i class="fa fa-snapchat w3-hover-opacity"></i>
        <i class="fa fa-pinterest-p w3-hover-opacity"></i>
        <i class="fa fa-twitter w3-hover-opacity"></i>
        <i class="fa fa-linkedin w3-hover-opacity"></i>
    </div>
</footer>

</body>
</html>
