<%@ Page Language="C#" MasterPageFile="~/web2nd/mainL2.master" AutoEventWireup="true" CodeFile="Copy of Lavel2.aspx.cs" Inherits="web2nd_wbb2ndmain" Title="News Feed - web2nd"  %>
<%@ Register     Assembly="AjaxControlToolkit"     Namespace="AjaxControlToolkit"     TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div style="text-align: center">
    
        <asp:UpdatePanel id="UpdatePanel1" runat="server">
        
            <contenttemplate>
<TABLE style="POSITION: static" height=100 cellSpacing=0 cellPadding=0 width=600 align=left border=0><TBODY><TR><TD style="WIDTH: 100px; HEIGHT: 124px" vAlign=top><TABLE style="POSITION: static" borderColor=dimgray cellSpacing=0 cellPadding=0 border=0><TBODY><TR><TD style="WIDTH: 100px; HEIGHT: 100%"><DIV style="TEXT-ALIGN: left"><TABLE style="WIDTH: 100%; POSITION: static" cellSpacing=0 cellPadding=0><TBODY><TR><TD style="WIDTH: 100px; HEIGHT: 139px" vAlign=top><asp:Panel style="POSITION: static" id="Panel8" runat="server" Width="125px" Height="50px"><TABLE style="POSITION: static" cellSpacing=5 cellPadding=0 width=500><TBODY><TR><TD style="HEIGHT: 15px" vAlign=top colSpan=2><TABLE style="WIDTH: 100%; BORDER-BOTTOM: gainsboro thin solid; POSITION: static" cellSpacing=1 cellPadding=2 bgColor=#f4f4f7><TBODY><TR><TD colSpan=11><asp:TextBox style="POSITION: static" id="TextBox1" runat="server" Width="544px" Height="17px" __designer:wfdid="w2" Font-Size="9pt" MaxLength="170"></asp:TextBox></TD></TR><TR><TD style="WIDTH: 100px"><asp:Label style="POSITION: static" id="Label2" runat="server" Width="56px" Text="----" ForeColor="WhiteSmoke" __designer:wfdid="w3"></asp:Label></TD><TD style="WIDTH: 100px"></TD><TD style="WIDTH: 100px"><asp:Label style="POSITION: static" id="Label3" runat="server" Width="41px" Text="----" ForeColor="WhiteSmoke" __designer:wfdid="w4"></asp:Label></TD><TD style="WIDTH: 100px"><asp:Image style="POSITION: static" id="Image2" runat="server" __designer:wfdid="w5" ImageUrl="~/web2nd/image/privacey3.bmp"></asp:Image></TD><TD style="WIDTH: 100px"><asp:DropDownList style="POSITION: static" id="DropDownList1" runat="server" Width="175px" ForeColor="#404040" __designer:wfdid="w6" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True"><asp:ListItem>Everyone</asp:ListItem>
<asp:ListItem>Friends of Friends &amp; Network</asp:ListItem>
<asp:ListItem>Friends of Friends</asp:ListItem>
<asp:ListItem>Only Friends</asp:ListItem>
<asp:ListItem>Only me</asp:ListItem>
</asp:DropDownList></TD><TD colSpan=4></TD><TD style="WIDTH: 100px"></TD><TD style="WIDTH: 100px"><asp:Button style="POSITION: static" id="Button3" onclick="Button2_Click" runat="server" Width="71px" Height="21px" Text="Share" Font-Bold="True" BorderWidth="1px" BorderColor="DarkOliveGreen" BackColor="YellowGreen" __designer:wfdid="w7"></asp:Button></TD></TR></TBODY></TABLE><asp:Label style="POSITION: static" id="Label1" runat="server" Width="390px" Text="." ForeColor="Gray" Visible="False" __designer:wfdid="w8"></asp:Label></TD></TR></TBODY></TABLE><asp:Label style="POSITION: static" id="Label5" runat="server" Width="477px" Text="Label" Visible="False"></asp:Label> <asp:SqlDataSource id="SqlDataSource3" runat="server" SelectCommand="SELECT MessageTable.id, MessageTable.S_Email, MessageTable.S_Photo, MessageTable.Message1, MessageTable.Type, MessageTable.URL1, MessageTable.Date1, MessageTable.Time1, MessageTable.datetime1, MessageTable.pic1, MessageTable.Privacy1, FList.S_Email AS Expr1, FList.R_Email FROM MessageTable INNER JOIN FList ON MessageTable.S_Email = FList.R_Email WHERE (FList.S_Email = @S_Email) AND (MessageTable.datetime1 > @dtd) AND (MessageTable.Type <> '2') AND (MessageTable.Privacy1>2 ) ORDER BY MessageTable.datetime1 DESC" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [MessageTable] WHERE [id] = @id" InsertCommand="INSERT INTO [MessageTable] ([S_Email], [S_Photo], [Message1], [Type], [URL1], [Date1], [Time1], [datetime1], [R_EMail], [pic1], [pic2], [pic3], [TMP]) VALUES (@S_Email, @S_Photo, @Message1, @Type, @URL1, @Date1, @Time1, @datetime1, @R_EMail, @pic1, @pic2, @pic3, @TMP)" UpdateCommand="UPDATE [MessageTable] SET [S_Email] = @S_Email, [S_Photo] = @S_Photo, [Message1] = @Message1, [Type] = @Type, [URL1] = @URL1, [Date1] = @Date1, [Time1] = @Time1, [datetime1] = @datetime1, [R_EMail] = @R_EMail, [pic1] = @pic1, [pic2] = @pic2, [pic3] = @pic3, [TMP] = @TMP WHERE [id] = @id"><SelectParameters>
<asp:SessionParameter SessionField="FMail" Name="S_Email" Type="String"></asp:SessionParameter>
<asp:SessionParameter SessionField="Date1" Name="dtd"></asp:SessionParameter>
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
</asp:SqlDataSource> <asp:Label style="POSITION: static" id="Label8" runat="server" Width="458px" Text="Label" Visible="False"></asp:Label><DIV style="TEXT-ALIGN: left"><TABLE style="WIDTH: 605px; POSITION: static" cellSpacing=2 cellPadding=0 border=0><TBODY><TR><TD style="WIDTH: 100px; HEIGHT: 16px; BACKGROUND-COLOR: white">&nbsp;</TD><TD style="WIDTH: 100px; HEIGHT: 16px; BACKGROUND-COLOR: white"></TD><TD style="WIDTH: 100px; HEIGHT: 16px; BACKGROUND-COLOR: white"><asp:LinkButton style="POSITION: static" id="LinkButton1" onclick="LinkButton1_Click1" runat="server" Visible="False">Top updates</asp:LinkButton></TD><TD style="WIDTH: 100px; HEIGHT: 16px; BACKGROUND-COLOR: white"><asp:LinkButton style="POSITION: static" id="LinkButton8" onclick="LinkButton8_Click" runat="server" Width="87px" Visible="False">Short</asp:LinkButton></TD><TD style="WIDTH: 100px; HEIGHT: 16px; BACKGROUND-COLOR: white"></TD><TD style="WIDTH: 100px; HEIGHT: 16px; BACKGROUND-COLOR: white"></TD></TR></TBODY></TABLE></DIV><asp:DataList accessKey="c" style="POSITION: static" id="DataList3" runat="server" Width="588px" DataSourceID="SqlDataSource3" OnSelectedIndexChanged="DataList3_SelectedIndexChanged" DataKeyField="id"><ItemTemplate>
<DIV style="TEXT-ALIGN: left"><TABLE style="WIDTH: 571px; POSITION: static" cellSpacing=8 cellPadding=0 border=0><TBODY><TR><TD style="WIDTH: 100px; HEIGHT: 63px" vAlign=top rowSpan=3><asp:ImageButton style="POSITION: static" id="ImageButton1" onclick="ImageButton1_Click" runat="server" Width="50px" Height="50px" ImageUrl='<%# Eval("S_Photo") %>' CommandName="Select" __designer:wfdid="w17"></asp:ImageButton><BR /><BR /><asp:Label style="POSITION: static" id="Label7" runat="server" Visible="False" Text='<%# Eval("id") %>' Font-Size="7pt" __designer:wfdid="w18"></asp:Label></TD><TD style="WIDTH: 100px; HEIGHT: 63px" vAlign=top rowSpan=3><asp:Label style="POSITION: static" id="Message1Label" runat="server" Width="515px" Height="43px" Text='<%# Eval("Message1") %>' Font-Size="9pt" ForeColor="#365156" __designer:wfdid="w19"></asp:Label><BR /><asp:LinkButton style="POSITION: static" id="LinkButton3" onclick="LinkButton3_Click" runat="server" Width="520px" Text='<%# Eval("URL1") %>' __designer:wfdid="w20"></asp:LinkButton><DIV style="TEXT-ALIGN: left"><TABLE style="WIDTH: 504px; POSITION: static" cellSpacing=1 cellPadding=0 border=0><TBODY><TR><TD style="WIDTH: 67905px" vAlign=bottom><asp:ImageButton style="POSITION: static" id="ImageButton6" onclick="ImageButton6_Click" runat="server" ImageUrl='<%# Eval("pic1") %>' __designer:wfdid="w21"></asp:ImageButton></TD><TD style="WIDTH: 336px" vAlign=bottom>&nbsp;</TD><TD style="WIDTH: 56px" vAlign=bottom><asp:LinkButton style="POSITION: static" id="LinkButton4" onclick="LinkButton4_Click1" runat="server" Width="68px" Text='<%# Eval("Date1") %>' Font-Size="7pt" ForeColor="SlateGray" CommandName="Select" __designer:wfdid="w23"></asp:LinkButton></TD><TD style="WIDTH: 143px" vAlign=bottom><asp:Label style="POSITION: static" id="Label6" runat="server" Width="68px" Text='<%# Eval("Time1") %>' Font-Size="7pt" ForeColor="SlateGray" __designer:wfdid="w24"></asp:Label></TD><TD style="WIDTH: 100px" vAlign=bottom><asp:LinkButton style="POSITION: static" id="LinkButton5" onclick="LinkButton5_Click" runat="server" Width="37px" CommandName="Select" __designer:wfdid="w25">Like</asp:LinkButton></TD><TD style="WIDTH: 142px" vAlign=bottom><asp:LinkButton style="POSITION: static" id="LinkButton7" onclick="LinkButton7_Click" runat="server" Width="62px" CommandName="Select" __designer:wfdid="w26">Comment</asp:LinkButton></TD><TD style="WIDTH: 100px" vAlign=bottom><asp:ImageButton style="POSITION: static" id="ImageButton12" onclick="ImageButton12_Click" runat="server" Width="16px" Height="16px" ImageUrl='<%# Eval("Type") %>' __designer:wfdid="w27"></asp:ImageButton></TD><TD style="WIDTH: 100px" vAlign=bottom><asp:LinkButton style="POSITION: static" id="LinkButton2" onclick="LinkButton2_Click" runat="server" Width="39px" Visible="False" CommandName="Select" __designer:wfdid="w28">Detail</asp:LinkButton></TD><TD style="WIDTH: 100px" vAlign=bottom>&nbsp;<asp:ImageButton style="POSITION: static" id="ImageButton7" onclick="ImageButton14_Click" runat="server" Visible="False" ImageUrl="~/images/ToolClose.bmp" CommandName="Select" __designer:wfdid="w29"></asp:ImageButton></TD><TD style="WIDTH: 100px" vAlign=bottom>&nbsp;</TD></TR></TBODY></TABLE></DIV></TD></TR><TR></TR><TR></TR><TR><TD style="WIDTH: 100px" vAlign=top></TD><TD style="WIDTH: 100px" vAlign=top><asp:DataList style="POSITION: static" id="DataList4" runat="server" Width="366px" Height="2px" BorderColor="White" BorderStyle="None" BorderWidth="0px" OnSelectedIndexChanged="DataList4_SelectedIndexChanged" DataKeyField="id" DataSourceID="SqlDataSource4" OnDeleteCommand="DataList4_DeleteCommand" CellPadding="2" CellSpacing="2" __designer:wfdid="w30"><ItemTemplate>
<DIV style="TEXT-ALIGN: left"><TABLE style="WIDTH: 355px; POSITION: static; BACKGROUND-COLOR: #e7eef4" cellSpacing=1 cellPadding=2 bgColor=#e8e6ff border=0><TBODY><TR><TD style="WIDTH: 9px" vAlign=top rowSpan=3><asp:ImageButton style="POSITION: static" id="ImageButton13" onclick="ImageButton13_Click" runat="server" Width="32px" Height="32px" ImageUrl='<%# Eval("R_Photo") %>' CommandName="Select"></asp:ImageButton></TD><TD vAlign=top colSpan=3><asp:Label style="POSITION: static" id="Message1Label" runat="server" Text='<%# Eval("Message1") %>' Width="313px" Font-Size="8pt"></asp:Label></TD></TR><TR><TD vAlign=top rowSpan=2><asp:Label style="POSITION: static" id="Date1Label" runat="server" Text='<%# Eval("Date1") %>' Width="82px" Font-Size="7pt" ForeColor="DimGray"></asp:Label></TD><TD style="WIDTH: 100px" vAlign=top rowSpan=2><asp:Label style="POSITION: static" id="Time1Label" runat="server" Text='<%# Eval("Time1") %>' Width="173px" Font-Size="7pt" ForeColor="DimGray"></asp:Label></TD><TD style="WIDTH: 100px" vAlign=top rowSpan=2><asp:Button style="POSITION: static" id="Button5" onclick="Button5_Click" runat="server" Visible="False" Text=" x " Width="25px" Font-Size="8pt" BorderWidth="1px" BorderStyle="Solid" BorderColor="Silver" CommandName="Delete"></asp:Button></TD></TR><TR></TR></TBODY></TABLE></DIV>
</ItemTemplate>
</asp:DataList> <asp:SqlDataSource id="SqlDataSource4" runat="server" UpdateCommand="UPDATE [MessageReply] SET [MID] = @MID, [R_Email] = @R_Email, [R_Photo] = @R_Photo, [Message1] = @Message1, [Date1] = @Date1, [Time1] = @Time1, [DateTime1] = @DateTime1 WHERE [id] = @id" InsertCommand="INSERT INTO [MessageReply] ([MID], [R_Email], [R_Photo], [Message1], [Date1], [Time1], [DateTime1]) VALUES (@MID, @R_Email, @R_Photo, @Message1, @Date1, @Time1, @DateTime1)" DeleteCommand="DELETE FROM [MessageReply] WHERE [id] = @id" SelectCommand="SELECT id, MID, R_Email, R_Photo, Message1, Date1, Time1, DateTime1 FROM MessageReply WHERE (MID = @MID) ORDER BY DateTime1 DESC" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" __designer:wfdid="w31"><SelectParameters>
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
</asp:SqlDataSource></TD></TR></TBODY></TABLE></DIV>
</ItemTemplate>
</asp:DataList>&nbsp;<TABLE style="WIDTH: 225px; POSITION: static" cellSpacing=2 cellPadding=2><TBODY><TR><TD style="WIDTH: 50px; HEIGHT: 20px">Back..</TD><TD style="WIDTH: 100px; HEIGHT: 20px"><asp:Button style="POSITION: static" id="Button11" onclick="Button11_Click" runat="server" Width="59px" Text="day" Font-Bold="True" BorderWidth="0px" BackColor="YellowGreen" Font-Size="9pt"></asp:Button></TD><TD style="WIDTH: 100px; HEIGHT: 20px"><asp:Button style="POSITION: static" id="Button12" onclick="Button12_Click" runat="server" Width="59px" Text="week" Font-Bold="True" BorderWidth="0px" BackColor="YellowGreen" Font-Size="9pt"></asp:Button></TD><TD style="WIDTH: 100px; HEIGHT: 20px"><asp:Button style="POSITION: static" id="Button10" onclick="Button10_Click" runat="server" Width="59px" Text="month" Font-Bold="True" BorderWidth="0px" BackColor="YellowGreen" Visible="False" Font-Size="9pt"></asp:Button></TD></TR></TBODY></TABLE></asp:Panel> </TD></TR></TBODY></TABLE></DIV></TD></TR></TBODY></TABLE><DIV style="WIDTH: 330px; POSITION: static; HEIGHT: 80px"><asp:Panel style="Z-INDEX: 1" id="timer" runat="server" Width="320px" ForeColor="#404040" BorderWidth="0px" BorderStyle="None" BorderColor="Gray" BackColor="White"><asp:Panel style="POSITION: static" id="Panel9" runat="server" Width="479px" Height="76px" BorderWidth="5px" BorderColor="LightSteelBlue" BackColor="WhiteSmoke"><TABLE style="WIDTH: 100%; POSITION: static" cellSpacing=4 cellPadding=0 border=0><TBODY><TR><TD style="WIDTH: 100px"><asp:Label style="POSITION: static" id="Label14" runat="server" Width="353px" Text="Comment" Font-Bold="True"></asp:Label></TD><TD style="WIDTH: 100px" align=right>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <asp:Button style="POSITION: static" id="Button14" onclick="Button14_Click2" runat="server" Width="28px" Text="x" ForeColor="White" Font-Bold="True" BorderWidth="1px" BackColor="#404040"></asp:Button></TD></TR><TR><TD style="WIDTH: 100px"><asp:TextBox style="POSITION: static" id="TextBox8" runat="server" Width="395px" MaxLength="100"></asp:TextBox></TD><TD style="WIDTH: 100px" align=right><asp:Button style="POSITION: static" id="Button15" onclick="Button15_Click1" runat="server" Width="64px" Text="Share it." Font-Bold="True" BorderWidth="1px" BorderColor="DarkOliveGreen" BackColor="YellowGreen" Font-Size="10pt"></asp:Button></TD></TR></TBODY></TABLE></asp:Panel> </asp:Panel> <ajaxToolkit:AlwaysVisibleControlExtender id="avce" runat="server" HorizontalOffset="5" HorizontalSide="Center" ScrollEffectDuration=".01" TargetControlID="timer" VerticalOffset="0" VerticalSide="Middle">
                        </ajaxToolkit:AlwaysVisibleControlExtender> </DIV></TD></TR><TR><TD style="WIDTH: 100px" vAlign=top><asp:Timer id="Timer1" runat="server" OnTick="Timer1_Tick1" Enabled="False" Interval="8000"></asp:Timer></TD></TR></TBODY></TABLE>
</contenttemplate>
        </asp:UpdatePanel>&nbsp;
        
        
    </div>
</asp:Content>

