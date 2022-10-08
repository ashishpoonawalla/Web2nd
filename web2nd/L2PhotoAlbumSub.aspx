<%@ Page Language="C#" MasterPageFile="~/web2nd/mainNoMenu.master" AutoEventWireup="true" CodeFile="L2PhotoAlbumSub.aspx.cs" Inherits="web2nd_1Photo" Title="Untitled Page" %>
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
                <td style="width: 100px" valign="top">
                    <asp:UpdatePanel id="UpdatePanel1" runat="server">
                        <contenttemplate>
<TABLE style="WIDTH: 537px; POSITION: static; HEIGHT: 88px" cellSpacing=0 cellPadding=0 border=0><TBODY><TR><TD style="WIDTH: 100px"><TABLE style="WIDTH: 631px; POSITION: static" cellSpacing=0 cellPadding=0 border=0 __designer:dtid="2814749767106565"><TBODY><TR __designer:dtid="2814749767106566"><TD style="WIDTH: 36px; HEIGHT: 16px" __designer:dtid="2814749767106567"></TD><TD style="WIDTH: 100px; HEIGHT: 16px" __designer:dtid="2814749767106569">&nbsp;<asp:Label style="POSITION: static" id="Label4" runat="server" __designer:dtid="2814749767106570" ForeColor="OliveDrab" Width="484px" Text="." Font-Size="11pt" Font-Bold="True" __designer:wfdid="w20"></asp:Label></TD><TD style="WIDTH: 100px; HEIGHT: 16px" __designer:dtid="2814749767106571">&nbsp;<asp:HyperLink style="POSITION: static" id="HyperLink1" runat="server" __designer:dtid="2814749767106576" Width="32px" __designer:wfdid="w21" NavigateUrl="~/web2nd/L2PhotoAlbum.aspx">| Back</asp:HyperLink></TD><TD style="WIDTH: 100px; HEIGHT: 16px" __designer:dtid="2814749767106572"></TD><TD style="WIDTH: 100px; HEIGHT: 16px" __designer:dtid="2814749767106573"></TD></TR></TBODY></TABLE><asp:Label style="POSITION: static" id="Label1" runat="server" ForeColor="White" Text="." __designer:wfdid="w24"></asp:Label></TD></TR><TR><TD style="WIDTH: 100px"><asp:SqlDataSource id="SqlDataSource1" runat="server" SelectCommand="SELECT * FROM [PhotoAlbum2] WHERE ([AID] = @AID)" ConnectionString="<%$ ConnectionStrings:ConnectionString %>">
                        <SelectParameters>
                            <asp:SessionParameter Name="AID" SessionField="SubAlbum" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource> <TABLE style="POSITION: static" cellSpacing=0 cellPadding=0 border=0><TBODY><TR><TD style="WIDTH: 100px" bgColor=whitesmoke><asp:Panel style="POSITION: static" id="Panel3" runat="server" Width="125px" __designer:wfdid="w8" Height="50px"><asp:Panel style="POSITION: static" id="Panel1" runat="server" __designer:wfdid="w4" Width="50px" Height="50px" BorderColor="#404040" BorderWidth="0px"><asp:ImageMap style="POSITION: static" id="ImageMap1" runat="server" __designer:wfdid="w5" BorderWidth="6px" BorderColor="White"></asp:ImageMap></asp:Panel> <asp:FormView style="POSITION: static" id="FormView1" runat="server" Width="598px" ForeColor="Black" Height="18px" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" BackColor="WhiteSmoke" AllowPaging="True" CellPadding="4" DataKeyNames="PID" DataSourceID="SqlDataSource1" GridLines="Horizontal" OnPageIndexChanging="FormView1_PageIndexChanging">
<FooterStyle BackColor="#CCCC99" ForeColor="Black"></FooterStyle>

