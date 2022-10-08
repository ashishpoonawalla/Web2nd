<%@ Control Language="C#" AutoEventWireup="true" CodeFile="MainMenu.ascx.cs" Inherits="web2nd_MainMenu" %>
<%@ Register     Assembly="AjaxControlToolkit"     Namespace="AjaxControlToolkit"     TagPrefix="ajaxToolkit" %>

<script language="javascript" type="text/javascript">


function Button1_onclick() {

}

</script>

<link href="../CSS/eh2vbogl.css" rel="stylesheet" type="text/css" />
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
        <div style="width: 100%; height: 80px">
            <asp:Panel ID="timer" runat="server" BackColor="White" BorderColor="Gray" BorderStyle="None"
                BorderWidth="0px" ForeColor="#404040" Height="26px" Style="z-index: 1" Width="1000px">

<table cellpadding="0" cellspacing="0" style="position: static; font-weight: bold; font-size: 24pt; background-color: #545c99; border-bottom: darkgray thin solid; height: 14px;" align="center" width="1000">
    <tr>
        <td align="center" colspan="2" style="height: 2px" valign="middle">
            &nbsp;<asp:Label ID="Label6" runat="server" ForeColor="#545C99" Style="position: static"
                Width="27px">.</asp:Label></td><td align="center" colspan="2" style="height: 2px" valign="middle">
            &nbsp;<asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="20pt" ForeColor="White"
                Style="position: static" Text="Web2nd" Width="158px" Height="20px"></asp:Label>
            <asp:Button ID="Button3" runat="server" BackColor="MediumSlateBlue" BorderColor="Gainsboro"
                BorderWidth="1px" Font-Bold="True" ForeColor="Black" Height="21px" OnClick="Button2_Click"
                Style="position: static" Text="Change Network" Width="120px" BorderStyle="Solid" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" Visible="False" /></td>
        <td style="height: 2px; width: 236px;" align="center" colspan="5" valign="middle">
            <asp:Label ID="Label1" runat="server" ForeColor="#545C99" Style="position: static"
                Width="27px">.</asp:Label>
        </td>
        <td align="center" colspan="1" style="width: 236px; height: 2px" valign="middle">
            <table cellpadding="0" cellspacing="4" style="position: static" width="100">
                <tr>
                    <td style="width: 100px">
                            <asp:ImageMap ID="ImageMap1" runat="server" BorderColor="DarkGray" BorderStyle="Solid"
                                BorderWidth="1px" ImageUrl="~/images/W2Home.PNG" OnClick="ImageMap1_Click" style="position: static">
                            </asp:ImageMap></td>
                    <td style="width: 100px">
                            <asp:ImageMap ID="ImageMap2" runat="server" BorderColor="DarkGray" BorderStyle="Solid"
                                BorderWidth="1px" ImageUrl="~/images/W2Friends.JPG" OnClick="ImageMap2_Click" style="position: static">
                            </asp:ImageMap></td>
                    <td style="width: 100px">
                            <asp:ImageMap ID="ImageMap3" runat="server" BorderColor="DarkGray" BorderStyle="Solid"
                                BorderWidth="1px" ImageUrl="~/images/W2Setting.JPG" OnClick="ImageMap3_Click" style="position: static">
                            </asp:ImageMap></td>
                    <td style="width: 100px">
                            <asp:ImageMap ID="ImageMap4" runat="server" BorderColor="DarkGray" BorderStyle="Solid"
                                BorderWidth="1px" ImageUrl="~/images/W2Logout.JPG" OnClick="ImageMap4_Click" style="position: static">
                            </asp:ImageMap></td>
                </tr>
            </table>
        </td>
        <td align="center" colspan="6" style="height: 2px" valign="middle">
            <asp:Label ID="Label4" runat="server" ForeColor="#545C99" Style="position: static"
                Width="27px"></asp:Label></td>
        <td style="width: 239px; height: 2px; " align="center" valign="middle">
            <asp:TextBox ID="TextBox1" runat="server" Font-Size="8pt" Style="position: static" BorderWidth="0px" BorderColor="DarkOliveGreen" Width="160px" Height="20px"></asp:TextBox></td><td style="width: 236px; height: 2px; " align="center" valign="middle">
            <asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="~/images/ToolSearch1.bmp"
                Style="position: static" OnClick="ImageButton1_Click" BorderColor="#8080FF" BorderStyle="Solid" BorderWidth="2px" /></td>
        <td style="width: 3540px; height: 2px;" align="center" valign="middle">
            </td>
        <td style="width: 5px; height: 2px;" align="center" valign="middle">
            <asp:ImageButton ID="ImageButton2" runat="server" BorderColor="#545C99" BorderStyle="Solid"
                BorderWidth="4px" Height="25px" Style="position: static" Width="25px" /></td>
        <td style="width: 236px; height: 2px; " align="center" valign="middle">
            <asp:Label ID="Label2" runat="server" BorderWidth="0px" Font-Bold="True" Font-Names="Arial"
                Font-Size="9pt" ForeColor="Gainsboro" Style="position: static" Text="Label" Width="235px" Height="18px"></asp:Label></td><td style="width: 236px; height: 2px; " align="center" valign="middle">
                    <asp:Label ID="Label5" runat="server" Style="position: static" ForeColor="#545C99" Height="15px">web2nd</asp:Label>
                </td>
    </tr>
</table>
            </asp:Panel>
            <ajaxtoolkit:alwaysvisiblecontrolextender id="avce" runat="server" horizontaloffset="0"
                horizontalside="center" scrolleffectduration=".01" targetcontrolid="timer" verticaloffset="0"
                verticalside="top">
            </ajaxtoolkit:alwaysvisiblecontrolextender>
        </div>
    </ContentTemplate>
</asp:UpdatePanel>
