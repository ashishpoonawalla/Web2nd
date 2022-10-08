<%@ Page Language="C#" MasterPageFile="~/web2nd/main.master" AutoEventWireup="true" CodeFile="1PhotoCreate.aspx.cs" Inherits="web2nd_1Photo" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <table border="0" cellpadding="0" cellspacing="2" style="width: 588px; position: static;
            height: 100%; background-color: whitesmoke;" bgcolor="#f4f6e5">
            <tr>
                <td style="width: 100px; height: 34px;">
                    <table border="0" cellpadding="0" cellspacing="0" style="width: 498px; position: static">
                        <tr>
                            <td style="width: 13px; height: 16px">
                                </td>
                            <td style="width: 100px; height: 16px">
                                &nbsp;<asp:Image ID="Image1" runat="server" ImageUrl="~/web2nd/image/ToolPic1.bmp" Style="position: static" /></td>
                            <td style="width: 100px; height: 16px">
                                &nbsp;<asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="11pt" Style="position: static"
                                    Text="Add New Album" Width="441px" ForeColor="#660066"></asp:Label></td>
                            <td style="width: 100px; height: 16px">
                            </td>
                            <td style="width: 100px; height: 16px">
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <table cellpadding="0" cellspacing="4" style="width: 592px; position: static">
                        <tr>
                            <td align="left" style="width: 33px" valign="top">
                                <asp:Label ID="Label3" runat="server" ForeColor="#E0E0E0" Style="position: static"
                                    Text="."></asp:Label></td>
                            <td colspan="3">
                            </td>
                        </tr>
                        <tr>
                            <td align="left" style="width: 33px" valign="top">
                                <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="#404040" Style="position: static"
                                    Text="Title" Width="81px"></asp:Label></td>
                            <td colspan="3">
                                <asp:TextBox ID="TextBox1" runat="server" Style="position: static" Width="454px" MaxLength="50"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td align="left" style="width: 33px" valign="top">
                                <asp:Label ID="Label4" runat="server" ForeColor="#E0E0E0" Style="position: static"
                                    Text="."></asp:Label></td>
                            <td colspan="3">
                            </td>
                        </tr>
                        <tr>
                            <td align="left" style="width: 33px" valign="top">
                                <asp:Label ID="Label5" runat="server" Font-Bold="True" ForeColor="#404040" Style="position: static"
                                    Text="Privacy:"></asp:Label></td>
                            <td align="left" style="width: 67px" valign="top">
                                <asp:DropDownList ID="DropDownList1" runat="server" Style="position: static" Width="166px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                    <asp:ListItem Value="5">Everyone</asp:ListItem>
                                    <asp:ListItem Value="4">Friends Of Friends &amp; Network</asp:ListItem>
                                    <asp:ListItem Value="3">Friends Of Friends</asp:ListItem>
                                    <asp:ListItem Value="2">Only Friends</asp:ListItem>
                                    <asp:ListItem Value="1">Only Me</asp:ListItem>
                                </asp:DropDownList></td>
                            <td style="width: 202px">
                                <asp:Label ID="Label6" runat="server" Style="position: static" Text="Who can see album ?"
                                    Width="111px"></asp:Label></td>
                            <td style="width: 100px">
                            </td>
                        </tr>
                        <tr>
                            <td align="left" style="width: 33px" valign="top">
                                <asp:Label ID="Label7" runat="server" ForeColor="#E0E0E0" Style="position: static"
                                    Text="."></asp:Label></td>
                            <td colspan="3">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="4">
                                <asp:CheckBox ID="CheckBox1" runat="server" Style="position: static" Text="I certify that i have the right to distribute these photos and they do not violet the leagal limits."
                                    Width="602px" /></td>
                        </tr>
                        <tr>
                            <td align="left" style="width: 33px" valign="top">
                                <asp:Label ID="Label8" runat="server" ForeColor="#E0E0E0" Style="position: static"
                                    Text="."></asp:Label></td>
                            <td colspan="3">
                            </td>
                        </tr>
                        <tr>
                            <td align="left" style="width: 33px; height: 66px;" valign="top">
                            </td>
                            <td align="left" style="width: 67px; height: 66px;" valign="top">
                                &nbsp;<table cellspacing="4" style="position: static">
                                    <tr>
                                        <td style="width: 100px; height: 24px;">
                                            <asp:Button ID="Button1" runat="server" BackColor="YellowGreen" BorderWidth="1px" Font-Bold="True"
                                                OnClick="Button1_Click1" Style="position: static" Text="Create Album" Width="133px" BorderColor="#404040" BorderStyle="Solid" /></td>
                                        <td style="width: 100px; height: 24px;">
                                            <asp:Button ID="Button2" runat="server" BorderWidth="1px" Font-Bold="True" OnClick="Button2_Click"
                                                Style="position: static" Text="Cancel" Width="100px" BorderColor="#404040" BorderStyle="Solid" /></td>
                                    </tr>
                                </table>
                            </td>
                            <td style="width: 202px; height: 66px;">
                            </td>
                            <td style="width: 100px; height: 66px">
                            </td>
                        </tr>
                        <tr>
                            <td align="left" style="width: 33px" valign="top">
                            </td>
                            <td align="left" style="width: 67px" valign="top">
                            </td>
                            <td style="width: 202px">
                            </td>
                            <td style="width: 100px">
                            </td>
                        </tr>
                    </table>
                 
                </td>
            </tr>
        </table>
    <br />
</asp:Content>