<EditRowStyle BackColor="#CC3333" ForeColor="White" Font-Bold="True"></EditRowStyle>
<EditItemTemplate>
                            PID:
                            <asp:Label ID="PIDLabel1" runat="server" Text='<%# Eval("PID") %>'></asp:Label><br />
                            AID:
                            <asp:TextBox ID="AIDTextBox" runat="server" Text='<%# Bind("AID") %>'>
                            </asp:TextBox><br />
                            ImageCaption:
                            <asp:TextBox ID="ImageCaptionTextBox" runat="server" Text='<%# Bind("ImageCaption") %>'>
                            </asp:TextBox><br />
                            ImagePath:
                            <asp:TextBox ID="ImagePathTextBox" runat="server" Text='<%# Bind("ImagePath") %>'>
                            </asp:TextBox><br />
                            SN:
                            <asp:TextBox ID="SNTextBox" runat="server" Text='<%# Bind("SN") %>'>
                            </asp:TextBox><br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update"
                                Text="Update">
                            </asp:LinkButton>
                            <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
                                Text="Cancel">
                            </asp:LinkButton>
                        
</EditItemTemplate>

<PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right"></PagerStyle>
<InsertItemTemplate>
                            AID:
                            <asp:TextBox ID="AIDTextBox" runat="server" Text='<%# Bind("AID") %>'>
                            </asp:TextBox><br />
                            ImageCaption:
                            <asp:TextBox ID="ImageCaptionTextBox" runat="server" Text='<%# Bind("ImageCaption") %>'>
                            </asp:TextBox><br />
                            ImagePath:
                            <asp:TextBox ID="ImagePathTextBox" runat="server" Text='<%# Bind("ImagePath") %>'>
                            </asp:TextBox><br />
                            SN:
                            <asp:TextBox ID="SNTextBox" runat="server" Text='<%# Bind("SN") %>'>
                            </asp:TextBox><br />
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert"
                                Text="Insert">
                            </asp:LinkButton>
                            <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
                                Text="Cancel">
                            </asp:LinkButton>
                        
</InsertItemTemplate>
<ItemTemplate>
<asp:Label style="POSITION: static" id="ImageCaptionLabel" runat="server" ForeColor="DimGray" Width="518px" Text='<%# Bind("ImageCaption") %>' Font-Size="10pt" Font-Bold="True" __designer:wfdid="w3"></asp:Label><BR />
</ItemTemplate>

