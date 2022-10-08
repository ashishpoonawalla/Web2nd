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

public partial class web2nd_Admin1_MainAdmin : System.Web.UI.Page
{
    static int ccn, ccnn = 0;
    static string A_ID = "", A_PicPath = "", A_Caption1 = "", A_Path = "", fnm = "", cng = "", sql1 = "", sml = "", sid = "", schance = "", Dssf = ".", serverDirectory = "", serPath = "", serPath1="";


    protected void Page_Load(object sender, EventArgs e)
    {
        //Session["Admin1122"] = "1234";
        //Session["AdminSessionID"] = Session.SessionID.ToString();
        //Session["AdmAdvertiseCount"] = "0";

        if (IsPostBack == false)
        {
            Label11.Text = DateTime.Now.ToString();
            Label12.Text = DateTime.Now.ToString();
            Panel1.Visible = false;
            Panel2.Visible = true;



        }


        if (Session["S1A2"] == null)
        {
            Response.Redirect("~/ErrorPage.aspx");
        }
        if (Session["S1A2"].ToString() != "1234")
        {
            Response.Redirect("~/ErrorPage.aspx");
        }

        if (Session["AdminSessionID"].ToString() != Session.SessionID.ToString())
        {
            Response.Redirect("~/ErrorPage.aspx");
        }


    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        Label11.Text = Calendar1.SelectedDate.ToString();
    }
    protected void Calendar2_SelectionChanged(object sender, EventArgs e)
    {
        Label12.Text = Calendar2.SelectedDate.ToString();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            HttpContext context = HttpContext.Current;

             if (context != null)
             {
                
                 
                 sid = Session.SessionID.ToString();
                 schance =Session["AdmAdvertiseCount"].ToString();
                 serverDirectory = context.Server.MapPath(@"~/web2nd/AdvertisePhoto/");
                 serPath = serverDirectory.ToString() + sid + schance + ".jpg";
                 serPath = serPath.Trim();

                 serPath1 = @"~/web2nd/AdvertisePhoto/" + sid + schance + ".jpg";
                 

                 try
                 {
                     FileUpload1.SaveAs(serPath);

                     cng = ConfigurationManager.AppSettings["conn1"];       //                                                    Title,                  Message,                Image1,           Link1,                  Type,                        City,            Country,                Date1          
                     DateTime dddt1 = DateTime.Now;
                     string ddts1 = (dddt1.Year + "/" + dddt1.Month + "/" + dddt1.Day + " " + dddt1.ToLongTimeString());

                     sql1 = "INSERT INTO Advertise1(Title, Message, Image1, Link1, Type, City, Country, Date1) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + serPath1.Trim()+ "','" + TextBox3.Text + "','" + DropDownList1.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + ddts1+ "') ";
                     SqlConnection con11 = new SqlConnection(cng);
                     SqlCommand cmd11 = new SqlCommand(sql1, con11);
                    
                     try
                     {

                         con11.Open();
                         int x = cmd11.ExecuteNonQuery();
                         Label14.Text = "Record Inserted!!!";

                         int sccc = 0;
                         sccc = Convert.ToInt32(Session["AdmAdvertiseCount"].ToString());
                         sccc++;

                         Session["AdmAdvertiseCount"] = sccc.ToString();

                     }
                     catch (Exception ee1)
                     {
                         Label14.Text = ee1.Message;

                     }
                     finally
                     {
                         con11.Close();
                     }
                     

                 }
                 catch (Exception ee)
                 {
                     Label14.Text = ee.Message;
                 }
             }
            
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        FormView1.PageIndex = GridView1.SelectedIndex;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        Panel2.Visible = false;

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = true;

    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
