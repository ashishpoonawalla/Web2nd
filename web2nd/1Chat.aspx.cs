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

public partial class web2nd_1Chat : System.Web.UI.Page
{

    static string MS="",MR="",Dssf="",s1 = "", s2 = "", ch1 = "", cng, sql1, s4, s5, s6, s12, s13, s14, q4, q5, q6, q12, q13, q14;
   
    protected void Page_Load(object sender, EventArgs e)
    {

        if (IsPostBack == false)
        {
            Page.MaintainScrollPositionOnPostBack = true;
            Session["ChatMail"] = "";
            MS = Session["UserMail"].ToString();
            MR = Session["ChatMail"].ToString();
        }
    }
    protected void DataList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        //Label2.Text = 

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {

    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label2.Text = DataList1.SelectedValue.ToString();

        cng = ConfigurationManager.AppSettings["conn1"];
        sql1 = "select * from FList where id=" + Label2.Text ;
        SqlConnection con1 = new SqlConnection(cng);
        SqlCommand cmd1 = new SqlCommand(sql1, con1);
        SqlDataReader dr;
        try
        {
            con1.Open();
            dr = cmd1.ExecuteReader();
            Label2.Text = "sdfsdf - 1 ";
            if (dr.Read())
            {
               // Label3.Text = "sdfsdf - 2 ";
                s2 = dr[2].ToString();
                Session["ChatMail"] = s2;

                MS = Session["UserMail"].ToString();
                MR = Session["ChatMail"].ToString();

                TextBox2.Text = "";

                Label2.Text = s2;
                //FormView1.DataBind();
                LoadMess();
             }
        }

        catch (Exception ee)
        {
            Label2.Text = "sdfsdf - 3 " + ee.Message ;
        }
        finally
        {
            con1.Close();
        }



    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {
        SaveMess();
    }

    void SaveMess()
    {
        MS = Session["UserMail"].ToString();
        MR = Session["ChatMail"].ToString();
        string MSSSS = "<B>" + Session["UserName"].ToString() + "</B>: " + TextBox2.Text;

        
        if (TextBox2.Text.Trim() != "" && MS.Trim() !="" && MR.Trim() !="" )
        {
            date1();
            cng = ConfigurationManager.AppSettings["conn1"];
            DateTime dddt1 = DateTime.Now;
            string ddts1 = (dddt1.Year + "/" + dddt1.Month + "/" + dddt1.Day + " " + dddt1.ToLongTimeString());

            sql1 = "INSERT INTO ChatTable(S_Email,R_Email,Message1,Time1,datetime1) values('" + MS + "','" + MR + "','" + MSSSS + "','" + Dssf  + "','" + ddts1 + "') ";
            SqlConnection con11 = new SqlConnection(cng);
            SqlCommand cmd11 = new SqlCommand(sql1, con11);
            try
            {
                con11.Open();
                int x = cmd11.ExecuteNonQuery();
               Label6.Text = "Record Inserted!!!";

              
            }
            catch (Exception ee)
            {
                Label6.Text = ee.Message;

            }
            finally
            {
                con11.Close();
            }
            DataList1.DataBind();
            //ListBox1.Items.Add("----");
            TextBox2.Text = "";
            TextBox2.Focus();
        }
    }

   void LoadMess()
    {
       //ListBox1.Items.Clear();
       //SELECT * FROM [ChatTable] WHERE (([S_Email] = @S_Email) AND ([R_Email] = @R_Email)) ORDER BY [datetime1] DESC

        cng = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Chat1.mdf;Integrated Security=True;User Instance=True";

        sql1 = "SELECT * FROM ChatTable WHERE (((S_Email ='" + MS + "') AND (R_Email = '" + MR + "')) or ((S_Email ='" + MR + "') AND (R_Email = '" + MS + "')))ORDER BY datetime1 ";
        SqlConnection con11 = new SqlConnection(cng);
        SqlCommand cmd11 = new SqlCommand(sql1, con11);
        SqlDataReader reader;
        try
        {
            con11.Open();
            reader = cmd11.ExecuteReader();

            while (reader.Read())
            {
                //ListBox1.Items.Add(reader[3].ToString() + " - " + reader[4].ToString());
            }
            
        }
        catch (Exception ee)
        {
            Label6.Text = ee.Message;

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


    protected void Timer1_Tick(object sender, EventArgs e)
    {
        Label5.Text = DateTime.Now.ToString() + "  " + Session["ChatMail"].ToString();
        LoadMess();
        //ListBox1.Items.Add("----");
        TextBox1.Focus();
    }
    protected void TextBox2_PreRender(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
    {
        
        //SaveMess();
        //ListBox1.Items.Add(TextBox2.Text);
        TextBox1.Focus();


    }
}
