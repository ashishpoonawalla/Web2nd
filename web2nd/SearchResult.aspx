<%@ Page Language="C#" MasterPageFile="~/web2nd/main.master" AutoEventWireup="true" CodeFile="SearchResult.aspx.cs" Inherits="web2nd_SearchResult" Title="Untitled Page" %>
<%@ Register     Assembly="AjaxControlToolkit"     Namespace="AjaxControlToolkit"     TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
   <script language="javascript" type="text/javascript">
function check1()
{
 
        alert("Your Request of Friendship sent....");
      // return false;
   
}
</script>

    <asp:UpdatePanel id="UpdatePanel1" runat="server">
        <contenttemplate>
<TABLE style="WIDTH: 603px; POSITION: static" cellSpacing=2 border=0><TBODY><TR><TD style="WIDTH: 100px; HEIGHT: 22px"><asp:Button style="POSITION: static" id="Button4" onclick="Button4_Click" runat="server" Width="146px" Text="Simple Search" BorderStyle="None" ForeColor="#660066" Font-Bold="True" BorderWidth="1px" BackColor="LightGray"></asp:Button></TD><TD style="WIDTH: 100px; HEIGHT: 22px"><asp:Button style="POSITION: static" id="Button2" onclick="Button2_Click" runat="server" Width="146px" Text="Advance Search" BorderStyle="None" ForeColor="#660066" Font-Bold="True" BorderWidth="1px" BackColor="LightGray"></asp:Button></TD><TD style="WIDTH: 100px; HEIGHT: 22px"><asp:Button style="POSITION: static" id="Button3" onclick="Button3_Click" runat="server" Width="146px" Text="My Friend's Friends" BorderStyle="None" ForeColor="#660066" Font-Bold="True" BorderWidth="1px" BackColor="LightGray"></asp:Button></TD><TD style="WIDTH: 100px; HEIGHT: 22px"><asp:Button style="POSITION: static" id="Button1" runat="server" Width="146px" Text="Gmail Contacts" BorderStyle="None" ForeColor="#660066" Font-Bold="True" BorderWidth="1px" BackColor="LightGray" __designer:wfdid="w1" OnClick="Button1_Click1"></asp:Button></TD><TD style="WIDTH: 100px; HEIGHT: 22px"></TD></TR><TR><TD colSpan=5><asp:MultiView id="MultiView1" runat="server"><asp:View id="View1" runat="server"><TABLE style="WIDTH: 464px; POSITION: static; BACKGROUND-COLOR: lavender" cellSpacing=4 border=0><TBODY><TR><TD style="WIDTH: 100px"><asp:Label style="POSITION: static" id="Label20" runat="server" Text="." ForeColor="White" __designer:wfdid="w60"></asp:Label></TD><TD colSpan=2><asp:Label style="POSITION: static" id="Label21" runat="server" Width="112px" Text="Name" __designer:wfdid="w61"></asp:Label></TD><TD style="WIDTH: 100px"><asp:TextBox style="POSITION: static" id="TextBox6" runat="server" Width="270px" __designer:wfdid="w62"></asp:TextBox></TD><TD style="WIDTH: 100px" vAlign=bottom rowSpan=4><asp:RadioButton style="POSITION: static" id="RadioButton1" runat="server" Visible="False" Text="AND" __designer:wfdid="w66" Checked="True" GroupName="A1"></asp:RadioButton><BR /><BR /><asp:RadioButton style="POSITION: static" id="RadioButton2" runat="server" Visible="False" Text="OR" __designer:wfdid="w67" GroupName="A1"></asp:RadioButton><BR /><BR /><asp:Button style="POSITION: static" id="Button6" onclick="Button6_Click" runat="server" Width="119px" Height="29px" Text="Advance Search" BorderStyle="Solid" BorderColor="Black" Font-Bold="True" BorderWidth="1px" BackColor="LightSlateGray" Font-Size="9pt" __designer:wfdid="w64"></asp:Button></TD></TR><TR><TD style="WIDTH: 100px"><asp:Label style="POSITION: static" id="Label18" runat="server" Text="." ForeColor="White" __designer:wfdid="w57"></asp:Label></TD><TD colSpan=2><asp:Label style="POSITION: static" id="Label19" runat="server" Width="112px" Text="EMail" __designer:wfdid="w58"></asp:Label></TD><TD style="WIDTH: 100px"><asp:TextBox style="POSITION: static" id="TextBox5" runat="server" Width="267px" __designer:wfdid="w59"></asp:TextBox></TD></TR><TR><TD style="WIDTH: 100px"><asp:Label style="POSITION: static" id="Label16" runat="server" Text="." ForeColor="White" __designer:wfdid="w54"></asp:Label></TD><TD colSpan=2><asp:Label style="POSITION: static" id="Label17" runat="server" Width="112px" Text="City" __designer:wfdid="w55"></asp:Label></TD><TD style="WIDTH: 100px"><asp:TextBox style="POSITION: static" id="TextBox4" runat="server" Width="180px" __designer:wfdid="w56"></asp:TextBox></TD></TR><TR><TD style="WIDTH: 100px"><asp:Label style="POSITION: static" id="Label8" runat="server" Text="." ForeColor="White"></asp:Label></TD><TD colSpan=2><asp:Label style="POSITION: static" id="Label9" runat="server" Width="112px" Visible="False" Text="Gender"></asp:Label></TD><TD style="WIDTH: 100px"><asp:DropDownList style="POSITION: static" id="DropDownList1" runat="server" Width="185px" Visible="False" __designer:wfdid="w63"><asp:ListItem></asp:ListItem>
<asp:ListItem>Male</asp:ListItem>
<asp:ListItem>Female</asp:ListItem>
</asp:DropDownList></TD></TR><TR><TD style="WIDTH: 100px"><asp:Label style="POSITION: static" id="Label10" runat="server" Text="." ForeColor="White"></asp:Label></TD><TD colSpan=2></TD><TD style="WIDTH: 100px"><asp:Label style="POSITION: static" id="Label7" runat="server" Width="216px" __designer:wfdid="w65"></asp:Label></TD><TD style="WIDTH: 100px" vAlign=bottom></TD></TR></TBODY></TABLE></asp:View> <asp:View id="View2" runat="server"><TABLE style="WIDTH: 599px; POSITION: static; BACKGROUND-COLOR: papayawhip" cellSpacing=0 border=0><TBODY><TR><TD style="WIDTH: 100px"><asp:Label style="POSITION: static" id="Label11" runat="server" Text="." ForeColor="White"></asp:Label></TD><TD colSpan=2></TD><TD style="WIDTH: 100px"></TD></TR><TR><TD style="WIDTH: 100px; HEIGHT: 39px"><asp:Label style="POSITION: static" id="Label12" runat="server" Text="." ForeColor="White"></asp:Label></TD><TD style="HEIGHT: 39px" colSpan=2><asp:SqlDataSource id="SqlDataSource3" runat="server" __designer:wfdid="w1" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Login.Email, Login.City, FList.S_Email, FList.R_Email, Login.FullName, Login.Photo, Login.Id FROM Login INNER JOIN FList ON Login.Email = FList.R_Email WHERE (FList.S_Email = @S_Email) AND (FList.R_Email <> @S_Email)  ORDER BY Login.First_nm"><SelectParameters>
<asp:SessionParameter SessionField="UserMail" Name="S_Email"></asp:SessionParameter>
</SelectParameters>
</asp:SqlDataSource> <asp:Label style="POSITION: static" id="Label1" runat="server" Width="296px" Visible="False" Text="Label" __designer:wfdid="w3"></asp:Label> <asp:HiddenField id="HiddenField1" runat="server" __designer:wfdid="w5"></asp:HiddenField></TD><TD style="WIDTH: 100px; HEIGHT: 39px"></TD></TR><TR><TD style="WIDTH: 100px"></TD><TD colSpan=2><asp:DropDownList style="POSITION: static" id="DropDownList2" runat="server" Width="269px" __designer:wfdid="w2" DataSourceID="SqlDataSource3" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" AutoPostBack="True" DataTextField="FullName" DataValueField="Email"></asp:DropDownList></TD><TD style="WIDTH: 100px"><asp:Button style="POSITION: static" id="Button7" onclick="Button7_Click" runat="server" Width="74px" Height="23px" Text="Search" BorderStyle="Solid" BorderColor="Black" Font-Bold="True" BorderWidth="1px" BackColor="LightSlateGray" Font-Size="9pt"></asp:Button></TD></TR><TR><TD style="WIDTH: 100px"><asp:Label style="POSITION: static" id="Label14" runat="server" Text="." ForeColor="White"></asp:Label></TD><TD colSpan=2></TD><TD style="WIDTH: 100px"></TD></TR></TBODY></TABLE>&nbsp;&nbsp; </asp:View> <asp:View id="View3" runat="server"><DIV style="TEXT-ALIGN: left"><TABLE style="WIDTH: 599px; POSITION: static; BACKGROUND-COLOR: #dde1d9" cellSpacing=0 border=0><TBODY><TR><TD style="WIDTH: 100px"><asp:Label style="POSITION: static" id="Label6" runat="server" Text="." ForeColor="White"></asp:Label></TD><TD colSpan=2></TD><TD style="WIDTH: 100px"></TD></TR><TR><TD style="WIDTH: 100px; HEIGHT: 21px"><asp:Label style="POSITION: static" id="Label3" runat="server" Text="." ForeColor="White"></asp:Label></TD><TD style="HEIGHT: 21px" colSpan=2><asp:Label style="POSITION: static" id="Label4" runat="server" Width="297px" Text="Please give name or any related word to search friends"></asp:Label></TD><TD style="WIDTH: 100px; HEIGHT: 21px"></TD></TR><TR><TD style="WIDTH: 100px"></TD><TD colSpan=2><asp:TextBox style="POSITION: static" id="TextBox1" runat="server" Width="290px"></asp:TextBox> </TD><TD style="WIDTH: 100px"><asp:Button style="POSITION: static" id="Button5" onclick="Button5_Click" runat="server" Width="74px" Height="23px" Text="Search" BorderStyle="Solid" BorderColor="Black" Font-Bold="True" BorderWidth="1px" BackColor="LightSlateGray" Font-Size="9pt"></asp:Button></TD></TR><TR><TD style="WIDTH: 100px"><asp:Label style="POSITION: static" id="Label5" runat="server" Text="." ForeColor="White"></asp:Label></TD><TD colSpan=2></TD><TD style="WIDTH: 100px"></TD></TR></TBODY></TABLE></DIV>&nbsp; </asp:View> </asp:MultiView>&nbsp; <asp:Label style="POSITION: static" id="Label2" runat="server" Visible="False" Text="Label" __designer:wfdid="w69"></asp:Label></TD></TR><TR><TD colSpan=5><asp:SqlDataSource id="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT id, Password, First_nm, Last_nm, Email, Gender, FullName, Photo, City, Country, DateTime1, Type1, PageName, LoginTime1, Findex, ShowAtSearch FROM Login WHERE (Email <> @UML) AND (FullName <> N'admin admin') AND (ShowAtSearch <> 1) ORDER BY FullName"><SelectParameters>
<asp:SessionParameter SessionField="UserMail" Name="UML"></asp:SessionParameter>
</SelectParameters>
</asp:SqlDataSource>&nbsp; <asp:GridView style="POSITION: static" id="GridView1" runat="server" Width="592px" ForeColor="#333333" Font-Size="10pt" PageSize="20" AllowSorting="True" DataKeyNames="id" AutoGenerateColumns="False" AllowPaging="True" CellPadding="4" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" GridLines="None">
<FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True"></FooterStyle>
<Columns>
<asp:ImageField DataImageUrlField="Photo">
<ControlStyle BorderStyle="Solid" Width="45px" Height="45px" BorderWidth="4px" BorderColor="#E0E0E0"></ControlStyle>

