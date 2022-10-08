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
    static string UserM = "", cng, sql1, frlist = "", frlist1="";
    static int Send1=0, Reci1=0;
    static int LogID = 0;

    protected void Page_Load(object sender, EventArgs e)
    {  
        
       // UserM = Session["UserMail"].ToString();
        string UserP = Session["UserPhoto"].ToString();
       // Label8.Text = DateTime.Now.ToString();

        ImageButton5.ImageUrl = UserP;

        if (IsPostBack == false)
        {
            loadRequest();
            //changeAdd();
            //////loadFrndSuggestion();

           // loadUser();
           // SendReq();
           //  RecReq();
           // LinkButton1.Visible = false;
           // LinkButton2.Visible = false;


            if (Reci1>0)
            {
              //  LinkButton1.Visible = true;
              //  LinkButton1.Text = Reci1.ToString() + " Get Friendship Req.";

            }
            if (Send1>0)
            {
              //  LinkButton2.Visible = true;
              //  LinkButton2.Text = Send1.ToString() + " Request Send ";


            }
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
    
    
    void loadRequest()
    {
        //cng = ConfigurationManager.AppSettings["conn1"];        
        //sql1 = "select * from Login where Email='" + UserM + "' ";
        //SqlConnection con1 = new SqlConnection(cng);
        //SqlCommand cmd1 = new SqlCommand(sql1, con1);
        //SqlDataReader dr;
        //try
        //{
        //    con1.Open();
        //    dr = cmd1.ExecuteReader();

        //    if (dr.Read())
        //    {
        //        string dt1 = ""; int dt2 = 0;
        //        dt1 = dr[15].ToString();
        //        try
        //        {
        //            dt2 = Convert.ToInt32(dt1);

        //        }
        //        catch (Exception eee1)
        //        {
        //            dt2 = 0;
        //        }

        //        if (dt2 > 0)
        //        {
        //            Button5.Text = dt2.ToString().Trim();
        //            Button5.Visible = true;
        //            Button4.Visible = true;
        //        }
        //        else
        //        {
        //            Button5.Text = ".";
        //            Button5.Visible = false;
        //            Button4.Visible = false;
        //        }


        //    }
        //}

        //catch
        //{
        //    throw;
        //}
        //finally
        //{
        //    con1.Close();
        //}
    }

    //void RecReq()
    //{
    //    cng = ConfigurationManager.AppSettings["conn1"];
        
    //    sql1 = "select * from ReqPending where R_Email='" + UserM + "' ";
    //    SqlConnection con1 = new SqlConnection(cng);
    //    SqlCommand cmd1 = new SqlCommand(sql1, con1);
    //    SqlDataReader dr;
    //    try
    //    {
    //        Reci1 = 0;
    //        con1.Open();
    //        dr = cmd1.ExecuteReader();

    //        while(dr.Read())
    //        {
    //            Reci1++;     
    //        }
           
    //    }

    //    catch
    //    {
    //        throw;
    //    }
    //    finally
    //    {
    //        con1.Close();
    //    }
    //}

    //void SendReq()
    //{
    //    cng = ConfigurationManager.AppSettings["conn1"];
        
    //    sql1 = "select * from ReqPending where S_Email='" + UserM + "' ";
    //    SqlConnection con1 = new SqlConnection(cng);
    //    SqlCommand cmd1 = new SqlCommand(sql1, con1);
    //    SqlDataReader dr;
    //    try
    //    {
    //        Send1 = 0;
    //        con1.Open();
    //        dr = cmd1.ExecuteReader();

    //        while (dr.Read())
    //        {
    //            Send1++;
    //        }
            
    //    }

    //    catch
    //    {
    //        throw;
    //    }
    //    finally
    //    {
    //        con1.Close();
    //    }
    //}

  
    protected void Button2_Click(object sender, EventArgs e)
    {
    
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
       
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        //Response.Redirect("~/web2nd/RequestPage.aspx?rr1=1");

    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        //Response.Redirect("~/web2nd/RequestPage.aspx?rr1=2");

    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        //Response.Redirect("~/web2nd/RequestPage.aspx?rr1=1");

    }
    protected void ImageButton7_Click1(object sender, ImageClickEventArgs e)
    {

    }
   
   
    protected void Timer1_Tick(object sender, EventArgs e)
    {

    }
    protected void MainMenu1_Load(object sender, EventArgs e)
    {

    }
    protected void TreeView1_SelectedNodeChanged(object sender, EventArgs e)
    {

        //Label4.Text = TreeView1.SelectedValue.ToString();
        string ll1 = TreeView1.SelectedValue.ToString().Trim();
        if (ll1 == "Welcome")
        {
            Response.Redirect("~/web2nd/Welcome.aspx");
        }
        else if (ll1 == "News Updates")
        {
            Response.Redirect("~/web2nd/web2ndmain.aspx");
        }
        else if (ll1 == "My Updates")
        {
            Response.Redirect("~/web2nd/web2ndMyupdates.aspx");
        }
        else if (ll1 == "Events")
        {
            string ts1 = @"~\web2nd\Image\ToolCalender.bmp";
            Session["Sqlcng"] = @"SELECT MessageTable.id, MessageTable.S_Email, MessageTable.S_Photo, MessageTable.Message1, MessageTable.Type, MessageTable.URL1, MessageTable.Date1, MessageTable.Time1, MessageTable.datetime1, MessageTable.pic1, MessageTable.Privacy1, FList.S_Email AS Expr1, FList.R_Email FROM MessageTable INNER JOIN FList ON MessageTable.S_Email = FList.R_Email WHERE (FList.S_Email = @S_Email) AND (MessageTable.datetime1 > @dtd) AND (MessageTable.Type <> '2') AND (MessageTable.Privacy1>1 OR MessageTable.S_Email=@S_Email ) AND (MessageTable.Type='" + ts1 + "') ORDER BY MessageTable.datetime1 DESC";
            Response.Redirect("~/web2nd/web2ndmain2.aspx");
        }
        else if (ll1 == "Links")
        {
            string ts1 = @"~\web2nd\Image\ToolLink.bmp";
            Session["Sqlcng"] = @"SELECT MessageTable.id, MessageTable.S_Email, MessageTable.S_Photo, MessageTable.Message1, MessageTable.Type, MessageTable.URL1, MessageTable.Date1, MessageTable.Time1, MessageTable.datetime1, MessageTable.pic1, MessageTable.Privacy1, FList.S_Email AS Expr1, FList.R_Email FROM MessageTable INNER JOIN FList ON MessageTable.S_Email = FList.R_Email WHERE (FList.S_Email = @S_Email) AND (MessageTable.datetime1 > @dtd) AND (MessageTable.Type <> '2') AND (MessageTable.Privacy1>1 OR MessageTable.S_Email=@S_Email ) AND (MessageTable.Type='" + ts1 + "') ORDER BY MessageTable.datetime1 DESC";
            Response.Redirect("~/web2nd/web2ndmain2.aspx");
        }
        else if (ll1 == "Video Links")
        {
            string ts1 = @"~\web2nd\Image\ToolCam1.bmp";
            Session["Sqlcng"] = @"SELECT MessageTable.id, MessageTable.S_Email, MessageTable.S_Photo, MessageTable.Message1, MessageTable.Type, MessageTable.URL1, MessageTable.Date1, MessageTable.Time1, MessageTable.datetime1, MessageTable.pic1, MessageTable.Privacy1, FList.S_Email AS Expr1, FList.R_Email FROM MessageTable INNER JOIN FList ON MessageTable.S_Email = FList.R_Email WHERE (FList.S_Email = @S_Email) AND (MessageTable.datetime1 > @dtd) AND (MessageTable.Type <> '2') AND (MessageTable.Privacy1>1 OR MessageTable.S_Email=@S_Email ) AND (MessageTable.Type='" + ts1 + "') ORDER BY MessageTable.datetime1 DESC";
            Response.Redirect("~/web2nd/web2ndmain2.aspx");
        }
        else if (ll1 == "Req. Pending")
        {
            Session["Req"] = "2";
            Response.Redirect("~/web2nd/2PendingReq.aspx");
        }
        else if (ll1 == "Req. Sent")
        {
            Session["Req"] = "1";
            Response.Redirect("~/web2nd/2PendingReq.aspx");
        }
        else if (ll1 == "Search Friends")
        {
            Response.Redirect("SearchResult.aspx?var1= ");
        }
        else if (ll1 == "Chat")
        {
            Response.Redirect("Chat1.aspx");
        }
      
    }
    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("1Wall.aspx");
    }
    protected void LinkButton1_Click1(object sender, EventArgs e)
    {
       
    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
        Response.Redirect("Chat1.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("SearchResult.aspx?var1=a");
    }
    protected void LinkButton2_Click1(object sender, EventArgs e)
    {
        Response.Redirect("1PhotoProfile.aspx");
    }
    protected void Button3_Click1(object sender, EventArgs e)
    {
        Response.Redirect("WebSearch.aspx");
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        sdf();
    }
    void sdf()
    {
        Session["Req"] = "2";
        Response.Redirect("~/web2nd/2PendingReq.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        sdf();
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/web2nd/NetworkList.aspx");
    }
    protected void Button7_Click(object sender, EventArgs e)
    {

    }
}
