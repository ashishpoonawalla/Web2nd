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

public partial class web2nd_1Photo : System.Web.UI.Page
{
    static string UserM = "", cng = "", sql1 = "", UserP = "", PicID = "", Pic1 = "", PicMail="";
    static int pX = -1, pY = -1;
    

    protected void Page_Load(object sender, EventArgs e)
    {
        //Session["SubSubAlbum"] = DataList1.SelectedValue.ToString();
        //Session["IndexAlbum"] = DataList1.SelectedIndex.ToString();
       
        
        //Page.MaintainScrollPositionOnPostBack = true;

        if (Session["PhotoEdit"].ToString() == "Y")
        {
            LinkButton1.Visible = true;
            DataList1.Visible = true;
        }
        else
        {
            LinkButton1.Visible = false;
            DataList1.Visible = false;
        }

        if (IsPostBack==false)
        {
            Label4.Text = Session["AlbumTitle1"].ToString();

           // Page.MaintainScrollPositionOnPostBack = true;
            if (Session["IndexAlbum"] != null)
            {
               
                int dd = Convert.ToInt32(Session["IndexAlbum"].ToString());
              //  FormView1.PageIndex = dd;
                loadImageMappic();
               
            }
            if (DataList2.Items.Count > 5)
                Panel1.ScrollBars = ScrollBars.Vertical;
            else
                Panel1.ScrollBars = ScrollBars.None;
        }
      
    }
   
    protected void Button1_Click1(object sender, EventArgs e)
    {
        //Response.Redirect("~/web2nd/1PhotoCreate.aspx");
    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {
      

    }
    protected void DataList1_SelectedIndexChanged1(object sender, EventArgs e)
    {
     

    }
   
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        if (LinkButton1.Text == "| Tag Image")
        {
            //Label1.Text = Session["SubSubAlbum"].ToString();

            loadpic();

            if (Pic1 != "")
            {

                ImageMap1.Visible = false;
                ImageButton2.Visible = true;
                LinkButton1.Text = "| End Tag";
                ImageButton2.ImageUrl = Pic1;

            }


        }
        else
        {
            LinkButton1.Text = "| Tag Image";
            ImageMap1.Visible = true;
            ImageButton2.Visible = false;
            loadTag();

        }
    }

    void loadImageMappic()
    {
        PicID = Session["SubSubAlbum"].ToString();
           
        loadpic();
        loadTag();     
        ImageMap1.ImageUrl = Pic1;
    }


    void loadpic()
    {

        PicID  = Session["SubSubAlbum"].ToString();
        
        cng = ConfigurationManager.AppSettings["conn1"];
        sql1 = "select * from PhotoAlbum2 where PID=" + PicID ;
        SqlConnection con1 = new SqlConnection(cng);
        SqlCommand cmd1 = new SqlCommand(sql1, con1);
        SqlDataReader dr;
        try
        {
            con1.Open();
            dr = cmd1.ExecuteReader();

            if (dr.Read())
            {
                Pic1 = dr[5].ToString().Trim();
               // Label1.Text = "Load";
            }
          
        }
        catch (Exception ee)
        {
            //Label1.Text = ee.Message;
        }
        finally
        {
            con1.Close();
        }


    }

    void loadTag()
    {
        PicID = Session["SubSubAlbum"].ToString();

        ImageMap1.HotSpotMode = HotSpotMode.PostBack;
        CircleHotSpot chs;



        cng = ConfigurationManager.AppSettings["conn1"];
        sql1 = "select * from PhotoAlbum2Tag where PID=" + PicID;
        SqlConnection con1 = new SqlConnection(cng);
        SqlCommand cmd1 = new SqlCommand(sql1, con1);
        SqlDataReader dr;
        try
        {
            con1.Open();
            dr = cmd1.ExecuteReader();

           while (dr.Read())
            {
                int ppx=0, ppy=0;
                string pps = "";
                ppx = Convert.ToInt32(dr[2].ToString());
                ppy = Convert.ToInt32(dr[3].ToString());
                pps = dr[4].ToString();
                

                chs = new CircleHotSpot();
                chs.X = ppx;
                chs.Y = ppy;
                chs.Radius = 30;
                chs.PostBackValue = pps;
                chs.AlternateText = pps;
                ImageMap1.HotSpots.Add(chs);


            }

        }
        catch (Exception ee)
        {
           // Label1.Text = ee.Message;
        }
        finally
        {
            con1.Close();
        }


    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {

    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {

        pX = e.X;        pY = e.Y;
        //Label1.Text = pX.ToString() + " ---- " + pY.ToString();

        //bttn = "Comment";
        Panel9.Visible = true;
        timer.Visible = true;

    }
    protected void Button15_Click1(object sender, EventArgs e)
    {
        Panel9.Visible = true;
        timer.Visible = true;
        string txt = "";
        txt = TextBox8.Text;
        if (txt != "" && pX >-1 && pY > -1)
        {
            string dd = "<B>" + txt + "</B>: " + txt;

            sql1 = "INSERT INTO PhotoAlbum2Tag(PID, PicX, PicY, PicText, PicMail) values(" + PicID  + ",'" + pX  + "','" + pY  + "','" +  txt + "', 'd' ) ";
            SqlConnection con11 = new SqlConnection(cng);
            SqlCommand cmd11 = new SqlCommand(sql1, con11);
            try
            {
                con11.Open();
                Panel9.Visible = false;
                timer.Visible = false;
                int x = cmd11.ExecuteNonQuery();
                TextBox8.Text = "";
            }
            catch (Exception ee)
            {
                //Label10.Text = ee.Message;
            }
            finally
            {
                con11.Close();
            }
        }
    }
    protected void Button14_Click2(object sender, EventArgs e)
    {
        Panel9.Visible = false;
        timer.Visible = false;

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox8.Text = DropDownList1.Text;
    }
    protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
    {

    }
    protected void DataList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["SubSubAlbum"] = DataList2.SelectedValue.ToString();
        loadImageMappic();
    }
}

