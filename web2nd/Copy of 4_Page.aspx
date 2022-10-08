<%@ Page Language="C#" MasterPageFile="~/web2nd/main.master" AutoEventWireup="true" CodeFile="Copy of 4_Page.aspx.cs" Inherits="web2nd_4_Page" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: left">
        <table border="0" cellpadding="0" cellspacing="4" style="width: 539px; position: static">
            <tr>
                <td style="width: 100px">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [NetworkMain]">
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
                                                <asp:ImageButton ID="ImageButton1" runat="server" Height="53px" ImageUrl='<%# Eval("IconPath") %>'
                                                    Style="position: static" Width="50px" /></td>
                                            <td colspan="5">
                                            <asp:Label ID="P_FullNameLabel" runat="server" Font-Size="10pt" Style="position: static"
                                                Text='<%# Eval("NetworkName") %>' Width="466px"></asp:Label></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 100px">
                                            </td>
                                            <td style="width: 100px">
                                            </td>
                                            <td style="width: 100px">
                                            </td>
                                            <td style="width: 100px">
                                            </td>
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

