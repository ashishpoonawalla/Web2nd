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

public partial class tmp_Data2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlDataSource1.SelectCommand = "SELECT TOP (4) id, S_Email, S_Photo FROM MessageTable ORDER BY id DESC";
        DataList1.DataBind();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlDataSource1.SelectCommand = "SELECT TOP (8) id, S_Email, S_Photo FROM MessageTable ORDER BY id DESC";
        DataList1.DataBind();
    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        int x = Convert.ToInt32(Label1.Text);
        if (x >= 20)
        {
            Label2.Visible = true;            Image2.Visible = false;
        }
        else
        {
            x = x + 2;
            Label1.Text = x.ToString();
            Label2.Visible = false; Image2.Visible = true;
            SqlDataSource1.SelectCommand = "SELECT TOP ("+Label1.Text +") id, S_Email, S_Photo FROM MessageTable ORDER BY id DESC";
            DataList1.DataBind();
        }
    }
}
