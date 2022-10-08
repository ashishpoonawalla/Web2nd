<%@ Page Language="C#" MasterPageFile="~/web2nd/main.master" AutoEventWireup="true" CodeFile="2PendingReq.aspx.cs" Inherits="web2nd_SearchResult" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
   <script language="javascript" type="text/javascript">
function check1()
{
 
        alert("Your Request of Friendship sent....");
      // return false;
   
}
</script>

    <asp:UpdatePanel id="UpdatePanel1" runat="server">
        <contenttemplate>
<TABLE style="WIDTH: 100%; POSITION: static" cellSpacing=5 cellPadding=0><TBODY><TR><TD vAlign=top align=left colSpan=2>&nbsp;<asp:Button style="POSITION: static" id="Button2" onclick="Button2_Click" runat="server" Width="176px" Height="25px" Text="Request Send" BorderColor="DimGray" Font-Bold="True" BorderWidth="1px" BackColor="#FFE0C0"></asp:Button> <asp:Button style="POSITION: static" id="Button1" onclick="Button1_Click1" runat="server" Width="180px" Height="25px" Text="Request Recieved" BorderColor="DimGray" Font-Bold="True" BorderWidth="1px" BackColor="#C0C0FF"></asp:Button></TD></TR><TR><TD vAlign=top align=left colSpan=2><asp:SqlDataSource id="SqlDataSource2" runat="server" UpdateCommand="UPDATE [ReqPending] SET [S_Email] = @S_Email, [S_Gender] = @S_Gender, [S_FullName] = @S_FullName, [S_Photo] = @S_Photo, [S_City] = @S_City, [S_Country] = @S_Country, [R_Email] = @R_Email, [R_Gender] = @R_Gender, [R_FullName] = @R_FullName, [R_Photo] = @R_Photo, [R_City] = @R_City, [R_Country] = @R_Country, [Date1] = @Date1, [Time1] = @Time1 WHERE [id] = @id" SelectCommand="SELECT * FROM [ReqPending] WHERE ([S_Email] = @S_Email)" InsertCommand="INSERT INTO [ReqPending] ([S_Email], [S_Gender], [S_FullName], [S_Photo], [S_City], [S_Country], [R_Email], [R_Gender], [R_FullName], [R_Photo], [R_City], [R_Country], [Date1], [Time1]) VALUES (@S_Email, @S_Gender, @S_FullName, @S_Photo, @S_City, @S_Country, @R_Email, @R_Gender, @R_FullName, @R_Photo, @R_City, @R_Country, @Date1, @Time1)" DeleteCommand="DELETE FROM [ReqPending] WHERE [id] = @id" ConnectionString="<%$ ConnectionStrings:ConnectionString %>">
                    <DeleteParameters>
                        <asp:Parameter Name="id" Type="Int32" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="S_Email" Type="String" />
                        <asp:Parameter Name="S_Gender" Type="String" />
                        <asp:Parameter Name="S_FullName" Type="String" />
                        <asp:Parameter Name="S_Photo" Type="String" />
                        <asp:Parameter Name="S_City" Type="String" />
                        <asp:Parameter Name="S_Country" Type="String" />
                        <asp:Parameter Name="R_Email" Type="String" />
                        <asp:Parameter Name="R_Gender" Type="String" />
                        <asp:Parameter Name="R_FullName" Type="String" />
                        <asp:Parameter Name="R_Photo" Type="String" />
                        <asp:Parameter Name="R_City" Type="String" />
                        <asp:Parameter Name="R_Country" Type="String" />
                        <asp:Parameter Name="Date1" Type="String" />
                        <asp:Parameter Name="Time1" Type="String" />
                        <asp:Parameter Name="id" Type="Int32" />
                    </UpdateParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="Label1" Name="S_Email" PropertyName="Text" Type="String" />
                    </SelectParameters>
                    <InsertParameters>
                        <asp:Parameter Name="S_Email" Type="String" />
                        <asp:Parameter Name="S_Gender" Type="String" />
                        <asp:Parameter Name="S_FullName" Type="String" />
                        <asp:Parameter Name="S_Photo" Type="String" />
                        <asp:Parameter Name="S_City" Type="String" />
                        <asp:Parameter Name="S_Country" Type="String" />
                        <asp:Parameter Name="R_Email" Type="String" />
                        <asp:Parameter Name="R_Gender" Type="String" />
                        <asp:Parameter Name="R_FullName" Type="String" />
                        <asp:Parameter Name="R_Photo" Type="String" />
                        <asp:Parameter Name="R_City" Type="String" />
                        <asp:Parameter Name="R_Country" Type="String" />
                        <asp:Parameter Name="Date1" Type="String" />
                        <asp:Parameter Name="Time1" Type="String" />
                    </InsertParameters>
                </asp:SqlDataSource> <asp:SqlDataSource id="SqlDataSource1" runat="server" UpdateCommand="UPDATE [ReqPending] SET [S_Email] = @S_Email, [S_Gender] = @S_Gender, [S_FullName] = @S_FullName, [S_Photo] = @S_Photo, [S_City] = @S_City, [S_Country] = @S_Country, [R_Email] = @R_Email, [R_Gender] = @R_Gender, [R_FullName] = @R_FullName, [R_Photo] = @R_Photo, [R_City] = @R_City, [R_Country] = @R_Country, [Date1] = @Date1, [Time1] = @Time1 WHERE [id] = @id" SelectCommand="SELECT * FROM [ReqPending] WHERE ([R_Email] = @R_Email)" InsertCommand="INSERT INTO [ReqPending] ([S_Email], [S_Gender], [S_FullName], [S_Photo], [S_City], [S_Country], [R_Email], [R_Gender], [R_FullName], [R_Photo], [R_City], [R_Country], [Date1], [Time1]) VALUES (@S_Email, @S_Gender, @S_FullName, @S_Photo, @S_City, @S_Country, @R_Email, @R_Gender, @R_FullName, @R_Photo, @R_City, @R_Country, @Date1, @Time1)" DeleteCommand="DELETE FROM [ReqPending] WHERE [id] = @id" ConnectionString="<%$ ConnectionStrings:ConnectionString %>">
                    <DeleteParameters>
                        <asp:Parameter Name="id" Type="Int32" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="S_Email" Type="String" />
                        <asp:Parameter Name="S_Gender" Type="String" />
                        <asp:Parameter Name="S_FullName" Type="String" />
                        <asp:Parameter Name="S_Photo" Type="String" />
                        <asp:Parameter Name="S_City" Type="String" />
                        <asp:Parameter Name="S_Country" Type="String" />
                        <asp:Parameter Name="R_Email" Type="String" />
                        <asp:Parameter Name="R_Gender" Type="String" />
                        <asp:Parameter Name="R_FullName" Type="String" />
                        <asp:Parameter Name="R_Photo" Type="String" />
                        <asp:Parameter Name="R_City" Type="String" />
                        <asp:Parameter Name="R_Country" Type="String" />
                        <asp:Parameter Name="Date1" Type="String" />
                        <asp:Parameter Name="Time1" Type="String" />
                        <asp:Parameter Name="id" Type="Int32" />
                    </UpdateParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="Label1" Name="R_Email" PropertyName="Text" Type="String" />
                    </SelectParameters>
                    <InsertParameters>
                        <asp:Parameter Name="S_Email" Type="String" />
                        <asp:Parameter Name="S_Gender" Type="String" />
                        <asp:Parameter Name="S_FullName" Type="String" />
                        <asp:Parameter Name="S_Photo" Type="String" />
                        <asp:Parameter Name="S_City" Type="String" />
                        <asp:Parameter Name="S_Country" Type="String" />
                        <asp:Parameter Name="R_Email" Type="String" />
                        <asp:Parameter Name="R_Gender" Type="String" />
                        <asp:Parameter Name="R_FullName" Type="String" />
                        <asp:Parameter Name="R_Photo" Type="String" />
                        <asp:Parameter Name="R_City" Type="String" />
                        <asp:Parameter Name="R_Country" Type="String" />
                        <asp:Parameter Name="Date1" Type="String" />
                        <asp:Parameter Name="Time1" Type="String" />
                    </InsertParameters>
                </asp:SqlDataSource> <asp:Label style="POSITION: static" id="Label3" runat="server" Width="290px" Visible="False" Text="Label"></asp:Label> <asp:Label style="POSITION: static" id="Label2" runat="server" Width="42px" Visible="False" Text="Label"></asp:Label> <asp:Label style="POSITION: static" id="Label1" runat="server" Width="46px" Visible="False" Text="Label"></asp:Label></TD></TR><TR><TD vAlign=top align=left colSpan=2><asp:DataList style="POSITION: static" id="DataList1" runat="server" Width="590px" ForeColor="#333333" OnSelectedIndexChanged="DataList1_SelectedIndexChanged1" DataSourceID="SqlDataSource1" DataKeyField="id" CellPadding="4">
                    <ItemTemplate>
                        <div style="text-align: left">
                            <table style="width: 100%; position: static">
                                <tr>
                                    <td rowspan="3" style="width: 100px" valign="top">
                                        <asp:ImageButton ID="ImageButton1" runat="server" Height="50px" ImageUrl='<%# Eval("S_Photo") %>'
                                            Style="position: static" Width="50px" BorderColor="Silver" BorderWidth="0px" /></td>
                                    <td style="width: 134px" valign="top">
                                        <asp:Label ID="S_FullNameLabel" runat="server" Font-Bold="True" Font-Names="Arial"
                                            Font-Size="9pt" ForeColor="#000099" Style="position: static" Text='<%# Eval("S_FullName") %>'
                                            Width="409px" Height="20px"></asp:Label></td>
                                    <td style="width: 100px" valign="top">
                                        <asp:Label ID="S_GenderLabel" runat="server" Font-Names="Arial" Font-Size="9pt" Style="position: static"
                                            Text='<%# Eval("S_Gender") %>'></asp:Label></td>
                                </tr>
                                <tr>
                                    <td style="width: 134px" valign="top">
                                        <asp:Label ID="S_CityLabel" runat="server" Font-Names="Arial" Font-Size="8pt" Style="position: static"
                                            Text='<%# Eval("S_City") %>' Width="265px"></asp:Label></td>
                                    <td style="width: 100px" valign="top">
                                        <asp:Button ID="Button3" runat="server" CommandName="Select" Font-Names="Arial" Font-Size="9pt"
                                            Height="20px" Style="position: static" Text="Accept" Width="80px" OnClick="Button3_Click" OnClientClick="Select" BorderColor="White" BorderWidth="0px" BackColor="DarkGray" /></td>
                                </tr>
                                <tr>
                                    <td style="width: 134px" valign="top">
                                        <asp:Label ID="S_CountryLabel" runat="server" Font-Names="Arial" Font-Size="8pt"
                                            Style="position: static" Text='<%# Eval("S_Country") %>' Width="264px"></asp:Label></td>
                                    <td style="width: 100px" valign="top">
                                        <asp:Button ID="Button4" runat="server" CommandName="Select" Font-Names="Arial" Font-Size="9pt"
                                            Height="20px" Style="position: static" Text="Reject" Width="80px" OnClick="Button4_Click" OnClientClick="Delete" BorderColor="White" BorderWidth="0px" BackColor="DarkGray" /></td>
                                </tr>
                            </table>
                        </div>
                    </ItemTemplate><FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White"></FooterStyle>

