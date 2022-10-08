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

public partial class AdminLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["S1A2"] == null)
        {
            Response.Redirect("~/ErrorPage.aspx");
        }

        if (Session["S1A2"].ToString() != "321")
        {
            Response.Redirect("~/ErrorPage.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "pa123456")
        {
            Session["S1A1"] = "1234";
            Session["AdminSessionID"] = Session.SessionID.ToString();
            Session["AdmAdvertiseCount"] = "0";
            Response.Redirect("~/web2nd/Admin1/MainAdmin.aspx");

        }
        else
        {
            Response.Redirect("~/ErrorPage.aspx");
        }
    }
}
