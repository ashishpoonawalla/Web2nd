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

public partial class web2nd_2AllFriends : System.Web.UI.Page
{
    static string ss1122 = "", cng = "", sql1 = "",My_Mail="", Del_Mail="";
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string ss1122 = DataList1.SelectedValue.ToString();
        Label1.Text = ss1122;

        cng = ConfigurationManager.AppSettings["conn1"];
        sql1 = "select * from Login where id=" + ss1122;
        SqlConnection con1 = new SqlConnection(cng);
        SqlCommand cmd1 = new SqlCommand(sql1, con1);
        SqlDataReader dr;
        try
        {
            con1.Open();
            dr = cmd1.ExecuteReader();

            if (dr.Read())
            {
                My_Mail = Session["UserMail"].ToString();
                Del_Mail = dr[4].ToString();
                
                DelFriend();
            }
        }
        catch (Exception ee)
        {
            Label1.Text = ee.Message;
        }
        finally
        {
            con1.Close();
        }
    }


    void DelFriend()
    {
        cng = ConfigurationManager.AppSettings["conn1"];
        sql1 = "Delete from FList where (S_Email='" + My_Mail + "' AND R_EMail='" + Del_Mail + "') OR (S_Email='" + Del_Mail + "' AND R_EMail='" + My_Mail + "')";
        SqlConnection con1 = new SqlConnection(cng);
        SqlCommand cmd1 = new SqlCommand(sql1, con1);
       
        try
        {
            con1.Open();
            int ff = cmd1.ExecuteNonQuery();
            DataList1.DataBind();
            
        }
        catch (Exception ee)
        {
            Label1.Text = ee.Message;
        }
        finally
        {
            con1.Close();
        }


    }



}
