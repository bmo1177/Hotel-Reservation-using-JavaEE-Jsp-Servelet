<!DOCTYPE html>
<html>
<title>Chambres</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" type="image/png" href="../Images/logo.png">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Raleway", Arial, Helvetica, sans-serif}
</style>   
<body class="w3-light-grey">

<!-- Barre de navigation -->
<div class="w3-bar w3-white w3-large">
  <a href="home.jsp" class="w3-bar-item w3-button  w3-mobile"><img src="../Images/logo.png" style="width: 25px;height: 25px;"></a>
  <a href="allrequests.jsp" class="w3-bar-item w3-button w3-mobile">Tous les demandes</a>
  <a href="rooms.jsp" class="w3-bar-item w3-button w3-blue w3-mobile">Chambres</a>
  <a href="about.jsp" class="w3-bar-item w3-button w3-mobile">À propos</a>
  <a href="contact.jsp" class="w3-bar-item w3-button w3-mobile">Contact</a>
  <a href="../logout.jsp" id="user_name_div" title="logout" class="w3-bar-item w3-button w3-right w3-light-grey w3-mobile"><%= session.getAttribute( "LogedInUserName" ) %></a>
  <script type="text/javascript">
    var pp = document.getElementById('user_name_div').innerText;
    if(pp == "null"){
      window.location.href = "../login.jsp";
    }
  </script>
</div>

<div class="w3-container w3-margin-top" id="rooms">
    <h3>Chambres</h3>
    <p>Faites comme chez vous est notre slogan. Nous offrons les meilleurs lits de l'industrie. Dormez bien et reposez-vous bien.</p>
</div>

<div class="w3-row-padding w3-padding-16">
    <div class="w3-third w3-margin-bottom">
        <a href="home.jsp" class="w3-bar-item w3-button w3-mobile"><img src="../Images/roomsingle.jpg" alt="single" style="width:100%"></a>
        <div class="w3-container w3-white">
            <a href="home.jsp"><h3>Chambre Simple</h3></a>
            <h6 class="w3-opacity">Prix : 2000DA</h6>
            <p>Lit simple</p>
            <p>15m<sup>2</sup></p>
            <p class="w3-large"><i class="fa fa-bath"></i> <i class="fa fa-phone"></i> <i class="fa fa-wifi"></i></p>
        </div>
    </div>
    <div class="w3-third w3-margin-bottom">
        <a href="home.jsp" class="w3-bar-item w3-button w3-mobile"><img src="../Images/roomdouble.jpg" alt="double" style="width:100%"></a>
        <div class="w3-container w3-white">
            <a href="home.jsp"><h3>Chambre Double</h3></a>
            <h6 class="w3-opacity">Prix : 4000DA</h6>
            <p>Lit queen-size</p>
            <p>25m<sup>2</sup></p>
            <p class="w3-large"><i class="fa fa-bath"></i> <i class="fa fa-phone"></i> <i class="fa fa-wifi"></i> <i class="fa fa-tv"></i></p>
        </div>
    </div>
    <div class="w3-third w3-margin-bottom">
        <a href="home.jsp" class="w3-bar-item w3-button w3-mobile"><img src="../Images/roomdeluxe.jpg" alt="deluxe" style="width:100%"></a>
        <div class="w3-container w3-white">
            <a href="home.jsp"><h3>Chambre de Luxe</h3></a>
            <h6 class="w3-opacity">Prix : 6000DA</h6>
            <p>Lit king-size</p>
            <p>40m<sup>2</sup></p>
            <p class="w3-large"><i class="fa fa-bath"></i> <i class="fa fa-phone"></i> <i class="fa fa-wifi"></i> <i class="fa fa-tv"></i> <i class="fa fa-glass"></i> <i class="fa fa-cutlery"></i></p>
        </div>
    </div>
</div>

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
