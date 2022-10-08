<%@ Page Language="C#" MasterPageFile="~/web2nd/main.master" AutoEventWireup="true" CodeFile="Messages.aspx.cs" Inherits="web2nd_Messages" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: left">
        <asp:UpdatePanel id="UpdatePanel1" runat="server">
            <contenttemplate>
<TABLE style="POSITION: static; BACKGROUND-COLOR: whitesmoke" cellSpacing=4 width=600 border=0><TBODY><TR><TD style="WIDTH: 110px"><asp:Button style="POSITION: static" id="Button1" onclick="Button1_Click" runat="server" Width="70px" Height="22px" Text="New " BorderColor="DimGray" ForeColor="White" Font-Bold="True" BorderWidth="0px" BackColor="OliveDrab" Font-Size="8pt"></asp:Button></TD><TD style="WIDTH: 100px"><asp:Button style="POSITION: static" id="Button2" onclick="Button2_Click" runat="server" Width="70px" Height="22px" Text="Inbox" BorderColor="Silver" ForeColor="White" Font-Bold="True" BorderWidth="0px" BackColor="OliveDrab" Font-Size="8pt"></asp:Button></TD><TD style="WIDTH: 100px"><asp:Button style="POSITION: static" id="Button3" onclick="Button3_Click" runat="server" Width="70px" Height="22px" Text="Outbox" BorderColor="Silver" ForeColor="White" Font-Bold="True" BorderWidth="0px" BackColor="OliveDrab" Font-Size="8pt"></asp:Button></TD><TD style="WIDTH: 100px"><asp:Button style="POSITION: static" id="Button5" runat="server" Width="70px" Height="22px" Visible="False" Text="Deleted" BorderColor="Silver" ForeColor="White" Font-Bold="True" BorderWidth="0px" BackColor="OliveDrab" Font-Size="8pt"></asp:Button></TD><TD style="WIDTH: 100px"><asp:Button style="POSITION: static" id="Button4" runat="server" Width="70px" Height="22px" Visible="False" Text="Draft" BorderColor="Silver" ForeColor="White" Font-Bold="True" BorderWidth="0px" BackColor="OliveDrab" Font-Size="8pt"></asp:Button></TD><TD style="WIDTH: 100px"><asp:Button style="POSITION: static" id="Button7" onclick="Button2_Click" runat="server" Width="20px" Height="22px" Visible="False" Text="...." BorderColor="Silver" ForeColor="White" Font-Bold="True" BorderWidth="0px" BackColor="Black" Font-Size="8pt" __designer:wfdid="w14"></asp:Button></TD><TD style="WIDTH: 100px"><asp:Button style="POSITION: static" id="Button8" onclick="Button2_Click" runat="server" Width="20px" Height="22px" Visible="False" Text="..." BorderColor="Silver" ForeColor="White" Font-Bold="True" BorderWidth="0px" BackColor="OliveDrab" Font-Size="8pt" __designer:wfdid="w15"></asp:Button></TD><TD style="WIDTH: 100px"></TD></TR><TR><TD colSpan=8><asp:Label style="POSITION: static" id="Label2" runat="server" Text="." ForeColor="White" __designer:wfdid="w42"></asp:Label><asp:Label style="POSITION: static" id="Label1" runat="server" Width="134px" Visible="False" Text="Label" __designer:wfdid="w43"></asp:Label><asp:Label style="POSITION: static" id="Label3" runat="server" Width="350px" Visible="False" Text="Label" __designer:wfdid="w41"></asp:Label> <asp:Label style="POSITION: static" id="Label4" runat="server" Width="388px" Visible="False" Text="Label" __designer:wfdid="w46"></asp:Label><BR /></TD></TR><TR><TD colSpan=8><asp:MultiView id="MultiView1" runat="server"><asp:View id="View1" runat="server"><TABLE style="WIDTH: 99%; POSITION: static" cellSpacing=4 cellPadding=0 border=0><TBODY><TR><TD style="HEIGHT: 24px" vAlign=top colSpan=5><asp:Label style="POSITION: static" id="Label19" runat="server" Width="513px" Text="Send personal message to your friends." ForeColor="DimGray" Font-Bold="True" Font-Size="10pt" __designer:wfdid="w11"></asp:Label></TD></TR><TR><TD style="WIDTH: 65px; HEIGHT: 24px" vAlign=top><asp:Image style="POSITION: static" id="Image1" runat="server" Width="45px" Height="45px" Visible="False" BorderColor="Gray" BorderWidth="2px"></asp:Image></TD><TD style="WIDTH: 25935px; HEIGHT: 24px" vAlign=top><asp:Label style="POSITION: static" id="Label9" runat="server" Visible="False" Text="@" ForeColor="Indigo" Font-Bold="True" Font-Size="11pt" __designer:wfdid="w1"></asp:Label>&nbsp;&nbsp; </TD><TD style="WIDTH: 100px; HEIGHT: 24px" vAlign=top><asp:Label style="POSITION: static" id="Label5" runat="server" Width="236px" Height="20px" BorderStyle="Solid" BorderColor="Gray" ForeColor="#404040" BorderWidth="1px" Font-Size="10pt" __designer:wfdid="w2"></asp:Label> </TD><TD style="WIDTH: 100px; HEIGHT: 24px" vAlign=top><asp:DropDownList style="POSITION: static" id="DropDownList1" runat="server" Width="176px" Height="25px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="FullName" DataValueField="Email"></asp:DropDownList> <asp:SqlDataSource id="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT FList.id, FList.S_Email, FList.R_Email, FList.R_FullName, Login.Email, Login.FullName, Login.Photo &#13;&#10;FROM FList INNER JOIN Login &#13;&#10;&#13;&#10;ON FList.R_Email = Login.Email &#13;&#10;WHERE (FList.S_Email = @S_Email) &#13;&#10;ORDER BY Login.FullName&#13;&#10;">
                            <SelectParameters>
                                <asp:SessionParameter Name="S_Email" SessionField="UserMail" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource> </TD><TD style="WIDTH: 100px; HEIGHT: 24px" vAlign=top><asp:Button style="POSITION: static" id="Button6" onclick="Button6_Click" runat="server" Width="76px" Height="23px" Text="Send " BorderStyle="Dashed" BorderColor="#404040" ForeColor="#330066" Font-Bold="True" BorderWidth="1px" BackColor="#E0E0E0"></asp:Button></TD></TR><TR><TD style="WIDTH: 65px" vAlign=top><asp:Label style="POSITION: static" id="Label6" runat="server" Text="Subject" ForeColor="#404040"></asp:Label> </TD><TD style="WIDTH: 25935px" vAlign=top><asp:Label style="POSITION: static" id="Label10" runat="server" Visible="False" Text="@" ForeColor="Indigo" Font-Bold="True" Font-Size="11pt" __designer:wfdid="w1"></asp:Label></TD><TD vAlign=top colSpan=2><asp:TextBox style="POSITION: static" id="TextBox4" runat="server" Width="425px" BorderStyle="Dotted" BorderColor="Gray" BorderWidth="1px" MaxLength="100"></asp:TextBox></TD><TD style="WIDTH: 100px" vAlign=top></TD></TR><TR><TD style="WIDTH: 65px" vAlign=top><asp:Label style="POSITION: static" id="Label7" runat="server" Width="47px" Text="Message" ForeColor="#404040"></asp:Label> </TD><TD style="WIDTH: 25935px" vAlign=top><asp:Label style="POSITION: static" id="Label11" runat="server" Visible="False" Text="@" ForeColor="Indigo" Font-Bold="True" Font-Size="11pt" __designer:wfdid="w1"></asp:Label></TD><TD vAlign=top colSpan=3><asp:TextBox style="POSITION: static" id="TextBox5" runat="server" Width="499px" Height="317px" BorderStyle="Dotted" BorderColor="Gray" BorderWidth="1px" MaxLength="500" TextMode="MultiLine"></asp:TextBox></TD></TR><TR><TD style="WIDTH: 65px" vAlign=top><asp:Label style="POSITION: static" id="Label8" runat="server" Width="44px" Text="Priority" ForeColor="#404040" __designer:wfdid="w3"></asp:Label></TD><TD style="WIDTH: 25935px" vAlign=top></TD><TD vAlign=top colSpan=3><TABLE style="WIDTH: 100%; POSITION: static" cellSpacing=0 border=0><TBODY><TR><TD style="WIDTH: 57px; HEIGHT: 22px"><asp:RadioButton style="POSITION: static" id="RadioButton1" runat="server" Width="85px" Text="Urgent" __designer:wfdid="w4" GroupName="A1"></asp:RadioButton></TD><TD style="WIDTH: 100px; HEIGHT: 22px"><asp:RadioButton style="POSITION: static" id="RadioButton3" runat="server" Width="95px" Text="Normal" __designer:wfdid="w6" GroupName="A1" Checked="True"></asp:RadioButton></TD><TD style="WIDTH: 100px; HEIGHT: 22px"></TD></TR></TBODY></TABLE><asp:Label style="POSITION: static" id="Label12" runat="server" Width="436px" Visible="False" Text="Label" __designer:wfdid="w4"></asp:Label></TD></TR></TBODY></TABLE></asp:View> <asp:View id="View2" runat="server"><asp:SqlDataSource id="SqlDataSource2" runat="server" __designer:wfdid="w5" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [EMailTbl] WHERE ([RMail] = @RMail) ORDER BY [datetime1] DESC" DeleteCommand="DELETE FROM [EMailTbl] WHERE [ID] = @ID"><SelectParameters>
