<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PopulateGcontacts.aspx.cs" Inherits="PopulateGcontacts" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>List of GmailContacts by Gmail User Credentials</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        &nbsp;<table width="100%">
            <tr>
                <td style="width: 100px; height: 20px;" colspan ="2">
                </td>
            </tr>
            <tr>
                <td style="width: 100px; height: 21px; text-align: left;" colspan ="2">
                    </td>
            </tr>
            <tr> 
                <td align="center" colspan ="2">
        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#E7E7FF"
            BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" Width="50%" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="12">
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <AlternatingRowStyle BackColor="#F7F7F7" />
        </asp:GridView>
                </td>
            </tr>
            <tr>
            <td style="height: 21px">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td>
                <td align="center" style="height: 21px">
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
