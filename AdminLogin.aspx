<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="AdminLogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <link href="Main1.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table bgcolor="gainsboro" border="0" cellpadding="0" cellspacing="2" style="position: static">
            <tr>
                <td colspan="3">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="14pt" ForeColor="#404040"
                        Style="position: static" Text="Admin Login" Width="448px"></asp:Label></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="Label2" runat="server" Style="position: static" Text="Advance Password" Width="134px"></asp:Label></td>
                <td style="width: 100px">
                    <asp:TextBox ID="TextBox1" runat="server" Style="position: static" TextMode="Password"></asp:TextBox></td>
                <td style="width: 100px">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Style="position: static"
                        Text="Login to Admin" Width="117px" BorderWidth="1px" Font-Bold="True" /></td>
            </tr>
            <tr>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
