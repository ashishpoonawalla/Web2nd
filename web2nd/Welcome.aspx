<%@ Page Language="C#" MasterPageFile="~/web2nd/main.master" AutoEventWireup="true" CodeFile="Welcome.aspx.cs" Inherits="web2nd_Welcome" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table border="0" cellspacing="3" style="width: 597px; position: static">
        <tr>
            <td colspan="4" style="height: 15px" valign="top">
                &nbsp;<asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="11pt" ForeColor="Black"
                    Style="position: static" Text="Welcome to web2nd" Width="286px"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 33px" valign="top">
                <span style="color: #ffffff">.</span></td>
            <td style="width: 93px" valign="top">
            </td>
            <td style="width: 100px" valign="top">
            </td>
            <td style="width: 100px" valign="top">
            </td>
        </tr>
        <tr>
            <td style="width: 33px" valign="top">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/web2nd/image/1.JPG" Style="position: static" /></td>
            <td colspan="3" valign="top">
                <asp:LinkButton ID="LinkButton2" runat="server" Font-Size="9pt" Style="position: static"
                    Width="472px" OnClick="LinkButton2_Click">Search Friends by Name or by email for schoolmates or colleagues</asp:LinkButton></td>
        </tr>
        <tr>
            <td style="width: 33px" valign="bottom">
            </td>
            <td style="width: 93px" valign="bottom">
            </td>
            <td style="width: 100px" valign="bottom">
            </td>
            <td style="width: 100px" valign="bottom">
            </td>
        </tr>
        <tr>
            <td style="width: 33px" valign="top">
                <span style="color: #ffffff">.</span></td>
            <td style="width: 93px" valign="top">
            </td>
            <td style="width: 100px" valign="top">
            </td>
            <td style="width: 100px" valign="top">
            </td>
        </tr>
        <tr>
            <td style="width: 33px" valign="top">
                <asp:Image ID="Image2" runat="server" ImageUrl="~/web2nd/image/2.JPG" Style="position: static" /></td>
            <td colspan="3" valign="top">
                <asp:LinkButton ID="LinkButton3" runat="server" Font-Size="9pt" Style="position: static"
                    Width="479px" OnClick="LinkButton3_Click">Share your messages, photos, videos, events, ideas to your friends</asp:LinkButton></td>
        </tr>
        <tr>
            <td style="width: 33px" valign="top">
            </td>
            <td style="width: 93px" valign="top">
            </td>
            <td style="width: 100px" valign="top">
            </td>
            <td style="width: 100px" valign="top">
            </td>
        </tr>
        <tr>
            <td style="width: 33px" valign="top">
                <span style="color: #ffffff">.</span></td>
            <td style="width: 93px" valign="top">
            </td>
            <td style="width: 100px" valign="top">
            </td>
            <td style="width: 100px" valign="top">
            </td>
        </tr>
        <tr>
            <td style="width: 33px" valign="top">
                <asp:Image ID="Image3" runat="server" ImageUrl="~/web2nd/image/3.JPG" Style="position: static" /></td>
            <td colspan="3" valign="top">
                <asp:LinkButton ID="LinkButton5" runat="server" Font-Size="9pt" Style="position: static"
                    Width="470px" OnClick="LinkButton5_Click">Control what information you want to share.</asp:LinkButton></td>
        </tr>
        <tr>
            <td style="width: 33px" valign="top">
            </td>
            <td style="width: 93px" valign="top">
            </td>
            <td style="width: 100px" valign="top">
            </td>
            <td style="width: 100px" valign="top">
            </td>
        </tr>
        <tr>
            <td style="width: 33px" valign="top">
                <span style="color: #ffffff">.</span></td>
            <td style="width: 93px" valign="top">
            </td>
            <td style="width: 100px" valign="top">
            </td>
            <td style="width: 100px" valign="top">
            </td>
        </tr>
        <tr>
            <td style="width: 33px" valign="top">
                <asp:Image ID="Image4" runat="server" ImageUrl="~/web2nd/image/4.JPG" Style="position: static" /></td>
            <td colspan="3" valign="top">
                <asp:LinkButton ID="LinkButton4" runat="server" Font-Size="9pt" Style="position: static"
                    Width="462px">Create page for College, Institute, Business, Band, Brand, Organization etc.</asp:LinkButton></td>
        </tr>
        <tr>
            <td style="width: 33px" valign="top">
            </td>
            <td style="width: 93px" valign="top">
            </td>
            <td style="width: 100px" valign="top">
            </td>
            <td style="width: 100px" valign="top">
            </td>
        </tr>
        <tr>
            <td style="width: 33px" valign="top">
                <span style="color: #ffffff">.</span></td>
            <td style="width: 93px" valign="top">
            </td>
            <td style="width: 100px" valign="top">
            </td>
            <td style="width: 100px" valign="top">
            </td>
        </tr>
        <tr>
            <td style="width: 33px" valign="top">
                <asp:Image ID="Image5" runat="server" ImageUrl="~/web2nd/image/5.JPG" Style="position: static" Visible="False" /></td>
            <td colspan="3" valign="top">
                <asp:HyperLink ID="HyperLink1" runat="server" Font-Size="9pt" Style="position: static"
                    Width="474px" Visible="False">Manage your public figure by creating blogs, notes.</asp:HyperLink></td>
        </tr>
        <tr>
            <td style="width: 33px" valign="top">
            </td>
            <td style="width: 93px" valign="top">
            </td>
            <td style="width: 100px" valign="top">
            </td>
            <td style="width: 100px" valign="top">
            </td>
        </tr>
        <tr>
            <td style="width: 33px" valign="top">
                <span style="color: #ffffff">.</span></td>
            <td style="width: 93px" valign="top">
            </td>
            <td style="width: 100px" valign="top">
            </td>
            <td style="width: 100px" valign="top">
            </td>
        </tr>
        <tr>
            <td style="width: 33px" valign="top">
                <asp:Image ID="Image6" runat="server" ImageUrl="~/web2nd/image/6.JPG" Style="position: static" Visible="False" /></td>
            <td colspan="3" valign="top">
                &nbsp;<asp:LinkButton ID="LinkButton1" runat="server" Font-Size="9pt" Style="position: static"
                    Width="454px" Visible="False">Create Your News Paper, Magzine, Book, Novel, Video Presantation etc.</asp:LinkButton></td>
        </tr>
        <tr>
            <td style="width: 33px" valign="top">
            </td>
            <td style="width: 93px" valign="top">
            </td>
            <td style="width: 100px" valign="top">
            </td>
            <td style="width: 100px" valign="top">
            </td>
        </tr>
        <tr>
            <td style="width: 33px" valign="top">
                <span style="color: #ffffff">.</span></td>
            <td style="width: 93px" valign="top">
            </td>
            <td style="width: 100px" valign="top">
            </td>
            <td style="width: 100px" valign="top">
            </td>
        </tr>
    </table>
</asp:Content>

