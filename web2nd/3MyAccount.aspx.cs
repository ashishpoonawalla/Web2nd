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

public partial class web2nd_3MyAccount : System.Web.UI.Page
{
    static string pcset = "1";
    string st1, st3 = "", st4 = "", st5 = "", str1 = "A", costr = "";
    int a = 0;

    void loadShowAtSearch()
    {
        string sql1 = "select * from Login where EMail='" + Session["UserMail"].ToString() + "' ";
        SqlConnection con1 = new SqlConnection(ConfigurationManager.AppSettings["conn1"].ToString());
        SqlCommand cmd1 = new SqlCommand(sql1, con1);
        SqlDataReader dr;
        try
        {
            con1.Open();
            dr = cmd1.ExecuteReader();

            if (dr.Read())
            {
                DropDownList18.SelectedIndex = (Convert.ToInt16 (dr[16].ToString()) );               
            }
            else
            {
                Label25.Text = "Errororo";
            }
        }
        catch (Exception ee)
        {
            Label25.Text = ee.Message;
        }
        finally
        {
            con1.Close();
        }
    }


    
    void loadPrivacy()
    {       
        
        string sql1 = "select * from UserPrivacy where SMail='" + Session["UserMail"].ToString() + "' ";
        SqlConnection con1 = new SqlConnection(ConfigurationManager.AppSettings["conn1"].ToString());
        SqlCommand cmd1 = new SqlCommand(sql1, con1);
        SqlDataReader dr;
        try
        {
            con1.Open();
            dr = cmd1.ExecuteReader();

            if (dr.Read())
            {
                DropDownList1.SelectedIndex = (Convert.ToInt32(dr[2]) - 1);

                DropDownList2.SelectedIndex = (Convert.ToInt32(dr[3]) - 1);

                DropDownList3.SelectedIndex = (Convert.ToInt32(dr[4]) - 1);

                DropDownList4.SelectedIndex = (Convert.ToInt32(dr[5]) - 1);

                DropDownList5.SelectedIndex = (Convert.ToInt32(dr[6]) - 1);

                DropDownList6.SelectedIndex = (Convert.ToInt32(dr[7]) - 1);

                DropDownList7.SelectedIndex = (Convert.ToInt32(dr[8]) - 1);

                DropDownList8.SelectedIndex = (Convert.ToInt32(dr[9]) - 1);

                DropDownList9.SelectedIndex = (Convert.ToInt32(dr[10]) - 1);

                DropDownList10.SelectedIndex = (Convert.ToInt32(dr[11]) - 1);

                DropDownList11.SelectedIndex = (Convert.ToInt32(dr[12]) - 1);

                DropDownList12.SelectedIndex = (Convert.ToInt32(dr[13]) - 1);

                DropDownList13.SelectedIndex = (Convert.ToInt32(dr[14]) - 1);

                DropDownList14.SelectedIndex = (Convert.ToInt32(dr[15]) - 1);

                DropDownList15.SelectedIndex = (Convert.ToInt32(dr[16]) - 1);

                DropDownList16.SelectedIndex = (Convert.ToInt32(dr[17]) - 1);

                DropDownList17.SelectedIndex = (Convert.ToInt32(dr[18]) - 1);


            }
            else
            {
                Label25.Text = "Errororo";
            }
          
        }


        catch (Exception ee)
        {
            Label25.Text = ee.Message;
        }
        finally
        {
            con1.Close();
        }



    }


    protected void Page_Load(object sender, EventArgs e)
    {
        

        if (IsPostBack == false)
        {
          
            Panel2.Visible = true;
            Panel3.Visible = false;
            loadPrivacy();
            loadShowAtSearch();
        }
    }


    protected void Button1_Click1(object sender, EventArgs e)
    {
        //Response.Redirect("3MyAccount.aspx");
     
        Panel2.Visible = false;
        Panel3.Visible = true;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
     
        //Response.Redirect("3Privacy.aspx");
      
        Panel2.Visible = true;
        Panel3.Visible = false;
        loadPrivacy();

    }
   
   
    protected void LinkButton7_Click(object sender, EventArgs e)
    {
        //Response.Redirect("3Privacy.aspx");
      
        Panel2.Visible = true;
        Panel3.Visible = false;
    }
    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        //Response.Redirect("3ProfileInfo.aspx");

