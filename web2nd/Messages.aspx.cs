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

public partial class web2nd_Messages : System.Web.UI.Page
{
    static string Dssf = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {
            MultiView1.ActiveViewIndex = 1;
            Button1.BackColor = Button8.BackColor; // - new
            Button2.BackColor = Button7.BackColor; // - inbox
            Button3.BackColor = Button8.BackColor; // - outbox
           
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;

        Button1.BackColor = Button7.BackColor; // - new
        Button2.BackColor = Button8.BackColor; // - inbox
        Button3.BackColor = Button8.BackColor; // - outbox

        Label5.Text = "";            Label9.Visible = false;
        TextBox4.Text = "";            Label10.Visible = true;
        TextBox5.Text = "";            Label11.Visible = true;

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label1.Text = DropDownList1.SelectedValue.ToString();

        string sql1 = "select * from Login where EMail='" + Label1.Text + "' ";
        SqlConnection con1 = new SqlConnection(ConfigurationManager.AppSettings["conn1"].ToString());
        SqlCommand cmd1 = new SqlCommand(sql1, con1);
        SqlDataReader dr;
        Image1.Visible = false;
        try
        {
            con1.Open();
            dr = cmd1.ExecuteReader();

            if (dr.Read())
            {
                Label3.Text = dr[7].ToString();
                Label5.Text = dr[6].ToString();
                Image1.ImageUrl = Label3.Text.Trim();
                Image1.Visible = true;
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
    protected void Button6_Click(object sender, EventArgs e)
    {
        Label9.Visible = false;
        Label10.Visible = false;
        Label11.Visible = false;


        if (Label5.Text.Trim() != "" && TextBox4.Text.Trim() != "" && TextBox5.Text.Trim() != "")
        {
            date1();
            DateTime dddt1 = DateTime.Now;
            string ddts1 = (dddt1.Year + "/" + dddt1.Month + "/" + dddt1.Day + " " + dddt1.ToLongTimeString());

            string pprr = " ";
            if (RadioButton1.Checked == true)
                pprr = "Urgent";

            DataHandle dh = new DataHandle();
            //INSERT INTO [EMailTbl] ([SMail], [SName], [SPhoto], [RMail], [RName], [RPhoto], [MessMail], [SubMail], [datetime1]) VALUES                                                SMail,                          SName,                                      SPhoto,                                 RMail,                  RName,              RPhoto,                 MessMail,               SubMail,                 Date1,             Time1,                                  datetime1,      Priority1
            Label12.Text = dh.SetData1("Insert Into EMailTbl ( SMail, SName, SPhoto, RMail, RName, RPhoto, MessMail, SubMail, Date1, Time1, datetime1, Priority1, Type1) Values('" + Session["UserMail"].ToString() + "', '" + Session["UserName"].ToString() + "', '" + Session["UserPhoto"].ToString() + "', '" + Label1.Text + "', '" + Label5.Text + "', '" + Label3.Text + "', '" + TextBox5.Text + "', '" + TextBox4.Text + "', '" + Dssf + "', '" + DateTime.Now.ToShortTimeString() + "', '" + ddts1 + "', '" + pprr + "',1 )");

            GridView1.DataBind();
            GridView2.DataBind();

            MultiView1.ActiveViewIndex = 2;
            Button1.BackColor = Button8.BackColor; // - new
            Button2.BackColor = Button8.BackColor; // - inbox
            Button3.BackColor = Button7.BackColor; // - outbox

        }
        else
        {
            if (Label5.Text.Trim() == "")
                Label9.Visible = true;

            if (TextBox4.Text.Trim() == "")
                Label10.Visible = true;

            if (TextBox5.Text.Trim() == "")
                Label11.Visible = true;

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
        GridView1.DataBind();
        GridView2.DataBind();

        MultiView1.ActiveViewIndex = 1;
        Button1.BackColor = Button8.BackColor; // - new
        Button2.BackColor = Button7.BackColor; // - inbox
        Button3.BackColor = Button8.BackColor; // - outbox
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        // -------- Inbox
        Label13.Text = GridView1.SelectedValue.ToString();

        string sql1 = "select * from EMailTbl where ID=" + Label13.Text;
        SqlConnection con1 = new SqlConnection(ConfigurationManager.AppSettings["conn1"].ToString());
        SqlCommand cmd1 = new SqlCommand(sql1, con1);
        SqlDataReader dr;
        try
        {
            con1.Open();
            dr = cmd1.ExecuteReader();

            if (dr.Read())
            {
                Label14.Text = dr[2].ToString();

                TextBox1.Text = dr[8].ToString();
                TextBox2.Text = dr[7].ToString();
                Label16.Text = "Time: " + dr[10].ToString() + "   Date: " + dr[9].ToString();
                Label18.Text = dr[13].ToString();

                Image2.ImageUrl = dr[3].ToString().Trim();
                Image2.Visible = true;
                MultiView1.ActiveViewIndex = 5;

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


    protected void Button3_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;
        Button1.BackColor = Button8.BackColor; // - new
        Button2.BackColor = Button8.BackColor; // - inbox
        Button3.BackColor = Button7.BackColor; // - outbox
    }
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {
        // -------- Outbox
        
        Label13.Text = GridView2.SelectedValue.ToString();

        string sql1 = "select * from EMailTbl where ID=" + Label13.Text;
        SqlConnection con1 = new SqlConnection(ConfigurationManager.AppSettings["conn1"].ToString());
        SqlCommand cmd1 = new SqlCommand(sql1, con1);
        SqlDataReader dr;
        try
        {
            con1.Open();
            dr = cmd1.ExecuteReader();

            if (dr.Read())
            {
                Label14.Text = dr[5].ToString();

                TextBox1.Text = dr[8].ToString();
                TextBox2.Text = dr[7].ToString();
                Label16.Text = "Time: " + dr[10].ToString() + "   Date: " + dr[9].ToString();
                Label18.Text = dr[13].ToString();

                Image2.ImageUrl = dr[6].ToString().Trim();
                Image2.Visible = true;
                MultiView1.ActiveViewIndex = 5;

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
}
