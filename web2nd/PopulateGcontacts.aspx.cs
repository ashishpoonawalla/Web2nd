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

public partial class web2nd_PopulateGcontacts : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        string App_Name = Session["App_Name"].ToString();
        string username = Session["username"].ToString();
        string password = Session["password"].ToString();
        DataSet ds = GContactsImport.GetGmailContacts(App_Name, username, password);
        GridView1.DataSource = ds;
        GridView1.DataBind();


    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
    }
}
