using System;
using System.Data;
using System.Data.SqlClient;
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
    static string UserM = "", cng = "", sql1, UserP = "", idd="";


    protected void Page_Load(object sender, EventArgs e)
    {
        Page.MaintainScrollPositionOnPostBack = true;

        idd = Session["SubAlbum"].ToString();
        Session["AlbumTitle1"] = "";

        loadaa();

        Label4.Text = Session["AlbumTitle1"].ToString();

        //Label1.Text = Session["UserName"].ToString();
        
        
        //UserM = Session["UserMail"].ToString();
        //UserP = Session["UserPhoto"].ToString();

        //ImageButton1.ImageUrl = UserP;
        //Label1.Text = Session["UserName"].ToString();
    }

    void loadaa()
    {
        string ss1 = "1";
        cng = ConfigurationManager.AppSettings["conn1"];
        sql1 = "select * from PhotoAlbum1 where AID='" + idd + "' ";
        SqlConnection con1 = new SqlConnection(cng);
        SqlCommand cmd1 = new SqlCommand(sql1, con1);
        SqlDataReader dr;
        try
        {
            con1.Open();
            dr = cmd1.ExecuteReader();

            if (dr.Read())
            {
                string dss = "";
                dss = dr[4].ToString();
                Session["AlbumTitle1"] = dss;
            }
           
        }
        catch (Exception ee)
        {
            //Label6.Text = ee.Message;
        }
        finally
        {
            con1.Close();
        }


    }
   
    protected void Button1_Click1(object sender, EventArgs e)
    {
        //Response.Redirect("~/web2nd/1PhotoCreate.aspx");
    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {
       // Label3.Text = DataList1.SelectedValue.ToString();
        //Session["SubAlbum"] = DataList1.SelectedValue.ToString();

    }
    protected void DataList1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        Session["SubSubAlbum"] = DataList1.SelectedValue.ToString();
        Session["IndexAlbum"] = DataList1.SelectedIndex.ToString();
        Response.Redirect("1PhotoAlbumSub.aspx");

    }
}
