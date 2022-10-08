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

public partial class web2nd_SearchResult : System.Web.UI.Page
{
    static string cng = ConfigurationManager.AppSettings["conn1"];
    static string s1 = "", s2 = "",s3 ="", s4="", s5, s6, s12, s13, s14,  sql1 = "", Btn = "", um = "",Dssf="";
    static string mmmm = "";
    static int id1 = -1;
    protected void Page_Load(object sender, EventArgs e)
    {

        Label1.Text = Session["UserMail"].ToString();
        um = Label1.Text;

        Page.MaintainScrollPositionOnPostBack = true;
        if (IsPostBack == false)
        {
            string ss = "";
            //ss = Request.QueryString.Get("rr1").ToString();
            dispp1();

        }

    }

    void dispp1()
    {
        if (Session["Req"] == null)
            Session["Req"] = "1";

        if (Session["Req"].ToString() == "1")
        {
            DataList1.Visible = false;
            DataList2.Visible = true;
        }
        else
        {
            DataList1.Visible = true;
            DataList2.Visible = false;
        }

    }

  
    protected void Button1_Click(object sender, EventArgs e)
    {
        
    }
    protected void Select(object sender, CommandEventArgs e)
    {

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        Session["Req"] = "2"; dispp1();

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Session["Req"] = "1"; dispp1();
    }

  

    protected void DataList1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        Label2.Text = DataList1.SelectedValue.ToString();
        id1 =Convert.ToInt32( DataList1.SelectedValue);

