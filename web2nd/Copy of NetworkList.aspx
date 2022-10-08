<%@ Page Language="C#" MasterPageFile="~/web2nd/main.master" AutoEventWireup="true" CodeFile="Copy of NetworkList.aspx.cs" Inherits="web2nd_4_Page" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: left">
        <table border="0" cellpadding="0" cellspacing="4" style="width: 539px; position: static">
            <tr>
                <td style="width: 100px">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [ConnPage] WHERE [id] = @id" InsertCommand="INSERT INTO [ConnPage] ([MyEmail], [P_Email], [P_FullName], [Date1], [Time1], [Datetime1], [ListName], [Type1], [P_Photo]) VALUES (@MyEmail, @P_Email, @P_FullName, @Date1, @Time1, @Datetime1, @ListName, @Type1, @P_Photo)" SelectCommand="SELECT * FROM [ConnPage] WHERE ([MyEmail] = @MyEmail) ORDER BY [P_FullName]" UpdateCommand="UPDATE [ConnPage] SET [MyEmail] = @MyEmail, [P_Email] = @P_Email, [P_FullName] = @P_FullName, [Date1] = @Date1, [Time1] = @Time1, [Datetime1] = @Datetime1, [ListName] = @ListName, [Type1] = @Type1, [P_Photo] = @P_Photo WHERE [id] = @id">
                        <SelectParameters>
                            <asp:SessionParameter Name="MyEmail" SessionField="UserMail" Type="String" />
                        </SelectParameters>
                        <DeleteParameters>
                            <asp:Parameter Name="id" Type="Int32" />
                        </DeleteParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="MyEmail" Type="String" />
                            <asp:Parameter Name="P_Email" Type="String" />
                            <asp:Parameter Name="P_FullName" Type="String" />
                            <asp:Parameter Name="Date1" Type="String" />
                            <asp:Parameter Name="Time1" Type="String" />
                            <asp:Parameter Name="Datetime1" Type="DateTime" />
                            <asp:Parameter Name="ListName" Type="String" />
                            <asp:Parameter Name="Type1" Type="String" />
                            <asp:Parameter Name="P_Photo" Type="String" />
                            <asp:Parameter Name="id" Type="Int32" />
                        </UpdateParameters>
                        <InsertParameters>
                            <asp:Parameter Name="MyEmail" Type="String" />
                            <asp:Parameter Name="P_Email" Type="String" />
                            <asp:Parameter Name="P_FullName" Type="String" />
                            <asp:Parameter Name="Date1" Type="String" />
                            <asp:Parameter Name="Time1" Type="String" />
                            <asp:Parameter Name="Datetime1" Type="DateTime" />
                            <asp:Parameter Name="ListName" Type="String" />
                            <asp:Parameter Name="Type1" Type="String" />
                            <asp:Parameter Name="P_Photo" Type="String" />
                        </InsertParameters>
                    </asp:SqlDataSource>
                </td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" Style="position: static" DataKeyField="id" Width="529px">
                        <ItemTemplate>
                            <asp:Panel ID="Panel1" runat="server" BackColor="ButtonFace" BorderColor="Silver"
                                BorderStyle="Solid" BorderWidth="1px" Style="position: static">
                                <div style="text-align: left">
                                    <table border="0" cellpadding="0" cellspacing="4" style="width: 510px; position: static">
                                        <tr>
                                            <td style="width: 100px">
                                                <asp:ImageButton ID="ImageButton1" runat="server" Height="53px" ImageUrl='<%# Eval("P_Photo") %>'
                                                    Style="position: static" Width="50px" /></td>
                                            <td colspan="5">
                                            <asp:Label ID="P_FullNameLabel" runat="server" Font-Size="10pt" Style="position: static"
                                                Text='<%# Eval("P_FullName") %>' Width="466px"></asp:Label></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 100px">
                                            </td>
                                            <td style="width: 100px">
                                            <asp:Label ID="Date1Label" runat="server" Style="position: static" Text='<%# Eval("Date1") %>'></asp:Label></td>
                                            <td style="width: 100px">
                                            <asp:Label ID="Time1Label" runat="server" Style="position: static" Text='<%# Eval("Time1") %>'></asp:Label></td>
                                            <td style="width: 100px">
                                            <asp:Label ID="ListNameLabel" runat="server" Style="position: static" Text='<%# Eval("ListName") %>'></asp:Label></td>
                                            <td style="width: 100px">
                                            </td>
                                            <td style="width: 100px">
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </asp:Panel>
                            <br />
                        </ItemTemplate>
                    </asp:DataList></td>
            </tr>
            <tr>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                </td>
            </tr>
        </table>
    </div>
    <br />
</asp:Content>

