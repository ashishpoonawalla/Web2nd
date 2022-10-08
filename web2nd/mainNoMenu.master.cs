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

public partial class web2nd : System.Web.UI.MasterPage
{
    static string UserM = "", cng="", sql1, UserP="";   
    protected void Page_Load(object sender, EventArgs e)
    {
        //   Online Database set date for 3 minuts    

        DataHandle dh = new DataHandle();
        DateTime dddt1 = DateTime.Now.AddMinutes(3);
        string ddts1 = (dddt1.Year + "/" + dddt1.Month + "/" + dddt1.Day + " " + dddt1.ToLongTimeString());
        string hh1 = dh.SetData1("UPDATE Login SET LoginTime1='" + ddts1 + "' Where EMail='" + Session["UserMail"].ToString() + "' ");


                           
        
        if (IsPostBack == false)
        {

            Page.MaintainScrollPositionOnPostBack = true;
            //changeAdd();
        }
        UserM = Session["UserMail"].ToString();
        UserP = Session["UserPhoto"].ToString();

        

        //ImageButton1.ImageUrl = UserP;
        //Label1.Text = Session["UserName"].ToString();
      
        
    }


    //void changeAdd()
    //{
    //    if (Session["advA"] == null)
    //        Session["advA"] = "A1";

    //    if (Session["cntA"] == null)
    //        Session["cntA"] = "1";

    //    if (Session["advB"] == null)
    //        Session["advB"] = "B1";



    //    if (Session["advB"] == "B1")
    //        Session["advB"] = "B2";
    //    else if (Session["advB"] == "B2")
    //        Session["advB"] = "B3";
    //    else
    //        Session["advB"] = "B1";

    //    if (Session["cntA"] == "1")
    //    {
    //        Session["cntA"] = "2";

    //    }
    //    else
    //    {
    //        Session["cntA"] = "1";

    //        if (Session["advA"] == "A1")
    //            Session["advA"] = "A2";
    //        else
    //            Session["advA"] = "A1";
    //    }
    //}


    protected void Button2_Click(object sender, EventArgs e)
    {
      
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
       
    }
    protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
    {
        
    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
       
    }
    protected void FBTool1_Load(object sender, EventArgs e)
    {

    }
}
