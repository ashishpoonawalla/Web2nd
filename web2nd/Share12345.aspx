<%@ Page Language="C#" MasterPageFile="~/web2nd/main.master" AutoEventWireup="true" CodeFile="Share12345.aspx.cs" Inherits="web2nd_Share12345" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="5" style="position: static" width="540">
        <tbody>
            <tr>
                <td style="width: 100px; height: 88px" valign="top">
                    <table bgcolor="whitesmoke" cellpadding="0" cellspacing="4" style="width: 100%; position: static;
                        height: 100%">
                        <tbody>
                            <tr>
                                <td colspan="2" valign="top">
                                    <table border="0" cellpadding="0" cellspacing="0" style="position: static">
                                        <tbody>
                                            <tr>
                                                <td align="left" colspan="7">
                                                    <asp:TextBox ID="TextBox1" runat="server" Font-Size="9pt" Height="21px" MaxLength="170"
                                                        Style="position: static" Width="541px"></asp:TextBox></td>
                                            </tr>
                                            <tr>
                                                <td align="left" style="width: 60px; height: 2px" valign="middle">
                                                </td>
                                                <td align="left" style="width: 60px; height: 2px" valign="middle">
                                                </td>
                                                <td align="left" style="width: 60px; height: 2px" valign="middle">
                                                    <asp:Label ID="Label1" runat="server" ForeColor="WhiteSmoke" Style="position: static"
                                                        Text="-----" Width="253px"></asp:Label></td>
                                                <td align="left" style="width: 60px; height: 2px" valign="middle">
                                                    <asp:Image ID="Image2" runat="server" ImageUrl="~/web2nd/image/privacey3.bmp" Style="position: static" /></td>
                                                <td style="width: 100px; height: 2px" valign="middle">
                                                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" ForeColor="#404040"
                                                        OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Style="position: static"
                                                        Width="175px">
                                                        <asp:ListItem>Everyone</asp:ListItem>
                                                        <asp:ListItem>Friends of Friends &amp; Network</asp:ListItem>
                                                        <asp:ListItem>Friends of Friends</asp:ListItem>
                                                        <asp:ListItem>Only Friends</asp:ListItem>
                                                        <asp:ListItem>Only me</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                                <td style="width: 100px; height: 2px" valign="middle">
                                                    <asp:Label ID="Label3" runat="server" ForeColor="WhiteSmoke" Style="position: static"
                                                        Text="-----" Width="21px"></asp:Label></td>
                                                <td style="width: 100px; height: 2px" valign="middle">
                                                    <asp:Button ID="Button3" runat="server" BackColor="YellowGreen" BorderColor="DarkOliveGreen"
                                                        BorderWidth="1px" Font-Bold="True" Height="21px" OnClick="Button2_Click" Style="position: static"
                                                        Text="Share" Width="71px" /></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td align="left" colspan="2" style="height: 3px" valign="top">
                                    <table border="0" cellpadding="0" cellspacing="1" style="width: 100%; position: static">
                                        <tbody>
                                            <tr>
                                                <td style="width: 100px">
                                                    <asp:Panel ID="Panel2" runat="server" BackColor="#E0E0E0" Height="70px" Style="position: static"
                                                        Visible="False" Width="555px">
                                                        <table cellspacing="2" style="width: 479px; position: static">
                                                            <tbody>
                                                                <tr>
                                                                    <td style="width: 100px; height: 10px" valign="top">
                                                                        <asp:ImageButton ID="ImageButton6" runat="server" ImageUrl="~/web2nd/image/ToolPic2.bmp"
                                                                            Style="position: static" /></td>
                                                                    <td style="width: 100px; height: 10px" valign="top">
                                                                        <asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="True" ForeColor="DarkOliveGreen"
                                                                            OnClick="LinkButton2_Click" Style="position: static" Width="135px">Upload a Photo</asp:LinkButton></td>
                                                                    <td style="width: 100px; height: 10px" valign="top">
                                                                        &nbsp;<asp:Label ID="Label4" runat="server" ForeColor="LightGray" Style="position: static"
                                                                            Text="---" Width="198px"></asp:Label></td>
                                                                    <td style="width: 100px; height: 10px" valign="top">
                                                                        <asp:LinkButton ID="LinkButton5" runat="server" Font-Bold="True" ForeColor="#E0E0E0"
                                                                            OnClick="LinkButton5_Click" Style="position: static" Width="155px">.</asp:LinkButton></td>
                                                                    <td style="width: 100px; height: 10px" valign="top">
                                                                    </td>
                                                                    <td style="width: 100px; height: 10px" valign="top">
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td colspan="6" valign="top">
                                                                        <asp:FileUpload ID="FileUpload1" runat="server" BackColor="White" BorderWidth="1px"
                                                                            EnableViewState="False" Font-Bold="False" Font-Size="8pt" ForeColor="DarkOliveGreen"
                                                                            Style="position: static" Width="516px" /></td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </asp:Panel>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="width: 100px; height: 13px">
                                                    <asp:Panel ID="Panel1" runat="server" BackColor="#E0E0E0" Height="70px" Style="position: static"
                                                        Visible="False" Width="555px">
                                                        <table cellspacing="2" style="width: 535px; position: static">
                                                            <tr>
                                                                <td style="width: 100px" valign="top">
                                                                    <asp:Image ID="Image1" runat="server" ImageUrl="~/web2nd/image/ToolCam2.bmp" Style="position: static" /></td>
                                                                <td colspan="4" style="width: 464px" valign="top">
                                                                    <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="DarkOliveGreen"
                                                                        Style="position: static" Text="Link a Video" Width="511px"></asp:Label></td>
                                                            </tr>
                                                            <tr>
                                                                <td style="width: 100px">
                                                                </td>
                                                                <td colspan="4" style="width: 464px">
                                                                    <asp:TextBox ID="TextBox2" runat="server" Font-Size="8pt" ForeColor="Blue" Style="position: static"
                                                                        Width="445px">http://</asp:TextBox></td>
                                                            </tr>
                                                        </table>
                                                    </asp:Panel>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="width: 100px">
                                                    <asp:Panel ID="Panel3" runat="server" BackColor="#E0E0E0" Height="70px" Style="position: static"
                                                        Visible="False" Width="555px">
                                                        <table cellspacing="2" style="width: 533px; position: static">
                                                            <tr>
                                                                <td style="width: 100px" valign="top">
                                                                    <asp:Image ID="Image3" runat="server" ImageUrl="~/web2nd/image/ToolLink1.bmp" Style="position: static" /></td>
                                                                <td colspan="2" style="width: 499px" valign="top">
                                                                    <asp:Label ID="Label5" runat="server" Font-Bold="True" ForeColor="DarkOliveGreen"
                                                                        Style="position: static" Text="Link" Width="507px"></asp:Label></td>
                                                            </tr>
                                                            <tr>
                                                                <td style="width: 100px" valign="top">
                                                                </td>
                                                                <td colspan="2" style="width: 499px" valign="top">
                                                                    <asp:TextBox ID="TextBox3" runat="server" Font-Size="8pt" ForeColor="Blue" Style="position: static"
                                                                        Width="448px">http://</asp:TextBox></td>
                                                            </tr>
                                                        </table>
                                                    </asp:Panel>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="width: 100px; height: 79px">
                                                    <asp:Panel ID="Panel5" runat="server" BackColor="#E0E0E0" Height="150px" Style="position: static"
                                                        Visible="False" Width="555px">
                                                        <table cellspacing="2" style="width: 533px; position: static">
                                                            <tr>
                                                                <td style="width: 100px" valign="top">
                                                                    <asp:Image ID="Image4" runat="server" ImageUrl="~/web2nd/image/ToolEvents.bmp" Style="position: static" /></td>
                                                                <td colspan="2" valign="top">
                                                                    <asp:Label ID="Label6" runat="server" Font-Bold="True" ForeColor="DarkOliveGreen"
                                                                        Style="position: static" Text="Event" Width="502px"></asp:Label></td>
                                                            </tr>
                                                            <tr>
                                                                <td style="width: 100px" valign="top">
                                                                </td>
                                                                <td style="width: 100px" valign="top">
                                                                    <table border="0" cellspacing="4" style="width: 251px; position: static">
                                                                        <tr>
                                                                            <td style="width: 100px">
                                                                                Title</td>
                                                                            <td colspan="3">
                                                                                <asp:TextBox ID="TextBox4" runat="server" Font-Size="8pt" Style="position: static"
                                                                                    Width="257px"></asp:TextBox></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td style="width: 100px">
                                                                                Location</td>
                                                                            <td colspan="3">
                                                                                <asp:TextBox ID="TextBox5" runat="server" Font-Size="8pt" Style="position: static"
                                                                                    Width="257px"></asp:TextBox></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td style="width: 100px">
                                                                                Time</td>
                                                                            <td style="width: 100px">
                                                                                <asp:DropDownList ID="DropDownList2" runat="server" Font-Size="8pt" Style="position: static"
                                                                                    Width="111px">
                                                                                    <asp:ListItem>Jan</asp:ListItem>
                                                                                    <asp:ListItem>Feb</asp:ListItem>
                                                                                    <asp:ListItem>Mar</asp:ListItem>
                                                                                    <asp:ListItem>April</asp:ListItem>
                                                                                    <asp:ListItem>May</asp:ListItem>
                                                                                    <asp:ListItem>June</asp:ListItem>
                                                                                    <asp:ListItem>July</asp:ListItem>
                                                                                    <asp:ListItem>Aug</asp:ListItem>
                                                                                    <asp:ListItem>Sep</asp:ListItem>
                                                                                    <asp:ListItem>Oct</asp:ListItem>
                                                                                    <asp:ListItem>Nov</asp:ListItem>
                                                                                    <asp:ListItem>Dec</asp:ListItem>
                                                                                </asp:DropDownList></td>
                                                                            <td style="width: 100px">
                                                                                <asp:DropDownList ID="DropDownList3" runat="server" Font-Size="8pt" Style="position: static">
                                                                                </asp:DropDownList></td>
                                                                            <td style="width: 100px">
                                                                                <asp:DropDownList ID="DropDownList4" runat="server" Font-Size="8pt" Style="position: static">
                                                                                </asp:DropDownList></td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                                <td style="width: 100px" valign="top">
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </asp:Panel>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="width: 100px; height: 13px">
                                                    &nbsp;</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td align="left" colspan="2" style="height: 3px" valign="top">
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <br />
                </td>
            </tr>
        </tbody>
    </table>
</asp:Content>