        Panel2.Visible = false;
        Panel3.Visible = false;
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void DropDownList11_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label28.Text = DropDownList11.SelectedValue.ToString();
    }

  
    void PrivacySet()
    {        
        DataHandle dh = new DataHandle();
        Label28.Text = dh.SetData1(pcset);
    }

    protected void DropDownList1_SelectedIndexChanged2(object sender, EventArgs e)
    {
        pcset = "UPDATE UserPrivacy SET P1=" + DropDownList1.SelectedValue.ToString() + " Where SMail='" + Session["UserMail"].ToString() + "' ";
        PrivacySet();    

    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        pcset = "UPDATE UserPrivacy SET P2=" + DropDownList2.SelectedValue.ToString() + " Where SMail='" + Session["UserMail"].ToString() + "' ";
        PrivacySet(); 
    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        pcset = "UPDATE UserPrivacy SET P3=" + DropDownList3.SelectedValue.ToString() + " Where SMail='" + Session["UserMail"].ToString() + "' ";
        PrivacySet(); 
    }
    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {
        pcset = "UPDATE UserPrivacy SET P4=" + DropDownList4.SelectedValue.ToString() + " Where SMail='" + Session["UserMail"].ToString() + "' ";
        PrivacySet(); 
    }
    protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
    {
        pcset = "UPDATE UserPrivacy SET P5=" + DropDownList5.SelectedValue.ToString() + " Where SMail='" + Session["UserMail"].ToString() + "' ";
        PrivacySet();   
    }
    protected void DropDownList6_SelectedIndexChanged(object sender, EventArgs e)
    {
        pcset = "UPDATE UserPrivacy SET P6=" + DropDownList6.SelectedValue.ToString() + " Where SMail='" + Session["UserMail"].ToString() + "' ";
        PrivacySet();  
    }
    protected void DropDownList7_SelectedIndexChanged(object sender, EventArgs e)
    {
        pcset = "UPDATE UserPrivacy SET P7=" + DropDownList7.SelectedValue.ToString() + " Where SMail='" + Session["UserMail"].ToString() + "' ";
        PrivacySet(); 
    }
    protected void DropDownList8_SelectedIndexChanged(object sender, EventArgs e)
    {
        pcset = "UPDATE UserPrivacy SET P8=" + DropDownList8.SelectedValue.ToString() + " Where SMail='" + Session["UserMail"].ToString() + "' ";
        PrivacySet();  
    }
    protected void DropDownList9_SelectedIndexChanged(object sender, EventArgs e)
    {
        pcset = "UPDATE UserPrivacy SET P9=" + DropDownList9.SelectedValue.ToString() + " Where SMail='" + Session["UserMail"].ToString() + "' ";
        PrivacySet(); 
    }
    protected void DropDownList10_SelectedIndexChanged(object sender, EventArgs e)
    {
        pcset = "UPDATE UserPrivacy SET P10=" + DropDownList10.SelectedValue.ToString() + " Where SMail='" + Session["UserMail"].ToString() + "' ";
        PrivacySet();    
    }
    protected void DropDownList11_SelectedIndexChanged1(object sender, EventArgs e)
    {
        pcset = "UPDATE UserPrivacy SET P11=" + DropDownList11.SelectedValue.ToString() + " Where SMail='" + Session["UserMail"].ToString() + "' ";
        PrivacySet(); 
    }
    protected void DropDownList12_SelectedIndexChanged(object sender, EventArgs e)
    {
        pcset = "UPDATE UserPrivacy SET P12=" + DropDownList12.SelectedValue.ToString() + " Where SMail='" + Session["UserMail"].ToString() + "' ";
        PrivacySet(); 
    }
    protected void DropDownList13_SelectedIndexChanged(object sender, EventArgs e)
    {
        pcset = "UPDATE UserPrivacy SET P13=" + DropDownList13.SelectedValue.ToString() + " Where SMail='" + Session["UserMail"].ToString() + "' ";
        PrivacySet(); 
    }
    protected void DropDownList14_SelectedIndexChanged(object sender, EventArgs e)
    {
        pcset = "UPDATE UserPrivacy SET P14=" + DropDownList14.SelectedValue.ToString() + " Where SMail='" + Session["UserMail"].ToString() + "' ";
        PrivacySet(); 
    }
    protected void DropDownList15_SelectedIndexChanged(object sender, EventArgs e)
    {
        pcset = "UPDATE UserPrivacy SET P15=" + DropDownList15.SelectedValue.ToString() + " Where SMail='" + Session["UserMail"].ToString() + "' ";
        PrivacySet(); 
    }
    protected void DropDownList16_SelectedIndexChanged(object sender, EventArgs e)
    {
        pcset = "UPDATE UserPrivacy SET P16=" + DropDownList16.SelectedValue.ToString() + " Where SMail='" + Session["UserMail"].ToString() + "' ";
        PrivacySet();    
    }
    protected void DropDownList17_SelectedIndexChanged(object sender, EventArgs e)
    {
        pcset = "UPDATE UserPrivacy SET P17=" + DropDownList17.SelectedValue.ToString() + " Where SMail='" + Session["UserMail"].ToString() + "' ";
        PrivacySet(); 
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        if (TextBox2.Text.Trim() != TextBox3.Text.Trim())
        {
            Label3.Text = "Password not match..!";
        }
        else if (TextBox2.Text.Trim().Length < 8 || TextBox2.Text.Trim().Length > 20)
        {
            Label3.Text = "Password lengh must be 8-15";
        }
        else
        {
            ddpp();
        }
        
    }

    void ddpp()
    {
       
        string sql1 = "select * from Login where Email='" + Session["UserMail"].ToString() + "' ";
        SqlConnection con1 = new SqlConnection(ConfigurationManager.AppSettings["conn1"]);
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

                if (s1s.Trim() == TextBox1.Text.Trim())
                {
                    st1 = TextBox2.Text.Trim();
                    ppp111();

                    DataHandle dh = new DataHandle();
                    string s11 = dh.SetData1("UPDATE Login SET Password='" + st4 + "' Where EMail='" + Session["UserMail"].ToString() + "' ");
                    if (s11.Trim() == "1")
                    {
                        Label3.Text = "Password changed..";
                    }
                    else
                    {
                        Label3.Text = "no changed..";
                    }
                }
                else
                {
                    Label3.Text = "Invalid Password...!";

                }

            }
            else
            {
                Label3.Text = "Invalid User...!";
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

    void ppp111()
    {


        st3 = ""; st4 = ""; st5 = "";
        foreach (char c in st1)
        {
            a = Convert.ToInt32(c);
            a = a + 102;
            st3 = st3 + a.ToString();
        }

        //        textBox2.Text = st3;
        str1 = "A";
        loadquery1();


        if (str1 == "A")
            str1 = "B";
        else if (str1 == "B")
            str1 = "C";
        else if (str1 == "C")
            str1 = "D";
        else if (str1 == "D")
            str1 = "A";

        savequery1();


        int x = 0, u = 0;
        foreach (char c1 in st3)
        {
            x++;
            costr = c1.ToString();
            ddd1();

            if (str1 == "A" || str1 == "C")
            {
                if (x % 2 == 0)
                {
                    costr = costr.Substring(0, 3);
                }
            }
            else
            {
                if (x % 2 != 0)
                {
                    costr = costr.Substring(0, 3);
                }


            }
            st4 = st4 + costr;
        }


        if (str1 == "A")
            st4 = st4 + "d";
        else if (str1 == "B")
            st4 = st4 + "f";
        else if (str1 == "C")
            st4 = st4 + "m";
        else if (str1 == "D")
            st4 = st4 + "e";
        //Label4.Text = st4;
    }

    void loadquery1()
    {
       
       string sql1 = "select * from tmp1 where id='1'";
        SqlConnection con1 = new SqlConnection(ConfigurationManager.AppSettings["conn1"]);
        SqlCommand cmd1 = new SqlCommand(sql1, con1);
        SqlDataReader dr;
        try
        {
            con1.Open();
            dr = cmd1.ExecuteReader();

            if (dr.Read())
            {
                str1 = dr[1].ToString();
            }
        }
        catch (Exception ee)
        {
            Label4.Text = ee.Message;
        }
        finally
        {
            con1.Close();
        }
    }

    void savequery1()
    {
       
        string sql1 = "update tmp1 set value='" + str1 + "' where id='1'";
        SqlConnection con1 = new SqlConnection(ConfigurationManager.AppSettings["conn1"]);
        SqlCommand cmd1 = new SqlCommand(sql1, con1);

        try
        {
            con1.Open();
            int xs = cmd1.ExecuteNonQuery();

        }
        catch (Exception ee)
        {
            Label4.Text = ee.Message;
        }
        finally
        {
            con1.Close();
        }
    }

    void ddd1()
    {
        if (str1 == "A")
        {
            if (costr == "0") costr = "gr2F";
            if (costr == "1") costr = "D5cS";
            if (costr == "2") costr = "NaRe";
            if (costr == "3") costr = "Xt3z";
            if (costr == "4") costr = "mo8h";
            if (costr == "5") costr = "gTa3";
            if (costr == "6") costr = "K3e6";
            if (costr == "7") costr = "at3h";
            if (costr == "8") costr = "26sd";
            if (costr == "9") costr = "yoil";

        }
        else if (str1 == "B")
        {
            if (costr == "0") costr = "kRt7";
            if (costr == "1") costr = "8j4v";
            if (costr == "2") costr = "xtrh";
            if (costr == "3") costr = "m5gx";
            if (costr == "4") costr = "jlgd";
            if (costr == "5") costr = "i54l";
            if (costr == "6") costr = "iols";
            if (costr == "7") costr = "ao1f";
            if (costr == "8") costr = "mcjs";
            if (costr == "9") costr = "8s39";

        }
        else if (str1 == "C")
        {
            if (costr == "0") costr = "8k3s";
            if (costr == "1") costr = "lSdk";
            if (costr == "2") costr = "ncje";
            if (costr == "3") costr = "39d4";
            if (costr == "4") costr = "2kd4";
            if (costr == "5") costr = "39yg";
            if (costr == "6") costr = "n2s3";
            if (costr == "7") costr = "nfjd";
            if (costr == "8") costr = "p9iw";
            if (costr == "9") costr = "krid";

        }
        else if (str1 == "D")
        {
            if (costr == "0") costr = "zshw";
            if (costr == "1") costr = "fhr3";
            if (costr == "2") costr = "2jn3";
            if (costr == "3") costr = "7dj4";
            if (costr == "4") costr = "mj3d";
            if (costr == "5") costr = "jif9";
            if (costr == "6") costr = "mdkw";
            if (costr == "7") costr = "jri2";
            if (costr == "8") costr = "f3s3";
            if (costr == "9") costr = "f43j";

        }


    }



    protected void LinkButton11_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        Panel4.Visible = false;
    }
    protected void LinkButton12_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel4.Visible = true;
    }
    protected void DropDownList19_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList19.SelectedValue.ToString() != "Select a question")
        {
            TextBox4.Text = DropDownList19.SelectedValue.ToString();
        }
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        if (TextBox4.Text.Trim() != "" && TextBox5.Text.Trim() != "")
        {
            DataHandle dh = new DataHandle();
            string s11 = dh.SetData1("UPDATE Login1 SET SequrityQes='" + TextBox4.Text + "', SequrityAns='" + TextBox5.Text + "' Where EMail='" + Session["UserMail"].ToString() + "' ");
            if (s11.Trim() == "1")
            {
                Label6.Text = "Save changes..";
            }
            else
            {
                Label6.Text = "no changed..";
            }
        }
        else
        {
            Label6.Text = "Give correct information..!";
        }
    }
    protected void DropDownList18_SelectedIndexChanged(object sender, EventArgs e)
    {
        pcset = "UPDATE Login SET ShowAtSearch=" + DropDownList18.SelectedValue.ToString() + " Where EMail='" + Session["UserMail"].ToString() + "' ";
        PrivacySet(); 
    }
}
