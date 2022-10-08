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

public partial class web2nd : System.Web.UI.MasterPage
{
    static string UserM = "", cng="", sql1, UserP="";   
    protected void Page_Load(object sender, EventArgs e)
    {

        //   Online Database set date for 3 minuts    

        DataHandle dh = new DataHandle();
        DateTime dddt1 = DateTime.Now.AddMinutes(3);
        string ddts1 = (dddt1.Year + "/" + dddt1.Month + "/" + dddt1.Day + " " + dddt1.ToLongTimeString());
        string hh1 = dh.SetData1("UPDATE Login SET LoginTime1='" + ddts1 + "' Where EMail='" + Session["UserMail"].ToString() + "' ");


                           
        Label1.Text = Session["FMail"].ToString() + " ---- " + Session["UserMail"].ToString();

        if (IsPostBack == false)
        {
            Page.MaintainScrollPositionOnPostBack = true;
            Image1.ImageUrl = "~/web2nd/ProfileImage/" + Session["FMail"].ToString() + "1.jpg";
            loadPrivacyData();
            loadData();
            //changeAdd();
            LinkButton1.Text = "Send " + Session["FFNM"] + " a message";
        }

    
        string ss ="";
       // ss = Session["LP1"].ToString();
        ss = "0";

        if (ss == "1")
        {
            Panel1.Visible = false;
        }
        else
        {
            Panel1.Visible = true;
        }
    
    }

    

    //void changeAdd()
    //{
    //    if (Session["advA"] == null)
    //        Session["advA"] = "A1";

    //    if (Session["cntA"] == null)
    //        Session["cntA"] = "1";

    //    if (Session["advB"] == null)
    //        Session["advB"] = "B1";



    //    if (Session["advB"] == "B1")
    //        Session["advB"] = "B2";
    //    else if (Session["advB"] == "B2")
    //        Session["advB"] = "B3";
    //    else
    //        Session["advB"] = "B1";

    //    if (Session["cntA"] == "1")
    //    {
    //        Session["cntA"] = "2";

    //    }
    //    else
    //    {
    //        Session["cntA"] = "1";

    //        if (Session["advA"] == "A1")
    //            Session["advA"] = "A2";
    //        else
    //            Session["advA"] = "A1";
    //    }
    //}


    void loadData()
    {

        sql1 = "select * from Login where EMail='" + Session["FMail"].ToString() + "' ";
        SqlConnection con1 = new SqlConnection(ConfigurationManager.AppSettings["conn1"].ToString());
        SqlCommand cmd1 = new SqlCommand(sql1, con1);
        SqlDataReader dr;
        try
        {
            con1.Open();
            dr = cmd1.ExecuteReader();

            if (dr.Read())
            {
                Label11.Text = dr[6].ToString();
                Session["FFNM"] = dr[2].ToString();             
            }
        }


        catch (Exception ee)
        {
            Label5.Text = ee.Message;
        }
        finally
        {
            con1.Close();
        }
    }

    void loadPrivacyData()
    {

        sql1 = "select * from UserPrivacy where SMail='" + Session["FMail"].ToString() + "' ";
        SqlConnection con1 = new SqlConnection(ConfigurationManager.AppSettings["conn1"].ToString());
        SqlCommand cmd1 = new SqlCommand(sql1, con1);
        SqlDataReader dr;
        try
        {
            con1.Open();
            dr = cmd1.ExecuteReader();

            if (dr.Read())
            {
                Label4.Text = dr[2].ToString();
                Label4.Text += dr[3].ToString();
                Label4.Text += dr[4].ToString();
                Label4.Text += dr[5].ToString();
                Label4.Text += dr[6].ToString();
                Label4.Text += dr[7].ToString();
                Label4.Text += dr[8].ToString();
                Label4.Text += dr[9].ToString();
                Label4.Text += dr[10].ToString();
                Label4.Text += dr[11].ToString();
                Label4.Text += dr[12].ToString();
                Label4.Text += dr[13].ToString();
                Label4.Text += dr[14].ToString();
                Label4.Text += dr[15].ToString();
                Label4.Text += dr[16].ToString();
                Label4.Text += dr[17].ToString();
                Label4.Text += dr[18].ToString();
                Session["FPrvc"] = Label4.Text;
            }
        }


        catch (Exception ee)
        {
            Label5.Text = ee.Message;
        }
        finally
        {
            con1.Close();
        }
    }

  
    protected void Button2_Click(object sender, EventArgs e)
    {
      
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
       
    }
    protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
    {
        
    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {

        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/web2nd/Lavel2.aspx");
    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
        Response.Redirect("~/web2nd/L2Info.aspx");
    }
    protected void Button3_Click1(object sender, EventArgs e)
    {
        Response.Redirect("~/web2nd/L2Photo.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/web2nd/L2Links.aspx");
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/web2nd/L2AllFriends.aspx");
    }
}