<asp:SessionParameter SessionField="UserMail" Name="RMail" Type="String"></asp:SessionParameter>
</SelectParameters>
<DeleteParameters>
<asp:Parameter Name="ID" Type="Int32"></asp:Parameter>
</DeleteParameters>
</asp:SqlDataSource> <asp:GridView style="POSITION: static" id="GridView1" runat="server" Width="595px" ForeColor="#333333" __designer:wfdid="w6" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" DataSourceID="SqlDataSource2" CellPadding="4" GridLines="None" PageSize="15" AllowPaging="True" DataKeyNames="ID" AutoGenerateColumns="False" AllowSorting="True">
<FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"></FooterStyle>

<RowStyle BackColor="#F7F6F3" ForeColor="#333333"></RowStyle>
<Columns>
<asp:CommandField DeleteText="  X  " SelectText="Open" ShowDeleteButton="True" ShowSelectButton="True" ButtonType="Button"></asp:CommandField>
<asp:BoundField DataField="SubMail" HeaderText="Subject" SortExpression="SubMail"></asp:BoundField>
<asp:BoundField DataField="SName" HeaderText="By" SortExpression="SName"></asp:BoundField>
<asp:BoundField DataField="SPhoto" HeaderText="SPhoto" SortExpression="SPhoto" Visible="False"></asp:BoundField>
<asp:BoundField DataField="Date1" HeaderText="Date" SortExpression="Date1"></asp:BoundField>
<asp:BoundField DataField="Priority1" HeaderText="@" SortExpression="Priority1"></asp:BoundField>
</Columns>

