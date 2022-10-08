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

public partial class EDU_Network : System.Web.UI.Page
{
    static string cng, sql1, Dssf = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        string ff = Request.QueryString.Get("var1").ToString();
        Label1.Text = Label2.Text = ff;
        this.Title = Label1.Text;





        cng = ConfigurationManager.AppSettings["conn1"];
        sql1 = "select * from NetworkInfo where NetworkPath='" + ff + "' ";
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
                    Response.Redirect("~/ErrorOnNetwork.aspx");
                }
                else
                {
                   
                    Response.Redirect("~/EDU/W2/Main.aspx");
                }

            }
            else
            {
                Session["NetError"] = "Sorry, Not a valid network. Use a right network name.. or contact to authorised person.";
                Response.Redirect("~/ErrorOnNetwork.aspx");
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

}

