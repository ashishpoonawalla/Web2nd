<%@ Page Language="C#" MasterPageFile="~/web2nd/main.master" AutoEventWireup="true" CodeFile="SendMail.aspx.cs" Inherits="web2nd_SendMail" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table border="0" cellpadding="0" cellspacing="2" style="width: 91%; position: static">
        <tr>
            <td style="width: 65px" valign="top">
                <asp:Label ID="Label4" runat="server" Style="position: static" Text="To Mail:"></asp:Label></td>
            <td style="width: 100px" valign="top">
                <asp:TextBox ID="TextBox2" runat="server" Style="position: static"></asp:TextBox></td>
            <td style="width: 100px" valign="top">
                <asp:Button ID="Button2" runat="server" BorderWidth="0px" Style="position: static"
                    Text="Send Mail" Width="97px" /></td>
        </tr>
        <tr>
            <td style="width: 65px" valign="top">
                <asp:Label ID="Label5" runat="server" Style="position: static" Text="From:"></asp:Label></td>
            <td style="width: 100px" valign="top">
                <asp:TextBox ID="TextBox3" runat="server" Style="position: static"></asp:TextBox></td>
            <td style="width: 100px" valign="top">
            </td>
        </tr>
        <tr>
            <td style="width: 65px" valign="top">
            </td>
            <td style="width: 100px" valign="top">
            </td>
            <td style="width: 100px" valign="top">
            </td>
        </tr>
        <tr>
            <td style="width: 65px" valign="top">
                <asp:Label ID="Label6" runat="server" Style="position: static" Text="Subject:"></asp:Label></td>
            <td style="width: 100px" valign="top">
                <asp:TextBox ID="TextBox4" runat="server" Style="position: static" Width="298px"></asp:TextBox></td>
            <td style="width: 100px" valign="top">
            </td>
        </tr>
        <tr>
            <td style="width: 65px" valign="top">
                <asp:Label ID="Label7" runat="server" Style="position: static" Text="Message:"></asp:Label></td>
            <td colspan="2" valign="top">
                <asp:TextBox ID="TextBox5" runat="server" Height="117px" Style="position: static"
                    TextMode="MultiLine" Width="459px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 65px" valign="top">
            </td>
            <td style="width: 100px" valign="top">
            </td>
            <td style="width: 100px" valign="top">
            </td>
        </tr>
    </table>
</asp:Content>

