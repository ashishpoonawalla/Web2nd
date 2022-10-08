<%@ Page Language="C#" MasterPageFile="~/web2nd/main.master" AutoEventWireup="true" CodeFile="ContactGmail.aspx.cs" Inherits="web2nd_ContactGmail" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">
            <table style="width: 602px">
                <tr>
                    <td align="center" colspan="2" style="font-weight: bolder; font-size: 16px; color: green;
                        font-family: Arial; height: 50px; font-variant: small-caps">
                        <img src="../images/GmailLogo.gif" /></td>
                </tr>
                <tr>
                    <td align="center" colspan="2" style="font-weight: bolder; font-size: 16px; color: green;
                        font-family: Arial; height: 50px; font-variant: small-caps">
                        Get Google Contacts
                    </td>
                </tr>
                <tr>
                    <td align="right" style="font-size: small; width: 95px; font-family: Verdana; height: 25px">
                        <asp:Label ID="Label1" runat="server" Text="User Name"></asp:Label></td>
                    <td style="height: 25px">
                        <asp:TextBox ID="txtgmailusername" runat="server" Font-Names="Verdana"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="font-size: small; width: 95px; font-family: Verdana">
                        <asp:Label ID="Label2" runat="server" Text="Password "></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtpassword" runat="server" Font-Names="Verdana" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="font-size: small; width: 95px; font-family: Verdana">
                    </td>
                    <td>
                        &nbsp;<asp:Button ID="Button1" runat="server" BackColor="CornflowerBlue" BorderWidth="0px"
                            Font-Names="Verdana" OnClick="Button1_Click" Text="Get Contacts" /></td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <asp:Button ID="Button2" runat="server" BackColor="Silver" BorderWidth="0px" Text="Back to Gmail Login "
                Width="217px" /><br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" BackColor="White"
                BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal"
                OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="12" Width="500px">
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <AlternatingRowStyle BackColor="#F7F7F7" />
            </asp:GridView>
        </asp:View>
    </asp:MultiView>
    <br />
</asp:Content>

