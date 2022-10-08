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
            timer.Visible = false;
            MultiView1.ActiveViewIndex = 2;
            TextBox1.Text = Request.QueryString.Get("var1").ToString();

            string ss19 = @"SELECT id, Password, First_nm, Last_nm, Email, Gender, FullName, Photo, City, Country, DateTime1, Type1, PageName, LoginTime1, Findex FROM Login WHERE (FullName LIKE '%' + '" + TextBox1.Text.Trim() + "' + '%') AND (Email <> '" + Session["UserMail"].ToString() + "') AND (FullName <> N'admin admin')  AND (ShowAtSearch <> 1) ORDER BY FullName";
            SqlDataSource2.SelectCommand = ss19;
            GridView1.DataBind();

            //DataList1.DataBind();
        }

    }
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
  
    void CheckFList()
    {
        s2 = Convert.ToString(GridView1.SelectedValue);
        Label2.Text = "121";
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
            Label2.Text = ee.Message;
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

            }
            catch (Exception ee)
            {
                Label2.Text = ee.Message;

            }
            finally
            {
                con11.Close();
            }
        }

    }

    void checkAvailable()
    {
        sql1 = "select * from ReqPending where S_EMail='" + q4 + "' AND R_EMail='" + s4 + "' OR S_EMail='" + s4 + "' AND R_EMail='" + q4 + "' ";
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
            Label2.Text = ee.Message;
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
    protected void Button4_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        string ss19 = @"SELECT id, Password, First_nm, Last_nm, Email, Gender, FullName, Photo, City, Country, DateTime1, Type1, PageName, LoginTime1, Findex FROM Login WHERE (FullName LIKE '%' + '" + TextBox1.Text.Trim() + "' + '%') AND (Email <> '" + Session["UserMail"].ToString() + "') AND (FullName <> N'admin admin')  AND (ShowAtSearch <> 1) ORDER BY FullName";
        SqlDataSource2.SelectCommand = ss19;
        GridView1.DataBind();

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        s2 = Convert.ToString(GridView1.SelectedValue);
        Label2.Text = s2;
        //Session["SendRequest"] = s2;

        sql1 = "select * from Login where Id=" + Label2.Text + " ";
        string dt55 = Label2.Text;
        SqlConnection con1 = new SqlConnection(cng);
        SqlCommand cmd1 = new SqlCommand(sql1, con1);
        SqlDataReader dr;
        try
        {
            con1.Open();
          
            dr = cmd1.ExecuteReader();
          
            if (dr.Read())
            {

              

                s4 = dr[4].ToString();
                s5 = dr[5].ToString();
                s6 = dr[6].ToString();
                s12 = dr[7].ToString();
                s13 = dr[8].ToString();
                s14 = dr[9].ToString();

                q15 = "0";

                string dt1 = ""; int dt2 = 0;
                dt1 = dr[15].ToString();

                CheckFList();

                if (q15 == "0")
                {
                   
                    try
                    {
                        dt2 = Convert.ToInt32(dt1);

                    }
                    catch (Exception eee1)
                    {
                        dt2 = 0;
                    }

                    if (dt2 >= 0)
                    {
                        dt2++;
                    }
                    else
                    {
                        dt2 = 1;
                    }
                    DataHandle dh = new DataHandle();
                    string hh1 = dh.SetData1("UPDATE Login SET FrndReq=" + dt2.ToString() + " where id=" + dt55);

                    SaveRequest();

                  
                    TextBox8.Text = "Your request of friendship send to " + s6 ;
                    timer.Visible = true;
                }
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
            Label2.Text = ee.Message;
        }
        finally
        {
            con1.Close();
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
    protected void Button6_Click(object sender, EventArgs e)
    {

        if (TextBox6.Text.Trim() == "" && TextBox5.Text.Trim() == "" && TextBox4.Text.Trim() == "")
        {
            Label7.Text = "Not Selection";

        }
        else
        {
            string ss19 = @"SELECT * FROM Login WHERE (Email <> '" + Session["UserMail"].ToString() + "') AND (FullName <> N'admin admin') ";

            //if (RadioButton1.Checked == true)
            //{

                //string ss19 = @"SELECT id, Password, First_nm, Last_nm, Email, Gender, FullName, Photo, City, Country, DateTime1, Type1, PageName, LoginTime1, Findex FROM Login WHERE (FullName LIKE '%' + '" + TextBox1.Text.Trim() + "' + '%') AND (Email <> '" + Session["UserMail"].ToString() + "') AND (FullName <> N'admin admin')";

              
                if (TextBox6.Text.Trim() != "")
                    ss19 += " AND (FullName LIKE '%" + TextBox6.Text.Trim() + "%') ";


                if (TextBox5.Text.Trim() != "")
                    ss19 += " AND (Email LIKE '%" + TextBox5.Text.Trim() + "%') ";


                if (TextBox4.Text.Trim() != "")
                    ss19 += " AND (City LIKE '%" + TextBox4.Text.Trim() + "%') ";


                //if (DropDownList1.Text.Trim() != "")
                //    ss19 += " AND (Gender = '" + DropDownList1.Text.Trim() + "' ) ";



                ss19 += " AND (ShowAtSearch <> 1) ORDER BY FullName";

            //}
            //else
            //{

            //    //string ss19 = @"SELECT id, Password, First_nm, Last_nm, Email, Gender, FullName, Photo, City, Country, DateTime1, Type1, PageName, LoginTime1, Findex FROM Login WHERE (FullName LIKE '%' + '" + TextBox1.Text.Trim() + "' + '%') AND (Email <> '" + Session["UserMail"].ToString() + "') AND (FullName <> N'admin admin')";


            //    if (TextBox6.Text.Trim() != "")
            //        ss19 += " OR (FullName LIKE '%" + TextBox6.Text.Trim() + "%') ";


            //    if (TextBox5.Text.Trim() != "")
            //        ss19 += " OR (Email LIKE '%" + TextBox5.Text.Trim() + "%') ";


            //    if (TextBox4.Text.Trim() != "")
            //        ss19 += " OR (City LIKE '%" + TextBox4.Text.Trim() + "%') ";

            //    //if (DropDownList1.Text.Trim() != "")
            //    //    ss19 += " OR (Gender = '" + DropDownList1.Text.Trim() + "' ) ";


            //}

            //ss19 += ") ";



            SqlDataSource2.SelectCommand = ss19;
            GridView1.DataBind();



        }

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {

        Label1.Text = DropDownList2.SelectedValue.ToString();

        ////string ss19 = @"SELECT id, Password, First_nm, Last_nm, Email, Gender, FullName, Photo, City, Country, DateTime1, Type1, PageName, LoginTime1, Findex FROM Login WHERE (FullName LIKE '%' + '" + TextBox1.Text.Trim() + "' + '%') AND (Email <> '" + Session["UserMail"].ToString() + "') AND (FullName <> N'admin admin')";



        string ssd1 = @"SELECT Login.Email, Login.City, Login.Gender, FList.S_Email, FList.R_Email, Login.FullName, Login.Photo, Login.Id FROM Login INNER JOIN FList ON Login.Email = FList.R_Email WHERE (FList.S_Email ='" + Label1.Text + "') AND (FList.R_Email <> '" + Label1.Text + "') AND (FList.R_Email <> '" + Session["UserMail"].ToString() + "')  AND (Login.ShowAtSearch <> 1) ORDER BY Login.First_nm";
        SqlDataSource2.SelectCommand = ssd1;
        GridView1.DataBind();


        ////  HiddenField1.Value = DropDownList2.SelectedValue.ToString();
        ////  GridView1.DataBind();
    }
    protected void Button14_Click2(object sender, EventArgs e)
    {
        timer.Visible = false;
    }
    protected void Button15_Click1(object sender, EventArgs e)
    {
        timer.Visible = false;
    }
    protected void Button7_Click(object sender, EventArgs e)
    {

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        Response.Redirect("~/web2nd/ContactGmail.aspx");
    }
}
