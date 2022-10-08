using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Net.Mail;

public partial class Mail1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
                SmtpClient client = new SmtpClient();

                client.DeliveryMethod = SmtpDeliveryMethod.Network;

                client.EnableSsl = true;

                client.Host = "smtp.gmail.com";

                client.Port = 25;

 

                // setup Smtp authentication

                System.Net.NetworkCredential credentials = 
                    new System.Net.NetworkCredential("web2nd.mail@gmail.com", "12345678@");

                client.UseDefaultCredentials = false;

                client.Credentials = credentials;                

 

                MailMessage msg = new MailMessage();

                msg.From = new MailAddress("web2nd.mail@gmail.com");

                msg.To.Add(new MailAddress("maucom.in@hotmail.com"));

 

                msg.Subject = "This is a test Email subject";

                msg.IsBodyHtml = true;

                msg.Body = string.Format("<html><head></head><body><b>Test HTML Email</b></body>");

 

                try

                {

                    client.Send(msg);

                    lblStatus.Text = "Your message has been successfully sent.";

                }

                catch (Exception ex)

                {

                  // lblStatus.ForeColor = Color.Red;

                   lblStatus.Text = "Error occured while sending your message." + ex.Message;

                }


        }
    }


