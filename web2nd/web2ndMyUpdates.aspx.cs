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

public partial class web2nd_wbb2ndmain : System.Web.UI.Page
{
    static string cng = ConfigurationManager.AppSettings["conn1"];
    static string sql1,RefList1=".", bttn = "", txt = "", Dssf = "", sff2 = "", prcy = "0",pic11= "", pic21 = "", pic31 = "";
    static int ffgg1=0;
    static string A_PicPath2 = "", fnm = "", fnm1 = "", sml = "", sid = "", serverDirectory = "", serPath = "", ser_Path1 = "", ser_Path2 = "", imgPhoto1 = "", imgPhoto2 = "";
 

    protected void Page_Load(object sender, EventArgs e)
    {
        Session["SessionID"] = Session.SessionID.ToString();
        this.Page.MaintainScrollPositionOnPostBack = true;

      

        if (IsPostBack == false)
        {
            //if (Session["Sqlcng"] == null)
            //{
            //    Session["Sqlcng"] = @"SELECT MessageTable.id, MessageTable.S_Email, MessageTable.S_Photo, MessageTable.Message1, MessageTable.Type, MessageTable.URL1, MessageTable.Date1, MessageTable.Time1, MessageTable.datetime1, MessageTable.pic1, MessageTable.Privacy1, FList.S_Email AS Expr1, FList.R_Email FROM MessageTable INNER JOIN FList ON MessageTable.S_Email = FList.R_Email WHERE (FList.S_Email = @S_Email) AND (MessageTable.datetime1 > @dtd) AND (MessageTable.Type <> '2') AND (MessageTable.Privacy1>1 OR MessageTable.S_Email=@S_Email ) ORDER BY MessageTable.datetime1 DESC";

            //}
            //else
            //{
            //    SqlDataSource3.SelectCommand = Session["Sqlcng"].ToString();
            //    SqlDataSource3.DataBind();
            //}
            ImageButton19.ImageUrl = Session["UserPhoto"].ToString();
            timer.Visible = false;
            getPrivacy();

           

        }
    
        loadListView();
            
    }

    void loadListView()
    {
        if (Session["ListMenu1"].ToString() == "" || Session["ListMenu1"] == null)
        {
            //DataList1.DataSource = SqlDataSource1;
           // DataList1.DataBind();
        }
        else
        {
            //DataList1.DataSource = SqlDataSource3;
          //  DataList1.DataBind();
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
      
        if (TextBox1.Text.Trim() != "" )
        {
            //string im1 = @"~\web2nd\ProfileImage\Person1.JPG";
            string dd = "<B>" + Session["UserName"].ToString() + "</B>: " + TextBox1.Text;

            date1(); DateTime dddt1 = DateTime.Now;
            string ddts1 = (dddt1.Year + "/" + dddt1.Month + "/" + dddt1.Day + " " + dddt1.ToLongTimeString());
            
            getPrivacy();  
            
            string ssee = "";
            if (ffgg1 == 0)
            {
                ssee = @"~\web2nd\Image\ToolSideNewsFeed1.bmp";
                pic11  = @"~\images\aa.bmp";
            }
          
            sql1 = "INSERT INTO MessageTable(S_Email,S_Photo,Message1,Type,URL1,Date1,Time1,datetime1, pic1, Privacy1) values('" + Session["UserMail"].ToString() + "','" + Session["UserPhoto"].ToString() + "','" + dd + "','" + ssee + "',' ','" + Dssf + "','" + DateTime.Now.ToShortTimeString() + "','" + ddts1 + "','" + pic11 + "'," + prcy + ") ";
            SqlConnection con11 = new SqlConnection(cng);
            SqlCommand cmd11 = new SqlCommand(sql1, con11);
            try
            {
                con11.Open();
                int x = cmd11.ExecuteNonQuery();
                TextBox1.Text = "";
                DataList3.DataBind();
                //Response.Redirect("~/web2nd/web2ndmain.aspx");
            }
            catch (Exception ee)
            {
                Label8.Text = ee.Message;
            }
            finally
            {
                con11.Close();
            }


        }

    }

    protected void DataList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label8.Text = DataList3.SelectedValue.ToString();
        //--------
        sff2 = Convert.ToString(DataList3.SelectedValue);
        Comment_Like();
    }  
 
