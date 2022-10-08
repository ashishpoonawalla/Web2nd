<%@ Page Language="C#" MasterPageFile="~/web2nd/mainNoAdd.master" AutoEventWireup="true" CodeFile="1PhotoAlbumSub.aspx.cs" Inherits="web2nd_1Photo" Title="Untitled Page" %>
<%@ Register
    Assembly="AjaxControlToolkit"
    Namespace="AjaxControlToolkit"
    TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<script language="javascript" type="text/javascript">
<!--

function TABLE1_onclick() {

}

// -->
</script>

    <div style="text-align: left">
        <table border="0" cellpadding="0" cellspacing="0" style="width: 788px; position: static;
            height: 100%" id="TABLE1" language="javascript" onclick="return TABLE1_onclick()">
            <tr>
            </tr>
            <tr>
                <td style="width: 100px; height: 666px;" valign="top">
                    <asp:UpdatePanel id="UpdatePanel1" runat="server">
                        <contenttemplate>
<DIV style="TEXT-ALIGN: left"><TABLE style="POSITION: static" cellSpacing=4 cellPadding=4 border=0><TBODY><TR><TD vAlign=top><TABLE style="WIDTH: 628px; POSITION: static; HEIGHT: 88px" cellSpacing=0 cellPadding=0 border=0><TBODY><TR><TD style="WIDTH: 100px"><TABLE style="WIDTH: 683px; POSITION: static" cellSpacing=0 cellPadding=0 border=0><TBODY><TR><TD style="WIDTH: 3px; HEIGHT: 16px"></TD><TD style="WIDTH: 100px; HEIGHT: 16px">&nbsp;<asp:Label style="POSITION: static" id="Label4" runat="server" Font-Bold="True" Font-Size="11pt" Text="." Width="533px" ForeColor="#660066"></asp:Label></TD><TD style="WIDTH: 100px; HEIGHT: 16px"><asp:HyperLink style="POSITION: static" id="HyperLink1" runat="server" Width="54px" NavigateUrl="~/web2nd/1PhotoAlbum.aspx">| Back</asp:HyperLink></TD><TD style="WIDTH: 100px; HEIGHT: 16px"><asp:HyperLink style="POSITION: static" id="HyperLink2" runat="server" Width="81px" NavigateUrl="~/web2nd/Web2ndPhoto.aspx">| Main Album</asp:HyperLink></TD><TD style="WIDTH: 100px; HEIGHT: 16px"><asp:LinkButton style="POSITION: static" id="LinkButton1" onclick="LinkButton1_Click" runat="server" Width="75px">| Tag Image</asp:LinkButton></TD></TR></TBODY></TABLE><asp:Label style="POSITION: static" id="Label1" runat="server" Text="." Width="747px" ForeColor="White"></asp:Label> </TD></TR><TR><TD style="WIDTH: 100px"><asp:SqlDataSource id="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT PID, AID, ImageCaption, ImagePath, SN, ImagePath1 FROM PhotoAlbum2 WHERE (AID = @AID) ORDER BY PID"><SelectParameters>
<asp:SessionParameter SessionField="SubAlbum" Type="String" Name="AID"></asp:SessionParameter>
</SelectParameters>
</asp:SqlDataSource> <TABLE style="POSITION: static" cellSpacing=0 cellPadding=0 bgColor=#ffffff border=0><TBODY><TR><TD style="WIDTH: 100px" bgColor=#ffffff><asp:ImageMap style="POSITION: static" id="ImageMap1" runat="server" BorderColor="Gainsboro" BorderWidth="6px"></asp:ImageMap></TD></TR><TR><TD style="WIDTH: 100px" bgColor=#ffffff><asp:ImageButton style="POSITION: static" id="ImageButton2" onclick="ImageButton2_Click" runat="server" BorderColor="Gray" BorderWidth="6px" Visible="False" BorderStyle="Solid"></asp:ImageButton></TD></TR><TR><TD style="WIDTH: 100px; HEIGHT: 12px" bgColor=#ffffff><asp:SqlDataSource id="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [PhotoAlbum2Tag] WHERE ([PID] = @PID)" UpdateCommand="UPDATE [PhotoAlbum2Tag] SET [PID] = @PID, [PicX] = @PicX, [PicY] = @PicY, [PicText] = @PicText WHERE [TagID] = @TagID" InsertCommand="INSERT INTO [PhotoAlbum2Tag] ([PID], [PicX], [PicY], [PicText]) VALUES (@PID, @PicX, @PicY, @PicText)" DeleteCommand="DELETE FROM [PhotoAlbum2Tag] WHERE [TagID] = @TagID"><DeleteParameters>
<asp:Parameter Type="Int32" Name="TagID"></asp:Parameter>
</DeleteParameters>
<UpdateParameters>
<asp:Parameter Type="Int32" Name="PID"></asp:Parameter>
<asp:Parameter Type="String" Name="PicX"></asp:Parameter>
<asp:Parameter Type="String" Name="PicY"></asp:Parameter>
<asp:Parameter Type="String" Name="PicText"></asp:Parameter>
<asp:Parameter Type="Int32" Name="TagID"></asp:Parameter>
</UpdateParameters>
<SelectParameters>
<asp:SessionParameter SessionField="SubSubAlbum" Type="Int32" Name="PID"></asp:SessionParameter>
</SelectParameters>
<InsertParameters>
<asp:Parameter Type="Int32" Name="PID"></asp:Parameter>
<asp:Parameter Type="String" Name="PicX"></asp:Parameter>
<asp:Parameter Type="String" Name="PicY"></asp:Parameter>
<asp:Parameter Type="String" Name="PicText"></asp:Parameter>
</InsertParameters>
</asp:SqlDataSource></TD></TR><TR><TD style="WIDTH: 100px" bgColor=#ffffff><asp:DataList style="POSITION: static" id="DataList1" runat="server" Width="597px" DataSourceID="SqlDataSource3" RepeatColumns="3" DataKeyField="TagID"><ItemTemplate>
<TABLE style="POSITION: static" cellSpacing=3 cellPadding=3 border=0><TBODY><TR><TD style="WIDTH: 100px"><asp:Button style="POSITION: static" id="Button2" runat="server" Font-Bold="True" Font-Size="8pt" Text=" X " Width="19px" BorderWidth="1px" Visible="False" BorderStyle="None" Height="16px" BackColor="WhiteSmoke" CommandName="Delete" __designer:wfdid="w9"></asp:Button></TD><TD style="WIDTH: 100px">&nbsp;<asp:Label style="POSITION: static" id="PicTextLabel" runat="server" Font-Bold="False" Text='<%# Eval("PicText") %>' Width="180px" ForeColor="DarkOliveGreen" __designer:wfdid="w10"></asp:Label></TD></TR></TBODY></TABLE>
</ItemTemplate>
</asp:DataList></TD></TR><TR><TD style="WIDTH: 100px" bgColor=#ffffff></TD></TR><TR><TD style="WIDTH: 100px" bgColor=#ffffff>&nbsp;</TD></TR><TR><TD style="WIDTH: 100px" bgColor=#ffffff></TD></TR><TR><TD style="WIDTH: 100px" bgColor=#ffffff><DIV style="WIDTH: 330px; POSITION: static; HEIGHT: 80px"><asp:Panel style="Z-INDEX: 1" id="timer" runat="server" Width="320px" ForeColor="#404040" BorderColor="Gray" BorderWidth="1px" Visible="False" BorderStyle="solid" BackColor="White"><asp:Panel style="POSITION: static" id="Panel9" runat="server" Width="489px" BorderColor="OliveDrab" BorderWidth="4px" Visible="False" BackColor="WhiteSmoke" Height="120px"><TABLE style="WIDTH: 101%; POSITION: static; HEIGHT: 109px" cellSpacing=6 cellPadding=0 border=0><TBODY><TR><TD style="WIDTH: 100px"><asp:Label style="POSITION: static" id="Label2" runat="server" Font-Bold="True" Width="397px" ForeColor="DarkOliveGreen">Name or Text</asp:Label></TD><TD style="WIDTH: 100px" align=right>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <asp:Button style="POSITION: static" id="Button1" onclick="Button14_Click2" runat="server" Font-Bold="True" Text="x" Width="28px" ForeColor="White" BorderWidth="1px" BackColor="#404040"></asp:Button></TD></TR><TR><TD style="WIDTH: 100px"><asp:TextBox style="POSITION: static" id="TextBox8" runat="server" Width="396px"></asp:TextBox></TD><TD style="WIDTH: 100px" align=right><asp:Button style="POSITION: static" id="Button15" onclick="Button15_Click1" runat="server" Font-Bold="True" Font-Size="10pt" Text="Tag This" Width="67px" BorderColor="DarkOliveGreen" BorderWidth="1px" BackColor="YellowGreen"></asp:Button> </TD></TR><TR><TD style="WIDTH: 100px"><asp:SqlDataSource id="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [FList] WHERE ([S_Email] = @S_Email)"><SelectParameters>
<asp:SessionParameter SessionField="UserMail" Type="String" Name="S_Email"></asp:SessionParameter>
</SelectParameters>
</asp:SqlDataSource> <asp:DropDownList style="POSITION: static" id="DropDownList1" runat="server" Width="306px" DataSourceID="SqlDataSource2" DataTextField="R_FullName" DataValueField="R_FullName" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList></TD><TD style="WIDTH: 100px" align=right></TD></TR></TBODY></TABLE></asp:Panel> </asp:Panel> <ajaxToolkit:AlwaysVisibleControlExtender id="avce" runat="server" VerticalSide="Middle" VerticalOffset="0" TargetControlID="timer" ScrollEffectDuration=".01" HorizontalSide="Center" HorizontalOffset="5">
                                                                </ajaxToolkit:AlwaysVisibleControlExtender> </DIV></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD><TD style="WIDTH: 100px" vAlign=top><asp:Label style="POSITION: static" id="Label3" runat="server" Text="Label" Width="203px" Visible="False"></asp:Label> <asp:SqlDataSource id="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT PID, AID, ImageCaption, ImagePath, SN, ImagePath1 FROM PhotoAlbum2 WHERE (AID = @AID) ORDER BY PID">
                                                <SelectParameters>
                                                    <asp:SessionParameter Name="AID" SessionField="SubAlbum" />
                                                </SelectParameters>
                                            </asp:SqlDataSource>&nbsp; <asp:Panel id="Panel1" runat="server" Width="200px" __designer:wfdid="w19" Height="600px" ScrollBars="Vertical"><asp:DataList style="POSITION: static" id="DataList2" runat="server" Width="183px" DataKeyField="PID" DataSourceID="SqlDataSource4" OnSelectedIndexChanged="DataList2_SelectedIndexChanged"><ItemTemplate>
<BR /><asp:ImageButton style="POSITION: static" id="ImageButton1" onclick="ImageButton1_Click1" runat="server" BorderColor="#E0E0E0" BorderWidth="3px" BorderStyle="Solid" ImageUrl='<%# Eval("ImagePath") %>' CommandName="Select" __designer:wfdid="w2"></asp:ImageButton><BR />
</ItemTemplate>
</asp:DataList></asp:Panel></TD></TR></TBODY></TABLE></DIV><BR /><BR />&nbsp; 
</contenttemplate>
                    </asp:UpdatePanel><br />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

