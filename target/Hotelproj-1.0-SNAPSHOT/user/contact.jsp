<!DOCTYPE html>
<html>
<title>Contact</title>
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
  <a href="myrequests.jsp" class="w3-bar-item w3-button w3-mobile">Mes demandes</a>
  <a href="rooms.jsp" class="w3-bar-item w3-button w3-mobile">Chambres</a>
  <a href="about.jsp" class="w3-bar-item w3-button w3-mobile">� propos</a>
  <a href="contact.jsp" class="w3-bar-item w3-button w3-blue w3-mobile">Contact</a>
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
		<div class="w3-container" id="contact">
			<h2>Contact</h2>
			<p>N'h�sitez pas � nous poser vos questions.</p>
			<i class="fa fa-map-marker w3-text-blue" style="width: 30px"></i>
			Tiaret, Algerie<br> <i class="fa fa-phone w3-text-blue"
				style="width: 30px"></i> T�l�phone : 046 23 68 22<br> <i
				class="fa fa-envelope w3-text-blue" style="width: 30px"> </i> Email :
			hotelbouaza@gmail.com<br>
			<form action="../SendMessageByUser" method="post">
				<input type="text" name="current_user" value='<%= session.getAttribute( "LogedInUserName" ) %>' style="display: none;">
				<p><input class="w3-input w3-padding-16 w3-border" type="text" placeholder="Email" required name="Email"></p>
				<p>
					<input class="w3-input w3-padding-16 w3-border" type="text"
						placeholder="Message" required name="Message">
				</p>
				<p>
					<button class="w3-button w3-black w3-padding-large" type="submit">ENVOYER
						LE MESSAGE</button>
				</p>
			</form>
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

</body>
</html>
