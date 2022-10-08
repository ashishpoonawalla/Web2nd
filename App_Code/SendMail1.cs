using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Net.Mail;

/// <summary>
/// Summary description for SendMail1
/// </summary>
public class SendMail1
{
	public SendMail1()
	{
		
	}

    public string SendMailPassward(string To1, string sub1, string mess1 )
    {
        string result1 = "";
        SmtpClient client = new SmtpClient();
        client.DeliveryMethod = SmtpDeliveryMethod.Network;
        client.EnableSsl = true;
        client.Host = "smtp.gmail.com";
        client.Port = 25;
        
        // setup Smtp authentication

        System.Net.NetworkCredential credentials =            new System.Net.NetworkCredential("web2nd.mail@gmail.com", "12345678@");

        client.UseDefaultCredentials = false;
        client.Credentials = credentials;
        
        MailMessage msg = new MailMessage();
        msg.From = new MailAddress("web2nd.mail@gmail.com");
        msg.To.Add(new MailAddress(To1 ));



        msg.Subject = sub1 ;

        msg.IsBodyHtml = true;

        msg.Body = string.Format(mess1);



        try
        {

            client.Send(msg);

           result1  = "Successfully sent.";

        }

        catch (Exception ex)
        {

            // lblStatus.ForeColor = Color.Red;

           result1  = "Send mail fail on this email..!" + ex.Message;

        }
        return result1;

    }
}
