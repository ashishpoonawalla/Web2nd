<%@ Page Language="C#" MasterPageFile="~/web2nd/main.master" AutoEventWireup="true" CodeFile="2ManageGroup.aspx.cs" Inherits="web2nd_ManageGroup" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:UpdatePanel id="UpdatePanel1" runat="server">
        <contenttemplate>
<TABLE style="WIDTH: 593px; POSITION: static" cellSpacing=4 cellPadding=0><TBODY><TR><TD style="WIDTH: 76px; HEIGHT: 20px"><asp:Button style="POSITION: static" id="Button1" onclick="Button1_Click" runat="server" Width="179px" ForeColor="White" BackColor="DimGray" Font-Bold="True" BorderStyle="None" BorderWidth="1px" Text="Manage List"></asp:Button></TD><TD style="HEIGHT: 20px" colSpan=3><asp:Button style="POSITION: static" id="Button2" onclick="Button2_Click" runat="server" Width="179px" ForeColor="White" BackColor="DimGray" Font-Bold="True" BorderStyle="None" BorderWidth="1px" Text="Manage Friends" __designer:wfdid="w72"></asp:Button></TD></TR><TR><TD colSpan=4><asp:Panel style="POSITION: static" id="Panel1" runat="server" Width="400px" Height="50px" Visible="False"><DIV style="TEXT-ALIGN: left"><TABLE style="WIDTH: 583px; POSITION: static" cellSpacing=4 bgColor=whitesmoke><TBODY><TR><TD vAlign=top align=left colSpan=2><asp:TextBox style="POSITION: static" id="TextBox1" runat="server" Width="439px" Font-Size="9pt" MaxLength="30"></asp:TextBox></TD><TD style="WIDTH: 112px" vAlign=top align=left><asp:Button style="POSITION: static" id="Button3" onclick="Button3_Click" runat="server" Width="110px" Font-Size="8pt" BackColor="Silver" Font-Bold="True" BorderWidth="1px" Text="Add List"></asp:Button></TD></TR><TR><TD style="WIDTH: 100px" vAlign=top align=left><asp:Label style="POSITION: static" id="Label1" runat="server" Width="127px" Font-Bold="True" Text="Suggets List Name"></asp:Label></TD><TD style="WIDTH: 100px" vAlign=top align=left><asp:DropDownList style="POSITION: static" id="DropDownList1" runat="server" Width="307px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True"><asp:ListItem>My Friends</asp:ListItem>
<asp:ListItem>My Family</asp:ListItem>
<asp:ListItem>My Collage</asp:ListItem>
<asp:ListItem>My School</asp:ListItem>
<asp:ListItem>My Best Friend</asp:ListItem>
<asp:ListItem>My Group</asp:ListItem>
</asp:DropDownList></TD><TD style="WIDTH: 112px" vAlign=top align=left></TD></TR><TR><TD style="WIDTH: 100px" vAlign=top align=left><asp:Label style="POSITION: static" id="Label2" runat="server" Width="126px" Text="Previous List"></asp:Label></TD><TD style="WIDTH: 100px" vAlign=top align=left><asp:ListBox style="POSITION: static" id="ListBox1" runat="server" Width="303px" Height="200px" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged"></asp:ListBox></TD><TD style="WIDTH: 112px" vAlign=top align=left></TD></TR><TR><TD style="WIDTH: 100px" vAlign=top align=left><asp:Button style="POSITION: static" id="Button5" runat="server" Width="122px" Font-Size="8pt" BackColor="Silver" Font-Bold="True" BorderWidth="1px" Text="Delete From List" __designer:wfdid="w80" OnClick="Button5_Click"></asp:Button></TD><TD vAlign=top align=left colSpan=2><asp:Label style="POSITION: static" id="Label3" runat="server" Width="430px" ForeColor="#C00000" Text="." __designer:wfdid="w28"></asp:Label></TD></TR></TBODY></TABLE></DIV></asp:Panel></TD></TR><TR><TD colSpan=4><asp:Panel style="POSITION: static" id="Panel2" runat="server" Width="400px" Height="50px"><asp:SqlDataSource id="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [View1] WHERE (([S_Email] = @S_Email) AND ([R_Email] <> @R_Email))"><SelectParameters>
<asp:SessionParameter SessionField="UserMail" Type="String" Name="S_Email"></asp:SessionParameter>
<asp:SessionParameter SessionField="UserMail" Type="String" Name="R_Email"></asp:SessionParameter>
</SelectParameters>
</asp:SqlDataSource> <TABLE style="WIDTH: 116%; POSITION: static" cellSpacing=4 bgColor=whitesmoke><TBODY><TR><TD colSpan=4><asp:SqlDataSource id="SqlDataSource1" runat="server" __designer:wfdid="w49" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [View1] WHERE ([id] = @id)"><SelectParameters>
<asp:ControlParameter PropertyName="Text" Type="Int32" Name="id" ControlID="Label4"></asp:ControlParameter>
</SelectParameters>
</asp:SqlDataSource><asp:Label style="POSITION: static" id="Label6" runat="server" Width="541px" ForeColor="#C00000" Font-Bold="True" Text="." __designer:wfdid="w75"></asp:Label> <TABLE style="POSITION: static" cellSpacing=4 cellPadding=0 bgColor=gainsboro border=0><TBODY><TR><TD style="WIDTH: 100px" vAlign=top align=left><asp:Label style="POSITION: static" id="Label4" runat="server" Width="177px" ForeColor="Silver" Text="0" __designer:wfdid="w31" Font-Italic="True"></asp:Label> </TD><TD style="WIDTH: 100px" vAlign=top align=left><asp:Label style="POSITION: static" id="Label5" runat="server" Font-Bold="True" Text="Add To List" __designer:wfdid="w70"></asp:Label> </TD><TD style="WIDTH: 100px" vAlign=top align=left><asp:Button style="POSITION: static" id="Button4" onclick="Button4_Click" runat="server" ForeColor="White" Font-Size="9pt" BackColor="Gray" Font-Bold="True" BorderWidth="1px" Text="Save List" __designer:wfdid="w71" BorderColor="White"></asp:Button></TD></TR><TR><TD style="WIDTH: 100px" vAlign=top align=left><asp:FormView style="POSITION: static" id="FormView1" runat="server" Width="192px" __designer:wfdid="w59" DataKeyNames="id" DataSourceID="SqlDataSource1"><EditItemTemplate>
R_Email: <asp:TextBox Text='<%# Bind("R_Email") %>' runat="server" id="R_EmailTextBox" /><br />
FullName: <asp:TextBox Text='<%# Bind("FullName") %>' runat="server" id="FullNameTextBox" /><br />
Email: <asp:TextBox Text='<%# Bind("Email") %>' runat="server" id="EmailTextBox" /><br />
Photo: <asp:TextBox Text='<%# Bind("Photo") %>' runat="server" id="PhotoTextBox" /><br />
S_Email: <asp:TextBox Text='<%# Bind("S_Email") %>' runat="server" id="S_EmailTextBox" /><br />
id: <asp:Label Text='<%# Eval("id") %>' runat="server" id="idLabel1" /><br />
ListName: <asp:TextBox Text='<%# Bind("ListName") %>' runat="server" id="ListNameTextBox" /><br />
<asp:LinkButton runat="server" Text="Update" CommandName="Update" id="UpdateButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" id="UpdateCancelButton" CausesValidation="False" />
</EditItemTemplate>
<InsertItemTemplate>
R_Email: <asp:TextBox Text='<%# Bind("R_Email") %>' runat="server" id="R_EmailTextBox" /><br />
FullName: <asp:TextBox Text='<%# Bind("FullName") %>' runat="server" id="FullNameTextBox" /><br />
Email: <asp:TextBox Text='<%# Bind("Email") %>' runat="server" id="EmailTextBox" /><br />
Photo: <asp:TextBox Text='<%# Bind("Photo") %>' runat="server" id="PhotoTextBox" /><br />
S_Email: <asp:TextBox Text='<%# Bind("S_Email") %>' runat="server" id="S_EmailTextBox" /><br />
id: <asp:TextBox Text='<%# Bind("id") %>' runat="server" id="idTextBox" /><br />
ListName: <asp:TextBox Text='<%# Bind("ListName") %>' runat="server" id="ListNameTextBox" /><br />
<asp:LinkButton runat="server" Text="Insert" CommandName="Insert" id="InsertButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" id="InsertCancelButton" CausesValidation="False" />
</InsertItemTemplate>
<ItemTemplate>
<asp:Image style="POSITION: static" id="Image1" runat="server" __designer:wfdid="w77" BorderWidth="4px" BorderColor="OliveDrab" ImageUrl='<%# Eval("Photo") %>'></asp:Image><BR /><BR /><asp:Label id="FullNameLabel" runat="server" Font-Size="9pt" Text='<%# Bind("FullName") %>' __designer:wfdid="w78" Font-Bold="True"></asp:Label>
</ItemTemplate>
</asp:FormView></TD><TD vAlign=top align=left colSpan=2><asp:CheckBoxList style="POSITION: static" id="CheckBoxList1" runat="server" Width="365px" Height="12px" BackColor="Silver" __designer:wfdid="w69" AutoPostBack="True" OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged" RepeatColumns="3"></asp:CheckBoxList></TD></TR><TR><TD vAlign=top align=left colSpan=3></TD></TR></TBODY></TABLE><BR /></TD></TR><TR><TD colSpan=4></TD></TR><TR><TD colSpan=4><asp:DataList style="POSITION: static" id="DataList1" runat="server" Width="571px" __designer:wfdid="w35" OnSelectedIndexChanged="DataList1_SelectedIndexChanged1" DataSourceID="SqlDataSource2" RepeatColumns="5" DataKeyField="id"><ItemTemplate>
<TABLE style="POSITION: static" cellSpacing=2 cellPadding=2 border=0><TBODY><TR><TD style="WIDTH: 100px; HEIGHT: 80px" vAlign=top align=center><asp:ImageButton style="POSITION: static" id="ImageButton1" runat="server" Width="73px" Height="70px" BorderWidth="4px" __designer:wfdid="w22" BorderColor="White" ImageUrl='<%# Eval("Photo") %>' CommandName="Select"></asp:ImageButton></TD></TR><TR><TD style="WIDTH: 100px" vAlign=top align=center><asp:Label style="POSITION: static" id="FullNameLabel" runat="server" Font-Size="7pt" Text='<%# Eval("FullName") %>' __designer:wfdid="w23"></asp:Label></TD></TR></TBODY></TABLE>
</ItemTemplate>
</asp:DataList></TD></TR><TR><TD style="WIDTH: 100px"></TD><TD style="WIDTH: 100px"></TD><TD style="WIDTH: 100px"></TD><TD style="WIDTH: 100px"></TD></TR><TR><TD style="WIDTH: 100px"></TD><TD style="WIDTH: 100px"></TD><TD style="WIDTH: 100px"></TD><TD style="WIDTH: 100px"></TD></TR></TBODY></TABLE><BR /><BR /></asp:Panel></TD></TR><TR><TD colSpan=4></TD></TR></TBODY></TABLE>
</contenttemplate>
    </asp:UpdatePanel>
</asp:Content>

