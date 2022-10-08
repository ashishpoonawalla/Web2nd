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

public partial class web2nd_Share12345 : System.Web.UI.Page
{
    static string cng = ConfigurationManager.AppSettings["conn1"];
    static string sql1, bttn = "", txt = "", Dssf = "", sff2 = "", prcy = "0", pic11 = "", pic21 = "", pic31 = "";
    static int ffgg1 = 0;
    static string A_PicPath2 = "", fnm = "", fnm1 = "", sml = "", sid = "", serverDirectory = "", serPath = "", ser_Path1 = "", ser_Path2 = "", imgPhoto1 = "", imgPhoto2 = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {
            int f;
            DropDownList3.Items.Clear();
            for (f = 1; f <= 31; f++)
            {
                DropDownList3.Items.Add(f.ToString());
            }

            DropDownList4.Items.Clear();
            for (f = 1; f <= 12; f++)
            {
                DropDownList4.Items.Add(f.ToString() + ":00 AM");
                DropDownList4.Items.Add(f.ToString() + ":30 AM");
            }

            for (f = 1; f <= 12; f++)
            {
                DropDownList4.Items.Add(f.ToString() + ":00 PM");
                DropDownList4.Items.Add(f.ToString() + ":30 PM");
            }



            if (Session["Share1"] == null)
                Session["Share1"] = "Photo";


            if (Session["Share1"].ToString() == "Event")
            {
                Panel5.Visible = true;

            }
            else if (Session["Share1"].ToString() == "Video")
            {
                Panel1.Visible = true;
            }
            else if (Session["Share1"].ToString() == "Link")
            {
                Panel3.Visible = true;
            }
            else
            {
                Panel2.Visible = true;
            }



        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        getPrivacy();
        string sss111 = "0";
        string ssee = "", urlll = " ";

        string dd = "<B>" + Session["UserName"].ToString() + "</B>: " + TextBox1.Text;
        date1(); DateTime dddt1 = DateTime.Now;
        string ddts1 = (dddt1.Year + "/" + dddt1.Month + "/" + dddt1.Day + " " + dddt1.ToLongTimeString());


        if (Panel1.Visible == true && TextBox2.Text.Trim() != "") ////-------------- Video
        {
            ssee = @"~\web2nd\Image\ToolCam1.bmp";
            pic11 =  @"~\images\ToolCamBig.JPG";
            pic21 = pic31 = @"~\images\aa.bmp";
            urlll = TextBox2.Text.Trim(); sss111 = "1";

        }
        else if (Panel3.Visible == true && TextBox3.Text.Trim() != "") ////-------------- Link
        {
            ssee = @"~\web2nd\Image\ToolLink.bmp";
            pic11 = pic21 = pic31 = @"~\images\aa.bmp";

            urlll = TextBox3.Text.Trim(); sss111 = "1";

        }
        else if (Panel5.Visible == true) ////-------------- Event
        {
            ssee = @"~\web2nd\Image\ToolCalender.bmp";
            pic11 = pic21 = pic31 = @"~\images\aa.bmp";

            dd += " Title: <b>" + TextBox4.Text + "</b>  ";
            dd += "<BR> Location: <b>" + TextBox5.Text + "</b>  ";
            dd += "<BR> Date : <b>" + DropDownList2.Text + " - " + DropDownList3.Text + "</b>   Time : <b> " + DropDownList4.Text + "</b>  ";
            sss111 = "1";
        }
        else if (Panel2.Visible == true)
        {
            HttpContext context = HttpContext.Current;
            serverDirectory = context.Server.MapPath(@"~/web2nd/PhotoAlbum/");

            sid = Session.SessionID.ToString();
            Session["A_Privacy"] = prcy;

            ser_Path1 = @"~/web2nd/PhotoAlbum/" + sid;
            serPath = serverDirectory.ToString() + sid;
            //Label6.Text = "..." + FileUpload1.FileName.ToString();

            if (FileUpload1.HasFile)
            {

                try
                {
                    int ccxx = 1;
                    fnm = serPath + ccxx.ToString() + ".jpg";
                    fnm1 = serPath + ccxx.ToString();
                    ser_Path2 = ser_Path1 + ccxx.ToString();
                    while (System.IO.File.Exists(fnm))
                    {
                        ccxx++;
                        fnm = serPath + ccxx.ToString() + ".jpg";
                        fnm1 = serPath + ccxx.ToString();
                        ser_Path2 = ser_Path1 + ccxx.ToString();
                    }

                    FileUpload1.SaveAs(fnm); fssss();
                    ssee = @"~\web2nd\Image\ToolPic1.bmp";
                    pic11 = ser_Path2;
                    pic21 = pic31 = @"~\images\aa.bmp";
                    sss111 = "1";
                }
                catch (Exception ee)
                {
                    //Label5.Text = ee.Message;
                }



            }
        }

        if (sss111 == "1")
        {
            sql1 = "INSERT INTO MessageTable(S_Email,S_Photo,Message1,Type,URL1,Date1,Time1,datetime1, pic1, Privacy1 ) values('" + Session["UserMail"].ToString() + "','" + Session["UserPhoto"].ToString() + "','" + dd + "','" + ssee + "','" + urlll + "','" + Dssf + "','" + DateTime.Now.ToShortTimeString() + "','" + ddts1 + "','" + pic11 + "'," + prcy  + ") ";
            SqlConnection con11 = new SqlConnection(cng);
            SqlCommand cmd11 = new SqlCommand(sql1, con11);
            try
            {
                con11.Open();
                int x = cmd11.ExecuteNonQuery();
                TextBox1.Text = TextBox2.Text = TextBox3.Text = TextBox4.Text = TextBox5.Text = "";
                //DataList1.DataBind();
                Response.Redirect("~/web2nd/web2ndmain.aspx");
            }
            catch (Exception ee)
            {
                // Label5.Text = ee.Message;
            }
            finally
            {
                con11.Close();
            }

        }
    }




    void fssss()
    {
        A_PicPath2 = fnm;
        System.Drawing.Image fullSizeImg = System.Drawing.Image.FromFile(fnm);
        int ix = fullSizeImg.Width;
        int iy = fullSizeImg.Height;

        ImageResize r1 = new ImageResize();
        imgPhoto1 = fnm1 + "1.jpg";
        ser_Path2 = ser_Path2 + "1.jpg";
        if (ix >= iy)
            r1.dowork1(fnm, imgPhoto1, "22");
        else
            r1.dowork1(fnm, imgPhoto1, "32");
        // Label5.Text = "3";
        fnm1 = imgPhoto1;
        //////////////////// -----------------------------------------------

    }


    void getPrivacy()
    {
        string ss1 = Session["UserPrivacy"].ToString().ToUpper().Trim();
        if (ss1 == "ONLY ME")
            prcy = "1";
        else if (ss1 == "ONLY FRIENDS")
            prcy = "2";
        else if (ss1 == "FRIENDS OF FRIENDS")
            prcy = "3";
        else if (ss1 == "FRIENDS OF FRIENDS & NETWORK")
            prcy = "4";
        else
            prcy = "5";



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
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["UserPrivacy"] = DropDownList1.Text;
        getPrivacy();
    }

    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        Panel2.Visible = true;
    }
    protected void Button2_Click1(object sender, EventArgs e)
    {

    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        //Panel4.Visible = true;
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {

    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {

    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {

    }
    protected void ImageButton19_Click(object sender, ImageClickEventArgs e)
    {

    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        string ss = "";
        ss = Session["RefreshList"].ToString();
        ss = ss + ".";
        Session["RefreshList"] = ss;

    }
}
