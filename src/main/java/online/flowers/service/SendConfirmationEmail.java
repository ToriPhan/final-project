package online.flowers.service;

import online.flowers.utils.MailUtilGmail;

public class SendConfirmationEmail {

    public void sendEmail (String activationCode, String email) {
        String mailSubject = "Welcome to Thanh Thu Flowers Shop!";
        String mailBody = "<h4> Hi " + email + ",</h4> <br>";
        mailBody += "Thanks for registering an account at our shop. Please click on the following \n"
                + "link to finish the registration: <br><br>";
        mailBody += "http://localhost:8080/activation?code=" + activationCode;
        mailBody += "<br><br> Regards, <br>Thanh Thu Flowers Shop";

        MailUtilGmail.sendEmail(email, mailSubject, mailBody);
    }
}
