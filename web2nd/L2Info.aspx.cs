using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.IO;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using AspNet.StarterKits.Classifieds.BusinessLogicLayer;

public partial class web2nd_Profile : System.Web.UI.Page
{
    static string  cng, sql1, pcset="";


    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Text = Session["FMail"].ToString();
        cng = ConfigurationManager.AppSettings["conn1"];

        if (IsPostBack == false)
        {
          
            BasicInfoLoad();
            LikeInterestLoad();
            EduWorkLoad();
            ContactInfoLoad();



            loadPrvc();
        }
    }

    void loadPrvc()
    {
        int yf1, yf2;
        yf2 = Convert.ToInt32(Session["FLavel"].ToString());
        string sdsd = Session["FPrvc"].ToString();
        Boolean bbbb = true;
        // ------- 2 Family & Relationship  ------------------------------------------------
        yf1 = Convert.ToInt32(sdsd.Substring(2, 1)) + 1;   

        if (yf1 >= yf2)
        {
            bbbb = true;
        }
        else
        {
            bbbb = false;
        }
        DropDownList7.Visible = Label24.Visible = Label7.Visible = TextBox24.Visible = bbbb;


        // ------- 3 Bio & Favourit Quotation ------------------------------------------------
        yf1 = Convert.ToInt32(sdsd.Substring(3, 1)) + 1;
     

        if (yf1 >= yf2)
        {
            bbbb = true;
        }
        else
        {
            bbbb = false;
        }
        Label13.Visible = TextBox16.Visible = Panel1.Visible = Panel2.Visible = bbbb;


        // ------- 4 Interested in & Looking for ------------------------------------------------
        yf1 = Convert.ToInt32(sdsd.Substring(4, 1)) + 1;     

        if (yf1 >= yf2)
        {
            bbbb = true;
        }
        else
        {
            bbbb = false;
        }
        Label8.Visible = CheckBox2.Visible = CheckBox3.Visible = Label10.Visible = CheckBox4.Visible = CheckBox5.Visible = CheckBox6.Visible = CheckBox7.Visible = bbbb;

        // ------- 5 Relegious & Political View ------------------------------------------------
        yf1 = Convert.ToInt32(sdsd.Substring(5, 1)) + 1;      

        if (yf1 >= yf2)
        {
            bbbb = true;
        }
        else
        {
            bbbb = false;
        }
        Label11.Visible = TextBox8.Visible = Label16.Visible = TextBox23.Visible = bbbb;


        // ------- 7 WebSite ------------------------------------------------
        yf1 = Convert.ToInt32(sdsd.Substring(7, 1)) + 1;      

        if (yf1 >= yf2)
        {
            bbbb = true;
        }
        else
        {
            bbbb = false;
        }
        Label46.Visible = TextBox29.Visible = bbbb;


        // ------- 8 Birthday ------------------------------------------------
        yf1 = Convert.ToInt32(sdsd.Substring(8, 1)) + 1;

        if (yf1 >= yf2)
        {
            bbbb = true;
        }
        else
        {
            bbbb = false;
        }
        Label25.Visible = DropDownList2.Visible = DropDownList3.Visible = TextBox28.Visible = bbbb;

        // ------- 13 Mobile Phone ------------------------------------------------
        yf1 = Convert.ToInt32(sdsd.Substring(13, 1)) + 1;

        if (yf1 >= yf2)
        {
            bbbb = true;
        }
        else
        {
            bbbb = false;
        }
        Label37.Visible = TextBox18.Visible = TextBox21.Visible = bbbb;

        // ------- 14 Other Phone ------------------------------------------------
        yf1 = Convert.ToInt32(sdsd.Substring(14, 1)) + 1;

        if (yf1 >= yf2)
        {
            bbbb = true;
        }
        else
        {
            bbbb = false;
        }
        Label26.Visible = TextBox22.Visible = TextBox4.Visible = bbbb;

        // ------- 15 Address ------------------------------------------------
        yf1 = Convert.ToInt32(sdsd.Substring(15, 1)) + 1;

        if (yf1 >= yf2)
        {
            bbbb = true;
        }
        else
        {
            bbbb = false;
        }
        TextBox1.Visible = TextBox3.Visible = Label5.Visible = TextBox5.Visible = bbbb;
        Label4.Visible = TextBox7.Visible = Label34.Visible = TextBox20.Visible = bbbb;


        // ------- 17 E_Mail ------------------------------------------------
        yf1 = Convert.ToInt32(sdsd.Substring(17, 1)) + 1;

        if (yf1 >= yf2)
        {
            bbbb = true;
        }
        else
        {
            bbbb = false;
        }
       Label6.Visible = TextBox19.Visible = bbbb;
        

    }
     
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }
  

    void BasicInfoLoad()
    {
        cng = ConfigurationManager.AppSettings["conn1"];
        sql1 = "select * from Login1 where Email='" + Label2.Text + "' ";
        SqlConnection con1 = new SqlConnection(cng);
        SqlCommand cmd1 = new SqlCommand(sql1, con1);
        SqlDataReader dr;
        try
        {
            con1.Open();
            dr = cmd1.ExecuteReader();

            if (dr.Read())
            {
                TextBox9.Text = dr[2].ToString();
                TextBox24.Text = dr[4].ToString();
                TextBox8.Text = dr[11].ToString();
                TextBox23.Text = dr[12].ToString();
                TextBox16.Text = dr[13].ToString();

                string ww1=""; int ww2 = 0;

                //-------------------------------------
                ww1 = dr[3].ToString();

                try
                {
                    ww2 = Convert.ToInt32(ww1);
                    if (ww2 < 0 && ww2 > 2) ww2 = 0;
                }
                catch (Exception er)
                {
                    ww2 = 0;
                }
                DropDownList7.SelectedIndex = ww2;



                //-------------------------------------
                ww1 = dr[5].ToString();
                
                try
                {
                    ww2 = Convert.ToInt32(ww1);
                    if (ww2 < 0 && ww2 > 1) ww2 = 0;
                }
                catch (Exception er)
                {
                    ww2 = 0;
                }
                if (ww2 == 0)
                    CheckBox2.Checked = false;
                else
                    CheckBox2.Checked = true;



                //-------------------------------------
                ww1 = dr[6].ToString();

                try
                {
                    ww2 = Convert.ToInt32(ww1);
                    if (ww2 < 0 && ww2 > 1) ww2 = 0;
                }
                catch (Exception er)
                {
                    ww2 = 0;
                }
                if (ww2 == 0)
                    CheckBox3.Checked = false;
                else
                    CheckBox3.Checked = true;



                //-------------------------------------
                ww1 = dr[7].ToString();

                try
                {
                    ww2 = Convert.ToInt32(ww1);
                    if (ww2 < 0 && ww2 > 1) ww2 = 0;
                }
                catch (Exception er)
                {
                    ww2 = 0;
                }
                if (ww2 == 0)
                    CheckBox4.Checked = false;
                else
                    CheckBox4.Checked = true;



                //-------------------------------------
                ww1 = dr[8].ToString();

                try
                {
                    ww2 = Convert.ToInt32(ww1);
                    if (ww2 < 0 && ww2 > 1) ww2 = 0;
                }
                catch (Exception er)
                {
                    ww2 = 0;
                }
                if (ww2 == 0)
                    CheckBox5.Checked = false;
                else
                    CheckBox5.Checked = true;






                //-------------------------------------
                ww1 = dr[9].ToString();

                try
                {
                    ww2 = Convert.ToInt32(ww1);
                    if (ww2 < 0 && ww2 > 1) ww2 = 0;
                }
                catch (Exception er)
                {
                    ww2 = 0;
                }
                if (ww2 == 0)
                    CheckBox6.Checked = false;
                else
                    CheckBox6.Checked = true;




                //-------------------------------------
                ww1 = dr[10].ToString();

                try
                {
                    ww2 = Convert.ToInt32(ww1);
                    if (ww2 < 0 && ww2 > 1) ww2 = 0;
                }
                catch (Exception er)
                {
                    ww2 = 0;
                }
                if (ww2 == 0)
                    CheckBox7.Checked = false;
                else
                    CheckBox7.Checked = true;



              






            }

        }
        catch (Exception ee)
        {
            Label2.Text = ee.Message;
        }
        finally
        {
            con1.Close();
        }

    }

 
    void LikeInterestLoad()
    {
        cng = ConfigurationManager.AppSettings["conn1"];
        sql1 = "select * from Login1 where Email='" + Label2.Text + "' ";
        SqlConnection con1 = new SqlConnection(cng);
        SqlCommand cmd1 = new SqlCommand(sql1, con1);
        SqlDataReader dr;
        try
        {
            con1.Open();
            dr = cmd1.ExecuteReader();

            if (dr.Read())
            {
                TextBox10.Text = dr[14].ToString();
                TextBox11.Text = dr[15].ToString();
                TextBox12.Text = dr[16].ToString();
                TextBox13.Text = dr[17].ToString();
                TextBox14.Text = dr[18].ToString();
                TextBox15.Text = dr[19].ToString();
               
            }

        }
        catch (Exception ee)
        {
            Label2.Text = ee.Message;
        }
        finally
        {
            con1.Close();
        }

    }
        

    void EduWorkLoad()
    {
        cng = ConfigurationManager.AppSettings["conn1"];
        sql1 = "select * from Login1 where Email='" + Label2.Text + "' ";
        SqlConnection con1 = new SqlConnection(cng);
        SqlCommand cmd1 = new SqlCommand(sql1, con1);
        SqlDataReader dr;
        try
        {
            con1.Open();
            dr = cmd1.ExecuteReader();

            if (dr.Read())
            {
                TextBox17.Text = dr[20].ToString();
                TextBox25.Text = dr[21].ToString();
                TextBox26.Text = dr[22].ToString();               
                TextBox27.Text = dr[23].ToString();
            }

        }
        catch (Exception ee)
        {
            Label2.Text = ee.Message;
        }
        finally
        {
            con1.Close();
        }

    }
       

    void ContactInfoLoad()
    {
        cng = ConfigurationManager.AppSettings["conn1"];
        sql1 = "select * from Login1 where Email='" + Label2.Text + "' ";
        SqlConnection con1 = new SqlConnection(cng);
        SqlCommand cmd1 = new SqlCommand(sql1, con1);
        SqlDataReader dr;
        try
        {
            con1.Open();
            dr = cmd1.ExecuteReader();

            if (dr.Read())
            {
                TextBox3.Text = dr[30].ToString();
                TextBox7.Text = dr[31].ToString();
                TextBox20.Text = dr[32].ToString();
                TextBox18.Text = dr[33].ToString();
                TextBox21.Text = dr[34].ToString();
                TextBox22.Text = dr[35].ToString();
                TextBox4.Text = dr[36].ToString();
                TextBox29.Text = dr[37].ToString();
                TextBox19.Text = dr[38].ToString();
              

                string ww1 = ""; int ww2 = 0;

                //-------------------------------------
                ww1 = dr[24].ToString();

                try
                {
                    ww2 = Convert.ToInt32(ww1);
                    if (ww2 < 0 && ww2 > 1) ww2 = 0;
                }
                catch (Exception er)
                {
                    ww2 = 0;
                }
                if (ww2 == 0)
                    CheckBox1.Checked = false;
                else
                    CheckBox1.Checked = true;


                //------------------------------------- Day
                ww1 = dr[25].ToString();

                try
                {
                    ww2 = Convert.ToInt32(ww1);
                    if (ww2 < 0 && ww2 > 31) ww2 = 0;
                }
                catch (Exception er)
                {
                    ww2 = 0;
                }
                DropDownList2.SelectedIndex = ww2;

                //-------------------------------------Month
                ww1 = dr[26].ToString();

                try
                {
                    ww2 = Convert.ToInt32(ww1);
                    if (ww2 < 0 && ww2 > 12) ww2 = 0;
                }
                catch (Exception er)
                {
                    ww2 = 0;
                }
                DropDownList3.SelectedIndex = ww2;

                //-------------------------------------Year
                TextBox28.Text = dr[27].ToString();

                //-------------------------------------Show DOB 
                ww1 = dr[29].ToString();

                try
                {
                    ww2 = Convert.ToInt32(ww1);
                    if (ww2 < 0 && ww2 > 2) ww2 = 0;
                }
                catch (Exception er)
                {
                    ww2 = 0;
                }
                DropDownList5.SelectedIndex = ww2;

    

            }

        }
        catch (Exception ee)
        {
            Label2.Text = ee.Message;
        }
        finally
        {
            con1.Close();
        }

    }

  
    void DataUpdate12()
    {
        DataHandle dh = new DataHandle();
        Label2.Text = dh.SetData1(pcset);

    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
}
