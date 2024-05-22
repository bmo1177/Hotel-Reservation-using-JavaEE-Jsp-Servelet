package jdbc;

import common.DB_Connection;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

@WebServlet("/ResetPasswordServlet")
public class ResetPasswordServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String token = request.getParameter("token");
        String newPassword = request.getParameter("newpassword");
        String confirmPassword = request.getParameter("confirmpassword");

        if (newPassword.equals(confirmPassword)) {
            // Validate token and update password in the database
            boolean resetSuccess = resetUserPassword(token, newPassword);

            response.setContentType("text/html");
            response.setCharacterEncoding("UTF-8");

            if (resetSuccess) {
                // Redirect to login page after successful password reset
                response.sendRedirect("login.jsp");
            } else {
                // Redirect back to resetpassword.jsp with token if reset failed
                response.sendRedirect("resetpassword.jsp?token=" + token);
            }
        } else {
            // Redirect back to resetpassword.jsp with token if passwords don't match
            response.sendRedirect("resetpassword.jsp?token=" + token);
        }
    }

    private boolean resetUserPassword(String token, String newPassword) {
        try {
            // Get database connection
            DB_Connection obj_DB_Connection = new DB_Connection();
            Connection connection = obj_DB_Connection.get_connection();
            PreparedStatement ps = null;
            ResultSet rs = null;
            
            // Verify the token and retrieve the associated email
            String query = "SELECT email FROM users WHERE reset_token = ?";
            ps = connection.prepareStatement(query);
            ps.setString(1, token);
            rs = ps.executeQuery();

            if (rs.next()) {
                String email = rs.getString("email");

                // Update the user's password
                String updateQuery = "UPDATE users SET password = ? WHERE email = ?";
                PreparedStatement updateStmt = connection.prepareStatement(updateQuery);
                updateStmt.setString(1, newPassword);
                updateStmt.setString(2, email);
                int rowsUpdated = updateStmt.executeUpdate();

                // Delete the token after successful reset
                String deleteTokenQuery = "UPDATE users SET reset_token = NULL WHERE email = ?";
                PreparedStatement deleteTokenStmt = connection.prepareStatement(deleteTokenQuery);
                deleteTokenStmt.setString(1, email);
                deleteTokenStmt.executeUpdate();

                return rowsUpdated > 0;
            } else {
                return false; // Token not found or expired
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}
