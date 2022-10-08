<%@ Page Language="C#" MasterPageFile="~/web2nd/main.master" AutoEventWireup="true" CodeFile="EventBirthday.aspx.cs" Inherits="web2nd_EventBirthday" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: left">
        <asp:Label ID="Label9" runat="server" Style="position: static" Text="Label" Visible="False"
            Width="222px"></asp:Label><br />
        <asp:Label ID="Label1" runat="server" Style="position: static" Text="Label" Width="184px" Visible="False"></asp:Label><br />
        <asp:Label ID="Label2" runat="server" Style="position: static" Text="Label" Width="146px" Visible="False"></asp:Label><br />
        <table border="0" cellspacing="4" style="width: 556px; position: static">
            <tr>
                <td style="width: 100px; height: 10px">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
        SelectCommand="SELECT Login.Email, Login.City, Login.LoginTime1, FList.S_Email, FList.R_Email, Login.First_nm, Login.Photo, Login.Id, Login.FullName, Login1.Email AS Expr1, Login1.Day1, Login1.Month1,  Login1.DOBMonthName FROM Login INNER JOIN FList ON Login.Email = FList.R_Email INNER JOIN Login1 ON Login.Email = Login1.Email AND FList.R_Email = Login1.Email WHERE (FList.S_Email = @S_Email) ORDER BY Login1.Month1, Login1.Day1">
        <SelectParameters>
            <asp:SessionParameter Name="S_Email" SessionField="UserMail" />
        </SelectParameters>
    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
    <asp:DataList ID="DataList4" runat="server" DataKeyField="Id" DataSourceID="SqlDataSource1"
        OnSelectedIndexChanged="DataList4_SelectedIndexChanged1" Style="position: static"
        Width="380px">
        <ItemTemplate>
            <div style="text-align: left">
                <table border="0" cellpadding="0" cellspacing="6" style="position: static; width: 175px;" bgcolor="whitesmoke">
                    <tr>
                        <td rowspan="2" style="width: 100px">
                            <asp:ImageButton ID="ImageButton1" runat="server" CommandName="Select" Height="50px"
                                ImageUrl='<%# Eval("Photo") %>' Style="position: static" Width="50px" /></td>
                        <td colspan="3" style="height: 33px">
                            <asp:Button ID="Button1" runat="server" BackColor="Gainsboro" BorderWidth="0px"
                                CommandName="Select" Font-Bold="True" Height="33px" OnClick="Button1_Click" Style="position: static"
                                Text='<%# Eval("FullName") %>' Width="465px" Font-Size="11pt" /></td>
                    </tr>
                    <tr>
                        <td style="width: 31px">
                            <asp:Label ID="Label3" runat="server" Font-Size="10pt" Style="position: static" Text='<%# Eval("Day1") %>'
                                Width="50px" Font-Bold="True" ForeColor="#404040"></asp:Label></td>
                        <td colspan="2">
                            <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="10pt" ForeColor="MidnightBlue"
                                Style="position: static" Text='<%# Eval("DOBMonthName") %>' Width="121px"></asp:Label></td>
                    </tr>
                </table>
            </div>
        </ItemTemplate>
    </asp:DataList></td>
            </tr>
        </table>
    </div>
    <br />
    <br />
    <br />
    &nbsp;
</asp:Content>

