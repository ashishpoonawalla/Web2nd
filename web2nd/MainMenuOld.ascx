<%@ Control Language="C#" AutoEventWireup="true" CodeFile="MainMenuOld.ascx.cs" Inherits="web2nd_MainMenu" %>
<%@ Register Src="ChangeNetwork.ascx" TagName="ChangeNetwork" TagPrefix="uc2" %>
<%@ Register Src="../ChangeNetwork.ascx" TagName="ChangeNetwork" TagPrefix="uc1" %>
<script language="javascript" type="text/javascript">


function Button1_onclick() {

}

</script>

<link href="../CSS/eh2vbogl.css" rel="stylesheet" type="text/css" />
<table cellpadding="0" cellspacing="0" style="position: static; font-weight: bold; font-size: 24pt; background-color: gray; border-bottom: darkgray thin solid;" align="center" height="10" width="1000">
    <tr>
        <td align="center" colspan="1" style="width: 236px; height: 5px; background-color: lightgrey"
            valign="middle">
            <asp:Label ID="Label1" runat="server" ForeColor="LightGray" Style="position: static"
                Width="44px"></asp:Label>&nbsp;</td>
        <td align="center" colspan="1" style="width: 236px; height: 5px; background-color: lightgrey"
            valign="middle">
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="24pt" ForeColor="#660066"
                Style="position: static" Text="Web2nd" Width="138px" Height="27px"></asp:Label></td>
        <td style="height: 5px; width: 236px; background-color: lightgrey;" align="center" colspan="5" valign="middle">
            &nbsp;
        </td>
        <td align="center" colspan="3" style="height: 5px; width: 236px; background-color: lightgrey;" valign="middle">
            <div style="text-align: left">
                <table border="0" cellspacing="3" style="position: static; width: 170px;">
                    <tr>
                        <td style="width: 100px">
                            <asp:ImageMap ID="ImageMap1" runat="server" BorderColor="DarkGray" BorderStyle="Solid"
                                BorderWidth="1px" ImageUrl="~/images/W2Home.PNG" OnClick="ImageMap1_Click">
                            </asp:ImageMap></td>
                        <td style="width: 100px">
                            <asp:ImageMap ID="ImageMap2" runat="server" BorderColor="DarkGray" BorderStyle="Solid"
                                BorderWidth="1px" ImageUrl="~/images/W2Friends.JPG" OnClick="ImageMap2_Click">
                            </asp:ImageMap></td>
                        <td style="width: 100px">
                            <asp:ImageMap ID="ImageMap3" runat="server" BorderColor="DarkGray" BorderStyle="Solid"
                                BorderWidth="1px" ImageUrl="~/images/W2Setting.JPG" OnClick="ImageMap3_Click">
                            </asp:ImageMap></td>
                        <td style="width: 260px">
                            <asp:ImageMap ID="ImageMap4" runat="server" BorderColor="DarkGray" BorderStyle="Solid"
                                BorderWidth="1px" ImageUrl="~/images/W2Logout.JPG" OnClick="ImageMap4_Click">
                            </asp:ImageMap></td>
                        <td style="width: 100px">
                            &nbsp;
                        </td>
                    </tr>
                </table>
            </div>
        </td>
        <td style="width: 239px; height: 5px; background-color: lightgrey;" align="center" valign="middle">
            &nbsp;<asp:Button ID="Button3" runat="server" BackColor="CornflowerBlue" BorderColor="DarkOliveGreen"
                BorderWidth="1px" Font-Bold="True" ForeColor="White" Height="21px" OnClick="Button2_Click"
                Style="position: static" Text="Change Network" Width="136px" /><br />
            &nbsp;</td><td style="width: 236px; height: 5px; background-color: lightgrey;" align="center" valign="middle">
            &nbsp;<asp:ImageButton ID="ImageButton1" runat="server" BorderColor="LightGray" BorderStyle="Solid"
                BorderWidth="5px" Height="32px" Style="position: static" Width="32px" />&nbsp;
        </td>
        <td style="width: 236px; height: 5px; background-color: lightgrey;" align="center" valign="middle">
            <asp:Label ID="Label2" runat="server" BorderWidth="0px" Font-Bold="True" Font-Names="Arial"
                Font-Size="9pt" ForeColor="Black" Style="position: static" Text="Label" Width="256px" Height="24px"></asp:Label><br />
            &nbsp;
        </td>
        <td style="width: 236px; height: 5px; background-color: lightgrey;" align="center" valign="middle">
            <asp:TextBox ID="TextBox1" runat="server" Font-Size="8pt" Style="position: static" BorderWidth="0px" BorderColor="DarkOliveGreen" Width="160px" Height="20px"></asp:TextBox></td>
        <td style="width: 236px; height: 5px; background-color: lightgrey;" align="center" valign="middle">
            <asp:ImageButton ID="ImageButton6" runat="server" ImageUrl="~/images/ToolSearch1.bmp"
                Style="position: static" OnClick="ImageButton1_Click" /></td><td style="width: 236px; height: 5px; background-color: lightgrey;" align="center" valign="middle">
                    <asp:Label ID="Label5" runat="server" Style="position: static" ForeColor="LightGray">web2nd</asp:Label>
                </td>
    </tr>
</table>
