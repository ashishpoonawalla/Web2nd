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
       // Label1.Text = Session["FName"].ToString();      
        loadPrvc();
     
    }
   
    
    void loadPrvc()
    {
        int yf1, yf2;
                Label10.Text = Session["FPrvc"].ToString();


        yf1 = Convert.ToInt32(Label10.Text.Substring(6, 1))+1 ;
        yf2 = Convert.ToInt32(Session["FLavel"].ToString());

        Label11.Text = yf1.ToString();
      
        if (yf1 >= yf2)
        {
            Panel1.Visible = true;
            Label13.Visible  = false;
        }
        else
        {
            Panel1.Visible = false;
            Label13.Visible = true;
        }


      
    }
  
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {
       // Label3.Text = DataList1.SelectedValue.ToString();
        Session["SubAlbum"] = DataList1.SelectedValue.ToString();
        Response.Redirect("L2PhotoAlbum.aspx");

    }
  
}
