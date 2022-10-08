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
using Google.GData.Contacts;
using Google.GData.Client;
using Google.GData.Extensions;
using Google.GData.Apps;
using Google.Contacts;

public partial class PopulateGcontacts : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        

        string App_Name= Session["App_Name"].ToString();  
        string username=  Session["username"].ToString();  
        string password= Session["password"].ToString();


        DataSet ds = new DataSet();

        DataTable dt = new DataTable();

        DataColumn C2 = new DataColumn();

        C2.DataType = Type.GetType("System.String");

        C2.ColumnName = "EmailID";

        dt.Columns.Add(C2);

        RequestSettings rs = new RequestSettings(App_Name, username, password);

        rs.AutoPaging = true;

        ContactsRequest cr = new ContactsRequest(rs);

        Feed<Contact> f = cr.GetContacts();
        try
        {
            foreach (Contact t in f.Entries)
            {
                foreach (EMail email in t.Emails)
                {
                    DataRow dr1 = dt.NewRow();
                    dr1["EmailID"] = email.Address.ToString();
                    dt.Rows.Add(dr1);
                }

            }
            ds.Tables.Add(dt);

            GridView1.DataSource = ds;
            GridView1.DataBind();  
        }
        catch (Exception eee)
        {
            Label1.Text = eee.Message;
        }



    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;  
    }
}
