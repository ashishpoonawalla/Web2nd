<%@ Page Language="C#" MasterPageFile="~/web2nd/mainL2.master" AutoEventWireup="true" CodeFile="L2AllFriends.aspx.cs" Inherits="web2nd_2AllFriends" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table border="0" cellpadding="0" cellspacing="5" style="width: 100%; position: static">
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                    SelectCommand="SELECT Login.Email, Login.Id, Login.FullName, Login.Photo, Login.City, Login.Country, FList.id AS Expr1, FList.S_Email, FList.R_Email FROM Login INNER JOIN FList ON Login.Email = FList.R_Email Where  (FList.S_Email = @sml)   AND ( FList.R_Email <> @sml)        ORDER BY Login.FullName">
                    <SelectParameters>
                        <asp:SessionParameter Name="sml" SessionField="FMail" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:Label ID="Label1" runat="server" Style="position: static" Text="Label" Visible="False"></asp:Label>
                <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" DataSourceID="SqlDataSource1"
                    OnSelectedIndexChanged="DataList1_SelectedIndexChanged" Style="position: static"
                    Width="525px">
                    <ItemTemplate>
                        <table border="0" cellpadding="0" cellspacing="4" style="width: 502px; position: static">
                            <tr>
                                <td rowspan="3" style="width: 57px" valign="top">
                                    <asp:ImageButton ID="ImageButton1" runat="server" Height="50px" ImageUrl='<%# Eval("Photo") %>'
                                        Style="position: static" Width="50px" /></td>
                                <td style="width: 100px" valign="top">
                                </td>
                                <td style="width: 92px" valign="top">
                                    <asp:Button ID="Button1" runat="server" CommandName="Select" Height="26px" OnClick="Button1_Click"
                                        Style="position: static" Text="X" Width="34px" BorderColor="Silver" BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" Font-Size="9pt" ForeColor="#404040" Visible="False" /></td>
                            </tr>
                            <tr>
                                <td colspan="2" valign="top">
                                    <asp:Label ID="FullNameLabel" runat="server" Font-Bold="True" Font-Size="9pt" ForeColor="DarkBlue"
                                        Style="position: static" Text='<%# Eval("FullName") %>' Width="397px"></asp:Label></td>
                            </tr>
                            <tr>
                                <td style="width: 100px" valign="top">
                                    <asp:Label ID="CityLabel" runat="server" Font-Bold="False" ForeColor="DimGray" Style="position: static"
                                        Text='<%# Eval("City") %>' Width="195px"></asp:Label></td>
                                <td style="width: 92px" valign="top">
                                    <asp:Label ID="CountryLabel" runat="server" Font-Bold="False" ForeColor="DimGray"
                                        Style="position: static" Text='<%# Eval("Country") %>' Width="196px"></asp:Label></td>
                            </tr>
                        </table>
                        <hr color="gainsboro" size="0" style="position: static" />
                    </ItemTemplate>
                </asp:DataList></td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
        </tr>
    </table>
</asp:Content>

