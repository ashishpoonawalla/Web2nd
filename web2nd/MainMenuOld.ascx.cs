using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class web2nd_MainMenu : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string UserP = Session["UserPhoto"].ToString();
        ImageButton1.ImageUrl = UserP;


        if (IsPostBack == false)
        {

            ImageMap1.HotSpotMode = HotSpotMode.PostBack;
            ImageMap2.HotSpotMode = HotSpotMode.PostBack;
            ImageMap3.HotSpotMode = HotSpotMode.PostBack;
            ImageMap4.HotSpotMode = HotSpotMode.PostBack;


            CircleHotSpot ch0 = new CircleHotSpot();
            CircleHotSpot ch1 = new CircleHotSpot();
            CircleHotSpot ch2 = new CircleHotSpot();
            CircleHotSpot ch3 = new CircleHotSpot();

            ch0.X = ch0.Y = ch1.X = ch1.Y = ch2.X = ch2.Y = ch3.X = ch3.Y = 25;
            ch0.Radius = ch1.Radius = ch2.Radius = ch3.Radius = 30;


            ch0.PostBackValue = ch0.AlternateText = "Home";
            ImageMap1.HotSpots.Add(ch0);

            ch1.PostBackValue = ch1.AlternateText = "Profile";
            ImageMap2.HotSpots.Add(ch1);

            ch2.PostBackValue = ch2.AlternateText = "Setting";
            ImageMap3.HotSpots.Add(ch2);

            ch3.PostBackValue = ch3.AlternateText = "Logout";
            ImageMap4.HotSpots.Add(ch3);           

        }

        if (Session["UserName"] != null)
        Label2.Text = Session["UserName"].ToString();

        if (Session["TitleW2"] != null)
        Label3.Text = Session["TitleW2"].ToString();
    
        
        changeAdd();
       
    }

    void changeAdd()
    {
        if (Session["advA"] == null)
            Session["advA"] = "A1";

        if (Session["cntA"] == null)
            Session["cntA"] = "1";

        if (Session["advB"] == null)
            Session["advB"] = "B1";



        if (Session["advB"] == "B1")
            Session["advB"] = "B2";
        else if (Session["advB"] == "B2")
            Session["advB"] = "B3";
        else
            Session["advB"] = "B1";

        if (Session["cntA"] == "1")
        {
            Session["cntA"] = "2";

        }
        else
        {
            //Session["cntA"] = "1";

            //if (Session["advA"] == "A1")
            //    Session["advA"] = "A2";
            //else
            Session["advA"] = "A1";
        }
    }
    


    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/web2nd/Network.aspx");
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("SearchResult.aspx?var1=" + TextBox1.Text);
    }
     
    protected void ImageMap1_Click(object sender, ImageMapEventArgs e)
    {
        Response.Redirect("~/web2nd/web2ndmain.aspx");
    }
    protected void ImageMap2_Click(object sender, ImageMapEventArgs e)
    {
        Response.Redirect("~/web2nd/1Profile.aspx");
    }
    protected void ImageMap3_Click(object sender, ImageMapEventArgs e)
    {
        Response.Redirect("~/web2nd/3MyAccount.aspx");
    }
    protected void ImageMap4_Click(object sender, ImageMapEventArgs e)
    {
        Response.Redirect("~/logout.aspx");
    }
    protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
    {
       
    }
}
