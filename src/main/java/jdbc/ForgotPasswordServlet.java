package jdbc;

import common.DB_Connection;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

@WebServlet("/ForgotPasswordServlet")
public class ForgotPasswordServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");

        // Check if the email exists in the database
        boolean emailExists = checkEmailExists(email);

        if (emailExists) {
            // Generate a reset token and send it to the user's email
            String token = generateResetToken();
            boolean emailSent = sendResetEmail(email, token);

            if (emailSent) {
                // Send success response
                response.getWriter().write("success");
            } else {
                // Send error response
                response.getWriter().write("error");
            }
        } else {
            // Send error response
            response.getWriter().write("error");
        }
    }

    private boolean checkEmailExists(String email) {
        try {
            DB_Connection obj_DB_Connection = new DB_Connection();
            Connection connection = obj_DB_Connection.get_connection();
            PreparedStatement ps = null;
            ResultSet rs = null;

            PreparedStatement stmt = connection.prepareStatement("SELECT * FROM users WHERE email = ?");
            stmt.setString(1, email);
            rs = stmt.executeQuery();
            return rs.next();
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    private String generateResetToken() {
        return java.util.UUID.randomUUID().toString();
    }

    private boolean sendResetEmail(String recipientEmail, String token) {
        // Implement email sending logic here
        // This method should send an email with the reset link to the provided email address
        // Return true if the email is successfully sent, false otherwise
        // Here you can use JavaMail API or any other email service provider
        return false; // Placeholder return value
    }
}
