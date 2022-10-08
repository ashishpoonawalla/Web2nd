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

public partial class logout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        Session["UserMail"] = null;
        Session["UserPrivacy"] = null;
        Session["UserName"] = null;
        Session["UserFirstName"] = null;
        Session["UserLastName"] = null;
        Session["UserGender"] = null;
        Session["UserPhoto"] = null;
        Session["UserCity"] = null;
        Session["UserCountry"] = null;
     

    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {



        Response.Redirect("~/Default.aspx");
    }
}
