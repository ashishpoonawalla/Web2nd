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

public partial class web2nd_1Photo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/web2nd/1Photo.aspx");
    }
  

    protected void Button1_Click1(object sender, EventArgs e)
    {
        if (CheckBox1.Checked)
        {

            Session["A_Name"] = TextBox1.Text;
            Session["UserPrivacy"] = DropDownList1.SelectedValue.ToString();
            Session["A_CoverPhoto"] = "";

            int ssw = 0;

            if (Session["Chance1"] == null)
            {

                Session["Chance1"] = "1";
            }
            else
            {
                ssw = Convert.ToInt32(Session["Chance1"].ToString());
                ssw++;
                Session["Chance1"] = ssw.ToString();
            }


            //ArrayList al = new ArrayList();
            //Session.Add("AnswerList", al);
            Session["ccn1"] = "1";

            Response.Redirect("~/web2nd/1PhotoCreate1.aspx");
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["UserPrivacy"] = DropDownList1.SelectedValue.ToString();
    }
}
