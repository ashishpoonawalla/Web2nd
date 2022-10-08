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

public partial class web2nd_LeftMenu1 : System.Web.UI.UserControl
{
   
    protected void Page_Load(object sender, EventArgs e)
    {
       //string UserP = Session["UserPhoto"].ToString();
       //Image2.ImageUrl = UserP;


        if (Session["advA"] == null)
        {
            Session["advA"] = "A1";
        }

        if (Session["advB"] == null)
        {
            Session["advB"] = "B1";
        }
        if (Session["cntA"] == null)
        {
            Session["cntA"] = "1".ToString();
        }
        
    }

  
    protected void Timer1_Tick(object sender, EventArgs e)
    {


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
            Session["cntA"] = "1";

            if (Session["advA"] == "A1")
                Session["advA"] = "A2";
            else
                Session["advA"] = "A1";
        }
     
    }
 
}
