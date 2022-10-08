<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ErrorPage.aspx.cs" Inherits="ErrorPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <link href="Main1.css" rel="stylesheet" type="text/css" />
    <link href="MainStyle.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        Web2nd.com<br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Font-Size="9pt" Style="position: static" Text="Sorry, we have some debug problem in page... try again"
            Width="619px"></asp:Label><br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Size="9pt" NavigateUrl="~/Default.aspx"
            Style="position: static">Login Again</asp:HyperLink></div>
    </form>
</body>
</html>