<AlternatingItemStyle BackColor="White"></AlternatingItemStyle>

<ItemStyle BackColor="#E3EAEB"></ItemStyle>

<SelectedItemStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333"></SelectedItemStyle>

<HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White"></HeaderStyle>
                </asp:DataList></TD></TR><TR><TD style="HEIGHT: 19px" vAlign=top align=left colSpan=2><asp:DataList style="POSITION: static" id="DataList2" runat="server" Width="590px" ForeColor="#333333" OnSelectedIndexChanged="DataList2_SelectedIndexChanged" DataSourceID="SqlDataSource2" DataKeyField="id" CellPadding="4">
                    <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
                    <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <ItemTemplate>
                        <table style="width: 100%; position: static">
                            <tr>
                                <td rowspan="3" style="width: 100px" valign="top">
                                    <asp:ImageButton ID="ImageButton1" runat="server" Height="50px" ImageUrl='<%# Eval("R_Photo") %>'
                                        Style="position: static" Width="50px" /></td>
                                <td style="width: 100px" valign="top">
                                    <asp:Label ID="R_FullNameLabel" runat="server" Font-Bold="True" Font-Names="Arial"
                                        Font-Size="9pt" ForeColor="#000099" Style="position: static" Text='<%# Eval("R_FullName") %>'
                                        Width="409px"></asp:Label></td>
                                <td style="width: 100px" valign="top">
                                    <asp:Label ID="R_GenderLabel" runat="server" Font-Names="Arial" Font-Size="9pt" Style="position: static"
                                        Text='<%# Eval("R_Gender") %>'></asp:Label></td>
                            </tr>
                            <tr>
                                <td style="width: 100px" valign="top">
                                    <asp:Label ID="R_CityLabel" runat="server" Font-Names="Arial" Font-Size="8pt" Style="position: static"
                                        Text='<%# Eval("R_City") %>' Width="265px"></asp:Label></td>
                                <td style="width: 100px" valign="top">
                                    <asp:Button ID="Button4" runat="server" CommandName="Select" Font-Names="Arial" Font-Size="9pt"
                                        Height="26px" Style="position: static" Text="Delete" Width="80px" OnClick="Button4_Click1" BorderWidth="0px" BackColor="DarkGray" /></td>
                            </tr>
                            <tr>
                                <td style="width: 100px" valign="top">
                                    <asp:Label ID="R_CountryLabel" runat="server" Font-Names="Arial" Font-Size="8pt"
                                        Style="position: static" Text='<%# Eval("R_Country") %>' Width="264px"></asp:Label></td>
                                <td style="width: 100px" valign="top">
                                    </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                    <ItemStyle BackColor="#EFF3FB" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" /><AlternatingItemStyle BackColor="White"></AlternatingItemStyle>
                </asp:DataList></TD></TR><TR><TD style="HEIGHT: 16px" vAlign=top align=left colSpan=2><asp:Label style="POSITION: static" id="Label4" runat="server" Width="590px" Text="." ForeColor="Silver"></asp:Label></TD></TR></TBODY></TABLE>
</contenttemplate>
    </asp:UpdatePanel>
</asp:Content>

