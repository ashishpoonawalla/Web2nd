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
using System.Drawing;

public partial class web2nd_1Photo : System.Web.UI.Page
{
    static int ccn ,ccnn=0;
    static string A_ID = "", A_PicPath = "", A_PicPath1 = "", A_PicPath2 = "", A_Caption1 = "", A_Path = "", fnm = "", fnm1 = "", cng = "", sql1 = "", sml = "", sid = "", schance = "", Dssf = ".", Dssf1=".", serverDirectory = "", serPath = "", ser_Path1 = "", imgPhoto1 = "", imgPhoto2 = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        //Session["A_Name"] = TextBox1.Text;
        //Session["A_Location"] = TextBox2.Text;
        //Session["A_Description"] = TextBox3.Text;
        Label7.Text = Session["UserPrivacy"].ToString();
       
        if (IsPostBack == false)
        {

            sml = Session["UserMail"].ToString();
            Session["SessionID"] = Session.SessionID.ToString();
           
            schance = Session["Chance1"].ToString();
            sid = Session.SessionID.ToString() + schance ;

            ccn = Convert.ToInt32(Session["ccn1"].ToString());
            schance = Session["Chance1"].ToString();
            Label2.Text = Session["A_Name"].ToString();
           
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/web2nd/1Photo.aspx");
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
       
    }
    protected void Button8_Click(object sender, EventArgs e)
    {

    }
    void saveTmpAlbum()
    {
        cng = ConfigurationManager.AppSettings["conn1"];
        sql1 = "INSERT INTO TmpAlbum (index1, PicPath, PicPath1, PicPath2, SEMail, SessionID, Chance1) values('" + ccn.ToString() + "','" + fnm + "','" + fnm1 + "','" + A_PicPath2 + "','" + sml + "','" + sid + "','" + schance + "')";
        SqlConnection con1 = new SqlConnection(cng);
        SqlCommand cmd1 = new SqlCommand(sql1, con1);
      
        try
        {
            int dd=0;
            con1.Open();
            dd = cmd1.ExecuteNonQuery();
            ccn++;
            Session["ccn1"] = ccn.ToString();
            Label5.Text = "You Select - " + (ccn-1).ToString() + " Files ";
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

    void fssss()
    {
        A_PicPath2 = fnm;
        System.Drawing.Image fullSizeImg = System.Drawing.Image.FromFile(fnm);
        int ix = fullSizeImg.Width;
        int iy = fullSizeImg.Height;
        
//      ListBox1.Items.Add(ix.ToString() + " --- " + iy.ToString());
        
       ImageResize r1 = new ImageResize();

        imgPhoto1 = serPath + ccn.ToString() + "1.jpg";

        if (ix >= iy)
            r1.dowork1(fnm, imgPhoto1, "2");
        else
            r1.dowork1(fnm, imgPhoto1, "3");

        imgPhoto2 = serPath + ccn.ToString() + "2.jpg";

        if (ix >= iy)
            r1.dowork1(fnm, imgPhoto2, "21");
        else
            r1.dowork1(fnm, imgPhoto2, "31");

       

        fnm = imgPhoto1;
        fnm1 = imgPhoto2;
        //-----------------------------------------------



    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        HttpContext context = HttpContext.Current;
        
        if (context != null)
        {
            sml = Session["UserMail"].ToString();
            Session["SessionID"] = Session.SessionID.ToString();
           
            schance = Session["Chance1"].ToString();
            sid = Session.SessionID.ToString() + schance ;
            serverDirectory = context.Server.MapPath(@"~/web2nd/tmp1/");

            serPath = serverDirectory.ToString() + sid  ;

       
        

            if (FileUpload1.HasFile && ccn <=20 )
            {
                fnm = serPath + ccn.ToString() + "0.jpg";
                FileUpload1.SaveAs(fnm);                fssss();                
                saveTmpAlbum();          Label1.Text += "1";

                if (Session["A_CoverPhoto"].ToString().Trim() == "")
                {
                    Session["A_CoverPhoto"] = fnm;
                }
            }



            if (FileUpload2.HasFile && ccn <=20 )
            {
                fnm = serPath + ccn.ToString() + "0.jpg";
                FileUpload2.SaveAs(fnm); fssss();             
                saveTmpAlbum();          Label1.Text += "2";
                
            }



            if (FileUpload3.HasFile && ccn <=20 )
            {
                fnm = serPath + ccn.ToString() + "0.jpg";
                FileUpload3.SaveAs(fnm); fssss();           
                saveTmpAlbum();          Label1.Text += "3";
                
            }



            if (FileUpload4.HasFile && ccn <=20 )
            {
                fnm = serPath + ccn.ToString() + "0.jpg";
                FileUpload4.SaveAs(fnm); fssss();           
                saveTmpAlbum();          Label1.Text += "4";
                
            }


            if (FileUpload5.HasFile && ccn <=20 )
            {
                fnm = serPath + ccn.ToString() + "0.jpg";
                FileUpload5.SaveAs(fnm); fssss();           
                saveTmpAlbum();          Label1.Text += "5";
                
            }

            

            if (FileUpload6.HasFile && ccn <=20 )
            {
                fnm = serPath + ccn.ToString() + "0.jpg";
                FileUpload6.SaveAs(fnm); fssss();         
                saveTmpAlbum();          Label1.Text += "6";
                
            }
            
         
        }
    }


     protected void Button6_Click(object sender, EventArgs e)
    {

    }
    protected void Button8_Click1(object sender, EventArgs e)
    {
        
    }
    protected void Button9_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = true;
        DataList1.DataBind();
    }
    protected void Button8_Click2(object sender, EventArgs e)
    {
        
    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        FormView2.PageIndex = DataList1.SelectedIndex;
    }
    protected void Button8_Click3(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        Panel2.Visible = false;
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        string ss22="";
        ss22 = FormView2.SelectedValue.ToString();
        Label6.Text = ss22;
        int ss33 = Convert.ToInt32(ss22);

      
        cng = ConfigurationManager.AppSettings["conn1"];
        sql1 = "select * from TmpAlbum where id=" + ss33;
        SqlConnection con1 = new SqlConnection(cng);
        SqlCommand cmd1 = new SqlCommand(sql1, con1);
        SqlDataReader dr;
        try
        {
            con1.Open();
            dr = cmd1.ExecuteReader();

            if (dr.Read())
            {
                Session["A_CoverPhoto"] = dr[4].ToString();
            }
           // Label6.Text = Session["A_CoverPhoto"].ToString();
        }
            
        catch (Exception ee)
        {
            Label7.Text = ee.Message;
        }
        finally
        {
            con1.Close();
        }






    }
    protected void FormView2_PageIndexChanging(object sender, FormViewPageEventArgs e)
    {
       
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
        Dssf1= y.ToString() + " " + Dssf;
        Dssf = y.ToString() + " " + Dssf + " " + DateTime.Now.Year.ToString();
    }

    protected void Button10_Click(object sender, EventArgs e)
    {
        date1();   
        HttpContext context = HttpContext.Current;
        serverDirectory = context.Server.MapPath(@"~/web2nd/PhotoAlbum/");
        ccnn = 0;
        Label7.Text = "0.Complete";
        sml = Session["UserMail"].ToString();
        Session["SessionID"] = Session.SessionID.ToString();   
        schance = Session["Chance1"].ToString();
        sid = Session.SessionID.ToString() + schance;
        
        //Session["A_Name"] = TextBox1.Text;
        //Session["A_Location"] = TextBox2.Text;
        //Session["A_Description"] = TextBox3.Text;
        //Session["A_Privacy"] = DropDownList1.Text;

        ser_Path1 = @"~/web2nd/PhotoAlbum/";
        serPath = serverDirectory.ToString();
        savePhotoAlbum1();
        getPhotoAlbum1ID();
        
        if (A_ID != "")
        {
            savePhotoAlbum2();
            DeleteTmpAlbum();

            SaveToMessageTable();
            Response.Redirect("~/web2nd/1Photo.aspx");
        }       
    }

    void SaveToMessageTable()
    {
        date1(); DateTime dddt1 = DateTime.Now;
        string ddts1 = (dddt1.Year + "/" + dddt1.Month + "/" + dddt1.Day + " " + dddt1.ToLongTimeString());

        date1();
        string ssee = @"~\web2nd\Image\ToolPic1.bmp";
        //                                                                                                                  S_Email,                          S_Photo,                 Type,           Date1,         Time1,                                     datetime1,      pic1,                      Privacy1
        //sql1 = "INSERT INTO MessageTable(S_Email,S_Photo,Type) values('" + Session["UserMail"].ToString() + "','" + Session["UserPhoto"].ToString() + "','" + ssee + "') ";
        sql1 = "INSERT INTO MessageTable(S_Email,S_Photo,Message1,Type, Date1,Time1,datetime1, pic1, Privacy1, ExtraAID ) values('" + Session["UserMail"].ToString() + "','" + Session["UserPhoto"].ToString() + "','" + Session["A_Name"].ToString() + "','" + ssee + "','" + Dssf1 + "','" + DateTime.Now.ToShortTimeString() + "','" + ddts1 + "','" + ser_Path1.Trim() + "'," + Session["UserPrivacy"].ToString() + ",'" + A_ID + "') ";
        SqlConnection con11 = new SqlConnection(cng);
        SqlCommand cmd11 = new SqlCommand(sql1, con11);
        try
        {
            Label7.Text += "111..";
            con11.Open();
            int x = cmd11.ExecuteNonQuery();
            Label7.Text = "Done..";
            // TextBox1.Text = TextBox2.Text = TextBox3.Text = TextBox4.Text = TextBox5.Text = "";
            //DataList1.DataBind();
            //Response.Redirect("~/web2nd/web2ndmain.aspx");
        }
        catch (Exception ee)
        {
            Label7.Text += ee.Message;
            Label7.Text += "......." + sql1;
        }
        finally
        {
            con11.Close();
        }


    }

    void savePhotoAlbum1()///// Save Main Album  -------------------------
    {
             
        string mimg1="", mimg2="";

        ////------------// copy cover Page //-------------////
        mimg1 = Session["A_CoverPhoto"].ToString();        
        mimg2 = serverDirectory + sid + sml + ".jpg";
        System.IO.File.Copy(mimg1, mimg2);

        ser_Path1 = ser_Path1 + sid + sml + ".jpg";

        cng = ConfigurationManager.AppSettings["conn1"];            //                                                                                   SEMail,       SessionID,     Title,                                   MainImage,        Location1,                                  Description1,                                 Privace1,                                  DateTime1,               Date1,         TotPhoto
        DateTime dddt1 = DateTime.Now;
        string ddts1 = (dddt1.Year + "/" + dddt1.Month + "/" + dddt1.Day + " " + dddt1.ToLongTimeString());
        int ddssdd = ccn - 1;//                                                                                                                   SEMail,        SName,                                    SessionID1,    Title,                                  MainImage,                  Privace1,                                   DateTime1,      Date1,         TotPhoto
        sql1 = "INSERT INTO PhotoAlbum1 (SEMail, SName, SessionID1, Title, MainImage, Privace1, DateTime1, Date1, TotPhoto, Popular1) values('" + sml + "', '" + Session["UserName"].ToString() + "', '" + sid + "', '" + Session["A_Name"].ToString() + "', '" + ser_Path1.Trim() + "'," +Session["UserPrivacy"].ToString() + ", '" + ddts1 + "', '" + Dssf + "','" + ddssdd.ToString() + "',0)";
        SqlConnection con1 = new SqlConnection(cng);
        SqlCommand cmd1 = new SqlCommand(sql1, con1);

        try
        {
            int dd = 0;
            con1.Open();
            dd = cmd1.ExecuteNonQuery();
            Label7.Text = "1. Complete";
        }
        catch (Exception ee)
        {
            Label7.Text = "1." + ee.Message;
        }
        finally
        {
            con1.Close();
        }
    }

    void getPhotoAlbum1ID()///// Get Main Album ID -----------
    {

        cng = ConfigurationManager.AppSettings["conn1"];            //                                                                                   SEMail,       SessionID,     Title,                                   MainImage,        Location1,                                  Description1,                                 Privace1,                                  DateTime1,               Date1,         TotPhoto
        sql1 = "Select * From PhotoAlbum1 Where SEMail='" + sml + "' AND SessionID1='" + sid +"' ";
        SqlConnection con1 = new SqlConnection(cng);
        SqlCommand cmd1 = new SqlCommand(sql1, con1);
        SqlDataReader ddr;
        try
        {
          
            con1.Open();
            ddr = cmd1.ExecuteReader();

            if (ddr.Read())
            {
                A_ID = ddr[0].ToString();
                Label7.Text = "2.Complete";
            }
            else
            {
                A_ID = "";
            }
        }
        catch (Exception ee)
        {
            Label7.Text = "2." + ee.Message;
        }
        finally
        {
            con1.Close();
        }
    }



    void savePhotoAlbum2()///// Select From TMP Album -----------
    {

        cng = ConfigurationManager.AppSettings["conn1"];            //                                                                                   SEMail,       SessionID,     Title,                                   MainImage,        Location1,                                  Description1,                                 Privace1,                                  DateTime1,               Date1,         TotPhoto
        sql1 = "Select * From TmpAlbum Where SEMail='" + sml + "' AND SessionID='" + sid + "' ";
        SqlConnection con1 = new SqlConnection(cng);
        SqlCommand cmd1 = new SqlCommand(sql1, con1);
        SqlDataReader ddr;
        try
        {

            con1.Open();
            ddr = cmd1.ExecuteReader();
            A_PicPath = ""; A_Caption1 = "";

            while (ddr.Read())
            {
                //A_ID = ddr[0].ToString();     A_ID="",A_PicPath="", A_Caption1=""
                A_PicPath = ddr[4].ToString();
                A_Caption1 = ddr[5].ToString();
                A_PicPath1 = ddr[7].ToString();
                
                // save picture to file

                HttpContext context = HttpContext.Current;
                serverDirectory = context.Server.MapPath(@"~/web2nd/PhotoAlbum/");
                string mimg1 = "", mimg2 = "";
                //// copy Photos Page ////
                mimg1 = A_PicPath.ToString();
                A_PicPath = serverDirectory + A_ID + ccnn + ".jpg";
                System.IO.File.Copy(mimg1, A_PicPath);
                A_PicPath = @"~/web2nd/PhotoAlbum/" + A_ID + ccnn + ".jpg";
                //System.IO.File.Delete(mimg1);


                mimg1 = A_PicPath1.ToString();
                A_PicPath1 = serverDirectory + A_ID + ccnn + "1.jpg";
                System.IO.File.Copy(mimg1, A_PicPath1);
                A_PicPath1 = @"~/web2nd/PhotoAlbum/" + A_ID + ccnn + "1.jpg";
                //System.IO.File.Delete(mimg1);

                
                Label7.Text = "3.Complete";
                savePhotoAlbum2Image();

                ccnn++;
                
            }
        }
        catch (Exception ee)
        {
            Label7.Text = "3." + ee.Message;
        }
        finally
        {
            con1.Close();
        }

    }



    void savePhotoAlbum2Image()///// Save To  Album2 -----------
    {
        cng = ConfigurationManager.AppSettings["conn1"];
        sql1 = "INSERT INTO PhotoAlbum2(AID, ImageCaption, ImagePath, ImagePath1) values('" + A_ID + "', '" + A_Caption1 + "', '" + A_PicPath + "', '" + A_PicPath1 + "')";
        SqlConnection con1 = new SqlConnection(cng);
        SqlCommand cmd1 = new SqlCommand(sql1, con1);

        try
        {
            int dd = 0;
            con1.Open();
            dd = cmd1.ExecuteNonQuery();
            Label7.Text = "4.Complete";
        }
        catch (Exception ee)
        {
            Label7.Text = "4." + ee.Message;
        }
        finally
        {
            con1.Close();
        }

    }




    void DeleteTmpAlbum() ///// Delete Temporary Album -----------
    {

        cng = ConfigurationManager.AppSettings["conn1"];            //                                                                                   SEMail,       SessionID,     Title,                                   MainImage,        Location1,                                  Description1,                                 Privace1,                                  DateTime1,               Date1,         TotPhoto
        sql1 = "Select * From TmpAlbum Where SEMail='" + sml + "' AND SessionID='" + sid + "' ";
        SqlConnection con1 = new SqlConnection(cng);
        SqlCommand cmd1 = new SqlCommand(sql1, con1);
        SqlDataReader ddr;
        try
        {
            string mimg1 = "", mimg2 = "";
            con1.Open();
            ddr = cmd1.ExecuteReader();
            A_PicPath = ""; A_Caption1 = "";

            while (ddr.Read())
            {
                //A_ID = ddr[0].ToString();     A_ID="",A_PicPath="", A_Caption1=""
                A_PicPath = ddr[4].ToString();
                A_PicPath1 = ddr[7].ToString();
                A_PicPath2 = ddr[8].ToString();

                try
                {
                    System.IO.File.Delete(A_PicPath.ToString());
                    System.IO.File.Delete(A_PicPath1.ToString());
                    System.IO.File.Delete(A_PicPath2.ToString());
                }
                catch(Exception eee3)
                {

                }
                string ss3d="";
                int df=0;

                ss3d = A_PicPath.ToString();
                df = A_PicPath.LastIndexOf(".jpg");
              
                if (df >= 0)
                {
                    ss3d = ss3d.Substring(0, df) + "0.jpg";
                }
                //Label1.Text = ss3d.ToString();
                System.IO.File.Delete(A_PicPath1.ToString());

            }
        }
        catch (Exception ee)
        {
            Label7.Text = "5." + ee.Message;
        }
        finally
        {
            con1.Close();
        }

        deleteall();
    }




    void deleteall()
    {

        cng = ConfigurationManager.AppSettings["conn1"];            //                                                                                   SEMail,       SessionID,     Title,                                   MainImage,        Location1,                                  Description1,                                 Privace1,                                  DateTime1,               Date1,         TotPhoto
        sql1 = "Delete From TmpAlbum Where SEMail='" + sml + "' AND SessionID='" + sid + "' ";
        SqlConnection con1 = new SqlConnection(cng);
        SqlCommand cmd1 = new SqlCommand(sql1, con1);

        try
        {
            int ss232 = 0;
            con1.Open();
            ss232 = cmd1.ExecuteNonQuery();

        }
        catch (Exception ee)
        {
            Label7.Text = "6." + ee.Message;
        }
        finally
        {
            con1.Close();
        }
    }


    protected void Button11_Click(object sender, EventArgs e)
    {
        HttpContext context = HttpContext.Current;
        serverDirectory = context.Server.MapPath(@"~/web2nd/PhotoAlbum/");
        ccnn = 0;

        sml = Session["UserMail"].ToString();
        Session["SessionID"] = Session.SessionID.ToString();
        sid = Session.SessionID.ToString() + schance;

        DeleteTmpAlbum();
        Response.Redirect("~/web2nd/1Photo.aspx");
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {

    }
}
