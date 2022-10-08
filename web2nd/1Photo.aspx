<%@ Page Language="C#" MasterPageFile="~/web2nd/mainNoMenu.master" AutoEventWireup="true" CodeFile="1Photo.aspx.cs" Inherits="web2nd_1Photo" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: left">
        <table border="0" cellpadding="0" cellspacing="2" style="width: 700px; position: static;
            height: 100%">
            <tr>
                <td style="width: 100px" align="center" valign="top">
                    <table border="0" cellpadding="0" cellspacing="5" style="width: 362px; position: static">
                        <tr>
                            <td style="width: 100px" valign="top">
                                &nbsp;<asp:ImageButton ID="ImageButton3" runat="server" Style="position: static" /></td>
                            <td colspan="3" valign="top" align="left">
                                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="12pt" ForeColor="#660066"
                                    Style="position: static" Width="655px"></asp:Label><br />
                                &nbsp;<asp:LinkButton ID="LinkButton1" runat="server" Style="position: static" Width="128px" OnClick="LinkButton1_Click">set your profile picture</asp:LinkButton></td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td style="width: 100px" align="center" valign="top">
                    <table border="0" cellpadding="0" cellspacing="0" style="width: 498px; position: static">
                        <tr>
                            <td style="width: 36px; height: 16px">
                                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="11pt" Style="position: static"
                                    Text="Albums of" Width="98px"></asp:Label></td>
                            <td style="width: 100px; height: 16px">
                                &nbsp;<asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="11pt" Style="position: static"
                                    Text="." Width="424px"></asp:Label></td><td style="width: 100px; height: 16px">
                                        &nbsp;</td>
                            <td style="width: 100px; height: 16px">
                                </td>
                            <td style="width: 100px; height: 16px">
                                <asp:Button ID="Button1" runat="server" Font-Bold="True" Height="24px" OnClick="Button1_Click1"
                                    Style="position: static" Text="+ Create new Photo album" Width="205px" BackColor="#660066" BorderWidth="0px" ForeColor="Gainsboro" /></td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td style="width: 100px" align="left" valign="top">
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
                            <asp:SessionParameter Name="SEMail" SessionField="UserMail" Type="String" />
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
                        OnSelectedIndexChanged="DataList1_SelectedIndexChanged" RepeatColumns="4" Style="position: static"
                        Width="753px" HorizontalAlign="Left" BackColor="WhiteSmoke" RepeatDirection="Horizontal">
                        <ItemTemplate>
                            <table border="0" cellpadding="0" cellspacing="4" style="position: static">
                                <tr>
                                    <td style="width: 143px; height: 134px;" align="left" valign="top">
                                                <asp:ImageButton ID="ImageButton2" runat="server" BorderColor="Gainsboro" BorderWidth="5px"
                                                    CommandName="Select" ImageUrl='<%# Eval("MainImage") %>' Style="position: static" BorderStyle="Solid" /></td>
                                </tr>
                                <tr>
                                    <td style="width: 143px" align="left" valign="top">
                                            <asp:Label ID="TitleLabel" runat="server" Font-Bold="True" Style="position: static"
                                                Text='<%# Eval("Title") %>'></asp:Label></td>
                                </tr>
                                <tr>
                                    <td style="width: 143px" align="left" valign="top">
                                            <asp:Label ID="Label5" runat="server" Style="position: static" Text='<%# Eval("TotPhoto") %>'></asp:Label>-Photos
                                        &nbsp;&nbsp;
                                        <asp:ImageButton ID="ImageButton7" runat="server" CommandName="Select" ImageUrl="~/images/ToolClose.bmp"
                                            OnClick="ImageButton14_Click" Style="position: static" Visible="False" /></td>
                                </tr>
                                <tr>
                                    <td style="width: 143px" align="left" valign="top">
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:DataList></td>
            </tr>
        </table>
    </div>
</asp:Content>

