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

public partial class ChangeNetwork : System.Web.UI.UserControl
{
    static string cng = "", sql1 = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {




            MenuItem mnuTest = new MenuItem();
            mnuTest.Text = "Change Network"; mnuTest.Value = "Change Network";// Menu1.Items.Add(mnuTest); 

            string myString = "#MAUCOM#IITK#IIMA#Indian Institute of Planing and Management#"; //Session["UserNet"].ToString();
            char[] separator = { '#' };
            string[] myWords;
            myWords = myString.Split(separator);

            for (int x = 1; x < myWords.Length - 1; x++)
            {
                //MenuItem aa = new MenuItem();
                //aa.Text = myWords[x];
                //aa.Value = myWords[x];
                //Menu1.Items.AddAt(aa);
                {
                    MenuItem mnuChild = new MenuItem();

                    mnuChild.Text = myWords[x]; mnuChild.Value = myWords[x]; mnuTest.ChildItems.Add(mnuChild);
                }
                // ListBox1.Items.Add(myWords[x]);
            }
            Menu1.Items.Add(mnuTest);
        }
    }


    protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
    {
       string  Label11 = Menu1.SelectedValue.ToString();



        if (Label11.Trim().ToUpper() == Session["NetName"].ToString().Trim().ToUpper())
        {
            Label11 = "Same Network";

        }
        else
        {


            cng = ConfigurationManager.AppSettings["conn1"];
            sql1 = "select * from NetworkInfo where NetworkName='" + Label11.Trim() + "' ";
            SqlConnection con1 = new SqlConnection(cng);
            SqlCommand cmd1 = new SqlCommand(sql1, con1);
            SqlDataReader dr;
            try
            {
                con1.Open();
                dr = cmd1.ExecuteReader();

                if (dr.Read())
                {


                    Session["NetName"] = dr[2].ToString();
                    Session["NetMail"] = dr[3].ToString();
                    Session["NetPhoto"] = dr[4].ToString().Trim();
                    Session["NetCity"] = dr[5].ToString();
                    Session["NetType"] = dr[8].ToString();
                    Session["NetPath"] = dr[9].ToString();

                    Session["TitleW2"] = "Web2nd";
                    if (dr[13].ToString().Trim() == "N")
                    {
                        Session["NetError"] = "Sorry, Network is unavailable. Contact us.";
                        //  Response.Redirect("~/ErrorOnNetwork.aspx");
                    }
                    else
                    {

                        Session["NetIm1"] = @"~\Images\edu11.PNG";
                        Session["NetIm2"] = @"~\Images\edu22.PNG";
                        Session["NetIm3"] = @"~\Images\edu33.PNG";
                        Session["NetIm4"] = @"~\Images\edu44.PNG";

                        GetNetworkDetail();

                        Response.Redirect("~/EDU/W2/User/Main.aspx");

                    }

                }
                else
                {
                    Session["NetError"] = "Sorry, Not a valid network. Use a right network name.. or contact to authorised person.";
                    // Response.Redirect("~/ErrorOnNetwork.aspx");
                }
            }


            catch (Exception ee)
            {
                Label11 = ee.Message;
            }
            finally
            {
                con1.Close();
            }
        }

    }
    void GetNetworkDetail()
    {


        cng = ConfigurationManager.AppSettings["conn1"];
        sql1 = "select * from NetworkDetail where NetworkEMail='" + Session["NetMail"].ToString().Trim() + "' ";
        SqlConnection con1 = new SqlConnection(cng);
        SqlCommand cmd1 = new SqlCommand(sql1, con1);
        SqlDataReader dr;
        try
        {
            con1.Open();
            dr = cmd1.ExecuteReader();

            if (dr.Read())
            {
                Session["NetIm1"] = dr[1].ToString();
                Session["NetIm2"] = dr[2].ToString();
                Session["NetIm3"] = dr[3].ToString();
                Session["NetIm4"] = dr[4].ToString();
            }

        }
        catch (Exception ee)
        {
           string Label11 = ee.Message;
        }
        finally
        {
            con1.Close();
        }
    }
}