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

public partial class web2nd_1Photo : System.Web.UI.Page
{
    static string UserM = "", cng = "", sql1, UserP = "";


    protected void Page_Load(object sender, EventArgs e)
    {
        Page.MaintainScrollPositionOnPostBack = true;
        Label1.Text = Session["UserName"].ToString();
        Session["PhotoEdit"] = "Y";
        
        UserM = Session["UserMail"].ToString();
        UserP = Session["UserPhoto"].ToString();

        ImageButton3.ImageUrl = UserP;
        Label1.Text = Session["UserName"].ToString();
    }
   
    protected void Button1_Click1(object sender, EventArgs e)
    {
        Response.Redirect("~/web2nd/1PhotoCreate.aspx");
    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {
       // Label3.Text = DataList1.SelectedValue.ToString();
        Session["SubAlbum"] = DataList1.SelectedValue.ToString();
        Response.Redirect("1PhotoAlbum.aspx");

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("1PhotoProfile.aspx");

    }
    protected void ImageButton14_Click(object sender, ImageClickEventArgs e)
    {

    }
}
