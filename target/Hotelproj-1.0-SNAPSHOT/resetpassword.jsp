<%@ page import="java.sql.*, javax.servlet.*, javax.servlet.http.*, common.DB_Connection" %>

<%
    // Retrieve the token from the URL parameter
    String token = request.getParameter("token");
    boolean isValidToken = false;
    String email = null;

    // Check if the token is valid
    if (token != null && !token.isEmpty()) {
        try {
            DB_Connection db = new DB_Connection();
            Connection con = db.getConnection();
            PreparedStatement ps = con.prepareStatement("SELECT email FROM password_reset_tokens WHERE token = ?");
            ps.setString(1, token);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                isValidToken = true;
                email = rs.getString("email");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>

<!DOCTYPE html>
<html>
<head>
    <title>Reset Password</title>
    <link rel="icon" type="image/png" href="Images/logo.png">
    <style type="text/css">
        body {
            margin: 0;
            padding: 0;
            background-color: #ddd;
            font-family: sans-serif;
        }

        .resetbox {
            width: 320px;
            height: 300px;
            background-color: white;
            color: #fff;
            top: 50%;
            left: 50%;
            position: absolute;
            transform: translate(-50%, -50%);
            box-sizing: border-box;
            padding: 70px 30px;
            border-radius: 20px;
            box-shadow: 5px 10px #888888;
        }

        .resetbox p {
            margin: 0;
            padding: 0;
            font-weight: bold;
            color: darkgray;
        }

        .resetbox input {
            width: 100%;
            margin-bottom: 20px;
        }

        .resetbox input[type="password"] {
            border: none;
            border-bottom: 1px solid darkgray;
            background: transparent;
            outline: none;
            height: 40px;
            color: darkgray;
            font-size: 16px;
            transition: 0.25s;
        }

        .resetbox input[type="password"]:focus {
            border-bottom: 2px solid #ffc107;
        }

        .resetbox input[type="submit"] {
            border: none;
            outline: none;
            height: 40px;
            background: DodgerBlue;
            color: #fff;
            font-size: 18px;
            border-radius: 20px;
            transition: 0.25s;
        }

        .resetbox input[type="submit"]:hover {
            cursor: pointer;
            background: #ffc107;
            color: #000;
        }

        .resetbox a {
            text-decoration: none;
            font-size: 12px;
            line-height: 20px;
            color: darkgrey;
            transition: 0.25s;
        }

        .resetbox a:hover {
            color: #ffc107;
        }

        .error {
            color: #FF7800;
        }

        ::placeholder {
            color: #ddd;
            opacity: 1;
            /* Firefox */
        }

        :-ms-input-placeholder {
            /* Internet Explorer 10-11 */
            color: #ddd;
        }

        ::-ms-input-placeholder {
            /* Microsoft Edge */
            color: #ddd;
        }
    </style>
</head>
<body>
    <div class="resetbox">
        <h1>Réinitialiser le mot de passe</h1>
        <% if (isValidToken) { %>
            <form action="ResetPasswordServlet" method="post">
                <input type="hidden" name="token" value="<%= token %>">
                <input type="hidden" name="email" value="<%= email %>">
                <p>Nouveau mot de passe</p>
                <input type="password" name="newpassword" placeholder="Entrez le nouveau mot de passe" required="required">
                <p>Confirmer le mot de passe</p>
                <input type="password" name="confirmpassword" placeholder="Confirmer le nouveau mot de passe" required="required">
                <input type="submit" name="reset" value="Réinitialiser le mot de passe">
            </form>
        <% } else { %>
            <p class="error">Token invalide ou expiré.</p>
            <p><a href="forgotpassword.jsp">Retour à la page Mot de passe oublié</a></p>
        <% } %>
    </div>
</body>
</html>