        if (Btn  == "Accept")
        {

            
            sql1 = "Select * From ReqPending Where id=" + id1;
            SqlConnection con11 = new SqlConnection(cng);
            SqlCommand cmd11 = new SqlCommand(sql1, con11);
            SqlDataReader reader;



            try
            {
                con11.Open();
                reader = cmd11.ExecuteReader();

                Label3.Text = "1..";
                if (reader.Read())
                {
                    s1 = reader[1].ToString();
                    s2 = reader[3].ToString();

                    s3 = Session["UserMail"].ToString();
                    s4 = Session["UserName"].ToString();
                    date1();
                    SaveMessage();
                                        
                    SaveAccept();
                                        
                    s5 = s1;      s1 = s3;     s3 = s5;

                    SaveAccept();

                    DeleteReq();

                }

            }
            catch (Exception ee)
            {
                Label3.Text = "2.." + id1.ToString() + " - " + ee.Message ;
            }
            finally
            {
                con11.Close();
            }
           
        }
        if (Btn == "Reject")
        {
            DeleteReq();
        }
    }

    void SaveMessage()
    {
        date1();
        date1(); DateTime dddt1 = DateTime.Now;
        string ddts1 = (dddt1.Year + "/" + dddt1.Month + "/" + dddt1.Day + " " + dddt1.ToLongTimeString());
          

        string pic21 = @"~\images\aa.bmp";
        string ssee = @"~\web2nd\Image\ToolFriend1.bmp";

        //sql1 = "INSERT INTO MessageTable(S_Email,S_Photo,Message1,Type,URL1,Date1,Time1,datetime1, pic1, Privacy1 ) values('" + Session["UserMail"].ToString() + "','" + Session["UserPhoto"].ToString() + "','" + dd + "','" + ssee + "','" + urlll + "','" + Dssf + "','" + DateTime.Now.ToShortTimeString() + "','" + ddts1 + "','" + pic11 + "'," + prcy + ") ";

        string ssx = "<b>" + s4 + "</b> and <b>" + s2 + "</b> are now friends.";

        //                                                                                                                                    S_Email,      R_EMail,     Message1,     Date1,                                 Time1,                                     datetime1,         S_Photo,                                  Type,     URL1,    pic1, Privacy1                              
        //sql1 = "INSERT INTO MessageTable(S_Email, R_EMail, Message1, datetime1, Time1, Date1, S_Photo, Type, URL1, pic1, Privacy1) values('" + s1 + "','" + s3 + "','" + ssx + "','" + DateTime.Now.ToShortDateString() + "','" + DateTime.Now.ToShortTimeString() + "','" + Dssf + "','" + Session["UserPhoto"].ToString() + "','" + ssee + "',' ','" + pic21 + "',4 ) ";

        string pic2a = @"~/images/Friend.jpg";
        sql1 = "INSERT INTO MessageTable(S_Email, R_EMail, Message1, datetime1, Time1, Date1, S_Photo, Type, URL1, pic1, Privacy1) values('" + s1 + "','" + s3 + "','" + ssx + "','" + ddts1 + "','" + DateTime.Now.ToShortTimeString() + "','" + Dssf + "','" + pic2a + "','" + ssee + "',' ','" + pic21 + "',4 ) ";
        SqlConnection con11 = new SqlConnection(cng);
        SqlCommand cmd11 = new SqlCommand(sql1, con11);
        try
        {
            con11.Open();
            int x = cmd11.ExecuteNonQuery();

        }
        catch (Exception ee)
        {
            Label3.Text = "3..";
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

    void SaveAccept()
    {
        date1();
        DateTime dddt1 = DateTime.Now;
        string ddts1 = (dddt1.Year + "/" + dddt1.Month + "/" + dddt1.Day + " " + dddt1.ToLongTimeString());

        sql1 = "INSERT INTO FList(S_Email,R_EMail,R_FullName, Date1, Time1, Datetime1) values('" + s1 + "','" + s3 + "','" + s4 + "','" + Dssf + "','" + DateTime.Now.ToShortTimeString() + "','" + ddts1 + "') ";
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



    void DeleteReq()
    {        
        sql1 = "Delete From ReqPending Where id=" + id1;
        SqlConnection con11 = new SqlConnection(cng);
        SqlCommand cmd11 = new SqlCommand(sql1, con11);
        try
        {
            con11.Open();
            int x = cmd11.ExecuteNonQuery();
            mmmm = Session["UserMail"].ToString();
            abcd();
        }
        catch (Exception ee)
        {
            Label3.Text = "5..";
        }
        finally
        {
            con11.Close();
        }
        DataList1.DataBind();
    }



    void abcd()
    {
        cng = ConfigurationManager.AppSettings["conn1"];
        sql1 = "select * from Login where Email='" + mmmm+ "' ";
        SqlConnection con1 = new SqlConnection(cng);
        SqlCommand cmd1 = new SqlCommand(sql1, con1);
        SqlDataReader dr;
        try
        {
            con1.Open();
            dr = cmd1.ExecuteReader();

            if (dr.Read())
            {
                string dt1 = ""; int dt2 = 0;
                dt1 = dr[15].ToString();
                try
                {
                    dt2 = Convert.ToInt32(dt1);
                }
                catch (Exception eee1)
                {
                    dt2 = 0;
                }


                if (dt2 > 0)
                {
                    dt2--;
                }
                else
                {
                    dt2 = 0;
                }
                DataHandle dh = new DataHandle();
                string hh1 = dh.SetData1("UPDATE Login SET FrndReq=" + dt2.ToString() + " where Email='" + mmmm + "'");
                if (hh1 != "0")
                {
                    Response.Redirect("~/web2nd/2PendingReq.aspx");
                }
            }
        }

        catch
        {
            throw;
        }
        finally
        {
            con1.Close();
        }

    }
  
    protected void Button3_Click(object sender, EventArgs e)
    {
        Btn = "Accept";
    }
    protected void DataList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label2.Text = DataList2.SelectedValue.ToString();
        id1 = Convert.ToInt32(DataList2.SelectedValue);
        dddd();
       
        sql1 = "Delete From ReqPending Where id=" + id1;
        SqlConnection con11 = new SqlConnection(cng);
        SqlCommand cmd11 = new SqlCommand(sql1, con11);
        try
        {
            con11.Open();
            int x = cmd11.ExecuteNonQuery();
            //mmmm = Session["UserMail"].ToString();
            abcd();
        }
        catch (Exception ee)
        {

        }
        finally
        {
            con11.Close();
        }
        DataList2.DataBind();
    }

    void dddd()
    {
        sql1 = "Select * From ReqPending Where id=" + id1;
        SqlConnection con11 = new SqlConnection(cng);
        SqlCommand cmd11 = new SqlCommand(sql1, con11);
        SqlDataReader reader;

        try
        {
            con11.Open();
            reader = cmd11.ExecuteReader();

       
            if (reader.Read())
            {
                mmmm = reader[7].ToString();              
            }

        }
        catch (Exception ee)
        {
            Label3.Text = "2.." + id1.ToString() + " - " + ee.Message;
        }
        finally
        {
            con11.Close();
        }
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Btn = "Reject";
    }
    protected void Button4_Click1(object sender, EventArgs e)
    {
        Btn = "Delete";
    }
}
