import conn.config;
import java.sql.*;
import javax.servlet.RequestDispatcher;  
import javax.servlet.ServletException;  
import javax.servlet.http.HttpServlet;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;  
import javax.servlet.annotation.WebServlet;
import java.util.*;
import java.util.Date;
import javax.mail.PasswordAuthentication;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.security.*;
import org.apache.commons.codec.binary.Base32;
import org.apache.commons.codec.binary.Hex;
import de.taimos.totp.TOTP;

/**
 * Servlet implementation class ForgotPassword
 */
class mail {
    static final String USERNAME = "1912041@nec.edu.in";
    static final String PASSWORD = "Kaleeswaran  @1373";
    public void sendMail(String mailFrom, String mailTo, String mailSubject,
            String mailText) throws Exception {
        Properties config = createConfiguration();
        Session session = Session.getInstance(config, new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(
                        mail.USERNAME,
                        mail.PASSWORD);
            }
        });
        Message message = new MimeMessage(session);
        message.setSentDate(new Date());
        message.setFrom(new InternetAddress(mailFrom));
        message.setRecipient(Message.RecipientType.TO,
                new InternetAddress(mailTo));
        message.setSubject(mailSubject);
        message.setText(mailText);
        Transport.send(message);
    }

    public Properties createConfiguration() {
        return new Properties() {
            {
                put("mail.smtp.auth", "true");
                put("mail.smtp.host", "smtp.gmail.com");
                put("mail.smtp.port", "587");
                put("mail.smtp.starttls.enable", "true");
                put("mail.smtp.ssl.protocols", "TLSv1.2");//SSLv2Hello, SSLv3, TLSv1, TLSv1.1, TLSv1.2
            }
        };
    }
    public static void mainn(int otp,String email1){
		try{
			String mailFrom = "1912041@nec.edu.in";
			String mailTo = email1;
			String mailSubject = "One Time Password";
			String mailText="your one time password for online bike rental system login is "+otp;
			
			mail gmail = new mail();
			gmail.sendMail(mailFrom, mailTo, mailSubject, mailText);
		}
		catch(Exception e){
			e.printStackTrace();
		}
    }
}
@WebServlet("/forgotPassword")
public class forgotpassword extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email = request.getParameter("email");
		int otpvalue = 0;
		
		if(email!=null || !email.equals(" ")) {
			// sending otp
            
			
            String code = getTOTPCode();
                int n = Integer.parseInt(code);
                mail Mail = new mail();
                Mail.mainn(n,email);
                HttpSession session1 = request.getSession();
                session1.setAttribute("otp",n);
                session1.setAttribute("emil",email);
                response.sendRedirect("EnterOtp.jsp");


			
		}
		
	}
    public static String getTOTPCode() {
	    Base32 base32 = new Base32();
	    byte[] bytes = base32.decode("IUCXICYJFABTTOE3WOXUTC2HZ5MDWWSR");
	    String hexKey = Hex.encodeHexString(bytes);
	    return TOTP.getOTP(hexKey);
        
	} 

}
