using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnContact_Click(object sender, EventArgs e)
        {
            //the system will always send mail from the account being used
            //it should never be sent using the address of the person filling in the form
            //this is used a few times, so create a variable
            const string senderEmail = "CO5027ps4games@gmail.com";

            //for simple configuration, specify the account password and recipient here also
            const string accountPassword = "lcb1722621";
            const string recipientEmail = "CO5027ps4games@gmail.com";

            //create a new smtp client (this will connect to the mail server)
            SmtpClient client = new SmtpClient();
            //configure the smtp client to it knows how to connect to the mail server
            client.Host = "smtp.gmail.com";
            client.Port = 587;
            client.EnableSsl = true;

            //this particular email server requires us to login so
            //create a set of credentials with the relevent username and password
            System.Net.NetworkCredential userpass = new System.Net.NetworkCredential();
            userpass.UserName = senderEmail; //for this account the username is the email address
            userpass.Password = accountPassword;

            //ensure the smtp client has the newly created credentials
            client.Credentials = userpass;

            //create a new email to recipient@domain.com - this email address will also be pre-determined
            MailMessage msg = new MailMessage(senderEmail, recipientEmail);

            //set the subject of the message, and set the body using the text from a text box
            msg.Subject = "A new email from the website";
            msg.Body = "From: " + Request["email"] + "\n" + "\n" + "Subject: " + Request["subject"] + "\n" + "\n" + "Message: " + Request["message"];

            //at this stage the body of the email only contains what the user has typed in the message box
            //there's nothing that collects their name and email address (which are required to reply to them)
            //A complete solution would need to collect this information and append it to the message body

            //send the message
            client.Send(msg);

            //clear the message box (a better option would be to notify the user that
            //the email has been sent - either by displaying a message (e.g. a literal)
            //or by redirecting them to a 'Message sent' page
        }
    }
}