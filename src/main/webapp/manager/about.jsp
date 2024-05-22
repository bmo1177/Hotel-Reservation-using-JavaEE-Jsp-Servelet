<!DOCTYPE html>
<html>
<head>
    <title>À propos</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/png" href="../Images/logo.png">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick-theme.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        body,h1,h2,h3,h4,h5,h6 {font-family: "Raleway", Arial, Helvetica, sans-serif}
    </style>
</head>
<body class="w3-light-grey">

<!-- Barre de navigation -->
<div class="w3-bar w3-white w3-large">
    <a href="home.jsp" class="w3-bar-item w3-button  w3-mobile"><img src="../Images/logo.png" style="width: 25px;height: 25px;"></a>
  <a href="allrequests.jsp" class="w3-bar-item w3-button w3-mobile">Tous les demandes</a>
  <a href="rooms.jsp" class="w3-bar-item w3-button w3-mobile">Chambres</a>
  <a href="about.jsp" class="w3-bar-item w3-button w3-blue w3-mobile">À propos</a>
  <a href="contact.jsp" class="w3-bar-item w3-button w3-mobile">Contact</a>
  <a href="../logout.jsp" id="user_name_div" title="logout" class="w3-bar-item w3-button w3-right w3-light-grey w3-mobile"><%= session.getAttribute( "LogedInUserName" ) %></a>
  <script type="text/javascript">
        var pp = document.getElementById('user_name_div').innerText;
        if(pp == "null"){
            window.location.href = "../login.jsp";
        }
    </script>
</div>

<!-- Contenu de la page -->
<div style="width: 100%; min-height: 750px;">
    <div class="w3-row-padding" id="about">
        <div class="w3-col l4 12">
            <h3>À propos</h3>
              <h6>Notre hôtel se démarque par son caractère unique, incarnant l'élégance et le raffinement dans chaque détail, offrant ainsi une expérience inoubliable et incomparable à ses hôtes. De ses chambres luxueuses à son service attentionné, chaque instant passé dans notre établissement célèbre l'art de vivre. Venez découvrir l'harmonie parfaite entre tradition et modernité dans un cadre enchanteur où le bien-être et l'excellence sont au rendez-vous.</h6>
          <p>
                Nous acceptons : <i class="fa fa-credit-card w3-large"></i> <i
                        class="fa fa-cc-mastercard w3-large"></i> <i
                        class="fa fa-cc-amex w3-large"></i> <i
                        class="fa fa-cc-cc-visa w3-large"></i><i
                        class="fa fa-cc-paypal w3-large"></i>
            </p>
        </div>
        <div class="w3-col l8 12">
            <!-- Curseur d'images -->
            <div class="slick-slider">
                <div><img src="../Images/map.jpg" class="w3-image w3-greyscale" alt="Localisation"></div>
                <div><img src="../Images/cinequeterr.jpg" class="w3-image w3-greyscale" alt=""></div>
                <div><img src="../Images/newyork.jpg" class="w3-image w3-greyscale" alt=""></div>
                <div><img src="../Images/sanfra.jpg" class="w3-image w3-greyscale" alt=""></div>
                <div><img src="../Images/pis.jpg" class="w3-image w3-greyscale" alt=""></div>
                <div><img src="../Images/pari.jpg" class="w3-image w3-greyscale" alt=""></div>
            </div>
        </div>
    </div>
</div>

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

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js"></script>
<script>
    $(document).ready(function(){
        $('.slick-slider').slick({
            dots: true,
            infinite: true,
            speed: 300,
            slidesToShow: 1,
            adaptiveHeight: true
        });
    });
</script>

</body>
</html>
