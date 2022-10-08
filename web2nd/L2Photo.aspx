<%@ Page Language="C#" MasterPageFile="~/web2nd/mainL2.master" AutoEventWireup="true" CodeFile="L2Photo.aspx.cs" Inherits="web2nd_1Photo" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: left">
        <table border="0" cellpadding="0" cellspacing="2" style="width: 560px; position: static;
            height: 100%">
            <tr>
                <td style="width: 93px; height: 21px;" align="left">
                    <table style="width: 527px">
                        <tr>
                            <td style="width: 100px">
                                </td>
                            <td style="width: 100px">
                                <asp:Label ID="Label10" runat="server" Text="Label" Width="195px" Visible="False"></asp:Label></td>
                            <td style="width: 100px">
                                <asp:Label ID="Label11" runat="server" Text="Label" Visible="False"></asp:Label></td>
                            <td style="width: 100px">
                                <asp:Label ID="Label12" runat="server" Text="Label" Visible="False"></asp:Label></td>
                            <td style="width: 100px">
                            </td>
                        </tr>
                    </table>
                    <asp:Label ID="Label13" runat="server" BackColor="SlateGray" BorderColor="SlateGray"
                        BorderWidth="15px" Font-Bold="True" Font-Size="11pt" ForeColor="White" Height="35px"
                        Text=" I share only certain information with others. please become a friend with me.."
                        Visible="False" Width="519px"></asp:Label></td>
            </tr>
            <tr>
                <td style="width: 93px" align="left">
                    <asp:Panel ID="Panel1" runat="server">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                        DeleteCommand="DELETE FROM [PhotoAlbum1] WHERE [AID] = @AID" InsertCommand="INSERT INTO [PhotoAlbum1] ([SEMail], [SessionID1], [Title], [MainImage], [DateTime1], [Date1], [TotPhoto], [Location1], [Description1], [Privace1]) VALUES (@SEMail, @SessionID1, @Title, @MainImage, @DateTime1, @Date1, @TotPhoto, @Location1, @Description1, @Privace1)"
                        SelectCommand="SELECT * FROM [PhotoAlbum1] WHERE ([SEMail] = @SEMail) ORDER BY [DateTime1] DESC"
                        UpdateCommand="UPDATE [PhotoAlbum1] SET [SEMail] = @SEMail, [SessionID1] = @SessionID1, [Title] = @Title, [MainImage] = @MainImage, [DateTime1] = @DateTime1, [Date1] = @Date1, [TotPhoto] = @TotPhoto, [Location1] = @Location1, [Description1] = @Description1, [Privace1] = @Privace1 WHERE [AID] = @AID">
                        <DeleteParameters>
                            <asp:Parameter Name="AID" Type="Int32" />
                        </DeleteParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="SEMail" Type="String" />
                            <asp:Parameter Name="SessionID1" Type="String" />
                            <asp:Parameter Name="Title" Type="String" />
                            <asp:Parameter Name="MainImage" Type="String" />
                            <asp:Parameter Name="DateTime1" Type="DateTime" />
                            <asp:Parameter Name="Date1" Type="String" />
                            <asp:Parameter Name="TotPhoto" Type="String" />
                            <asp:Parameter Name="Location1" Type="String" />
                            <asp:Parameter Name="Description1" Type="String" />
                            <asp:Parameter Name="Privace1" Type="String" />
                            <asp:Parameter Name="AID" Type="Int32" />
                        </UpdateParameters>
                        <SelectParameters>
                            <asp:SessionParameter Name="SEMail" SessionField="FMail" Type="String" />
                        </SelectParameters>
                        <InsertParameters>
                            <asp:Parameter Name="SEMail" Type="String" />
                            <asp:Parameter Name="SessionID1" Type="String" />
                            <asp:Parameter Name="Title" Type="String" />
                            <asp:Parameter Name="MainImage" Type="String" />
                            <asp:Parameter Name="DateTime1" Type="DateTime" />
                            <asp:Parameter Name="Date1" Type="String" />
                            <asp:Parameter Name="TotPhoto" Type="String" />
                            <asp:Parameter Name="Location1" Type="String" />
                            <asp:Parameter Name="Description1" Type="String" />
                            <asp:Parameter Name="Privace1" Type="String" />
                        </InsertParameters>
                    </asp:SqlDataSource>
                    <asp:DataList ID="DataList1" runat="server" DataKeyField="AID" DataSourceID="SqlDataSource1"
                        OnSelectedIndexChanged="DataList1_SelectedIndexChanged" RepeatColumns="3" Style="position: static"
                        Width="553px" HorizontalAlign="Left" BackColor="WhiteSmoke" RepeatDirection="Horizontal">
                        <ItemTemplate>
                            <table border="0" cellpadding="0" cellspacing="4" style="position: static">
                                <tr>
                                    <td style="width: 100px">
                                                <asp:ImageButton ID="ImageButton2" runat="server" BorderColor="Gainsboro" BorderWidth="5px"
                                                    CommandName="Select" ImageUrl='<%# Eval("MainImage") %>' Style="position: static" BorderStyle="Solid" Height="120px" Width="150px" /></td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                            <asp:Label ID="TitleLabel" runat="server" Font-Bold="True" Style="position: static"
                                                Text='<%# Eval("Title") %>'></asp:Label></td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                            <asp:Label ID="Label5" runat="server" Style="position: static" Text='<%# Eval("TotPhoto") %>'></asp:Label>-Photos</td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:DataList></asp:Panel>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

