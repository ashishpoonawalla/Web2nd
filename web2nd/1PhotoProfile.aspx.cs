using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.IO;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using AspNet.StarterKits.Classifieds.BusinessLogicLayer;

public partial class web2nd_Profile : System.Web.UI.Page
{
    static string serverDirectory = "", serverDirectory1 = "", imgPhoto1 = "", imgPhoto2 = "", imgPhoto3 = "", timg = "", timg1 = "", timg2 = "", cng, sql1, st1 = "0";
    
    protected void Page_Load(object sender, EventArgs e)
    {
       //Label2.Text = Session["UserPhoto"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }


    protected void Button1_Click1(object sender, EventArgs e)
    {

            HttpContext context = HttpContext.Current;
            serverDirectory = "no....";

            serverDirectory = context.Server.MapPath(@"~/web2nd/ProfileImage/");

            if (FileUpload1.HasFile)
            {             
                {
                    timg = serverDirectory + Session["UserMail"].ToString();
                    timg1 = timg + "2.jpg"; FileUpload1.SaveAs(timg1);
                  
                    ImageResize r12 = new ImageResize();

                    timg2 = timg + ".jpg";
                    Session["UserPhoto"] = timg2;

                    r12.dowork1(timg1, timg2, "51");       //Image1.ImageUrl = timg2;

                    //Session["UserPhoto"] = timg2;

                    timg2 = timg + "1.jpg";
                    r12.dowork1(timg1, timg2, "2");        //Image2.ImageUrl = timg2;
                    
                }

                //Response.Redirect("~/Default.aspx");

                Label2.Visible = true;

                //try
                //{

                //    System.IO.File.Delete(serverDirectory + "*2.jpg");

                //}
                //catch (Exception eee3)
                //{

                //}

            }
      
        
            
    }

  

    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("web2ndmain.aspx");
    }
}