<HeaderStyle BackColor="#333333" ForeColor="White" Font-Bold="True"></HeaderStyle>
</asp:FormView> <asp:SqlDataSource id="SqlDataSource3" runat="server" __designer:wfdid="w1" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [PhotoAlbum2Tag] WHERE ([PID] = @PID)" UpdateCommand="UPDATE [PhotoAlbum2Tag] SET [PID] = @PID, [PicX] = @PicX, [PicY] = @PicY, [PicText] = @PicText WHERE [TagID] = @TagID" InsertCommand="INSERT INTO [PhotoAlbum2Tag] ([PID], [PicX], [PicY], [PicText]) VALUES (@PID, @PicX, @PicY, @PicText)" DeleteCommand="DELETE FROM [PhotoAlbum2Tag] WHERE [TagID] = @TagID"><DeleteParameters>
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
</asp:SqlDataSource> <asp:DataList style="POSITION: static" id="DataList1" runat="server" __designer:wfdid="w2" Width="597px" DataSourceID="SqlDataSource3" RepeatColumns="3" DataKeyField="TagID"><ItemTemplate>
<TABLE style="POSITION: static" cellSpacing=3 cellPadding=0 border=0><TBODY><TR><TD style="WIDTH: 100px"><asp:Label style="POSITION: static" id="PicTextLabel" runat="server" ForeColor="DarkOliveGreen" Width="180px" Text='<%# Eval("PicText") %>' Font-Bold="True" __designer:wfdid="w7"></asp:Label></TD><TD style="WIDTH: 100px"><asp:Button style="POSITION: static" id="Button2" runat="server" Width="23px" Text=" X " Font-Size="8pt" Font-Bold="True" __designer:wfdid="w12" BackColor="Silver" Height="16px" BorderWidth="1px" BorderStyle="None" CommandName="Delete"></asp:Button></TD></TR></TBODY></TABLE>
</ItemTemplate>
</asp:DataList></asp:Panel> </TD></TR><TR><TD style="WIDTH: 100px" bgColor=whitesmoke><TABLE style="POSITION: static" cellSpacing=6 cellPadding=0 bgColor=ghostwhite border=0><TBODY><TR><TD style="WIDTH: 100px"><asp:Panel style="POSITION: static" id="Panel2" runat="server" Width="5px" __designer:wfdid="w59" Height="5px" BorderWidth="1px" BorderStyle="Solid" BorderColor="#404040" Visible="False"><asp:ImageButton style="POSITION: static" id="ImageButton2" onclick="ImageButton2_Click" runat="server" __designer:wfdid="w60" BorderColor="Gray" BorderStyle="Solid" BorderWidth="6px"></asp:ImageButton></asp:Panel></TD></TR></TBODY></TABLE></TD></TR><TR><TD style="WIDTH: 100px" bgColor=whitesmoke><DIV style="WIDTH: 330px; POSITION: static; HEIGHT: 80px"><asp:Panel style="Z-INDEX: 1" id="timer" runat="server" ForeColor="#404040" Width="320px" __designer:wfdid="w61" BorderWidth="1px" BorderStyle="solid" BorderColor="Gray" Visible="False" BackColor="White"><asp:Panel style="POSITION: static" id="Panel9" runat="server" Width="479px" __designer:wfdid="w62" Height="66px" BorderWidth="2px" BorderColor="OliveDrab" Visible="False" BackColor="WhiteSmoke"><TABLE style="WIDTH: 100%; POSITION: static" cellSpacing=6 cellPadding=0 border=0><TBODY><TR><TD style="WIDTH: 100px"><asp:Label style="POSITION: static" id="Label2" runat="server" ForeColor="DarkOliveGreen" Width="397px" Font-Bold="True" __designer:wfdid="w68">Name or Text</asp:Label></TD><TD style="WIDTH: 100px" align=right>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <asp:Button style="POSITION: static" id="Button1" onclick="Button14_Click2" runat="server" ForeColor="White" Width="28px" Text="x" Font-Bold="True" __designer:wfdid="w69" BorderWidth="1px" BackColor="#404040"></asp:Button></TD></TR><TR><TD style="WIDTH: 100px"><asp:TextBox style="POSITION: static" id="TextBox8" runat="server" Width="396px" __designer:wfdid="w65"></asp:TextBox></TD><TD style="WIDTH: 100px" align=right><asp:Button style="POSITION: static" id="Button15" onclick="Button15_Click1" runat="server" Width="67px" Text="Tag This" Font-Size="10pt" Font-Bold="True" __designer:wfdid="w66" BorderWidth="1px" BorderColor="DarkOliveGreen" BackColor="YellowGreen"></asp:Button> </TD></TR><TR><TD style="WIDTH: 100px"><asp:SqlDataSource id="SqlDataSource2" runat="server" __designer:wfdid="w70" SelectCommand="SELECT * FROM [FList] WHERE ([S_Email] = @S_Email)" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"><SelectParameters>
<asp:SessionParameter SessionField="UserMail" Type="String" Name="S_Email"></asp:SessionParameter>
</SelectParameters>
</asp:SqlDataSource> <asp:DropDownList style="POSITION: static" id="DropDownList1" runat="server" Width="306px" __designer:wfdid="w71" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True" DataValueField="R_FullName" DataTextField="R_FullName"></asp:DropDownList></TD><TD style="WIDTH: 100px" align=right></TD></TR></TBODY></TABLE></asp:Panel> </asp:Panel> <ajaxToolkit:AlwaysVisibleControlExtender id="avce" runat="server" __designer:wfdid="w67" HorizontalOffset="5" HorizontalSide="Center" ScrollEffectDuration=".01" TargetControlID="timer" VerticalOffset="0" VerticalSide="Middle">
                                                                </ajaxToolkit:AlwaysVisibleControlExtender> </DIV></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE><BR /><BR /><BR />&nbsp; 
</contenttemplate>
                    </asp:UpdatePanel><br />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