<ItemStyle Width="45px" Height="45px" VerticalAlign="Middle"></ItemStyle>
</asp:ImageField>
<asp:BoundField DataField="FullName" SortExpression="FullName" HeaderText="Name">
<ControlStyle Font-Size="9pt"></ControlStyle>
</asp:BoundField>
<asp:BoundField DataField="Gender" SortExpression="Gender" HeaderText="Gender"></asp:BoundField>
<asp:BoundField DataField="City" SortExpression="City" HeaderText="City"></asp:BoundField>
<asp:CommandField SelectText="Send Request" ShowSelectButton="True"></asp:CommandField>
</Columns>

<RowStyle BackColor="#F7F6F3" ForeColor="#333333"></RowStyle>

<EditRowStyle BackColor="#999999"></EditRowStyle>

<SelectedRowStyle BackColor="#E2DED6" ForeColor="#333333" Font-Bold="True"></SelectedRowStyle>

<PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center"></PagerStyle>

<HeaderStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True"></HeaderStyle>

<AlternatingRowStyle BackColor="White" ForeColor="#284775"></AlternatingRowStyle>
</asp:GridView><BR /></TD></TR><TR><TD style="WIDTH: 100px"></TD><TD style="WIDTH: 100px"></TD><TD style="WIDTH: 100px"></TD><TD style="WIDTH: 100px"></TD><TD style="WIDTH: 100px"></TD></TR><TR><TD style="WIDTH: 100px"></TD><TD style="WIDTH: 100px"></TD><TD style="WIDTH: 100px"></TD><TD style="WIDTH: 100px"></TD><TD style="WIDTH: 100px"></TD></TR></TBODY></TABLE><BR /><DIV style="WIDTH: 330px; POSITION: static; HEIGHT: 80px"><asp:Panel style="Z-INDEX: 1" id="timer" runat="server" Width="320px" BorderStyle="None" BorderColor="Gray" ForeColor="#404040" BorderWidth="0px" BackColor="White" __designer:wfdid="w86"><asp:Panel style="POSITION: static" id="Panel9" runat="server" Width="479px" Height="76px" BorderColor="LightSteelBlue" BorderWidth="5px" BackColor="WhiteSmoke" __designer:wfdid="w87"><TABLE style="WIDTH: 78%; POSITION: static; HEIGHT: 56px" cellSpacing=4 cellPadding=0 border=0><TBODY><TR><TD style="WIDTH: 103px"><asp:Label style="POSITION: static" id="Label13" runat="server" Width="366px" Text="Message" Font-Bold="True" Font-Size="8pt" __designer:wfdid="w88"></asp:Label></TD><TD style="WIDTH: 100px" align=right><asp:Button style="POSITION: static" id="Button14" onclick="Button14_Click2" runat="server" Width="68px" Text="x" ForeColor="White" Font-Bold="True" BorderWidth="1px" BackColor="#404040" __designer:wfdid="w89"></asp:Button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </TD></TR><TR><TD style="HEIGHT: 22px" align=right colSpan=2><asp:TextBox style="POSITION: static" id="TextBox8" runat="server" Width="362px" ForeColor="Navy" Font-Bold="True" BorderWidth="0px" Font-Size="8pt" __designer:wfdid="w93" MaxLength="100">Your Request of Friendship send..</asp:TextBox></TD></TR></TBODY></TABLE></asp:Panel> </asp:Panel> <ajaxToolkit:AlwaysVisibleControlExtender id="avce" runat="server" __designer:wfdid="w92" VerticalSide="Middle" VerticalOffset="0" TargetControlID="timer" ScrollEffectDuration=".01" HorizontalSide="Center" HorizontalOffset="5">
                        </ajaxToolkit:AlwaysVisibleControlExtender> </DIV><BR />
</contenttemplate>
    </asp:UpdatePanel>
    <br />
    <br />
    <br />
    <br />
    &nbsp;&nbsp;<br />
    <br />
    &nbsp;<br />
    &nbsp;
</asp:Content>

