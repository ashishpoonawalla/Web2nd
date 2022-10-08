<%@ Page Language="C#" MasterPageFile="~/web2nd/main.master" AutoEventWireup="true" CodeFile="web2ndmain2.aspx.cs" Inherits="web2nd_wbb2ndmain" Title="News Feed - web2nd"  %>
<%@ Register     Assembly="AjaxControlToolkit"     Namespace="AjaxControlToolkit"     TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div style="text-align: center">
    
        <asp:UpdatePanel id="UpdatePanel1" runat="server">
        
            <contenttemplate>
<TABLE style="POSITION: static" height=100 cellSpacing=0 cellPadding=0 width=530 align=left border=0><TBODY><TR><TD style="WIDTH: 100px; HEIGHT: 124px" vAlign=top><TABLE style="POSITION: static" borderColor=dimgray cellSpacing=0 cellPadding=0 border=0><TBODY><TR><TD style="WIDTH: 100px; HEIGHT: 100%"><DIV style="TEXT-ALIGN: left"><TABLE style="WIDTH: 100%; POSITION: static" cellSpacing=0 cellPadding=0><TBODY><TR><TD style="WIDTH: 100px; HEIGHT: 139px" vAlign=top><asp:Panel style="POSITION: static" id="Panel8" runat="server" Width="125px" Height="50px"><TABLE style="POSITION: static" cellSpacing=5 cellPadding=0 width=500><TBODY><TR><TD style="WIDTH: 100px; HEIGHT: 15px" vAlign=top><asp:ImageButton style="POSITION: static" id="ImageButton19" onclick="ImageButton19_Click" runat="server" Width="50px" Height="50px" BorderColor="Gainsboro" BorderWidth="1px"></asp:ImageButton> <asp:Image style="POSITION: static" id="Image4" runat="server" ImageUrl="~/images/aa.bmp"></asp:Image> </TD><TD style="WIDTH: 100px; HEIGHT: 15px" vAlign=top><TABLE style="WIDTH: 100%; POSITION: static" cellSpacing=1 cellPadding=2 bgColor=#f4f4f7><TBODY><TR><TD colSpan=11><asp:TextBox style="POSITION: static" id="TextBox1" runat="server" Width="504px" Height="17px" Font-Size="9pt" MaxLength="170"></asp:TextBox></TD></TR><TR><TD style="WIDTH: 100px"><asp:Label style="POSITION: static" id="Label2" runat="server" Width="35px" Text="----" ForeColor="WhiteSmoke"></asp:Label></TD><TD style="WIDTH: 100px"><TABLE style="WIDTH: 31px; POSITION: static" borderColor=darkgray cellSpacing=1 cellPadding=0 bgColor=#f5f5f5 border=0><TBODY><TR><TD style="WIDTH: 2px; HEIGHT: 23px" vAlign=middle align=center rowSpan=3><asp:ImageButton style="POSITION: static" id="ImageButton5" onclick="ImageButton5_Click" runat="server" ImageUrl="~/web2nd/image/ToolPic2.bmp"></asp:ImageButton> </TD><TD style="HEIGHT: 23px" vAlign=middle align=center rowSpan=3><asp:ImageButton style="POSITION: static" id="ImageButton4" onclick="ImageButton4_Click" runat="server" ImageUrl="~/web2nd/image/ToolCam2.bmp"></asp:ImageButton></TD><TD style="HEIGHT: 23px" vAlign=middle align=center rowSpan=3><asp:ImageButton style="POSITION: static" id="ImageButton3" onclick="ImageButton3_Click" runat="server" ImageUrl="~/web2nd/image/ToolLink1.bmp"></asp:ImageButton></TD><TD style="HEIGHT: 23px" vAlign=middle align=center rowSpan=3><asp:ImageButton style="POSITION: static" id="ImageButton2" onclick="ImageButton2_Click" runat="server" ImageUrl="~/web2nd/image/ToolCalender1.bmp"></asp:ImageButton></TD><TD style="WIDTH: 26px; HEIGHT: 23px" vAlign=middle align=center rowSpan=3></TD></TR></TBODY></TABLE></TD><TD style="WIDTH: 100px"><asp:Label style="POSITION: static" id="Label3" runat="server" Width="41px" Text="----" ForeColor="WhiteSmoke"></asp:Label></TD><TD style="WIDTH: 100px"><asp:Image style="POSITION: static" id="Image2" runat="server" ImageUrl="~/web2nd/image/privacey3.bmp"></asp:Image></TD><TD style="WIDTH: 100px"><asp:DropDownList style="POSITION: static" id="DropDownList1" runat="server" Width="175px" ForeColor="#404040" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True"><asp:ListItem>Everyone</asp:ListItem>
<asp:ListItem>Friends of Friends &amp; Network</asp:ListItem>
<asp:ListItem>Friends of Friends</asp:ListItem>
<asp:ListItem>Only Friends</asp:ListItem>
<asp:ListItem>Only me</asp:ListItem>
</asp:DropDownList></TD><TD colSpan=4></TD><TD style="WIDTH: 100px"></TD><TD style="WIDTH: 96px"><asp:Button style="POSITION: static" id="Button3" onclick="Button2_Click" runat="server" Width="71px" Height="21px" Text="Share" BorderColor="DarkOliveGreen" Font-Bold="True" BorderWidth="1px" BackColor="YellowGreen"></asp:Button></TD></TR></TBODY></TABLE><asp:Label style="POSITION: static" id="Label1" runat="server" Width="378px" Visible="False" Text="." ForeColor="Gray"></asp:Label></TD></TR></TBODY></TABLE><asp:Label style="POSITION: static" id="Label5" runat="server" Width="403px" Visible="False" Text="Label"></asp:Label> <asp:SqlDataSource id="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT MessageTable.id, MessageTable.S_Email, MessageTable.S_Photo, MessageTable.Message1, MessageTable.Type, MessageTable.URL1, MessageTable.Date1, MessageTable.Time1, MessageTable.datetime1, MessageTable.pic1, MessageTable.Privacy1, FList.S_Email AS Expr1, FList.R_Email FROM MessageTable INNER JOIN FList ON MessageTable.S_Email = FList.R_Email WHERE (FList.S_Email = @S_Email) AND (MessageTable.datetime1 > @dtd) AND (MessageTable.Type <> '2') AND (MessageTable.Privacy1>1 OR MessageTable.S_Email=@S_Email ) ORDER BY MessageTable.datetime1 DESC" DeleteCommand="DELETE FROM [MessageTable] WHERE [id] = @id" InsertCommand="INSERT INTO [MessageTable] ([S_Email], [S_Photo], [Message1], [Type], [URL1], [Date1], [Time1], [datetime1], [R_EMail], [pic1], [pic2], [pic3], [TMP]) VALUES (@S_Email, @S_Photo, @Message1, @Type, @URL1, @Date1, @Time1, @datetime1, @R_EMail, @pic1, @pic2, @pic3, @TMP)" UpdateCommand="UPDATE [MessageTable] SET [S_Email] = @S_Email, [S_Photo] = @S_Photo, [Message1] = @Message1, [Type] = @Type, [URL1] = @URL1, [Date1] = @Date1, [Time1] = @Time1, [datetime1] = @datetime1, [R_EMail] = @R_EMail, [pic1] = @pic1, [pic2] = @pic2, [pic3] = @pic3, [TMP] = @TMP WHERE [id] = @id"><SelectParameters>
<asp:SessionParameter SessionField="UserMail" Name="S_Email" Type="String"></asp:SessionParameter>
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
</asp:SqlDataSource> <asp:Label style="POSITION: static" id="Label8" runat="server" Width="419px" Visible="False" Text="Label"></asp:Label><DIV style="TEXT-ALIGN: left"><TABLE style="WIDTH: 505px; POSITION: static" cellSpacing=2 cellPadding=0 border=0><TBODY><TR><TD style="WIDTH: 100px; HEIGHT: 16px; BACKGROUND-COLOR: white">&nbsp;</TD><TD style="WIDTH: 100px; HEIGHT: 16px; BACKGROUND-COLOR: white"></TD><TD style="WIDTH: 100px; HEIGHT: 16px; BACKGROUND-COLOR: white"></TD><TD style="WIDTH: 100px; HEIGHT: 16px; BACKGROUND-COLOR: white"><asp:LinkButton style="POSITION: static" id="LinkButton1" onclick="LinkButton1_Click1" runat="server" Visible="False">Top updates</asp:LinkButton></TD><TD style="WIDTH: 100px; HEIGHT: 16px; BACKGROUND-COLOR: white"><asp:LinkButton style="POSITION: static" id="LinkButton8" onclick="LinkButton8_Click" runat="server" Width="87px" Visible="False">Short</asp:LinkButton></TD><TD style="WIDTH: 100px; HEIGHT: 16px; BACKGROUND-COLOR: white"></TD></TR></TBODY></TABLE></DIV>
    <asp:DataList ID="DataList3" runat="server" AccessKey="c" DataKeyField="id" DataSourceID="SqlDataSource3"
        OnSelectedIndexChanged="DataList3_SelectedIndexChanged" Style="position: static"
        Width="588px">
        <ItemTemplate>
            <div style="text-align: left">
                <table border="0" cellpadding="0" cellspacing="8" style="width: 571px; border-bottom: gainsboro thin dotted;
                    position: static">
                    <tbody>
                        <tr>
                            <td rowspan="3" style="width: 100px; height: 63px" valign="top">
                                <asp:ImageButton ID="ImageButton1" runat="server" CommandName="Select" Height="50px"
                                    ImageUrl='<%# Eval("S_Photo") %>' OnClick="ImageButton1_Click" Style="position: static"
                                    Width="50px" /><br />
                                <br />
                                <asp:Label ID="Label7" runat="server" Font-Size="7pt" Style="position: static" Text='<%# Eval("id") %>'
                                    Visible="False"></asp:Label></td>
                            <td rowspan="3" style="width: 100px; height: 63px" valign="top">
                                <asp:Label ID="Message1Label" runat="server" Font-Size="9pt" ForeColor="#365156"
                                    Height="43px" Style="position: static" Text='<%# Eval("Message1") %>' Width="495px"></asp:Label><br />
                                <div style="text-align: left">
                                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("URL1") %>' Style="position: static"
                                        Target="_blank" Text='<%# Eval("URL1") %>' Width="492px"></asp:HyperLink><br />
                                    <table border="0" cellpadding="0" cellspacing="1" style="width: 494px; position: static">
                                        <tbody>
                                            <tr>
                                                <td valign="bottom">
                                                    <asp:ImageButton ID="ImageButton6" runat="server" CommandName="Select" ImageUrl='<%# Eval("pic1") %>'
                                                        OnClick="ImageButton6_Click" Style="position: static" /></td>
                                                <td style="width: 472px" valign="bottom">
                                                    &nbsp;</td>
                                                <td style="width: 56px" valign="bottom">
                                                    <asp:LinkButton ID="LinkButton4" runat="server" CommandName="Select" Font-Size="7pt"
                                                        ForeColor="SlateGray" OnClick="LinkButton4_Click1" Style="position: static" Text='<%# Eval("Date1") %>'
                                                        Width="68px"></asp:LinkButton></td>
                                                <td style="width: 143px" valign="bottom">
                                                    <asp:Label ID="Label6" runat="server" Font-Size="7pt" ForeColor="SlateGray" Style="position: static"
                                                        Text='<%# Eval("Time1") %>' Width="68px"></asp:Label></td>
                                                <td style="width: 100px" valign="bottom">
                                                    <asp:LinkButton ID="LinkButton5" runat="server" CommandName="Select" OnClick="LinkButton5_Click"
                                                        Style="position: static" Width="37px">Like</asp:LinkButton></td>
                                                <td style="width: 142px" valign="bottom">
                                                    <asp:LinkButton ID="LinkButton7" runat="server" CommandName="Select" OnClick="LinkButton7_Click"
                                                        Style="position: static" Width="62px">Comment</asp:LinkButton></td>
                                                <td style="width: 100px" valign="bottom">
                                                    <asp:ImageButton ID="ImageButton12" runat="server" Height="16px" ImageUrl='<%# Eval("Type") %>'
                                                        OnClick="ImageButton12_Click" Style="position: static" Width="16px" /></td>
                                                <td style="width: 100px" valign="bottom">
                                                    <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Select" OnClick="LinkButton2_Click"
                                                        Style="position: static" Visible="False" Width="39px">Detail</asp:LinkButton></td>
                                                <td style="width: 100px" valign="bottom">
                                                    &nbsp;<asp:ImageButton ID="ImageButton7" runat="server" CommandName="Select" ImageUrl="~/images/ToolClose.bmp"
                                                        OnClick="ImageButton14_Click" Style="position: static" Visible="False" /></td>
                                                <td style="width: 100px" valign="bottom">
                                                    &nbsp;</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </td>
                        </tr>
                        <tr>
                        </tr>
                        <tr>
                        </tr>
                        <tr>
                            <td style="width: 100px" valign="top">
                            </td>
                            <td style="width: 100px" valign="top">
                                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                                    DeleteCommand="DELETE FROM [MessageReply] WHERE [id] = @id" InsertCommand="INSERT INTO [MessageReply] ([MID], [R_Email], [R_Photo], [Message1], [Date1], [Time1], [DateTime1]) VALUES (@MID, @R_Email, @R_Photo, @Message1, @Date1, @Time1, @DateTime1)"
                                    SelectCommand="SELECT id, MID, R_Email, R_Photo, Message1, Date1, Time1, DateTime1 FROM MessageReply WHERE (MID = @MID) ORDER BY DateTime1 DESC"
                                    UpdateCommand="UPDATE [MessageReply] SET [MID] = @MID, [R_Email] = @R_Email, [R_Photo] = @R_Photo, [Message1] = @Message1, [Date1] = @Date1, [Time1] = @Time1, [DateTime1] = @DateTime1 WHERE [id] = @id">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="Label7" Name="MID" PropertyName="Text" Type="Int32" />
                                    </SelectParameters>
                                    <DeleteParameters>
                                        <asp:Parameter Name="id" Type="Int32" />
                                    </DeleteParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="MID" Type="Int32" />
                                        <asp:Parameter Name="R_Email" Type="String" />
                                        <asp:Parameter Name="R_Photo" Type="String" />
                                        <asp:Parameter Name="Message1" Type="String" />
                                        <asp:Parameter Name="Date1" Type="String" />
                                        <asp:Parameter Name="Time1" Type="String" />
                                        <asp:Parameter Name="DateTime1" Type="DateTime" />
                                        <asp:Parameter Name="id" Type="Int32" />
                                    </UpdateParameters>
                                    <InsertParameters>
                                        <asp:Parameter Name="MID" Type="Int32" />
                                        <asp:Parameter Name="R_Email" Type="String" />
                                        <asp:Parameter Name="R_Photo" Type="String" />
                                        <asp:Parameter Name="Message1" Type="String" />
                                        <asp:Parameter Name="Date1" Type="String" />
                                        <asp:Parameter Name="Time1" Type="String" />
                                        <asp:Parameter Name="DateTime1" Type="DateTime" />
                                    </InsertParameters>
                                </asp:SqlDataSource>
                                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                                    BackColor="#E7EEF4" BorderColor="#E7EEF4" BorderStyle="Dashed" BorderWidth="0px"
                                    CellSpacing="3" DataSourceID="SqlDataSource4" ForeColor="#404040" GridLines="None"
                                    PageSize="6" Style="position: static" Width="369px">
                                    <Columns>
                                        <asp:ImageField DataImageUrlField="R_Photo">
                                            <ControlStyle Height="32px" Width="32px" />
                                        </asp:ImageField>
                                        <asp:BoundField DataField="Message1" />
                                        <asp:BoundField DataField="Date1">
                                            <ControlStyle Width="40px" />
                                        </asp:BoundField>
                                    </Columns>
                                </asp:GridView>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </ItemTemplate>
    </asp:DataList>&nbsp; <TABLE style="WIDTH: 225px; POSITION: static" cellSpacing=2 cellPadding=2><TBODY><TR><TD style="WIDTH: 50px; HEIGHT: 20px">Back..</TD><TD style="WIDTH: 100px; HEIGHT: 20px"><asp:Button style="POSITION: static" id="Button11" onclick="Button11_Click" runat="server" Width="59px" Text="day" Font-Bold="True" BorderWidth="0px" BackColor="YellowGreen" Font-Size="9pt"></asp:Button></TD><TD style="WIDTH: 100px; HEIGHT: 20px"><asp:Button style="POSITION: static" id="Button12" onclick="Button12_Click" runat="server" Width="59px" Text="week" Font-Bold="True" BorderWidth="0px" BackColor="YellowGreen" Font-Size="9pt"></asp:Button></TD><TD style="WIDTH: 100px; HEIGHT: 20px"><asp:Button style="POSITION: static" id="Button10" onclick="Button10_Click" runat="server" Width="59px" Visible="False" Text="month" Font-Bold="True" BorderWidth="0px" BackColor="YellowGreen" Font-Size="9pt"></asp:Button></TD></TR></TBODY></TABLE></asp:Panel> <BR /></TD></TR></TBODY></TABLE></DIV></TD></TR></TBODY></TABLE><DIV style="WIDTH: 330px; POSITION: static; HEIGHT: 80px"><asp:Panel style="Z-INDEX: 1" id="timer" runat="server" Width="320px" BorderStyle="None" BorderColor="Gray" ForeColor="#404040" BorderWidth="0px" BackColor="White"><asp:Panel style="POSITION: static" id="Panel9" runat="server" Width="479px" Height="76px" BorderColor="LightSteelBlue" BorderWidth="5px" BackColor="WhiteSmoke"><TABLE style="WIDTH: 100%; POSITION: static" cellSpacing=4 cellPadding=0 border=0><TBODY><TR><TD style="WIDTH: 100px"><asp:Label style="POSITION: static" id="Label14" runat="server" Width="353px" Text="Comment" Font-Bold="True"></asp:Label></TD><TD style="WIDTH: 100px" align=right>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <asp:Button style="POSITION: static" id="Button14" onclick="Button14_Click2" runat="server" Width="28px" Text="x" ForeColor="White" Font-Bold="True" BorderWidth="1px" BackColor="#404040"></asp:Button></TD></TR><TR><TD style="WIDTH: 100px"><asp:TextBox style="POSITION: static" id="TextBox8" runat="server" Width="395px" MaxLength="100"></asp:TextBox></TD><TD style="WIDTH: 100px" align=right><asp:Button style="POSITION: static" id="Button15" onclick="Button15_Click1" runat="server" Width="64px" Text="Share it." BorderColor="DarkOliveGreen" Font-Bold="True" BorderWidth="1px" BackColor="YellowGreen" Font-Size="10pt"></asp:Button></TD></TR></TBODY></TABLE></asp:Panel> </asp:Panel> <ajaxToolkit:AlwaysVisibleControlExtender id="avce" runat="server" HorizontalOffset="5" HorizontalSide="Center" ScrollEffectDuration=".01" TargetControlID="timer" VerticalOffset="0" VerticalSide="Middle">
                        </ajaxToolkit:AlwaysVisibleControlExtender> </DIV></TD></TR><TR><TD style="WIDTH: 100px" vAlign=top>&nbsp;<asp:Timer id="Timer1" runat="server" OnTick="Timer1_Tick1" Enabled="False" Interval="8000"></asp:Timer></TD></TR></TBODY></TABLE>
</contenttemplate>
        </asp:UpdatePanel>&nbsp;
        
        
    </div>
</asp:Content>

