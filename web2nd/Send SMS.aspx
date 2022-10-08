<%@ Page Language="C#" MasterPageFile="~/web2nd/main.master" AutoEventWireup="true" CodeFile="Send SMS.aspx.cs" Inherits="web2nd_Send_SMS" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table border="0" cellpadding="0" cellspacing="2" style="position: static" width="510">
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label8" runat="server" Style="position: static" Text="Mobile No:"></asp:Label></td>
            <td style="width: 83px">
                <asp:TextBox ID="TextBox6" runat="server" Style="position: static" Width="226px"></asp:TextBox></td>
            <td style="width: 100px">
                <asp:Button ID="Button6" runat="server" Style="position: static" Text="Send SMS"
                    Width="83px" BorderWidth="0px" /></td>
        </tr>
        <tr>
            <td style="width: 100px; height: 1px">
            </td>
            <td style="width: 83px; height: 1px">
            </td>
            <td style="width: 100px; height: 1px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label9" runat="server" Style="position: static" Text="Message:"></asp:Label></td>
            <td colspan="2">
                <asp:TextBox ID="TextBox7" runat="server" Height="40px" Style="position: static"
                    TextMode="MultiLine" Width="370px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 83px">
            </td>
            <td style="width: 100px">
            </td>
        </tr>
    </table>
</asp:Content>

