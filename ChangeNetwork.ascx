<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ChangeNetwork.ascx.cs" Inherits="ChangeNetwork" %>
<asp:Menu ID="Menu1" runat="server" BackColor="#B5C7DE" DynamicHorizontalOffset="2"
    Font-Names="Verdana" Font-Size="9pt" ForeColor="MidnightBlue" Orientation="Horizontal"
    StaticSubMenuIndent="10px" Style="position: static" OnMenuItemClick="Menu1_MenuItemClick" Width="100px">
    <StaticSelectedStyle BackColor="#507CD1" />
    <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
    <DynamicHoverStyle BackColor="#284E98" ForeColor="White" />
    <DynamicMenuStyle BackColor="WhiteSmoke" BorderColor="#404040" BorderStyle="Solid" BorderWidth="1px" />
    <DynamicSelectedStyle BackColor="#507CD1" />
    <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
    <StaticHoverStyle BackColor="#284E98" ForeColor="White" />
</asp:Menu>
<asp:Label ID="Label1" runat="server" Style="position: static" Text="Label" Visible="False"></asp:Label>
