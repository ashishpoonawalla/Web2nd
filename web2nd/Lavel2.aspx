<%@ Page Language="C#" MasterPageFile="~/web2nd/mainL2.master" AutoEventWireup="true" CodeFile="Lavel2.aspx.cs" Inherits="web2nd_wbb2ndmain" Title="News Feed - web2nd"  %>
<%@ Register     Assembly="AjaxControlToolkit"     Namespace="AjaxControlToolkit"     TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div style="text-align: center">
    
        <asp:UpdatePanel id="UpdatePanel1" runat="server">
        
            <contenttemplate>
<TABLE style="POSITION: static" height=100 cellSpacing=0 cellPadding=0 width=500 align=left border=0><TBODY><TR><TD style="WIDTH: 100px; HEIGHT: 124px" vAlign=top><TABLE style="POSITION: static" borderColor=dimgray cellSpacing=0 cellPadding=0 border=0><TBODY><TR><TD style="WIDTH: 100px; HEIGHT: 100%"><DIV style="TEXT-ALIGN: left"><TABLE style="WIDTH: 100%; POSITION: static" cellSpacing=0 cellPadding=0><TBODY><TR><TD style="WIDTH: 397px; HEIGHT: 139px" vAlign=top><asp:Panel style="POSITION: static" id="Panel8" runat="server" Width="125px" Height="50px"><asp:Panel id="Panel1" runat="server" Height="80px"><TABLE style="POSITION: static" cellSpacing=5 cellPadding=0 width=500><TBODY><TR><TD style="HEIGHT: 15px" vAlign=top colSpan=2><TABLE style="WIDTH: 100%; BORDER-BOTTOM: gainsboro thin solid; POSITION: static" cellSpacing=1 cellPadding=2 bgColor=#f4f4f7><TBODY><TR><TD colSpan=11><asp:TextBox style="POSITION: static" id="TextBox1" runat="server" Width="544px" Height="17px" Font-Size="9pt" MaxLength="170"></asp:TextBox></TD></TR><TR><TD style="WIDTH: 100px"><asp:Label style="POSITION: static" id="Label2" runat="server" Width="56px" Text="----" ForeColor="WhiteSmoke"></asp:Label></TD><TD style="WIDTH: 100px"></TD><TD style="WIDTH: 100px"><asp:Label style="POSITION: static" id="Label3" runat="server" Width="41px" Text="----" ForeColor="WhiteSmoke"></asp:Label></TD><TD style="WIDTH: 100px"><asp:Image style="POSITION: static" id="Image2" runat="server" ImageUrl="~/web2nd/image/privacey3.bmp"></asp:Image></TD><TD style="WIDTH: 100px"><asp:DropDownList style="POSITION: static" id="DropDownList1" runat="server" Width="175px" ForeColor="#404040" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True"><asp:ListItem>Everyone</asp:ListItem>
<asp:ListItem>Friends of Friends &amp; Network</asp:ListItem>
<asp:ListItem>Friends of Friends</asp:ListItem>
<asp:ListItem>Only Friends</asp:ListItem>
<asp:ListItem>Only me</asp:ListItem>
</asp:DropDownList></TD><TD colSpan=4></TD><TD style="WIDTH: 100px"></TD><TD style="WIDTH: 100px"><asp:Button style="POSITION: static" id="Button3" onclick="Button2_Click" runat="server" Width="71px" Height="21px" Text="Share" Font-Bold="True" BorderWidth="1px" BorderColor="DarkOliveGreen" BackColor="YellowGreen"></asp:Button></TD></TR></TBODY></TABLE><asp:Label style="POSITION: static" id="Label1" runat="server" Width="215px" Text="." ForeColor="Indigo" Font-Size="11pt" Font-Bold="True" BackColor="White" Visible="False"></asp:Label>&nbsp;&nbsp;&nbsp;</TD></TR></TBODY></TABLE></asp:Panel> <asp:Label id="Label13" runat="server" Width="533px" Height="42px" Text=" I share only certain information with others. please become a friend with me.." ForeColor="White" Font-Size="11pt" Font-Bold="True" BorderWidth="15px" BorderColor="SlateGray" BackColor="SlateGray" Visible="False"></asp:Label><asp:Label style="POSITION: static" id="Label5" runat="server" Width="456px" Text="Label" Visible="False"></asp:Label><TABLE style="WIDTH: 527px"><TBODY><TR><TD style="WIDTH: 100px"></TD><TD style="WIDTH: 100px"><asp:Label id="Label10" runat="server" Width="82px" Text="Label" Visible="False" __designer:wfdid="w2"></asp:Label></TD><TD style="WIDTH: 100px"><asp:Label id="Label11" runat="server" Text="Label" Visible="False"></asp:Label></TD><TD style="WIDTH: 100px"><asp:Label id="Label12" runat="server" Text="Label" Visible="False"></asp:Label></TD><TD style="WIDTH: 100px"></TD></TR></TBODY></TABLE><asp:SqlDataSource id="SqlDataSource3" runat="server" SelectCommand="SELECT MessageTable.id, MessageTable.S_Email, MessageTable.S_Photo, MessageTable.Message1, MessageTable.Type, MessageTable.URL1, MessageTable.Date1, MessageTable.Time1, MessageTable.datetime1, MessageTable.pic1, MessageTable.Privacy1, FList.S_Email AS Expr1, FList.R_Email FROM MessageTable INNER JOIN FList ON MessageTable.S_Email = FList.R_Email WHERE (FList.S_Email = @S_Email) AND (MessageTable.datetime1 > @dtd) AND (MessageTable.Type <> '2') AND (MessageTable.Privacy1>2 ) ORDER BY MessageTable.datetime1 DESC" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [MessageTable] WHERE [id] = @id"><SelectParameters>
<asp:SessionParameter SessionField="FMail" Name="S_Email" Type="String"></asp:SessionParameter>
<asp:SessionParameter SessionField="Date1" Name="dtd"></asp:SessionParameter>
</SelectParameters>
<DeleteParameters>
<asp:Parameter Name="id" Type="Int32"></asp:Parameter>
</DeleteParameters>
</asp:SqlDataSource> <asp:Label style="POSITION: static" id="Label8" runat="server" Width="458px" Text="Label" Visible="False"></asp:Label><DIV style="TEXT-ALIGN: left"><asp:Panel id="Panel2" runat="server"><TABLE style="WIDTH: 564px; POSITION: static" cellSpacing=2 cellPadding=0 border=0><TBODY><TR><TD style="WIDTH: 100px; HEIGHT: 16px; BACKGROUND-COLOR: white">&nbsp;</TD><TD style="WIDTH: 100px; HEIGHT: 16px; BACKGROUND-COLOR: white"></TD><TD style="WIDTH: 100px; HEIGHT: 16px; BACKGROUND-COLOR: white"><asp:LinkButton style="POSITION: static" id="LinkButton1" onclick="LinkButton1_Click1" runat="server" Visible="False">Top updates</asp:LinkButton></TD><TD style="WIDTH: 100px; HEIGHT: 16px; BACKGROUND-COLOR: white"><asp:LinkButton style="POSITION: static" id="LinkButton8" onclick="LinkButton8_Click" runat="server" Width="87px" Visible="False">Short</asp:LinkButton></TD><TD style="WIDTH: 100px; HEIGHT: 16px; BACKGROUND-COLOR: white"></TD><TD style="WIDTH: 100px; HEIGHT: 16px; BACKGROUND-COLOR: white"></TD></TR></TBODY></TABLE><asp:DataList accessKey="c" style="POSITION: static" id="DataList3" runat="server" Width="508px" OnSelectedIndexChanged="DataList3_SelectedIndexChanged" DataSourceID="SqlDataSource3" DataKeyField="id"><ItemTemplate>
<DIV style="TEXT-ALIGN: left"><TABLE style="WIDTH: 501px; POSITION: static" cellSpacing=4 cellPadding=4 border=0><TBODY><TR><TD style="WIDTH: 100px; HEIGHT: 63px" vAlign=top rowSpan=3><asp:ImageButton style="POSITION: static" id="ImageButton1" onclick="ImageButton1_Click" runat="server" Width="50px" Height="50px" ImageUrl='<%# Eval("S_Photo") %>' CommandName="Select"></asp:ImageButton><BR /><BR /><asp:Label style="POSITION: static" id="Label7" runat="server" Text='<%# Eval("id") %>' Font-Size="7pt" Visible="False"></asp:Label></TD><TD style="WIDTH: 100px; HEIGHT: 63px" vAlign=top rowSpan=3><asp:Label style="POSITION: static" id="Message1Label" runat="server" Width="489px" Height="43px" Text='<%# Eval("Message1") %>' ForeColor="#365156" Font-Size="9pt"></asp:Label><BR /><asp:LinkButton style="POSITION: static" id="LinkButton3" onclick="LinkButton3_Click" runat="server" Width="489px" Text='<%# Eval("URL1") %>'></asp:LinkButton><DIV style="TEXT-ALIGN: left"><TABLE style="WIDTH: 482px; POSITION: static" cellSpacing=1 cellPadding=1 border=0><TBODY><TR><TD style="WIDTH: 3637px" vAlign=bottom colSpan=2><asp:Label id="Label9" runat="server" Width="94px"></asp:Label></TD><TD style="WIDTH: 56px" vAlign=bottom><asp:LinkButton style="POSITION: static" id="LinkButton4" onclick="LinkButton4_Click1" runat="server" Width="68px" Text='<%# Eval("Date1") %>' ForeColor="SlateGray" Font-Size="7pt" CommandName="Select"></asp:LinkButton></TD><TD style="WIDTH: 143px" vAlign=bottom><asp:Label style="POSITION: static" id="Label6" runat="server" Width="68px" Text='<%# Eval("Time1") %>' ForeColor="SlateGray" Font-Size="7pt"></asp:Label></TD><TD style="WIDTH: 100px" vAlign=bottom><asp:LinkButton style="POSITION: static" id="LinkButton5" onclick="LinkButton5_Click" runat="server" Width="37px" CommandName="Select">Like</asp:LinkButton></TD><TD style="WIDTH: 142px" vAlign=bottom><asp:LinkButton style="POSITION: static" id="LinkButton7" onclick="LinkButton7_Click" runat="server" Width="62px" CommandName="Select">Comment</asp:LinkButton></TD><TD style="WIDTH: 100px" vAlign=bottom><asp:ImageButton style="POSITION: static" id="ImageButton12" onclick="ImageButton12_Click" runat="server" Width="16px" Height="16px" ImageUrl='<%# Eval("Type") %>'></asp:ImageButton></TD><TD style="WIDTH: 100px" vAlign=bottom><asp:LinkButton style="POSITION: static" id="LinkButton2" onclick="LinkButton2_Click" runat="server" Width="39px" Visible="False" CommandName="Select">Detail</asp:LinkButton></TD><TD vAlign=bottom colSpan=2>&nbsp;<asp:ImageButton style="POSITION: static" id="ImageButton7" onclick="ImageButton14_Click" runat="server" Visible="False" ImageUrl="~/images/ToolClose.bmp" CommandName="Select"></asp:ImageButton>&nbsp;</TD></TR></TBODY></TABLE></DIV><asp:ImageButton style="POSITION: static" id="ImageButton6" onclick="ImageButton6_Click" runat="server" ImageUrl='<%# Eval("pic1") %>'></asp:ImageButton></TD></TR><TR></TR><TR></TR><TR><TD style="WIDTH: 100px" vAlign=top></TD><TD style="WIDTH: 100px" vAlign=top><asp:DataList style="POSITION: static" id="DataList4" runat="server" Width="366px" Height="2px" OnSelectedIndexChanged="DataList4_SelectedIndexChanged" DataSourceID="SqlDataSource4" DataKeyField="id" BorderWidth="0px" BorderColor="White" BorderStyle="None" CellSpacing="2" CellPadding="2" OnDeleteCommand="DataList4_DeleteCommand"><ItemTemplate>
<DIV style="TEXT-ALIGN: left"><TABLE style="WIDTH: 355px; POSITION: static; BACKGROUND-COLOR: #e7eef4" cellSpacing=2 cellPadding=2 bgColor=#e8e6ff border=0><TBODY><TR><TD style="WIDTH: 9px" vAlign=top rowSpan=3><asp:ImageButton style="POSITION: static" id="ImageButton13" onclick="ImageButton13_Click" runat="server" Width="32px" Height="32px" ImageUrl='<%# Eval("R_Photo") %>' CommandName="Select"></asp:ImageButton></TD><TD vAlign=top colSpan=3><asp:Label style="POSITION: static" id="Message1Label" runat="server" Width="313px" Text='<%# Eval("Message1") %>' Font-Size="8pt"></asp:Label></TD></TR><TR><TD vAlign=top rowSpan=2><asp:Label style="POSITION: static" id="Date1Label" runat="server" Width="82px" Text='<%# Eval("Date1") %>' ForeColor="DimGray" Font-Size="7pt"></asp:Label></TD><TD style="WIDTH: 100px" vAlign=top rowSpan=2><asp:Label style="POSITION: static" id="Time1Label" runat="server" Width="173px" Text='<%# Eval("Time1") %>' ForeColor="DimGray" Font-Size="7pt"></asp:Label></TD><TD style="WIDTH: 100px" vAlign=top rowSpan=2><asp:Button style="POSITION: static" id="Button5" onclick="Button5_Click" runat="server" Width="25px" Text=" x " Font-Size="8pt" BorderWidth="1px" BorderColor="Silver" Visible="False" BorderStyle="Solid" CommandName="Delete"></asp:Button></TD></TR><TR></TR></TBODY></TABLE></DIV>
</ItemTemplate>
</asp:DataList> <asp:SqlDataSource id="SqlDataSource4" runat="server" SelectCommand="SELECT id, MID, R_Email, R_Photo, Message1, Date1, Time1, DateTime1 FROM MessageReply WHERE (MID = @MID) ORDER BY DateTime1 DESC" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [MessageReply] WHERE [id] = @id" InsertCommand="INSERT INTO [MessageReply] ([MID], [R_Email], [R_Photo], [Message1], [Date1], [Time1], [DateTime1]) VALUES (@MID, @R_Email, @R_Photo, @Message1, @Date1, @Time1, @DateTime1)" UpdateCommand="UPDATE [MessageReply] SET [MID] = @MID, [R_Email] = @R_Email, [R_Photo] = @R_Photo, [Message1] = @Message1, [Date1] = @Date1, [Time1] = @Time1, [DateTime1] = @DateTime1 WHERE [id] = @id"><SelectParameters>
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
</asp:DataList> <TABLE style="WIDTH: 225px; POSITION: static" cellSpacing=2 cellPadding=2><TBODY><TR><TD style="WIDTH: 50px; HEIGHT: 20px">Back..</TD><TD style="WIDTH: 100px; HEIGHT: 20px"><asp:Button style="POSITION: static" id="Button11" onclick="Button11_Click" runat="server" Width="59px" Text="day" Font-Size="9pt" Font-Bold="True" BorderWidth="0px" BackColor="YellowGreen"></asp:Button></TD><TD style="WIDTH: 100px; HEIGHT: 20px"><asp:Button style="POSITION: static" id="Button12" onclick="Button12_Click" runat="server" Width="59px" Text="week" Font-Size="9pt" Font-Bold="True" BorderWidth="0px" BackColor="YellowGreen"></asp:Button></TD><TD style="WIDTH: 100px; HEIGHT: 20px"><asp:Button style="POSITION: static" id="Button10" onclick="Button10_Click" runat="server" Width="59px" Text="month" Font-Size="9pt" Font-Bold="True" BorderWidth="0px" BackColor="YellowGreen" Visible="False"></asp:Button></TD></TR></TBODY></TABLE></asp:Panel>&nbsp;</DIV>&nbsp;</asp:Panel> </TD></TR></TBODY></TABLE></DIV></TD></TR></TBODY></TABLE><DIV style="WIDTH: 330px; POSITION: static; HEIGHT: 80px"><asp:Panel style="Z-INDEX: 1" id="timer" runat="server" Width="320px" ForeColor="#404040" BorderWidth="0px" BorderColor="Gray" BackColor="White" BorderStyle="None"><asp:Panel style="POSITION: static" id="Panel9" runat="server" Width="479px" Height="76px" BorderWidth="5px" BorderColor="LightSteelBlue" BackColor="WhiteSmoke"><TABLE style="WIDTH: 100%; POSITION: static" cellSpacing=4 cellPadding=0 border=0><TBODY><TR><TD style="WIDTH: 100px"><asp:Label style="POSITION: static" id="Label14" runat="server" Width="353px" Text="Comment" Font-Bold="True"></asp:Label></TD><TD style="WIDTH: 100px" align=right>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <asp:Button style="POSITION: static" id="Button14" onclick="Button14_Click2" runat="server" Width="28px" Text="x" ForeColor="White" Font-Bold="True" BorderWidth="1px" BackColor="#404040"></asp:Button></TD></TR><TR><TD style="WIDTH: 100px"><asp:TextBox style="POSITION: static" id="TextBox8" runat="server" Width="395px" MaxLength="100"></asp:TextBox></TD><TD style="WIDTH: 100px" align=right><asp:Button style="POSITION: static" id="Button15" onclick="Button15_Click1" runat="server" Width="64px" Text="Share it." Font-Size="10pt" Font-Bold="True" BorderWidth="1px" BorderColor="DarkOliveGreen" BackColor="YellowGreen"></asp:Button></TD></TR></TBODY></TABLE></asp:Panel> </asp:Panel> <ajaxToolkit:AlwaysVisibleControlExtender id="avce" runat="server" VerticalSide="Middle" VerticalOffset="0" TargetControlID="timer" ScrollEffectDuration=".01" HorizontalSide="Center" HorizontalOffset="5">
                        </ajaxToolkit:AlwaysVisibleControlExtender> </DIV></TD></TR><TR><TD style="WIDTH: 100px" vAlign=top><asp:Timer id="Timer1" runat="server" Interval="8000" Enabled="False" OnTick="Timer1_Tick1"></asp:Timer></TD></TR></TBODY></TABLE>
</contenttemplate>
        </asp:UpdatePanel>&nbsp;
        
        
    </div>
</asp:Content>

