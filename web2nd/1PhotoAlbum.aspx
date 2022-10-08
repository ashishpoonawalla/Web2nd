<%@ Page Language="C#" MasterPageFile="~/web2nd/mainNoMenu.master" AutoEventWireup="true" CodeFile="1PhotoAlbum.aspx.cs" Inherits="web2nd_1Photo" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: left">
        <table border="0" cellpadding="0" cellspacing="2" style="width: 788px; position: static;
            height: 100%">
            <tr>
                <td rowspan="2" style="width: 100px" align="center" valign="top">
                    <table border="0" cellpadding="0" cellspacing="0" style="width: 698px; position: static">
                        <tr>
                            <td style="width: 36px; height: 16px">
                                </td>
                            <td style="width: 100px; height: 16px">
                                &nbsp;<asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="11pt" Style="position: static"
                                    Text="." Width="560px" ForeColor="DarkOliveGreen"></asp:Label></td><td style="width: 100px; height: 16px">
                                        &nbsp;<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/web2nd/Web2ndPhoto.aspx"
                                    Style="position: static" Width="71px">Main Album</asp:HyperLink></td>
                            <td style="width: 100px; height: 16px">
                                </td>
                            <td style="width: 100px; height: 16px">
                                </td>
                        </tr>
                        <tr>
                            <td style="width: 36px; height: 16px">
                            </td>
                            <td style="width: 100px; height: 16px">
                                &nbsp;</td>
                            <td style="width: 100px; height: 16px">
                                &nbsp;</td>
                            <td style="width: 100px; height: 16px">
                            </td>
                            <td style="width: 100px; height: 16px">
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
            </tr>
            <tr>
                <td style="width: 100px" align="center" valign="top">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                        SelectCommand="SELECT * FROM [PhotoAlbum2] WHERE ([AID] = @AID)">
                        <SelectParameters>
                            <asp:SessionParameter Name="AID" SessionField="SubAlbum" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:DataList ID="DataList1" runat="server" DataKeyField="PID" DataSourceID="SqlDataSource1"
                        RepeatColumns="4" Style="position: static" Width="781px" OnSelectedIndexChanged="DataList1_SelectedIndexChanged1" BackColor="Transparent">
                        <ItemTemplate>
                            <div style="text-align: left">
                                <table border="0" bordercolor="darkgray" cellpadding="0" cellspacing="4" style="position: static">
                                    <tr>
                                        <td style="width: 100px" align="center" valign="top">
                                                <asp:ImageButton ID="ImageButton1" runat="server" BorderColor="Gainsboro" BorderWidth="5px"
                                                    CommandName="Select" ImageUrl='<%# Eval("ImagePath") %>' Style="position: static" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td rowspan="2" style="width: 100px" align="center" valign="top">
                                        </td>
                                    </tr>
                                    <tr>
                                    </tr>
                                    <tr>
                                        <td rowspan="2" style="width: 100px" align="center" valign="top">
                                            <asp:Label ID="ImageCaptionLabel" runat="server" Style="position: static" Text='<%# Eval("ImageCaption") %>'></asp:Label></td>
                                    </tr>
                                    <tr>
                                    </tr>
                                </table>
                            </div>
                        </ItemTemplate>
                    </asp:DataList></td>
            </tr>
        </table>
    </div>
</asp:Content>

