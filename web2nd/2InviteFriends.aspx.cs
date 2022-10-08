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
    static string s1 = "", s2 = "", ch1 = "", sql1, s4, s5, s6, s12, s13, s14, q4, q5, q6, q12, q13, q14, q15 = "0";
    protected void Page_Load(object sender, EventArgs e)
    {
        Page.MaintainScrollPositionOnPostBack = true;

        if (IsPostBack == false)
        {
            //Label1.Text = Request.QueryString.Get("var1").ToString();

            Panel1.Visible = true;
            Panel2.Visible = false;
            Panel3.Visible = false;

            
        }

    }
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        s2 = Convert.ToString(DataList1.SelectedValue);
        Label2.Text = s2;
        //Session["SendRequest"] = s2;



        sql1 = "select * from Login where id='" + Label2.Text + "' ";
        SqlConnection con1 = new SqlConnection(cng);
        SqlCommand cmd1 = new SqlCommand(sql1, con1);
        SqlDataReader dr;
        try
        {
            con1.Open();
            dr = cmd1.ExecuteReader();
            //Label3.Text = "sdfsdf - 1 ";
            if (dr.Read())
            {

                //Label3.Text = "sdfsdf - 2 ";

                s4 = dr[4].ToString();
                s5 = dr[5].ToString();
                s6 = dr[6].ToString();
                s12 = dr[12].ToString();
                s13 = dr[13].ToString();
                s14 = dr[14].ToString();

                q15 = "0";
                CheckFList();

                if (q15 == "0")
                    SaveRequest();


                //Session["UserName"] = s6;
                //Session["UserFirstName"] = s2;
                //Session["UserLastName"] = s3;
                //Session["UserGender"] = s5;
                //Session["UserPhoto"] = s12;
                //Session["UserCity"] = s13;
                //Session["UserCountry"] = s14;

            }
        }

        catch (Exception ee)
        {

        }
        finally
        {
            con1.Close();
        }



    }

    void CheckFList()
    {
        s2 = Convert.ToString(DataList1.SelectedValue);
        Label2.Text = s2;
        //Session["SendRequest"] = s2;


        sql1 = "select * from FList where S_Email='" + s4 + "' AND R_Email='" + Session["UserMail"].ToString().Trim() + "' ";
        SqlConnection con1 = new SqlConnection(cng);
        SqlCommand cmd1 = new SqlCommand(sql1, con1);
        SqlDataReader dr;
        try
        {
            con1.Open();
            dr = cmd1.ExecuteReader();
            q15 = "0";
            if (dr.Read())
            {
                q15 = "1";
            }
        }
        catch (Exception ee)
        {

        }
        finally
        {
            con1.Close();
        }


    }

    void SaveRequest()
    {

        //s4 = dr[4].ToString();
        //s5 = dr[5].ToString();
        //s6 = dr[6].ToString();
        //s12 = dr[12].ToString();
        //s13 = dr[13].ToString();
        //s14 = dr[14].ToString();

        //string 

        q4 = Session["UserMail"].ToString();
        q5 = Session["UserGender"].ToString();
        q6 = Session["UserName"].ToString();
        q12 = Session["UserPhoto"].ToString();
        q13 = Session["UserCity"].ToString();
        q14 = Session["UserCountry"].ToString();

        ch1 = "";

        checkAvailable();

        if (ch1 == "")
        {


            sql1 = "INSERT INTO ReqPending(S_Email,S_Gender, S_FullName, S_Photo, S_City, S_Country, R_Email,R_Gender, R_FullName, R_Photo, R_City, R_Country, Date1, Time1) values('" + q4 + "','" + q5 + "','" + q6 + "','" + q12 + "','" + q13 + "','" + q14 + "','" + s4 + "','" + s5 + "','" + s6 + "','" + s12 + "','" + s13 + "','" + s14 + "','" + DateTime.Now.ToShortDateString() + "','" + DateTime.Now.ToShortTimeString() + "') ";
            SqlConnection con11 = new SqlConnection(cng);
            SqlCommand cmd11 = new SqlCommand(sql1, con11);
            try
            {
                con11.Open();
                //Label3.Text = "sdfsdf - 3 ";
                int x = cmd11.ExecuteNonQuery();
                //Label3.Text = "Record Inserted!!!";

                timer.Visible = true;
                UpdatePanel1.Visible = true;

            }
            catch (Exception ee)
            {
                //Label3.Text = ee.Message;

            }
            finally
            {
                con11.Close();
            }
        }

    }

    void checkAvailable()
    {
        sql1 = "select * from ReqPending where S_Mail='" + q4 + "' AND R_Mail='" + s4 + "' OR S_Mail='" + s4 + "' AND R_Mail='" + q4 + "' ";
        SqlConnection con1 = new SqlConnection(cng);
        SqlCommand cmd1 = new SqlCommand(sql1, con1);
        SqlDataReader dr;
        try
        {
            con1.Open();
            dr = cmd1.ExecuteReader();

            if (dr.Read())
            {
                ch1 = "1";
            }
        }

        catch (Exception ee)
        {

        }
        finally
        {
            con1.Close();
        }


    }

    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void Select(object sender, CommandEventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        Panel2.Visible = false;
        Panel3.Visible = false;
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = true;
        Panel3.Visible = false;
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = true;
    }
    protected void Button14_Click2(object sender, EventArgs e)
    {
        timer.Visible = false;
        //UpdatePanel1.Visible = true;
    }
}