<PagerStyle HorizontalAlign="Center" BackColor="#284775" ForeColor="White"></PagerStyle>

<SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333"></SelectedRowStyle>

<HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"></HeaderStyle>

<EditRowStyle BackColor="#999999"></EditRowStyle>

<AlternatingRowStyle BackColor="White" ForeColor="#284775"></AlternatingRowStyle>
</asp:GridView></asp:View> <asp:View id="View3" runat="server"><asp:SqlDataSource id="SqlDataSource3" runat="server" __designer:wfdid="w5" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [EMailTbl] WHERE ([SMail] = @SMail) ORDER BY [datetime1] DESC" UpdateCommand="UPDATE [EMailTbl] SET [SMail] = @SMail, [SName] = @SName, [SPhoto] = @SPhoto, [RMail] = @RMail, [RName] = @RName, [RPhoto] = @RPhoto, [MessMail] = @MessMail, [SubMail] = @SubMail, [Date1] = @Date1, [Time1] = @Time1, [datetime1] = @datetime1, [Priority1] = @Priority1, [Type1] = @Type1 WHERE [ID] = @ID" InsertCommand="INSERT INTO [EMailTbl] ([SMail], [SName], [SPhoto], [RMail], [RName], [RPhoto], [MessMail], [SubMail], [Date1], [Time1], [datetime1], [Priority1], [Type1]) VALUES (@SMail, @SName, @SPhoto, @RMail, @RName, @RPhoto, @MessMail, @SubMail, @Date1, @Time1, @datetime1, @Priority1, @Type1)" DeleteCommand="DELETE FROM [EMailTbl] WHERE [ID] = @ID"><SelectParameters>
<asp:SessionParameter SessionField="UserMail" Name="SMail"></asp:SessionParameter>
</SelectParameters>
<DeleteParameters>
<asp:Parameter Name="ID" Type="Int32"></asp:Parameter>
</DeleteParameters>
<UpdateParameters>
<asp:Parameter Name="SMail" Type="String"></asp:Parameter>
<asp:Parameter Name="SName" Type="String"></asp:Parameter>
<asp:Parameter Name="SPhoto" Type="String"></asp:Parameter>
<asp:Parameter Name="RMail" Type="String"></asp:Parameter>
<asp:Parameter Name="RName" Type="String"></asp:Parameter>
<asp:Parameter Name="RPhoto" Type="String"></asp:Parameter>
<asp:Parameter Name="MessMail" Type="String"></asp:Parameter>
<asp:Parameter Name="SubMail" Type="String"></asp:Parameter>
<asp:Parameter Name="Date1" Type="String"></asp:Parameter>
<asp:Parameter Name="Time1" Type="String"></asp:Parameter>
<asp:Parameter Name="datetime1" Type="DateTime"></asp:Parameter>
<asp:Parameter Name="Priority1" Type="String"></asp:Parameter>
<asp:Parameter Name="Type1" Type="Decimal"></asp:Parameter>
<asp:Parameter Name="ID" Type="Int32"></asp:Parameter>
</UpdateParameters>
<InsertParameters>
<asp:Parameter Name="SMail" Type="String"></asp:Parameter>
<asp:Parameter Name="SName" Type="String"></asp:Parameter>
<asp:Parameter Name="SPhoto" Type="String"></asp:Parameter>
<asp:Parameter Name="RMail" Type="String"></asp:Parameter>
<asp:Parameter Name="RName" Type="String"></asp:Parameter>
<asp:Parameter Name="RPhoto" Type="String"></asp:Parameter>
<asp:Parameter Name="MessMail" Type="String"></asp:Parameter>
<asp:Parameter Name="SubMail" Type="String"></asp:Parameter>
<asp:Parameter Name="Date1" Type="String"></asp:Parameter>
<asp:Parameter Name="Time1" Type="String"></asp:Parameter>
<asp:Parameter Name="datetime1" Type="DateTime"></asp:Parameter>
<asp:Parameter Name="Priority1" Type="String"></asp:Parameter>
<asp:Parameter Name="Type1" Type="Decimal"></asp:Parameter>
</InsertParameters>
</asp:SqlDataSource> <asp:GridView style="POSITION: static" id="GridView2" runat="server" Width="595px" ForeColor="#333333" __designer:wfdid="w6" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" DataSourceID="SqlDataSource3" CellPadding="4" GridLines="None" PageSize="15" AllowPaging="True" DataKeyNames="ID" AutoGenerateColumns="False" AllowSorting="True">
<FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"></FooterStyle>

