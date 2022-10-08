<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GmailContacts.aspx.cs" Inherits="web2nd_GmailContacts" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Get Gogle Contacts By Passing User Credentials</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table width="100%">
    <tr>
    <td align ="center" style="height:100px">
    </td>
    </tr>
    <tr>
    <td style="height: 21px">
   
    </td>
    </tr>
     <tr>
    <td align="center" style="font-family:Verdana;font-size:medium;color:Green;font-weight:bold ; height: 20px;"></td>
    </tr>
    <tr>
    <td align="center" valign="top"> 
    <fieldset  style="height:250px;width:200px;text-align:left;border-color:Green";>
    <legend><img src="../images/GmailLogo.gif" /></legend>
    <table width="450px">
    <tr>
    <td align="center" colspan ="2" style="color:Green;font-size:small;font-family:Arial ;font-weight:bolder;height:50px;font-variant:small-caps;font-size:16px">
       Get Google Contacts
       </td>
    </tr>
    
    <tr>
    <td align="right" style="font-family:Verdana;font-size:small; height: 25px;">
        Username
    </td>
    <td style="height: 25px">
        <asp:TextBox ID="txtgmailusername" runat="server" Font-Names="Verdana"></asp:TextBox>
    </td>
    </tr>
    
    <tr>
    <td align="right" style="font-family:Verdana;font-size:small">
        Password
    </td>
    <td>
        <asp:TextBox ID="txtpassword" runat="server" Font-Names="Verdana" TextMode="Password"></asp:TextBox>
    </td>
    
    </tr>
    
    <tr>
    <td align="right" style="font-family:Verdana;font-size:small">
        
    </td>
    <td>
        &nbsp;<asp:Button ID="Button1" runat="server" Font-Names="Verdana" 
            Text="Get Contacts" OnClick="Button1_Click" /></td>
    </tr>
    
    </table>
    </fieldset>
    </td>
    </tr>
    </table>
    </div>
    </form>
</body>
</html>