    void Comment_Like()
    {
        Label5.Text = sff2;

        if (bttn == "Like")
        {
            txt = "I like This..";
            //string im1 = @"~\web2nd\ProfileImage\Person1.JPG";
            string dd = "<B>" + Session["UserName"].ToString() + "</B>: " + txt;
            date1();
            DateTime dddt1 = DateTime.Now;
            string ddts1 = (dddt1.Year + "/" + dddt1.Month + "/" + dddt1.Day + " " + dddt1.ToLongTimeString());

            sql1 = "INSERT INTO MessageReply(MID,R_Email,R_Photo,Message1,Date1,Time1,DateTime1) values(" + sff2 + ",'" + Session["UserMail"].ToString() + "','" + Session["UserPhoto"].ToString() + "','" + dd + "','" + Dssf + "','" + DateTime.Now.ToShortTimeString() + "','" + ddts1 + "') ";
            SqlConnection con11 = new SqlConnection(cng);
            SqlCommand cmd11 = new SqlCommand(sql1, con11);
            try
            {
                con11.Open();
                int x = cmd11.ExecuteNonQuery();
                Label8.Text = "Record Inserted!!!";
                // TextBox8.Text = "";              
                DataList3.DataBind();
                //Response.Redirect("~/web2nd/web2ndmain.aspx");
            }
            catch (Exception ee)
            {
                Label8.Text = ee.Message;

            }
            finally
            {
                con11.Close();
            }

        }
       
        if (bttn == "Delete --- Delete")
        {
            Label5.Text = ".Record DeletedDeleted!!!";
            sql1 = "Delete From MessageReply Where R_EMail='" + Session["UserMail"].ToString() + "' AND MID=" + sff2;
            SqlConnection con11 = new SqlConnection(cng);
            SqlCommand cmd11 = new SqlCommand(sql1, con11);
            try
            {
                con11.Open();
                int x = cmd11.ExecuteNonQuery();
                Label8.Text = "Record Deleted!!!";
                // TextBox8.Text = "";

                Label5.Text = "...Record DeletedDeleted!!!";
                DataList3.DataBind();
                //Response.Redirect("~/web2nd/web2ndmain.aspx");
            }
            catch (Exception ee)
            {
                Label8.Text = ee.Message;

            }
            finally
            {
                con11.Close();
            }
        }


        if (bttn == "Delete")
        {

            sql1 = "Delete From MessageTable Where S_EMail='" + Session["UserMail"].ToString() + "' AND id=" + sff2;
            SqlConnection con11 = new SqlConnection(cng);
            SqlCommand cmd11 = new SqlCommand(sql1, con11);
            try
            {
                con11.Open();
                int x = cmd11.ExecuteNonQuery();
                Label8.Text = "Record Deleted!!!";
                // TextBox8.Text = "";

                
                DataList3.DataBind();
                //Response.Redirect("~/web2nd/web2ndmain.aspx");
            }
            catch (Exception ee)
            {
                Label8.Text = ee.Message;

            }
            finally
            {
                con11.Close();
            }
        }

        if (bttn == "Album Click")
        {
            Label5.Text = ".Ok";
            sql1 = "Select * From MessageTable Where id=" + sff2;
            SqlConnection con11 = new SqlConnection(cng);
            SqlCommand cmd11 = new SqlCommand(sql1, con11);
            SqlDataReader reader;
            try
            {
                con11.Open();
                reader = cmd11.ExecuteReader();
                if (reader.Read())
                {
                    String AlbumID = reader[13].ToString();
                    String UMl = reader[1].ToString();
                    if (AlbumID != null && AlbumID.Trim() != "")
                    {
                        Session["PhotoEdit"] = "N";

                        if (UMl.Trim() == Session["UserMail"].ToString())
                        {
                            Session["PhotoEdit"] = "Y";
                        }

                        Session["SubAlbum"] = AlbumID.ToString();
                        Response.Redirect("1PhotoAlbum.aspx");
                    }
                }
                else
                {
                    Label5.Text = "..Ok";
                }

            }
            catch (Exception ee)
            {
                Label8.Text = ee.Message;
            }
            finally
            {
                con11.Close();
            }

        }
        if (bttn == "Photo Click")
        {
            Label5.Text = ".Ok";
            sql1 = "Select * From MessageTable Where id=" + sff2;
            SqlConnection con11 = new SqlConnection(cng);
            SqlCommand cmd11 = new SqlCommand(sql1, con11);
            SqlDataReader reader;
            try
            {
                con11.Open();
                reader = cmd11.ExecuteReader();
                if (reader.Read())
                {
                    String fmail1 = reader[1].ToString();
                    Session["FMail"] = fmail1;
                    //if (fmail1 != Session["UserMail"].ToString())
                    //{
                        Response.Redirect("~/web2nd/Lavel2.aspx");


                    //}
                }
                else
                {
                    Label5.Text = "..Ok";
                }
                
            }
            catch (Exception ee)
            {
                Label8.Text = ee.Message;
            }
            finally
            {
                con11.Close();
            }
        }

        
    }
  
  
    
