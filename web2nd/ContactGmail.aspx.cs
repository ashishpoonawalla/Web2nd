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

public partial class web2nd_ContactGmail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
  
        DataSet ds = GContactsImport.GetGmailContacts("MyNetwork Web Application!", txtgmailusername.Text,txtpassword.Text);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        MultiView1.ActiveViewIndex = 1;
       
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
}
