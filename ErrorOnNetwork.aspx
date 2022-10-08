<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ErrorOnNetwork.aspx.cs" Inherits="ErrorOnNetwork" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <link href="MainStyle.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        &nbsp;</div>
        <table bgcolor="midnightblue" border="0" cellpadding="0" cellspacing="0" style="width: 100%;
            position: static">
            <tr>
                <td style="width: 100px">
                    <table border="0" cellpadding="0" cellspacing="0" style="position: static; background-color: transparent">
                        <tr>
                            <td style="width: 100px; height: 62px">
                                &nbsp;<asp:Label ID="Label16" runat="server" ForeColor="YellowGreen" Style="position: static"
                                    Width="90px"></asp:Label></td>
                            <td style="width: 100px; color: gray; height: 62px">
                                <table border="0" cellpadding="0" cellspacing="0" style="position: static">
                                    <tr>
                                        <td style="width: 100px; height: 52px">
                                            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="32pt" ForeColor="White"
                                                Style="position: static" Text="Web2nd" Width="478px"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 100px; height: 13px">
                                            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="10pt" ForeColor="Gainsboro"
                                                Style="position: static" Text="Campus for every one" Width="260px"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 100px; height: 13px">
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Font-Size="Larger" Style="position: static"
            Text="..." Width="556px"></asp:Label>
    </form>
</body>
</html>
