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

public partial class web2nd_ManageGroup : System.Web.UI.Page
{
    static string UserM="", cng="", sql1="", ListNameFList="";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {

            UserM = Session["UserMail"].ToString();
            loadList1();
        }
    }

    void loadList1()
    {
        ListBox1.Items.Clear();
        cng = ConfigurationManager.AppSettings["conn1"];
        sql1 = "select * from GList where Email='" + UserM + "' ";
        SqlConnection con1 = new SqlConnection(cng);
        SqlCommand cmd1 = new SqlCommand(sql1, con1);
        SqlDataReader dr;
        try
        {
            con1.Open();
            dr = cmd1.ExecuteReader();

            while (dr.Read())
            {
                ListBox1.Items.Add(dr[2].ToString());

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

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox1.Text = DropDownList1.Text;
    }
    
    protected void Button3_Click(object sender, EventArgs e)
    {
        int dd = 0,dd1 =-1;
        string ss1 = TextBox1.Text.Trim();

        dd1 = ss1.IndexOf(".");

        foreach (ListItem hh in ListBox1.Items)
        {

            if (hh.ToString().ToUpper() == ss1.ToUpper())
            {
                dd = 1;
                break;
            }
        }

        if (dd1 > -1)
        {
            Label3.Text = "don't use .(dot) in list name ";
        }
        else if (dd == 1)
        {
            Label3.Text = "repeat of list name not allow ";
        }
        else
        {
            cng = ConfigurationManager.AppSettings["conn1"];
            sql1 = "INSERT INTO GList(Email, ListName) values('" + UserM + "','" + ss1 + "') ";
            SqlConnection con11 = new SqlConnection(cng);
            SqlCommand cmd11 = new SqlCommand(sql1, con11);
            try
            {
                Label3.Text = " ";
                con11.Open();
                int x = cmd11.ExecuteNonQuery();
                Label3.Text = "List Inserted!!!";
                loadList1();
                
            }
            catch (Exception ee)
            {
                Label3.Text = ee.Message;
            }
            finally
            {
                con11.Close();
            }

        }
    }
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        Panel2.Visible = false;

    }
    
    protected void Button2_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = true;
    }
    
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {
       // Label4.Text = DataList1.SelectedValue.ToString();
    }
    
    protected void ImageButton11_Click(object sender, ImageClickEventArgs e)
    {
        //Label4.Text = DataList1.SelectedValue.ToString();
    }

    protected void DataList1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        Label4.Text = DataList1.SelectedValue.ToString();
        loadCHKList1();
    }


    void loadCHKList1()
    {
        CheckBoxList1.Items.Clear();
        cng = ConfigurationManager.AppSettings["conn1"];
        sql1 = "select * from GList where Email='" + UserM + "' ";
        SqlConnection con1 = new SqlConnection(cng);
        SqlCommand cmd1 = new SqlCommand(sql1, con1);
        SqlDataReader dr;
        try
        {
            con1.Open();
            dr = cmd1.ExecuteReader();
            int ff9 = 0;
            while (dr.Read())
            {
                CheckBoxList1.Items.Add(dr[2].ToString());
                ff9 = 1;
            }
            if (ff9 == 1)
            loadListFList();
        }
        catch (Exception ee)
        {
            Label3.Text = ee.Message;
        }
        finally
        {
            con1.Close();
        }


        int ff=0;
        if (ListNameFList != "")
        {
            string myString = ListNameFList;
            char[] separator = { '.' };
            string[] myWords;
            myWords = myString.Split(separator);
            //Label6.Text = "";
            foreach (string word in myWords)
            {
                for (ff = 0; ff < CheckBoxList1.Items.Count; ff++)
                {
                    //Label6.Text += ff.ToString();
                    if (word.ToUpper() == CheckBoxList1.Items[ff].Text.ToUpper() )
                    CheckBoxList1.Items[ff].Selected = true;
                }
            }



          

        }

    }

    void loadListFList()
    {
        ListNameFList ="";
        cng = ConfigurationManager.AppSettings["conn1"];
        sql1 = "select * from FList where id=" + Label4.Text;
        SqlConnection con1 = new SqlConnection(cng);
        SqlCommand cmd1 = new SqlCommand(sql1, con1);
        SqlDataReader dr;
        try
        {
            con1.Open();
            dr = cmd1.ExecuteReader();

            if (dr.Read())
            {
                ListNameFList = dr[7].ToString().Trim();
            }
        }
        catch (Exception ee)
        {
            Label6.Text = ee.Message;
        }
        finally
        {
            con1.Close();
        }

    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        UpdateFlist();
    }

    void UpdateFlist()
    {
        string ssdd = "";
        int hhss = 0;

        foreach (ListItem hh in CheckBoxList1.Items)
        {
            if (hh.Selected == true)
            {
                ssdd = ssdd + "." + hh;
                hhss++;

            }
            //Label6.Text = ssdd;
        }

        ////// -------------- Update Data Base --------



        if (hhss > 10)
        {
            Label6.Text = "more than 10 group not allow ";
        }
        else
        {
            cng = ConfigurationManager.AppSettings["conn1"];
            sql1 = "UPDATE FList SET ListName='" + ssdd + "' Where id=" + Label4.Text;
            SqlConnection con11 = new SqlConnection(cng);
            SqlCommand cmd11 = new SqlCommand(sql1, con11);
            try
            {
                con11.Open();
                int x = cmd11.ExecuteNonQuery();
                FormView1.DataBind();
            }
            catch (Exception ee)
            {
                Label3.Text = ee.Message;
            }
            finally
            {
                con11.Close();
            }

        }

    }


    protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label3.Text = ListBox1.Text;
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        cng = ConfigurationManager.AppSettings["conn1"];
        sql1 = "DELETE FROM GList Where Email='" + UserM + "' AND ListName='" + Label3.Text + "' ";
        SqlConnection con11 = new SqlConnection(cng);
        SqlCommand cmd11 = new SqlCommand(sql1, con11);
        try
        {
           
            con11.Open();
            int x = cmd11.ExecuteNonQuery();
            Label3.Text = "Record Deleted.";
            loadList1();

        }
        catch (Exception ee)
        {
            Label3.Text = ee.Message;
        }
        finally
        {
            con11.Close();
        }
    }
    protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        UpdateFlist();
    }
}
