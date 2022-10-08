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

public partial class web2nd_FBTool : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton7_Click(object sender, ImageClickEventArgs e)
    {

        //string fullURL = "window.open('1Chat.aspx', '_blank', 'height=500,width=300,status=no,toolbar=no,menubar=no,location=no,scrollbars=no,resizable=no,titlebar=no' );";
        //ScriptManager.RegisterStartupScript(this, typeof(string), "OPEN_WINDOW", fullURL, true);

    }
    protected void ImageButton7_Click1(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Chat1.aspx");
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/web2nd/Web2ndPhoto.aspx");
    }
    protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/web2nd/web2ndmain.aspx");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        string ts1 = @"~\web2nd\Image\ToolCam1.bmp";
        Session["Sqlcng"] = @"SELECT MessageTable.id, MessageTable.S_Email, MessageTable.S_Photo, MessageTable.Message1, MessageTable.Type, MessageTable.URL1, MessageTable.Date1, MessageTable.Time1, MessageTable.datetime1, MessageTable.pic1, MessageTable.Privacy1, FList.S_Email AS Expr1, FList.R_Email FROM MessageTable INNER JOIN FList ON MessageTable.S_Email = FList.R_Email WHERE (FList.S_Email = @S_Email) AND (MessageTable.datetime1 > @dtd) AND (MessageTable.Type <> '2') AND (MessageTable.Privacy1>1 OR MessageTable.S_Email=@S_Email ) AND (MessageTable.Type='" + ts1 + "') ORDER BY MessageTable.datetime1 DESC";

        Response.Redirect("~/web2nd/web2ndmain2.aspx");
    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        string ts1 = @"~\web2nd\Image\ToolCalender.bmp";
        Session["Sqlcng"] = @"SELECT MessageTable.id, MessageTable.S_Email, MessageTable.S_Photo, MessageTable.Message1, MessageTable.Type, MessageTable.URL1, MessageTable.Date1, MessageTable.Time1, MessageTable.datetime1, MessageTable.pic1, MessageTable.Privacy1, FList.S_Email AS Expr1, FList.R_Email FROM MessageTable INNER JOIN FList ON MessageTable.S_Email = FList.R_Email WHERE (FList.S_Email = @S_Email) AND (MessageTable.datetime1 > @dtd) AND (MessageTable.Type <> '2') AND (MessageTable.Privacy1>1 OR MessageTable.S_Email=@S_Email ) AND (MessageTable.Type='" + ts1 + "') ORDER BY MessageTable.datetime1 DESC";

        Response.Redirect("~/web2nd/web2ndmain2.aspx");
    }
    protected void ImageButton8_Click(object sender, ImageClickEventArgs e)
    {
        string ts1 = @"~\web2nd\Image\ToolLink.bmp";
        Session["Sqlcng"] = @"SELECT MessageTable.id, MessageTable.S_Email, MessageTable.S_Photo, MessageTable.Message1, MessageTable.Type, MessageTable.URL1, MessageTable.Date1, MessageTable.Time1, MessageTable.datetime1, MessageTable.pic1, MessageTable.Privacy1, FList.S_Email AS Expr1, FList.R_Email FROM MessageTable INNER JOIN FList ON MessageTable.S_Email = FList.R_Email WHERE (FList.S_Email = @S_Email) AND (MessageTable.datetime1 > @dtd) AND (MessageTable.Type <> '2') AND (MessageTable.Privacy1>1 OR MessageTable.S_Email=@S_Email ) AND (MessageTable.Type='" + ts1 + "') ORDER BY MessageTable.datetime1 DESC";

        Response.Redirect("~/web2nd/web2ndmain2.aspx");
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/web2nd/2AllFriends.aspx");
    }
    protected void ImageButton9_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/web2nd/Messages.aspx");
    }
}
