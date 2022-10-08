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

public partial class web2nd_Chat1 : System.Web.UI.Page
{
    static string sd="";

    protected void Page_Load(object sender, EventArgs e)
    {
        Label9.Text = DateTime.Now.ToString();
        Session["Date3"] = DateTime.Now;
        if (IsPostBack == false)
        {
            Session["Date2"] = DateTime.Now.AddDays(-1);
            //DateTime dt = Convert.ToDateTime(Session["Date1"]);
            //dt = dt.AddDays(-7);
            //Session["Date1"] = dt;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void DataList1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        sd = DataList1.SelectedValue.ToString();
        dddiii();
    }

    void dddiii()
    {
        string sql1 = "select * from Login where ID=" + sd;
        SqlConnection con1 = new SqlConnection(ConfigurationManager.AppSettings["conn1"].ToString());
        SqlCommand cmd1 = new SqlCommand(sql1, con1);
        SqlDataReader dr;
        try
        {
            con1.Open();
            dr = cmd1.ExecuteReader();

            if (dr.Read())
            {
                Label2.Text = dr[4].ToString();
                Label6.Text = dr[6].ToString().Trim();
                Label5.Text = dr[7].ToString().Trim();

            }
        }
        catch (Exception ee)
        {
            Label3.Text = ee.Message;
        }
        finally
        {
            con1.Close();
        }     
    }


    protected void Button2_Click(object sender, EventArgs e)
    {
        sendMess();
    }


    protected void Timer1_Tick(object sender, EventArgs e)
    {
        Session["Date3"] = DateTime.Now;
        DataList2.DataBind();


        upStatus();

        DataList1.DataBind();
        DataList4.DataBind();

    }

    void upStatus()
    {
        //   Online Database set date for 2 minuts    

        DataHandle dh = new DataHandle();
        DateTime dddt1 = DateTime.Now.AddMinutes(2);
        string ddts1 = (dddt1.Year + "/" + dddt1.Month + "/" + dddt1.Day + " " + dddt1.ToLongTimeString());
        string hh1 = dh.SetData1("UPDATE Login SET LoginTime1='" + ddts1 + "' Where EMail='" + Session["UserMail"].ToString() + "' ");


                           

    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }

    void sendMess()
    {
        if (TextBox1.Text.Trim() != "" && Label6.Text.Trim() != "." && Label6.Text.Trim() != "")
        {


            DateTime dddt1 = DateTime.Now;
            string ddts1 = (dddt1.Year + "/" + dddt1.Month + "/" + dddt1.Day + " " + dddt1.ToLongTimeString());

            DataHandle dh = new DataHandle();
            Label7.Text = dh.SetData1("Insert INTO ChatMess (SMail, SPhoto, RMail, RPhoto, Mess, Time1, datetime1) Values('" + Session["UserMail"].ToString() + "', '" + Session["UserPhoto"].ToString() + "', '" + Label2.Text + "', '" + Label5.Text + "','" + TextBox1.Text.Trim() + "','" + DateTime.Now.ToShortTimeString() + "','" + ddts1 + "') ");
            TextBox1.Text = "";
            DataList2.DataBind();
            TextBox1.Focus();
        }
    }
    protected void DataList4_SelectedIndexChanged1(object sender, EventArgs e)
    {
        sd = DataList4.SelectedValue.ToString();
        dddiii();
    }
    protected void SqlDataSource22_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
}
