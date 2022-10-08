<%@ Control Language="C#" AutoEventWireup="true" CodeFile="FBTool.ascx.cs" Inherits="web2nd_FBTool" %>
<%@ Register
    Assembly="AjaxControlToolkit"
    Namespace="AjaxControlToolkit"
    TagPrefix="ajaxToolkit" %>


<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
        <div style="width: 330px; height: 80px">
            <asp:Panel ID="timer" runat="server" BackColor="White" BorderColor="Gray" BorderStyle="solid"
                BorderWidth="1px" ForeColor="#404040" Style="z-index: 1" Width="120px" Height="26px">
                <table cellpadding="0" style="width: 55%; position: static" cellspacing="5" border="0">
                    <tr>
                        <td style="width: 100px">
                            <asp:ImageButton ID="ImageButton6" runat="server" ImageUrl="~\web2nd\Image\ToolSideNewsFeed1.bmp"
                                Style="position: static" OnClick="ImageButton6_Click" /></td><td style="width: 100px">
                                    
                            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/web2nd/image/ToolPic1.bmp"
                                Style="position: static" OnClick="ImageButton1_Click" /></td>
                        <td style="width: 100px">
                            <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/web2nd/image/ToolFriend1.bmp"
                                Style="position: static" OnClick="ImageButton3_Click" /></td>
                        <td style="width: 100px">
                            <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/web2nd/image/ToolCalender.bmp"
                                Style="position: static" OnClick="ImageButton4_Click" /></td>
                        <td style="width: 100px">
                                    <asp:ImageButton ID="ImageButton7" runat="server" ImageUrl="~/web2nd/image/ToolChat1.bmp"  Style="position: static" OnClick="ImageButton7_Click1"  /></td>
                        <td style="width: 100px">
                        </td>
                                
                                
                    </tr>
                </table>
            </asp:Panel>
            <ajaxtoolkit:alwaysvisiblecontrolextender id="avce" runat="server" horizontaloffset="30"
                horizontalside="right" scrolleffectduration=".01" targetcontrolid="timer" verticaloffset="12"
                verticalside="Bottom">
                        </ajaxtoolkit:alwaysvisiblecontrolextender>
        </div>
    </ContentTemplate>
</asp:UpdatePanel>
