<%@ Control Language="C#" AutoEventWireup="true" CodeFile="AdverTiseMenu1.ascx.cs" Inherits="web2nd_LeftMenu1" %>
<link href="../Main1.css" rel="stylesheet" type="text/css" />
<table id="TABLE2" cellpadding="0" cellspacing="0" language="javascript" onclick="return TABLE2_onclick()"
    style="position: static" width="150">
    <tr>
        <td colspan="2" align="center" valign="top">
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:Timer ID="Timer1" runat="server" Interval="10000" OnTick="Timer1_Tick">
                    </asp:Timer>
                    <table border="0" cellpadding="0" cellspacing="0" style="position: static">
                        <tr>
                            <td bgcolor="gainsboro" style="width: 100px">
                                .</td>
                            <td style="width: 100px">
                                <table border="0" cellpadding="0" cellspacing="0" style="position: static">
                                    <tr>
                                        <td style="width: 100px" valign="top">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                SelectCommand="SELECT * FROM [Advertise1] WHERE ([Type] = @Type)">
                <SelectParameters>
                    <asp:SessionParameter Name="Type" SessionField="advA" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:DataList ID="DataList1" runat="server" DataKeyField="ID" DataSourceID="SqlDataSource1"
                Font-Size="8pt" Style="position: static" Width="150px">
                <ItemTemplate>
                    <table border="0" cellpadding="0" cellspacing="3" style="position: static" width="150">
                        <tr>
                            <td colspan="2">
                    <asp:Label ID="TitleLabel" runat="server" Text='<%# Eval("Title") %>' style="position: static" Font-Bold="True" Font-Size="9pt" ForeColor="RoyalBlue" Width="150px"></asp:Label></td>
                        </tr>
                        <tr>
                            <td rowspan="2" style="width: 100px">
                                <asp:ImageButton ID="ImageButton1" runat="server" Height="80px" ImageUrl='<%# Eval("Image1") %>'
                                    Style="position: static" Width="110px" /></td>
                            <td style="width: 100px">
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 100px">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:HyperLink ID="HyperLink2" runat="server" Font-Size="8pt" ForeColor="DimGray"
                                    NavigateUrl='<%# Eval("Link1") %>' Style="position: static" Text='<%# Eval("Message") %>' Width="148px"></asp:HyperLink></td>
                        </tr>
                        <tr>
                            <td colspan="2" style="height: 19px">
                                <table border="0" cellpadding="0" cellspacing="1" style="position: static">
                                    <tr>
                                        <td style="width: 100px; height: 19px">
                                            <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/web2nd/image/ToopThumUp.bmp"
                                                Style="position: static" /></td>
                                        <td style="width: 100px; height: 19px">
                                            <asp:HyperLink ID="HyperLink1" runat="server" Font-Size="8pt" ForeColor="#6666FF"
                                                NavigateUrl='<%# Eval("Link1") %>' Style="position: static">Like</asp:HyperLink></td>
                                        <td style="width: 100px; height: 19px">
                                        </td>
                                    </tr>
                                </table>
                                <hr size="1" style="position: static" />
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 100px; height: 874px" valign="top">
                                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                                                SelectCommand="SELECT * FROM [Advertise1] WHERE ([Type] = @Type)">
                                                <SelectParameters>
                                                    <asp:SessionParameter Name="Type" SessionField="advB" Type="String" />
                                                </SelectParameters>
                                            </asp:SqlDataSource>
                                            <asp:DataList ID="DataList2" runat="server" DataKeyField="ID" DataSourceID="SqlDataSource2"
                                                Font-Size="8pt" Style="position: static" Width="155px">
                                                <ItemTemplate>
                                                    <table border="0" cellpadding="0" cellspacing="3" style="width: 155px; position: static">
                                                        <tr>
                                                            <td colspan="2">
                                                                <asp:Label ID="TitleLabel" runat="server" Font-Bold="True" Font-Size="9pt" ForeColor="#CC00CC"
                                                                    Style="position: static" Text='<%# Eval("Title") %>'></asp:Label></td>
                                                        </tr>
                                                        <tr>
                                                            <td rowspan="2" style="width: 100px">
                                                                <asp:ImageButton ID="ImageButton3" runat="server" Height="80px" ImageUrl='<%# Eval("Image1") %>'
                                                                    Style="position: static" Width="110px" /></td>
                                                            <td style="width: 100px">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="width: 100px">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="2" style="height: 16px">
                                                                <asp:HyperLink ID="HyperLink3" runat="server" Font-Size="8pt" ForeColor="DimGray"
                                                                    NavigateUrl='<%# Eval("Link1") %>' Style="position: static" Text='<%# Eval("Message") %>'
                                                                    Width="148px"></asp:HyperLink></td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="2" style="height: 19px">
                                                                <table border="0" cellpadding="0" cellspacing="0" style="position: static">
                                                                    <tr>
                                                                        <td style="width: 100px; height: 19px">
                                                                            <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/web2nd/image/ToopThumUp.bmp"
                                                                                Style="position: static" /></td>
                                                                        <td style="width: 100px; height: 19px">
                                                                            <asp:HyperLink ID="HyperLink4" runat="server" Font-Size="8pt" ForeColor="#9933CC"
                                                                                NavigateUrl='<%# Eval("Link1") %>' Style="position: static" Width="101px">Like</asp:HyperLink></td>
                                                                        <td style="width: 100px; height: 19px">
                                                                            <asp:Button ID="Button1" runat="server" BorderWidth="0px" Font-Bold="True" Font-Size="8pt"
                                                                                Style="position: static" Text="x" Width="25px" /></td>
                                                                    </tr>
                                                                </table>
                                                                <hr style="position: static" />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="width: 100px">
                                                            </td>
                                                            <td style="width: 100px">
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </ItemTemplate>
                                            </asp:DataList></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                    <br />
                    &nbsp; &nbsp;
                </ContentTemplate>
            </asp:UpdatePanel>
            </td>
    </tr>
</table>
