using System;
using System.Data;
using System.Data.SqlClient ;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class web2nd_L1Check : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Session["UserMail"].ToString();
        Label2.Text = Session["FMail"].ToString();
        ssss();
    }

    void ssss()
    {
        int ff = 0, lavel11= 0;
        int x, y;
        string s1 = "", s2 ="";

        if (Session["FMail"].ToString() == Session["UserMail"].ToString())
        {
            lavel11 = 2;
           
        }
        else
        {
            for (x = 0; x < GridView1.Rows.Count; x++)
            {
                s1 = GridView1.Rows[x].Cells[0].Text.ToString();
                if (s1 == Label2.Text)
                {
                    ff = 1;
                    lavel11 = 2;
                    break;
                }
            }

            if (lavel11 == 0)
            {
                for (x = 0; x < GridView1.Rows.Count; x++)
                {
                    s1 = GridView1.Rows[x].Cells[0].Text.ToString();
                    Label3.Text = s1.Trim();
                    GridView2.DataBind();

                    for (y = 0; y < GridView2.Rows.Count; y++)
                    {
                        s2 = GridView2.Rows[y].Cells[0].Text.ToString();
                        if (s2 == Label2.Text)
                        {
                            ff = 1;
                            lavel11 = 3;
                            break;
                        }
                    }

                    if (lavel11 == 3)
                        break;
                }
            }
        }



        if (lavel11 == 0)
            lavel11 = 4;

        Label4.Text = lavel11.ToString();
        Session["FLavel"] = lavel11.ToString().Trim();

        loadPrivacyData();

        //if (Label2.Text.Trim() == "")
        //{
        //   Response.Redirect(@"~\web2nd\web2ndmain.aspx");
        //}

        Response.Redirect(@"~\web2nd\Lavel2.aspx");
    }

    void loadPrivacyData()
    {

       string sql1 = "select * from UserPrivacy where SMail='" + Session["FMail"].ToString() + "' ";
        SqlConnection con1 = new SqlConnection(ConfigurationManager.AppSettings["conn1"].ToString());
        SqlCommand cmd1 = new SqlCommand(sql1, con1);
        SqlDataReader dr;
        try
        {
            con1.Open();
            dr = cmd1.ExecuteReader();

            if (dr.Read())
            {
               string ssdd = "." + dr[2].ToString();
               ssdd += dr[3].ToString();
               ssdd += dr[4].ToString();
               ssdd += dr[5].ToString();
               ssdd += dr[6].ToString();
               ssdd += dr[7].ToString();
               ssdd += dr[8].ToString();
               ssdd += dr[9].ToString();
               ssdd += dr[10].ToString();
               ssdd += dr[11].ToString();
               ssdd += dr[12].ToString();
               ssdd += dr[13].ToString();
               ssdd += dr[14].ToString();
               ssdd += dr[15].ToString();
               ssdd += dr[16].ToString();
               ssdd += dr[17].ToString();
               ssdd += dr[18].ToString();
               Session["FPrvc"] = ssdd;
               Label5.Text = ssdd;
            }
            else
            {
                Label2.Text = "";
            }
        }
        catch (Exception ee)
        {
            Label2.Text = "";
            Label5.Text = ee.Message;
        }
        finally
        {
            con1.Close();
        }
    }
}
