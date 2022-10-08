<%@ Page Language="C#" MasterPageFile="~/web2nd/main.master" AutoEventWireup="true" CodeFile="web2ndMyUpdates.aspx.cs" Inherits="web2nd_wbb2ndmain" Title="News Feed - web2nd"  %>
<%@ Register     Assembly="AjaxControlToolkit"     Namespace="AjaxControlToolkit"     TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div style="text-align: center">
    
        <asp:UpdatePanel id="UpdatePanel1" runat="server">
        
            <contenttemplate>
<TABLE style="POSITION: static" height=100 cellSpacing=0 cellPadding=0 width=530 align=left border=0><TBODY><TR><TD style="WIDTH: 100px; HEIGHT: 124px" vAlign=top><TABLE style="POSITION: static" borderColor=dimgray cellSpacing=0 cellPadding=0 border=0><TBODY><TR><TD style="WIDTH: 100px; HEIGHT: 100%"><DIV style="TEXT-ALIGN: left"><TABLE style="WIDTH: 100%; POSITION: static" cellSpacing=0 cellPadding=0><TBODY><TR><TD style="WIDTH: 100px; HEIGHT: 139px" vAlign=top><asp:Panel style="POSITION: static" id="Panel8" runat="server" Width="125px" Height="50px"><TABLE style="POSITION: static" cellSpacing=5 cellPadding=0 width=500><TBODY><TR><TD style="WIDTH: 100px; HEIGHT: 15px" vAlign=top><asp:ImageButton style="POSITION: static" id="ImageButton19" onclick="ImageButton19_Click" runat="server" Width="50px" Height="50px" BorderColor="Gainsboro" BorderWidth="1px"></asp:ImageButton> <asp:Image style="POSITION: static" id="Image4" runat="server" ImageUrl="~/images/aa.bmp"></asp:Image> </TD><TD style="WIDTH: 100px; HEIGHT: 15px" vAlign=top><TABLE style="WIDTH: 100%; POSITION: static" cellSpacing=1 cellPadding=2 bgColor=#f4f4f7><TBODY><TR><TD colSpan=11><asp:TextBox style="POSITION: static" id="TextBox1" runat="server" Width="524px" Height="17px" Font-Size="9pt" MaxLength="170"></asp:TextBox></TD></TR><TR><TD style="WIDTH: 100px"><asp:Label style="POSITION: static" id="Label2" runat="server" Width="56px" Text="----" ForeColor="WhiteSmoke"></asp:Label></TD><TD style="WIDTH: 100px"><TABLE style="WIDTH: 31px; POSITION: static" borderColor=darkgray cellSpacing=1 cellPadding=0 bgColor=#f5f5f5 border=0><TBODY><TR><TD style="WIDTH: 2px; HEIGHT: 23px" vAlign=middle align=center rowSpan=3><asp:ImageButton style="POSITION: static" id="ImageButton5" onclick="ImageButton5_Click" runat="server" ImageUrl="~/web2nd/image/ToolPic2.bmp"></asp:ImageButton> </TD><TD style="HEIGHT: 23px" vAlign=middle align=center rowSpan=3><asp:ImageButton style="POSITION: static" id="ImageButton4" onclick="ImageButton4_Click" runat="server" ImageUrl="~/web2nd/image/ToolCam2.bmp"></asp:ImageButton></TD><TD style="HEIGHT: 23px" vAlign=middle align=center rowSpan=3><asp:ImageButton style="POSITION: static" id="ImageButton3" onclick="ImageButton3_Click" runat="server" ImageUrl="~/web2nd/image/ToolLink1.bmp"></asp:ImageButton></TD><TD style="HEIGHT: 23px" vAlign=middle align=center rowSpan=3><asp:ImageButton style="POSITION: static" id="ImageButton2" onclick="ImageButton2_Click" runat="server" ImageUrl="~/web2nd/image/ToolCalender1.bmp"></asp:ImageButton></TD><TD style="WIDTH: 26px; HEIGHT: 23px" vAlign=middle align=center rowSpan=3></TD></TR></TBODY></TABLE></TD><TD style="WIDTH: 100px"><asp:Label style="POSITION: static" id="Label3" runat="server" Width="41px" Text="----" ForeColor="WhiteSmoke"></asp:Label></TD><TD style="WIDTH: 100px"><asp:Image style="POSITION: static" id="Image2" runat="server" ImageUrl="~/web2nd/image/privacey3.bmp"></asp:Image></TD><TD style="WIDTH: 100px"><asp:DropDownList style="POSITION: static" id="DropDownList1" runat="server" Width="175px" ForeColor="#404040" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"><asp:ListItem>Everyone</asp:ListItem>
<asp:ListItem>Friends of Friends &amp; Network</asp:ListItem>
<asp:ListItem>Friends of Friends</asp:ListItem>
<asp:ListItem>Only Friends</asp:ListItem>
<asp:ListItem>Only me</asp:ListItem>
</asp:DropDownList></TD><TD colSpan=4></TD><TD style="WIDTH: 100px"></TD><TD style="WIDTH: 100px"><asp:Button style="POSITION: static" id="Button3" onclick="Button2_Click" runat="server" Width="71px" Height="21px" Text="Share" BorderColor="DarkOliveGreen" Font-Bold="True" BorderWidth="1px" BackColor="YellowGreen"></asp:Button></TD></TR></TBODY></TABLE><asp:Label style="POSITION: static" id="Label1" runat="server" Width="476px" Visible="False" Text="." ForeColor="Gray"></asp:Label></TD></TR></TBODY></TABLE><asp:Label style="POSITION: static" id="Label5" runat="server" Width="506px" Visible="False" Text="Label"></asp:Label> <asp:SqlDataSource id="SqlDataSource3" runat="server" UpdateCommand="UPDATE [MessageTable] SET [S_Email] = @S_Email, [S_Photo] = @S_Photo, [Message1] = @Message1, [Type] = @Type, [URL1] = @URL1, [Date1] = @Date1, [Time1] = @Time1, [datetime1] = @datetime1, [R_EMail] = @R_EMail, [pic1] = @pic1, [pic2] = @pic2, [pic3] = @pic3, [TMP] = @TMP WHERE [id] = @id" InsertCommand="INSERT INTO [MessageTable] ([S_Email], [S_Photo], [Message1], [Type], [URL1], [Date1], [Time1], [datetime1], [R_EMail], [pic1], [pic2], [pic3], [TMP]) VALUES (@S_Email, @S_Photo, @Message1, @Type, @URL1, @Date1, @Time1, @datetime1, @R_EMail, @pic1, @pic2, @pic3, @TMP)" DeleteCommand="DELETE FROM [MessageTable] WHERE [id] = @id" SelectCommand="SELECT MessageTable.id, MessageTable.S_Email, MessageTable.S_Photo, MessageTable.Message1, MessageTable.Type, MessageTable.URL1, MessageTable.Date1, MessageTable.Time1, MessageTable.datetime1, MessageTable.pic1, MessageTable.Privacy1   FROM  MessageTable  WHERE  (MessageTable.datetime1 > @dtd)  AND  (MessageTable.Type <> '2')  AND  (MessageTable.S_Email=@S_Email )  ORDER BY  MessageTable.datetime1  DESC" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"><SelectParameters>
<asp:SessionParameter SessionField="Date1" Name="dtd"></asp:SessionParameter>
<asp:SessionParameter SessionField="UserMail" Name="S_Email" Type="String"></asp:SessionParameter>
</SelectParameters>
<DeleteParameters>
<asp:Parameter Name="id" Type="Int32"></asp:Parameter>
</DeleteParameters>
<UpdateParameters>
<asp:Parameter Name="S_Email" Type="String"></asp:Parameter>
<asp:Parameter Name="S_Photo" Type="String"></asp:Parameter>
<asp:Parameter Name="Message1" Type="String"></asp:Parameter>
<asp:Parameter Name="Type" Type="String"></asp:Parameter>
<asp:Parameter Name="URL1" Type="String"></asp:Parameter>
<asp:Parameter Name="Date1" Type="String"></asp:Parameter>
<asp:Parameter Name="Time1" Type="String"></asp:Parameter>
<asp:Parameter Name="datetime1" Type="DateTime"></asp:Parameter>
<asp:Parameter Name="R_EMail" Type="String"></asp:Parameter>
<asp:Parameter Name="pic1" Type="String"></asp:Parameter>
<asp:Parameter Name="pic2" Type="String"></asp:Parameter>
<asp:Parameter Name="pic3" Type="String"></asp:Parameter>
<asp:Parameter Name="TMP" Type="String"></asp:Parameter>
<asp:Parameter Name="id" Type="Int32"></asp:Parameter>
</UpdateParameters>
<InsertParameters>
<asp:Parameter Name="S_Email" Type="String"></asp:Parameter>
<asp:Parameter Name="S_Photo" Type="String"></asp:Parameter>
<asp:Parameter Name="Message1" Type="String"></asp:Parameter>
<asp:Parameter Name="Type" Type="String"></asp:Parameter>
<asp:Parameter Name="URL1" Type="String"></asp:Parameter>
<asp:Parameter Name="Date1" Type="String"></asp:Parameter>
<asp:Parameter Name="Time1" Type="String"></asp:Parameter>
<asp:Parameter Name="datetime1" Type="DateTime"></asp:Parameter>
<asp:Parameter Name="R_EMail" Type="String"></asp:Parameter>
<asp:Parameter Name="pic1" Type="String"></asp:Parameter>
<asp:Parameter Name="pic2" Type="String"></asp:Parameter>
<asp:Parameter Name="pic3" Type="String"></asp:Parameter>
<asp:Parameter Name="TMP" Type="String"></asp:Parameter>
</InsertParameters>
</asp:SqlDataSource> <asp:Label style="POSITION: static" id="Label8" runat="server" Width="505px" Visible="False" Text="Label"></asp:Label><DIV style="TEXT-ALIGN: left"><TABLE style="WIDTH: 605px; POSITION: static" cellSpacing=2 cellPadding=0 border=0><TBODY><TR><TD style="WIDTH: 100px; HEIGHT: 16px; BACKGROUND-COLOR: white">&nbsp;</TD><TD style="WIDTH: 100px; HEIGHT: 16px; BACKGROUND-COLOR: white"></TD><TD style="WIDTH: 100px; HEIGHT: 16px; BACKGROUND-COLOR: white"></TD><TD style="WIDTH: 100px; HEIGHT: 16px; BACKGROUND-COLOR: white"><asp:LinkButton style="POSITION: static" id="LinkButton1" onclick="LinkButton1_Click1" runat="server" Visible="False">Top updates</asp:LinkButton></TD><TD style="WIDTH: 100px; HEIGHT: 16px; BACKGROUND-COLOR: white"><asp:LinkButton style="POSITION: static" id="LinkButton8" onclick="LinkButton8_Click" runat="server" Width="87px" Visible="False">Short</asp:LinkButton></TD><TD style="WIDTH: 100px; HEIGHT: 16px; BACKGROUND-COLOR: white"></TD></TR></TBODY></TABLE></DIV>&nbsp; <asp:DataList accessKey="c" style="POSITION: static" id="DataList3" runat="server" Width="588px" OnSelectedIndexChanged="DataList3_SelectedIndexChanged" DataKeyField="id" DataSourceID="SqlDataSource3" __designer:wfdid="w22"><ItemTemplate>
<DIV style="TEXT-ALIGN: left"><TABLE style="WIDTH: 571px; BORDER-BOTTOM: gainsboro thin dotted; POSITION: static" cellSpacing=8 cellPadding=0 border=0><TBODY><TR><TD style="WIDTH: 100px; HEIGHT: 63px" vAlign=top rowSpan=3><asp:ImageButton style="POSITION: static" id="ImageButton1" onclick="ImageButton1_Click" runat="server" Width="50px" Height="50px" ImageUrl='<%# Eval("S_Photo") %>' __designer:wfdid="w23" CommandName="Select"></asp:ImageButton><BR /><BR /><asp:Label style="POSITION: static" id="Label7" runat="server" Visible="False" Text='<%# Eval("id") %>' Font-Size="7pt" __designer:wfdid="w24"></asp:Label></TD><TD style="WIDTH: 100px; HEIGHT: 63px" vAlign=top rowSpan=3><asp:Label style="POSITION: static" id="Message1Label" runat="server" Width="495px" Height="43px" Text='<%# Eval("Message1") %>' ForeColor="#365156" Font-Size="9pt" __designer:wfdid="w25"></asp:Label><BR /><DIV style="TEXT-ALIGN: left"><asp:HyperLink style="POSITION: static" id="HyperLink1" runat="server" Width="492px" Text='<%# Eval("URL1") %>' __designer:wfdid="w26" Target="_blank" NavigateUrl='<%# Eval("URL1") %>'></asp:HyperLink><BR /><TABLE style="WIDTH: 494px; POSITION: static" cellSpacing=1 cellPadding=0 border=0><TBODY><TR><TD vAlign=bottom><asp:ImageButton style="POSITION: static" id="ImageButton6" onclick="ImageButton6_Click" runat="server" ImageUrl='<%# Eval("pic1") %>' __designer:wfdid="w27" CommandName="Select"></asp:ImageButton></TD><TD style="WIDTH: 472px" vAlign=bottom>&nbsp;</TD><TD style="WIDTH: 56px" vAlign=bottom><asp:LinkButton style="POSITION: static" id="LinkButton4" onclick="LinkButton4_Click1" runat="server" Width="68px" Text='<%# Eval("Date1") %>' ForeColor="SlateGray" Font-Size="7pt" __designer:wfdid="w28" CommandName="Select"></asp:LinkButton></TD><TD style="WIDTH: 143px" vAlign=bottom><asp:Label style="POSITION: static" id="Label6" runat="server" Width="68px" Text='<%# Eval("Time1") %>' ForeColor="SlateGray" Font-Size="7pt" __designer:wfdid="w29"></asp:Label></TD><TD style="WIDTH: 100px" vAlign=bottom><asp:LinkButton style="POSITION: static" id="LinkButton5" onclick="LinkButton5_Click" runat="server" Width="37px" __designer:wfdid="w30" CommandName="Select">Like</asp:LinkButton></TD><TD style="WIDTH: 142px" vAlign=bottom><asp:LinkButton style="POSITION: static" id="LinkButton7" onclick="LinkButton7_Click" runat="server" Width="62px" __designer:wfdid="w31" CommandName="Select">Comment</asp:LinkButton></TD><TD style="WIDTH: 100px" vAlign=bottom><asp:ImageButton style="POSITION: static" id="ImageButton12" onclick="ImageButton12_Click" runat="server" Width="16px" Height="16px" ImageUrl='<%# Eval("Type") %>' __designer:wfdid="w32"></asp:ImageButton></TD><TD style="WIDTH: 100px" vAlign=bottom><asp:LinkButton style="POSITION: static" id="LinkButton2" onclick="LinkButton2_Click" runat="server" Width="39px" Visible="False" __designer:wfdid="w33" CommandName="Select">Detail</asp:LinkButton></TD><TD style="WIDTH: 100px" vAlign=bottom>&nbsp;<asp:ImageButton style="POSITION: static" id="ImageButton7" onclick="ImageButton14_Click" runat="server" ImageUrl="~/images/ToolClose.bmp" __designer:wfdid="w34" CommandName="Select"></asp:ImageButton></TD><TD style="WIDTH: 100px" vAlign=bottom>&nbsp;</TD></TR></TBODY></TABLE></DIV></TD></TR><TR></TR><TR></TR><TR><TD style="WIDTH: 100px" vAlign=top></TD><TD style="WIDTH: 100px" vAlign=top><asp:SqlDataSource id="SqlDataSource4" runat="server" UpdateCommand="UPDATE [MessageReply] SET [MID] = @MID, [R_Email] = @R_Email, [R_Photo] = @R_Photo, [Message1] = @Message1, [Date1] = @Date1, [Time1] = @Time1, [DateTime1] = @DateTime1 WHERE [id] = @id" InsertCommand="INSERT INTO [MessageReply] ([MID], [R_Email], [R_Photo], [Message1], [Date1], [Time1], [DateTime1]) VALUES (@MID, @R_Email, @R_Photo, @Message1, @Date1, @Time1, @DateTime1)" DeleteCommand="DELETE FROM [MessageReply] WHERE [id] = @id" SelectCommand="SELECT id, MID, R_Email, R_Photo, Message1, Date1, Time1, DateTime1 FROM MessageReply WHERE (MID = @MID) ORDER BY DateTime1 DESC" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" __designer:wfdid="w35"><SelectParameters>
<asp:ControlParameter ControlID="Label7" PropertyName="Text" Name="MID" Type="Int32"></asp:ControlParameter>
</SelectParameters>
<DeleteParameters>
<asp:Parameter Name="id" Type="Int32"></asp:Parameter>
</DeleteParameters>
<UpdateParameters>
<asp:Parameter Name="MID" Type="Int32"></asp:Parameter>
<asp:Parameter Name="R_Email" Type="String"></asp:Parameter>
<asp:Parameter Name="R_Photo" Type="String"></asp:Parameter>
<asp:Parameter Name="Message1" Type="String"></asp:Parameter>
<asp:Parameter Name="Date1" Type="String"></asp:Parameter>
<asp:Parameter Name="Time1" Type="String"></asp:Parameter>
<asp:Parameter Name="DateTime1" Type="DateTime"></asp:Parameter>
<asp:Parameter Name="id" Type="Int32"></asp:Parameter>
</UpdateParameters>
<InsertParameters>
<asp:Parameter Name="MID" Type="Int32"></asp:Parameter>
<asp:Parameter Name="R_Email" Type="String"></asp:Parameter>
<asp:Parameter Name="R_Photo" Type="String"></asp:Parameter>
<asp:Parameter Name="Message1" Type="String"></asp:Parameter>
<asp:Parameter Name="Date1" Type="String"></asp:Parameter>
<asp:Parameter Name="Time1" Type="String"></asp:Parameter>
<asp:Parameter Name="DateTime1" Type="DateTime"></asp:Parameter>
</InsertParameters>
</asp:SqlDataSource> <asp:GridView style="POSITION: static" id="GridView1" runat="server" Width="369px" BorderStyle="Dashed" BorderColor="#E7EEF4" ForeColor="#404040" BorderWidth="0px" BackColor="#E7EEF4" DataSourceID="SqlDataSource4" __designer:wfdid="w36" CellSpacing="3" AllowPaging="True" GridLines="None" PageSize="6" AutoGenerateColumns="False"><Columns>
<asp:ImageField DataImageUrlField="R_Photo">
<ControlStyle Height="32px" Width="32px"></ControlStyle>
</asp:ImageField>
<asp:BoundField DataField="Message1"></asp:BoundField>
<asp:BoundField DataField="Date1">
<ControlStyle Width="40px"></ControlStyle>
</asp:BoundField>
</Columns>
</asp:GridView></TD></TR></TBODY></TABLE></DIV>
</ItemTemplate>
</asp:DataList> <TABLE style="WIDTH: 225px; POSITION: static" cellSpacing=2 cellPadding=2><TBODY><TR><TD style="WIDTH: 50px; HEIGHT: 20px">Back..</TD><TD style="WIDTH: 100px; HEIGHT: 20px"><asp:Button style="POSITION: static" id="Button11" onclick="Button11_Click" runat="server" Width="59px" Text="day" Font-Bold="True" BorderWidth="0px" BackColor="YellowGreen" Font-Size="9pt"></asp:Button></TD><TD style="WIDTH: 100px; HEIGHT: 20px"><asp:Button style="POSITION: static" id="Button12" onclick="Button12_Click" runat="server" Width="59px" Text="week" Font-Bold="True" BorderWidth="0px" BackColor="YellowGreen" Font-Size="9pt"></asp:Button></TD><TD style="WIDTH: 100px; HEIGHT: 20px"><asp:Button style="POSITION: static" id="Button10" onclick="Button10_Click" runat="server" Width="59px" Visible="False" Text="month" Font-Bold="True" BorderWidth="0px" BackColor="YellowGreen" Font-Size="9pt"></asp:Button></TD></TR></TBODY></TABLE></asp:Panel> <BR /></TD></TR></TBODY></TABLE></DIV></TD></TR></TBODY></TABLE><DIV style="WIDTH: 330px; POSITION: static; HEIGHT: 80px"><asp:Panel style="Z-INDEX: 1" id="timer" runat="server" Width="320px" BorderStyle="None" BorderColor="Gray" ForeColor="#404040" BorderWidth="0px" BackColor="White"><asp:Panel style="POSITION: static" id="Panel9" runat="server" Width="479px" Height="76px" BorderColor="LightSteelBlue" BorderWidth="5px" BackColor="WhiteSmoke"><TABLE style="WIDTH: 100%; POSITION: static" cellSpacing=4 cellPadding=0 border=0><TBODY><TR><TD style="WIDTH: 100px"><asp:Label style="POSITION: static" id="Label14" runat="server" Width="353px" Text="Comment" Font-Bold="True"></asp:Label></TD><TD style="WIDTH: 100px" align=right>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <asp:Button style="POSITION: static" id="Button14" onclick="Button14_Click2" runat="server" Width="28px" Text="x" ForeColor="White" Font-Bold="True" BorderWidth="1px" BackColor="#404040"></asp:Button></TD></TR><TR><TD style="WIDTH: 100px"><asp:TextBox style="POSITION: static" id="TextBox8" runat="server" Width="395px" MaxLength="100"></asp:TextBox></TD><TD style="WIDTH: 100px" align=right><asp:Button style="POSITION: static" id="Button15" onclick="Button15_Click1" runat="server" Width="64px" Text="Share it." BorderColor="DarkOliveGreen" Font-Bold="True" BorderWidth="1px" BackColor="YellowGreen" Font-Size="10pt"></asp:Button></TD></TR></TBODY></TABLE></asp:Panel> </asp:Panel> <ajaxToolkit:AlwaysVisibleControlExtender id="avce" runat="server" VerticalSide="Middle" VerticalOffset="0" TargetControlID="timer" ScrollEffectDuration=".01" HorizontalSide="Center" HorizontalOffset="5">
                        </ajaxToolkit:AlwaysVisibleControlExtender> </DIV></TD></TR><TR><TD style="WIDTH: 100px" vAlign=top>&nbsp;<asp:Timer id="Timer1" runat="server" Interval="8000" Enabled="False" OnTick="Timer1_Tick1"></asp:Timer></TD></TR></TBODY></TABLE>
</contenttemplate>
        </asp:UpdatePanel>&nbsp;
        
        
    </div>
</asp:Content>

