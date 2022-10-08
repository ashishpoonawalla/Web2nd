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
    static string cng, sql1, Dssf="";

    string st1, st3 = "", st4 = "",st5 = "",  str1 = "A", costr = "";
    //string st21, st22 = "", st23 = "", st24 = "", str12 = "A", costr2 = "";
    int a = 0;
    //int a2 = 0, b2 = 0, i2 = 0, ln2, dde1 = 0, dde2 = 0;
        

    protected void Button3_Click(object sender, EventArgs e)
    {        
        Session["ListMenu1"] = "";
        
        if (TextBox2.Text.Trim() == "" || TextBox3.Text.Trim() == "")
        {
            Label6.Text = "Give Username And Password!!";
            
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

                    if (TextBox2.Text.ToLower() == "admin")
                    {
                        Session["S1A2"] = "321";
                        Response.Redirect("AdminLogin.aspx");


                    }
                    else
                    {


                        string s1, s2, s3, s4, s1s="";
                        s1 = dr[1].ToString().Trim();
                        s2 = dr[2].ToString();
                        s3 = dr[3].ToString();
                        s4 = dr[4].ToString();

                        security1 cs1 = new security1();
                        s1s = cs1.ddd22(s1);

                        if (TextBox2.Text == s4 && TextBox3.Text == s1s)
                        {


                            if (CheckBox1.Checked == true)
                            {

                                HttpCookie cookie = new HttpCookie("web2ndprofile");
                                cookie["UserN"] = TextBox2.Text;
                                cookie["UserP"] = TextBox3.Text;
                                Response.Cookies.Add(cookie);

                                cookie.Expires = DateTime.Now.AddDays(10);
                            }
                            else
                            {

                                HttpCookie cookie = new HttpCookie("web2ndprofile");
                                cookie["UserN"] = TextBox2.Text;
                                cookie["UserP"] = "";
                                Response.Cookies.Add(cookie);

                                cookie.Expires = DateTime.Now.AddDays(1);
                            }

                            Session["UserPrivacy"] = "Everyone";
                            Session["UserName"] = dr[6].ToString();
                            Session["UserFirstName"] = dr[2].ToString();
                            Session["UserLastName"] = dr[3].ToString();
                            Session["UserGender"] = dr[5].ToString();
                            Session["UserPhoto"] = dr[7].ToString();
                            Session["UserCity"] = dr[8].ToString();
                            Session["UserCountry"] = dr[9].ToString();
                            Session["TMenu"] = "1";
                            Session["UserMail"] = TextBox2.Text;
                            Session["Date1"] = DateTime.Now.AddDays(-7);
                            Session["UserType"] = dr[11].ToString();
                            Session["TitleW2"] = "Web2nd";
                            Session["UserNet"] = dr[19].ToString();

                            Session["NetName"] = "Web2nd";
                          
                            //   Online Database set date for 3 minuts    

                            DataHandle dh = new DataHandle();
                            DateTime dddt1 = DateTime.Now.AddMinutes(2);
                            string ddts1 = (dddt1.Year + "/" + dddt1.Month + "/" + dddt1.Day + " " + dddt1.ToLongTimeString());
                            string hh1 = dh.SetData1("UPDATE Login SET LoginTime1='" + ddts1 + "' Where EMail='" + Session["UserMail"].ToString() + "' ");


                            
                            //if (dr[11].ToString().Trim() == "Person")
                            //{
                                Response.Redirect("~/web2nd/web2ndmain.aspx");
                                
                            //}

                            //else
                            //{
                            //    Session["PageName"] = dr[12].ToString();
                            //    Response.Redirect("pages/welcome.aspx");
                            //    //Response.Redirect("pages/web2ndPage.aspx");
                            //}
                        }
                        else
                        {
                            Label6.Text = "Invalid Username or Password!!";
                        }
                    }


                }
                else
                {
                    Label6.Text = "Invalid Username Or Password!!";
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

    protected void TextBox9_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        
        Session["ListMenu1"] = "";
        TextBox6.Text = TextBox6.Text.Trim();
        Label4.Text = "";
        // ---------------------- Chech For valid name -----------------
        string ss1 = "1";
        cng = ConfigurationManager.AppSettings["conn1"];
        sql1 = "select * from Login where Email='" + TextBox6.Text.Trim() + "' ";
        SqlConnection con1 = new SqlConnection(cng);
        SqlCommand cmd1 = new SqlCommand(sql1, con1);
        SqlDataReader dr;
        try
        {
            con1.Open();
            dr = cmd1.ExecuteReader();

            if (dr.Read())
            {
                ss1 = "1";
                Label4.Text = "User Already Exist, Try Another E-Mail ..";
            }
            else
            {
                ss1 = "0";
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






        //---------------------------------------- Add to User List ---
        if (ss1 == "0")
        {
            if (TextBox7.Text.Length < 8 || TextBox7.Text.Length > 20)
            {
                Label4.Text = "Password length 8 to 20 ";
            }
            else
            {

                st1 = TextBox7.Text;
                ppp111();


                string serverDirectory = "";
                HttpContext context = HttpContext.Current;
                serverDirectory = context.Server.MapPath(@"~/web2nd/ProfileImage/");

                System.IO.File.Copy(serverDirectory + "Person1.Jpg", serverDirectory + TextBox6.Text + ".jpg");
                System.IO.File.Copy(serverDirectory + "Person1.Jpg", serverDirectory + TextBox6.Text + "1.jpg");


                string im1 = @"~\web2nd\ProfileImage\" + TextBox6.Text + ".jpg";

                string dd = TextBox5.Text + " " + TextBox4.Text;

                DateTime dddt1 = DateTime.Now;
                string ddts1 = (dddt1.Year + "/" + dddt1.Month + "/" + dddt1.Day + " " + dddt1.ToLongTimeString());

                DateTime dddt2 = DateTime.Now.AddMinutes(3);
                string ddts2 = (dddt2.Year + "/" + dddt2.Month + "/" + dddt2.Day + " " + dddt2.ToLongTimeString());
                   
                sql1 = "INSERT INTO Login(Email,Password,First_nm,Last_nm,Gender,FullName,Photo, DateTime1, Type1, LoginTime1, NetworkInfo) values('" + TextBox6.Text + "','" + st4 + "','" + TextBox5.Text + "','" + TextBox4.Text + "','" + DropDownList2.Text + "','" + dd + "','" + im1 + "','" + ddts1 + "','Person','"+ddts2+"','#Web2nd#') ";
                SqlConnection con11 = new SqlConnection(cng);
                SqlCommand cmd11 = new SqlCommand(sql1, con11);
                try
                {


                    con11.Open();
                    int x = cmd11.ExecuteNonQuery();
                    Label4.Text = TextBox5.Text + " your account has been created. Please login for connect to your friends";

                    Session["UserMail"] = TextBox6.Text.Trim();

                    Session["UserPhoto"] = @"~\web2nd\ProfileImage\" + Session["UserMail"].ToString() + ".jpg";

                    Session["Date1"] = DateTime.Now.AddDays(-7);
                    Session["UserPrivacy"] = "Everyone";
                    SaveFList();
                    Session["UserType"] = "Person";
                    Session["Network"] = "web2nd";

                    DataHandle dh = new DataHandle();
                    string hh1 = dh.SetData1("INSERT INTO UserPrivacy(SMail,P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16,P17) values('" + Session["UserMail"].ToString() + "',2,1,2,3,2,2,3,2,3,2,2,2,2,3,2,2,3) ");
                                   
                    hh1 = dh.SetData1("INSERT INTO Login1(EMail) values('" + Session["UserMail"].ToString() + "') ");


                    DateTime dddt12 = DateTime.Now.AddMinutes(3);
                    string ddts12 = (dddt12.Year + "/" + dddt12.Month + "/" + dddt12.Day + " " + dddt12.ToLongTimeString());

                    TextBox4.Text = ""; TextBox5.Text = ""; TextBox6.Text = "";
                    DropDownList2.Text = "Selcet";

                    //Response.Redirect("web2nd/web2ndmain.aspx");
                }
                catch (Exception ee)
                {
                    Label12.Text = ee.Message;

                }
                finally
                {
                    con11.Close();
                }
            }
            
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
        cng = ConfigurationManager.AppSettings["conn1"];
        sql1 = "select * from tmp1 where id='1'";
        SqlConnection con1 = new SqlConnection(cng);
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
        cng = ConfigurationManager.AppSettings["conn1"];
        sql1 = "update tmp1 set value='"+str1+"' where id='1'";
        SqlConnection con1 = new SqlConnection(cng);
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

    void SaveFList()
    {
        date1();

        string s1 = Session["UserMail"].ToString();
        string s2 = TextBox5.Text + " " + TextBox4.Text;

        DateTime dddt1 = DateTime.Now;
        string ddts1 = (dddt1.Year + "/" + dddt1.Month + "/" + dddt1.Day + " " + dddt1.ToLongTimeString());

        sql1 = "INSERT INTO FList(S_Email,R_EMail,R_FullName, Date1, Time1, Datetime1, Type1) values('" + s1 + "','" + s1 + "','" + s2 + "','" + Dssf + "','" + DateTime.Now.ToShortTimeString() + "','" + ddts1 + "','0') ";
        SqlConnection con11 = new SqlConnection(cng);
        SqlCommand cmd11 = new SqlCommand(sql1, con11);
        try
        {
            con11.Open();
            int x = cmd11.ExecuteNonQuery();

        }
        catch (Exception ee)
        {
            Label3.Text = "4..";
        }
        finally
        {
            con11.Close();
        }

    }




    void date1()
    {
        Dssf = ".";
        int x = DateTime.Now.Month;
        int y = DateTime.Now.Day;

        if (x == 1) Dssf = "Jan";
        if (x == 2) Dssf = "Feb";
        if (x == 3) Dssf = "Mar";
        if (x == 4) Dssf = "Apr";
        if (x == 5) Dssf = "May";
        if (x == 6) Dssf = "Jun";
        if (x == 7) Dssf = "Jul";
        if (x == 8) Dssf = "Aug";
        if (x == 9) Dssf = "Sep";
        if (x == 10) Dssf = "Oct";
        if (x == 11) Dssf = "Nov";
        if (x == 12) Dssf = "Dec";


        Dssf = y.ToString() + " " + Dssf;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {

    }
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/EDU/YourNetwork.aspx");
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {

    }
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["NetName"] = "Web2nd";

        Label2.Text =  Session["NetName"].ToString();


        Label10.Text = "Web2nd - "+DateTime.Now.Year.ToString()+" (Beta)";
        Session["advA"] = "A1";
        Session["advB"] = "B1";

        if (Session["Sec1"] != null)
        {
            Label2.Text = "Web2nd";
        }
        else
        {
            Session["Sec1"] = " ";
        }
        Label6.Text = Session["Sec1"].ToString();

        if (IsPostBack == false)
        {
            HttpCookie cookie = Request.Cookies["web2ndprofile"];

            string un1 = "", ps1 = "";
            if (cookie != null)
            {
                un1 = cookie["UserN"];
                ps1 = cookie["UserP"];

                TextBox2.Text = un1.ToString();


                if (ps1 != "")
                {
                    CheckBox1.Checked = true;
                    TextBox3.Text = ps1.ToString();
                }

            }
        }
    }
  
  
   
    protected void LinkButton1_Click1(object sender, EventArgs e)
    {
        if (CheckBox1.Checked == true)
            CheckBox1.Checked = false;
        else
            CheckBox1.Checked = true;
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {

        Response.Redirect("~/EDU/YourNetwork.aspx");
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("PasswordRecovery.aspx");
    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
        //if (Image1.Visible == true)
        //{
            Image1.Visible = false;
            Panel1.Visible = true;

        //}
        //else
        //{
        //    Image1.Visible = true;
        //    Panel1.Visible = false;
        //}
    }
}