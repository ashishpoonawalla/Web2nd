<%@ Page Language="C#" MasterPageFile="~/web2nd/main.master" AutoEventWireup="true" CodeFile="Web2ndPhoto.aspx.cs" Inherits="web2nd_1Photo" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: left">
        <table border="0" cellpadding="0" cellspacing="2" style="width: 500px; position: static;
            height: 100%">
            <tr>
                <td style="width: 100px; height: 40px;" align="left">
                    <table border="0" cellpadding="0" cellspacing="0" style="width: 498px; position: static">
                        <tr>
                            <td style="width: 36px; height: 16px">
                                <asp:ImageButton ID="ImageButton3" runat="server" Style="position: static" Visible="False" /></td>
                            <td style="width: 100px; height: 16px">
                                &nbsp;<asp:LinkButton ID="LinkButton1" runat="server" Style="position: static" Width="336px" OnClick="LinkButton1_Click">set your profile picture</asp:LinkButton></td><td style="width: 100px; height: 16px">
                                        &nbsp;</td>
                            <td style="width: 100px; height: 16px">
                                </td>
                            <td style="width: 100px; height: 16px">
                                <asp:Button ID="Button1" runat="server" Font-Bold="True" Height="24px" OnClick="Button1_Click1"
                                    Style="position: static" Text="+ Create new Photo album" Width="205px" BackColor="#404040" BorderWidth="0px" ForeColor="Gainsboro" /></td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td style="width: 100px" align="left">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                        DeleteCommand="DELETE FROM [PhotoAlbum1] WHERE [AID] = @AID" InsertCommand="INSERT INTO [PhotoAlbum1] ([SEMail], [SessionID1], [Title], [MainImage], [DateTime1], [Date1], [TotPhoto], [Location1], [Description1], [Privace1]) VALUES (@SEMail, @SessionID1, @Title, @MainImage, @DateTime1, @Date1, @TotPhoto, @Location1, @Description1, @Privace1)"
                        SelectCommand="SELECT PhotoAlbum1.AID, PhotoAlbum1.SEMail, PhotoAlbum1.SName, PhotoAlbum1.SessionID1, PhotoAlbum1.Title, PhotoAlbum1.MainImage, PhotoAlbum1.DateTime1, PhotoAlbum1.Date1, PhotoAlbum1.TotPhoto, PhotoAlbum1.Privace1, PhotoAlbum1.Popular1,&#13;&#10;&#13;&#10;FList.S_Email AS Expr1, FList.R_Email &#13;&#10;&#13;&#10;FROM PhotoAlbum1 INNER JOIN FList ON PhotoAlbum1.SEMail = FList.R_Email &#13;&#10;&#13;&#10;WHERE (FList.S_Email = @S_Email) &#13;&#10;&#13;&#10;ORDER BY PhotoAlbum1.DateTime1 DESC&#13;&#10;&#13;&#10;"
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
                            <asp:SessionParameter Name="S_Email" SessionField="UserMail" />
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
                        Width="581px" HorizontalAlign="Left" BackColor="WhiteSmoke" RepeatDirection="Horizontal">
                        <ItemTemplate>
                            <table border="0" cellpadding="0" cellspacing="4" style="position: static">
                                <tr>
                                    <td style="width: 100px">
                                                <asp:ImageButton ID="ImageButton2" runat="server" BorderColor="Gainsboro" BorderWidth="5px"
                                                    CommandName="Select" ImageUrl='<%# Eval("MainImage") %>' Style="position: static" BorderStyle="Solid" /></td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                            <asp:Label ID="TitleLabel" runat="server" Font-Bold="True" Style="position: static"
                                                Text='<%# Eval("Title") %>' Width="155px"></asp:Label>
                                            </td>
                                </tr>
                                <tr>
                                    <td style="width: 100px" rowspan="2">
                                        &nbsp;<asp:Label ID="Label3" runat="server" Style="position: static" Text='<%# Eval("SName") %>'
                                            Width="133px"></asp:Label>
                                        <br />
                                        <asp:Image ID="Image1" runat="server" ImageUrl="~/web2nd/image/tag_green.png" Style="position: static" /><asp:Label ID="Label5" runat="server" Style="position: static" Text='<%# Eval("TotPhoto") %>' Width="5px"></asp:Label></td>
                                </tr>
                                <tr>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:DataList></td>
            </tr>
        </table>
    </div>
</asp:Content>