    //protected void Button15_Click(object sender, EventArgs e)
    //{

    //    Session["ChMail"] = "a@m.com";
    //    string fullURL = "window.open('chat/Chat.aspx', '_blank', 'height=500,width=600,status=no,toolbar=no,menubar=no,location=no,scrollbars=no,resizable=no,titlebar=no' );";
    //    ScriptManager.RegisterStartupScript(this, typeof(string), "OPEN_WINDOW", fullURL, true);
    //    //Response.Redirect("chat/Chat.aspx?userid=a@m.com");

    //}
   
    //protected void Button16_Click(object sender, EventArgs e)
    //{
    //    Session["ChMail"] = "b@m.com";
    //    string fullURL = "window.open('chat/Chat.aspx', '_blank', 'height=500,width=650,status=no,toolbar=no,menubar=no,location=no,scrollbars=no,resizable=no,titlebar=no' );";
    //    ScriptManager.RegisterStartupScript(this, typeof(string), "OPEN_WINDOW", fullURL, true);
        
    //    //Response.Redirect("chat/Chat.aspx?userid=b@m.com");
    //}
   
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        bttn = "Like";
    }
   
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        bttn = "Comment";
            timer.Visible = true;
            UpdatePanel1.Visible = true;
 
    }
    
  
   
    protected void Button15_Click1(object sender, EventArgs e)
    {
        txt = TextBox8.Text;
        if (txt != "" && sff2.Trim() != "" )
        {

            //string im1 = @"~\web2nd\ProfileImage\Person1.JPG";
            string dd = "<B>" + Session["UserName"].ToString() + "</B>: " + txt;
            date1();
            DateTime dddt1 = DateTime.Now;
            string ddts1 = (dddt1.Year + "/" + dddt1.Month + "/" + dddt1.Day + " " + dddt1.ToLongTimeString());

            sql1 = "INSERT INTO MessageReply(MID,R_Email,R_Photo,Message1,Date1,Time1,DateTime1) values(" + sff2 + ",'" + Session["UserMail"].ToString() + "','" + Session["UserPhoto"].ToString() + "','" + dd + "','" + Dssf + "','" + DateTime.Now.ToShortTimeString() + "','" + ddts1+ "') ";
            SqlConnection con11 = new SqlConnection(cng);
            SqlCommand cmd11 = new SqlCommand(sql1, con11);
            try
            {
                con11.Open();
                int x = cmd11.ExecuteNonQuery();
                Label8.Text = "Record Inserted!!!";
                TextBox8.Text = "";
                timer.Visible = false;
              
                DataList3.DataBind();
                //Response.Redirect("~/web2nd/web2ndmain.aspx");
                
            }
            catch (Exception ee)
            {
                Label8.Text = ee.Message;

            }
            finally
            {
                con11.Close();
            }
            
        }
    }

    protected void Button14_Click2(object sender, EventArgs e)
    {
        timer.Visible = false;
        Response.Redirect("~/web2nd/web2ndmain.aspx");
    }

    protected void Button10_Click(object sender, EventArgs e)
    {
        DateTime dt =Convert.ToDateTime( Session["Date1"]);
        dt = dt.AddDays(-30);

        Session["Date1"] = dt;


    }

    protected void Button12_Click(object sender, EventArgs e)
    {
        DateTime dt = Convert.ToDateTime(Session["Date1"]);
        dt = dt.AddDays(-7);
        Session["Date1"] = dt;
    }

    protected void Button11_Click(object sender, EventArgs e)
    {
        DateTime dt = Convert.ToDateTime(Session["Date1"]);
        dt = dt.AddDays(-1);
        Session["Date1"] = dt;
    }
      
    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        //Session["Share1"] = "Photo"; shareall();
        Response.Redirect("1PhotoCreate.aspx");
    }

    void shareall()
    {
        Response.Redirect("Share12345.aspx");
        
        
        /* Label1.Visible = true;
        Session["RefreshList"] = ".";
        Image4.ImageUrl = "~/images/wait4.gif";
        RefList1 = Session["RefreshList"].ToString();
        string fullURL = "window.open('Share1234.aspx', '_blank', 'height=195,width=563,status=no,toolbar=no,menubar=no,location=no,scrollbars=no,resizable=no,close=no,titlebar=no' );";
        ScriptManager.RegisterStartupScript(this, typeof(string), "OPEN_WINDOW", fullURL, true);
        Timer1.Enabled = true;
        */  
    }
  
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {        
        getPrivacy();       
    }

    void getPrivacy()
    {
        Session["UserPrivacy"] = DropDownList1.Text;
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

        Label8.Text = prcy;
    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        Label8.Text = DateTime.Now.ToString();
    }

    protected void ImageButton19_Click(object sender, ImageClickEventArgs e)
    {

    }
    protected void Timer1_Tick1(object sender, EventArgs e)
    {
        Label1.Text = Session["RefreshList"].ToString();
        string ss1 = Session["RefreshList"].ToString();
        if (ss1 == RefList1)
        {
            Timer1.Enabled = false;
            Image4.ImageUrl = "~/images/aa.bmp";
            Label1.Visible = false;
        }
        else
        {
            RefList1 = ss1;

        }
    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        Session["Share1"] = "Video"; shareall();
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Session["Share1"] = "Link"; shareall();
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Session["Share1"] = "Event"; shareall();
    }
    protected void DataList1_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        bttn = "Delete";

    }
    protected void ImageButton20_Click(object sender, ImageClickEventArgs e)
    {
        bttn = "Delete";
    }
    protected void Button2_Click1(object sender, EventArgs e)
    {

    }
    protected void ImageButton7_Click(object sender, ImageClickEventArgs e)
    {

    }
    protected void ImageButton8_Click(object sender, ImageClickEventArgs e)
    {

    }
    protected void ImageButton9_Click(object sender, ImageClickEventArgs e)
    {

    }

    protected void Button2_Click2(object sender, EventArgs e)
    {
        
    }
  
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        //------- Photo Click
        bttn = "Photo Click";
        Label5.Text = "Ok";


    }
    protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
    {
        //------- Message Image Button

        bttn = "Album Click";
        Label5.Text = "Ok";
    }
    protected void ImageButton10_Click(object sender, ImageClickEventArgs e)
    {
        //-------
    }
    protected void ImageButton11_Click(object sender, ImageClickEventArgs e)
    {
        //-------
    }
    protected void ImageButton12_Click(object sender, ImageClickEventArgs e)
    {
        //------- Icon Button
    }
    protected void LinkButton4_Click1(object sender, EventArgs e)
    {
        //-------
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        //------- Like
        bttn = "Like";

    }
    protected void LinkButton7_Click(object sender, EventArgs e)
    {
        //-------Comment
        bttn = "Comment";
        timer.Visible = true;
        UpdatePanel1.Visible = true;
    }
   
    protected void ImageButton13_Click(object sender, ImageClickEventArgs e)
    {
        //------- Photo -- Photo
        Label5.Text = "Photo -- Photo";
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        //------- Delete --- Delete
        
        Label5.Text = "Delete --- Delete";
        bttn = "Delete --- Delete";
        
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        //-------
    }
    protected void ImageButton14_Click(object sender, ImageClickEventArgs e)
    {
    
        //-------Delete MessageTable
        bttn = "Delete";
    }
    protected void LinkButton8_Click(object sender, EventArgs e)
    {

    }
    protected void LinkButton9_Click(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click1(object sender, EventArgs e)
    {

    }
    protected void DataList4_SelectedIndexChanged(object sender, EventArgs e)
    {
       
        
       // Label8.Text = 
        //--------
        sff2 = Convert.ToString(DataList3.SelectedValue);
        Comment_Like();
    }
    protected void DataList4_DeleteCommand(object source, DataListCommandEventArgs e)
    {
        DataList dl1 = (DataList)source;

        //Label5.Text = dl1.SelectedIndex.ToString();
        Label5.Text = e.Item.ClientID.ToString();
        
    }
    protected void ImageButton8_Click1(object sender, ImageClickEventArgs e)
    {

    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        //-------- Detail
    }
   
   
  
}
