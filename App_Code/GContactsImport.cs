using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using Google.GData.Contacts;
using Google.GData.Client;
using Google.GData.Extensions;
using Google.GData.Apps;
using Google.Contacts;


/// <summary>
/// Summary description for GContactsImport
/// </summary>
public class GContactsImport
{
	public GContactsImport()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public static  DataSet GetGmailContacts(string App_Name, string Uname, string UPassword)
    {
        DataSet ds = new DataSet();

        DataTable dt = new DataTable();

        DataColumn C2 = new DataColumn();

        C2.DataType = Type.GetType("System.String");

        C2.ColumnName = "EmailID";

        dt.Columns.Add(C2);

        RequestSettings rs = new RequestSettings(App_Name, Uname, UPassword);

        rs.AutoPaging = true;

        ContactsRequest cr = new ContactsRequest(rs);

        Feed<Contact> f = cr.GetContacts();

        foreach (Contact t in f.Entries)
        {
            foreach (EMail email in t.Emails)
            {
                DataRow dr1 = dt.NewRow();
                dr1["EmailID"] = email.Address.ToString();
                dt.Rows.Add(dr1);
            }

        }
        ds.Tables.Add(dt);
        return ds;
    }
    


}
