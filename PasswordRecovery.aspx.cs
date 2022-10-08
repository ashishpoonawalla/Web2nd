using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class _Default : System.Web.UI.Page
{
    static string cng, sql1, Dssf="", ans1="";

    string st1, st3 = "", st4 = "",st5 = "",  str1 = "A", costr = "";
    //string st21, st22 = "", st23 = "", st24 = "", str12 = "A", costr2 = "";
    int a = 0;
    //int a2 = 0, b2 = 0, i2 = 0, ln2, dde1 = 0, dde2 = 0;


    protected void Button3_Click(object sender, EventArgs e)
    {

        if (TextBox2.Text.Trim() == "")
        {
            Label6.Text = "Give Username...!";

        }
        else
        {






            cng = ConfigurationManager.AppSettings["conn1"];
            sql1 = "select * from Login where Email='" + TextBox2.Text + "' ";
            SqlConnection con1 = new SqlConnection(cng);
            SqlCommand cmd1 = new SqlCommand(sql1, con1);
            SqlDataReader dr;
            try
            {
                con1.Open();
                dr = cmd1.ExecuteReader();

                if (dr.Read())
                {
                    string s1, s2, s3, s4, s1s = "";
                    s1 = dr[1].ToString().Trim();
                    s2 = dr[2].ToString();
                    s4 = dr[4].ToString();

                    security1 cs1 = new security1();
                    s1s = cs1.ddd22(s1);

                    if (s1s.Trim() != "")
                    {

                        SendMail1 sm1 = new SendMail1();
                        string msss = "<html><head></head><body><br>Web2nd Password Information -  <br> Your Password - <b>"+ s1s +"</b><br> from - web2nd.com </body></html>";
                        Label6.Text = sm1.SendMailPassward(TextBox2.Text.Trim() , "web2nd mail", msss);
                    }


                }
                else
                {
                    Label6.Text = "Invalid Username...!";
                }
            }


            catch (Exception ee)
            {
                Label6.Text = ee.Message;
            }
            finally
            {
                con1.Close();
            }
        }

    }

     
    protected void Page_Load(object sender, EventArgs e)
    {

     
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox2.Text.Trim() == "")
        {
            Label6.Text = "Give Username...!";

        }
        else
        {
            cng = ConfigurationManager.AppSettings["conn1"];
            sql1 = "select * from Login1 where Email='" + TextBox2.Text + "' ";
            SqlConnection con1 = new SqlConnection(cng);
            SqlCommand cmd1 = new SqlCommand(sql1, con1);
            SqlDataReader dr;
            try
            {
                con1.Open();
                dr = cmd1.ExecuteReader();

                if (dr.Read())
                {
                    string s1, s2, s3, s4, s1s = "";
                    s1 = dr[40].ToString().Trim();
                    s2 = dr[41].ToString();
                    ans1 = s2.Trim();
                    if (s1 == null)
                    {
                        Button3.Visible = true;
                    }
                    else if (s1.Trim() == "")
                    {
                        Button3.Visible = true;
                        Panel1.Visible = false;
                    }
                    else
                    {
                        Button3.Visible = false;
                        Label11.Text = s1.Trim();
                        Panel1.Visible = true;
                    }
                }
                else
                {
                    Label6.Text = "Invalid Username...!";
                }
            }


            catch (Exception ee)
            {
                Label6.Text = ee.Message;
            }
            finally
            {
                con1.Close();
            }
        }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (ans1.ToUpper() == TextBox1.Text.ToUpper())
        {
            Button3.Visible = true;
        }
        else
        {
            Label6.Text = "Give correct answer...!";
        }
    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {
        Button3.Visible = false;
    }
    protected void TextBox2_PreRender(object sender, EventArgs e)
    {
        //Button3.Visible = false;
    }
}