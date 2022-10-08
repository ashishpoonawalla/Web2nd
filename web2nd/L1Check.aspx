<%@ Page Language="C#" AutoEventWireup="true" CodeFile="L1Check.aspx.cs" Inherits="web2nd_L1Check" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
            SelectCommand="SELECT Login.Email, Login.Id, Login.FullName, Login.Photo, Login.City, Login.Country, FList.id AS Expr1, FList.S_Email, FList.R_Email FROM Login INNER JOIN FList ON Login.Email = FList.R_Email Where  (FList.S_Email = @sml)   AND ( FList.R_Email <> @sml)        ORDER BY Login.FullName">
            <SelectParameters>
                <asp:SessionParameter Name="sml" SessionField="UserMail" />
            </SelectParameters>
        </asp:SqlDataSource>
        &nbsp;</div>
        <asp:Label ID="Label1" runat="server" Text="Label" Width="253px" Visible="False"></asp:Label><br />
        <asp:Label ID="Label2" runat="server" Text="Label" Width="459px" Visible="False"></asp:Label>
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" DataSourceID="SqlDataSource1"
            ForeColor="#333333" GridLines="None" Width="736px" Visible="False">
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <RowStyle BackColor="#EFF3FB" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <EditRowStyle BackColor="#2461BF" />
            <AlternatingRowStyle BackColor="White" />
        </asp:GridView>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="." Width="240px" Visible="False"></asp:Label><br />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
            SelectCommand="SELECT Login.Email, Login.Id, Login.FullName, Login.Photo, Login.City, Login.Country, FList.id AS Expr1, FList.S_Email, FList.R_Email FROM Login INNER JOIN FList ON Login.Email = FList.R_Email Where  (FList.S_Email = @sml)   AND ( FList.R_Email <> @sml)        ORDER BY Login.FullName">
            <SelectParameters>
                <asp:ControlParameter ControlID="Label3" Name="sml" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView2" runat="server" CellPadding="4" DataSourceID="SqlDataSource2"
            ForeColor="#333333" GridLines="None" Width="736px" Visible="False">
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <RowStyle BackColor="#EFF3FB" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <EditRowStyle BackColor="#2461BF" />
            <AlternatingRowStyle BackColor="White" />
        </asp:GridView>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        Result = &nbsp;<asp:Label ID="Label4" runat="server" Text="Label" Width="333px" Visible="False"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Text="Label" Visible="False" Width="541px"></asp:Label>
    </form>
</body>
</html>
