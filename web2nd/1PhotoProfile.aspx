<%@ Page Language="C#" MasterPageFile="~/web2nd/main.master" AutoEventWireup="true" CodeFile="1PhotoProfile.aspx.cs" Inherits="web2nd_Profile" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <div style="text-align: center">
  
    <table style="width: 489px; position: static; height: 447px" bgcolor="#f8f8f1" cellpadding="0" cellspacing="5" align="center">
        <tr>
            <td style="width: 45px; height: 183px;" align="left" valign="top">
                <asp:Label ID="Label24" runat="server" Font-Bold="True" ForeColor="DimGray" Style="position: static"
                    Text="Photo:" Width="40px"></asp:Label></td>
            <td style="width: 96px; height: 183px;" align="left" valign="top">
                <table style="position: static">
                    <tr>
                        <td colspan="2" valign="top">
                            <asp:FileUpload ID="FileUpload1" runat="server" Style="position: static" Width="446px" BorderStyle="Solid" BorderWidth="1px" Font-Size="10pt" /></td>
                    </tr>
                    <tr>
                        <td style="width: 65px; height: 87px;" valign="top">
                            <asp:Label ID="Label32" runat="server" Style="position: static" Width="312px" Visible="False"></asp:Label>&nbsp;
                            <br />
                            <asp:Button ID="Button2" runat="server" OnClick="Button1_Click1" Style="position: static"
                                Text="Set Profile Image" Width="212px" BackColor="YellowGreen" BorderColor="Black" BorderWidth="1px" Font-Size="10pt" Font-Bold="False" /><br />
                            <asp:TextBox ID="TextBox18" runat="server" OnTextChanged="TextBox3_TextChanged" Style="position: static" Visible="False"></asp:TextBox>&nbsp;
                        </td>
                        <td style="width: 100px; height: 87px;" valign="top">
                            <br />
                            </td>
                    </tr>
                </table>
                <br />
                <asp:Label ID="Label2" runat="server" Style="position: static" Text="Your profile image has been changed. It will show at next time."
                    Visible="False" Width="467px"></asp:Label><br />
                <br />
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" Style="position: static">Back to Updates</asp:LinkButton></td>
        </tr>
        <tr>
            <td align="left" colspan="2" valign="top">
                <asp:Label ID="Label1" runat="server" ForeColor="White" Style="position: static"
                    Text="." Width="600px"></asp:Label></td>
        </tr>
    </table>
  </div>
</asp:Content>

