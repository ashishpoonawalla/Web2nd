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
        Label2.Text = Session["UserMail"].ToString();
        cng = ConfigurationManager.AppSettings["conn1"];

        if (IsPostBack == false)
        {
            MultiView1.ActiveViewIndex = 0;
            BasicInfoLoad();
        }
    }

     
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click2(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
        BasicInfoLoad();
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

    protected void Button5_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
        LikeInterestLoad();
    }

    void LikeInterestLoad()
    {
        cng = ConfigurationManager.AppSettings["conn1"];
        sql1 = "select * from Login1 where Email='" + Session["UserMail"].ToString() + "' ";
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


    protected void Button6_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;
        EduWorkLoad();
    }

    void EduWorkLoad()
    {
        cng = ConfigurationManager.AppSettings["conn1"];
        sql1 = "select * from Login1 where Email='" + Session["UserMail"].ToString() + "' ";
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

    protected void Button7_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 3;


        //Session["UserName"] = dr[6].ToString();
        //Session["UserFirstName"] = dr[2].ToString();
        //Session["UserLastName"] = dr[3].ToString();
        //Session["UserGender"] = dr[5].ToString();
        //Session["UserPhoto"] = dr[7].ToString();
        //Session["UserCity"] = dr[8].ToString();
        //Session["UserCountry"] = dr[9].ToString();


       // Label31.Text = Session["UserName"].ToString();
       // TextBox1.Text = Session["UserFirstName"].ToString();
       // TextBox2.Text = Session["UserLastName"].ToString();

        if (Session["UserGender"].ToString() == "Male")
            DropDownList1.SelectedIndex = 0;
        else
            DropDownList1.SelectedIndex = 1;

       
        TextBox5.Text = Session["UserCity"].ToString();
        TextBox6.Text = Session["UserCountry"].ToString();

        ContactInfoLoad();
       
    }

    void ContactInfoLoad()
    {
        cng = ConfigurationManager.AppSettings["conn1"];
        sql1 = "select * from Login1 where Email='" + Session["UserMail"].ToString() + "' ";
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


    protected void Button9_Click(object sender, EventArgs e)
    {
        pcset = "UPDATE Login1 SET EDU_HighSchool='" + TextBox17.Text + "', EDU_College='" + TextBox25.Text + "', EDU_Employer='" + TextBox26.Text + "', EDU_Group='" + TextBox27.Text + "'   Where EMail='" + Session["UserMail"].ToString() + "' ";
        DataUpdate12();
    }
    protected void Button10_Click(object sender, EventArgs e)
    {
        pcset = "UPDATE Login1 SET Like_Activity='" + TextBox10.Text + "', Like_Interest='" + TextBox11.Text + "', F_Books='" + TextBox12.Text + "', F_Musics='" + TextBox13.Text + "', F_Movies='" + TextBox14.Text + "', F_TVShows='" + TextBox15.Text + "'   Where EMail='" + Session["UserMail"].ToString() + "' ";
        DataUpdate12();
    }
    protected void Button11_Click(object sender, EventArgs e)
    {
        pcset = "UPDATE Login1 SET Aboutme1='" + TextBox9.Text;

        pcset += "', Relationship1='" + DropDownList7.SelectedValue.ToString();

        pcset += "', Family1='" + TextBox24.Text;

        string t1 = "";
        if (CheckBox2.Checked == true)
            t1 = "1";
        else
            t1 = "0";

        pcset += "', Interest_Women='" + t1;


        
        if (CheckBox3.Checked == true)
            t1 = "1";
        else
            t1 = "0";

        pcset += "', Interest_Men='" + t1;




        if (CheckBox4.Checked == true)
            t1 = "1";
        else
            t1 = "0";

        pcset += "', Look_Friendship='" + t1;


        if (CheckBox5.Checked == true)
            t1 = "1";
        else
            t1 = "0";

        pcset += "', Look_Dating='" + t1;


        if (CheckBox6.Checked == true)
            t1 = "1";
        else
            t1 = "0";

        pcset += "', Look_A_Relationship1='" + t1;


        if (CheckBox7.Checked == true)
            t1 = "1";
        else
            t1 = "0";

        pcset += "', Look_Network='" + t1;



        pcset += "', PoliticalView='" + TextBox8.Text;

        pcset += "', ReligiousView='" + TextBox23.Text;

        pcset += "', FavouritQuotation='" + TextBox16.Text + "'   Where EMail='" + Session["UserMail"].ToString() + "' ";
        DataUpdate12();
    }
    protected void Button12_Click(object sender, EventArgs e)
    {
        //TextBox1.Text = TextBox1.Text.Trim();
        //TextBox2.Text = TextBox2.Text.Trim();
        TextBox5.Text = TextBox5.Text.Trim();
        TextBox6.Text = TextBox6.Text.Trim();

        int year11 = -1;

        try
        {
            year11 = Convert.ToInt32(TextBox28.Text);
        }
        catch (Exception eee)
        {
            year11 = -1;
        }


        if (year11 < 1900 && year11 > Convert.ToInt32(DateTime.Now.Year.ToString()))
        {

            Label47.Text = "Year is not valid";
        }
        else
        {
            if (Page.IsValid)
            {

                // Label31.Text = TextBox1.Text + " " + TextBox2.Text;
                pcset = "UPDATE Login SET Gender='" + DropDownList1.Text.Trim() + "', City='" + TextBox5.Text + "', Country='" + TextBox6.Text + "'   Where EMail='" + Session["UserMail"].ToString() + "' ";
                DataUpdate12();

                if (Label2.Text.Trim() == "1")
                {
                    //Session["UserName"] = Label31.Text;
                    //Session["UserFirstName"] = TextBox1.Text;
                    //Session["UserLastName"] = TextBox2.Text;
                    Session["UserGender"] = DropDownList1.Text;
                    Session["UserCity"] = TextBox5.Text;
                    Session["UserCountry"] = TextBox6.Text;
                }


                pcset = "UPDATE Login1 SET Address1='" + TextBox3.Text;

                pcset += "', HomeTown='" + TextBox7.Text;

                pcset += "', Zip='" + TextBox20.Text;

                pcset += "', Mobile_CC='" + TextBox12.Text;

                pcset += "', Mobile='" + TextBox21.Text;

                pcset += "', LandLine_CC='" + TextBox22.Text;

                pcset += "', LandLine='" + TextBox4.Text;

                pcset += "', WebSite='" + TextBox29.Text;

                pcset += "', MyMails='" + TextBox19.Text;

                
                    pcset += "', Day1='" + DropDownList2.SelectedValue.ToString();

                    pcset += "', Month1='" + DropDownList3.SelectedValue.ToString();

                    pcset += "', DOBMonthName='" + DropDownList3.SelectedItem.ToString();

                    pcset += "', Year1='" + year11.ToString();

                    pcset += "', DOB='" + DropDownList2.SelectedValue.ToString() + "_" + DropDownList3.SelectedValue.ToString() + "_" + year11.ToString();
            

                string t1 = "";
                if (CheckBox1.Checked == true)
                    t1 = "1";
                else
                    t1 = "0";

                pcset += "', ShowSex='" + t1;


                pcset += "', ShowDOB='" + DropDownList5.SelectedValue.ToString() ;

                pcset += "'   Where EMail='" + Session["UserMail"].ToString() + "' ";
                DataUpdate12();
            }
        }
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
}