<RowStyle BackColor="#F7F6F3" ForeColor="#333333"></RowStyle>
<Columns>
<asp:CommandField DeleteText="  X  " SelectText="Open" ShowDeleteButton="True" ShowSelectButton="True" ButtonType="Button"></asp:CommandField>
<asp:BoundField DataField="SubMail" HeaderText="Subject" SortExpression="SubMail"></asp:BoundField>
<asp:BoundField DataField="RName" HeaderText="To" SortExpression="RName"></asp:BoundField>
<asp:BoundField DataField="Date1" HeaderText="Date" SortExpression="Date1"></asp:BoundField>
<asp:BoundField DataField="Priority1" HeaderText="@" SortExpression="Priority1"></asp:BoundField>
</Columns>

<PagerStyle HorizontalAlign="Center" BackColor="#284775" ForeColor="White"></PagerStyle>

<SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333"></SelectedRowStyle>

<HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"></HeaderStyle>

<EditRowStyle BackColor="#999999"></EditRowStyle>

<AlternatingRowStyle BackColor="White" ForeColor="#284775"></AlternatingRowStyle>
</asp:GridView></asp:View> <asp:View id="View4" runat="server">
        </asp:View> <asp:View id="View5" runat="server">
        </asp:View> <asp:View id="View6" runat="server"><TABLE style="WIDTH: 99%; POSITION: static; BACKGROUND-COLOR: gainsboro" cellSpacing=4 cellPadding=0 border=0><TBODY><TR><TD style="WIDTH: 65px; HEIGHT: 24px" vAlign=top><asp:Image style="POSITION: static" id="Image2" runat="server" Width="45px" Height="45px" Visible="False" BorderColor="Gray" BorderWidth="2px" __designer:wfdid="w7"></asp:Image></TD><TD style="WIDTH: 25935px; HEIGHT: 24px" vAlign=top>&nbsp;&nbsp; </TD><TD style="HEIGHT: 24px" vAlign=top colSpan=2><asp:Label style="POSITION: static" id="Label14" runat="server" Width="391px" BorderStyle="Solid" BorderColor="Gray" ForeColor="#404040" Font-Bold="False" BorderWidth="0px" Font-Size="9pt" __designer:wfdid="w2"></asp:Label>&nbsp;<BR /><BR /><BR /></TD><TD style="WIDTH: 100px; HEIGHT: 24px" vAlign=top><asp:Label style="POSITION: static" id="Label16" runat="server" Width="86px" BorderStyle="Solid" BorderColor="Gray" ForeColor="#404040" Font-Bold="False" BorderWidth="0px" Font-Size="8pt" __designer:wfdid="w2"></asp:Label></TD></TR><TR><TD style="WIDTH: 65px" vAlign=top></TD><TD style="WIDTH: 25935px" vAlign=top></TD><TD vAlign=top colSpan=2><asp:Label style="POSITION: static" id="Label20" runat="server" Text="." ForeColor="#E0E0E0" Font-Bold="True" __designer:wfdid="w13"></asp:Label></TD><TD style="WIDTH: 100px" vAlign=top><asp:Label style="POSITION: static" id="Label13" runat="server" Visible="False" __designer:wfdid="w23"></asp:Label></TD></TR><TR><TD style="WIDTH: 65px" vAlign=top></TD><TD style="WIDTH: 25935px" vAlign=top></TD><TD vAlign=top colSpan=2><asp:Label style="POSITION: static" id="Label15" runat="server" Text="Subject" ForeColor="#404040" Font-Bold="True" __designer:wfdid="w13"></asp:Label></TD><TD style="WIDTH: 100px" vAlign=top><asp:Label style="POSITION: static" id="Label18" runat="server" Width="51px" Visible="False" __designer:wfdid="w25"></asp:Label></TD></TR><TR><TD style="WIDTH: 65px" vAlign=top>&nbsp;</TD><TD style="WIDTH: 25935px" vAlign=top></TD><TD vAlign=top colSpan=3><asp:TextBox style="POSITION: static" id="TextBox1" runat="server" Width="497px" Height="63px" BorderStyle="Dashed" BorderColor="Gray" BorderWidth="0px" __designer:wfdid="w2" MaxLength="100" TextMode="MultiLine" ReadOnly="True"></asp:TextBox>&nbsp;</TD></TR><TR><TD style="WIDTH: 65px" vAlign=top></TD><TD style="WIDTH: 25935px" vAlign=top></TD><TD vAlign=top colSpan=3><asp:Label style="POSITION: static" id="Label17" runat="server" Width="47px" Text="Message" ForeColor="#404040" Font-Bold="True" __designer:wfdid="w16"></asp:Label></TD></TR><TR><TD style="WIDTH: 65px" vAlign=top>&nbsp;</TD><TD style="WIDTH: 25935px" vAlign=top></TD><TD vAlign=top colSpan=3><asp:TextBox style="POSITION: static" id="TextBox2" runat="server" Width="499px" Height="317px" BorderStyle="Dashed" BorderColor="Gray" BorderWidth="0px" __designer:wfdid="w18" MaxLength="500" TextMode="MultiLine" ReadOnly="True"></asp:TextBox></TD></TR><TR><TD style="WIDTH: 65px" vAlign=top></TD><TD style="WIDTH: 25935px" vAlign=top></TD><TD vAlign=top colSpan=3></TD></TR></TBODY></TABLE></asp:View> </asp:MultiView></TD></TR></TBODY></TABLE>
</contenttemplate>
        </asp:UpdatePanel><br />
        <br />
        &nbsp;</div>
    <br />
</asp:Content>

