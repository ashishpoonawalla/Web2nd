<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Data2.aspx.cs" Inherits="tmp_Data2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                    SelectCommand="SELECT TOP (2) id, S_Email, S_Photo FROM MessageTable ORDER BY id DESC">
                </asp:SqlDataSource>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Button" /><br />
                <asp:Timer ID="Timer1" runat="server" Interval="5000" OnTick="Timer1_Tick">
                </asp:Timer>
                <asp:Label ID="Label1" runat="server" Text="2"></asp:Label>&nbsp;<br />
                <asp:DataList ID="DataList1" runat="server" CellPadding="4" DataKeyField="id" DataSourceID="SqlDataSource1"
                    ForeColor="#333333" Width="627px">
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <AlternatingItemStyle BackColor="White" />
                    <ItemStyle BackColor="#EFF3FB" />
                    <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <ItemTemplate>
                        id:
                        <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>'></asp:Label>
                        &nbsp; S_Email:
                        <asp:Label ID="S_EmailLabel" runat="server" Text='<%# Eval("S_Email") %>' Width="422px"></asp:Label>&nbsp;
                        <asp:Image ID="Image1" runat="server" Height="35px" ImageUrl='<%# Eval("S_Photo") %>'
                            Width="39px" /><br />
                        <br />
                    </ItemTemplate>
                </asp:DataList>
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:Image ID="Image2" runat="server"
                    ImageUrl="~/images/Wait.gif" /><br />
                <asp:Label ID="Label2" runat="server" ForeColor="Red" Text="no more record to display..."
                    Visible="False" Width="424px"></asp:Label>
            </ContentTemplate>
        </asp:UpdatePanel>
        <br />
        <br />
        &nbsp;
        <br />
    
    </div>
    </form>
</body>
</html>
