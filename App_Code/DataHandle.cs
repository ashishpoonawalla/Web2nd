using System;
using System.Data;
using System.Data.SqlClient ;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

/// <summary>
/// Summary description for DataHandle
/// </summary>
public class DataHandle
{
	public DataHandle()
	{
		
	}

    public string SetData1(string sqlcmd)
    {
        string result = "";
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        SqlCommand cmd = new SqlCommand(sqlcmd, con);
        try
        {
            con.Open();
            int x = cmd.ExecuteNonQuery();
            result = x.ToString();
        }
        catch (Exception ee)
        {
            result  = ee.Message;
        }
        finally
        {
            con.Close();
        }

        return result;
    }
}
