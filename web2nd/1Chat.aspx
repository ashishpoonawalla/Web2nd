<%@ Page Language="C#" AutoEventWireup="true" CodeFile="1Chat.aspx.cs" Inherits="web2nd_1Chat" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Chat Page</title>
    <link href="../MainStyle.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript">
<!--

function TABLE1_onclick() {

}

// -->
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table border="1" cellspacing="0" style="width: 100%; position: static; height: 100%" id="TABLE1" language="javascript" onclick="return TABLE1_onclick()">
            <caption>
                <table bgcolor="olivedrab" cellpadding="0" cellspacing="0" style="width: 100%; position: static">
                    <tr>
                        <td style="width: 130px; height: 16px;" align="center" valign="top">
                            <table border="0" cellspacing="2" style="width: 331px; position: static" height="20">
                                <tr>
                                    <td rowspan="2" style="width: 100px; height: 16px;" align="center">
                            <asp:Label ID="Label1" runat="server" BackColor="YellowGreen" BorderStyle="Solid"
                                BorderWidth="0px" Font-Bold="True" Font-Size="10pt" Height="17px" Style="position: static"
                                Text="Web2nd - Chat your friends" Width="221px"></asp:Label></td>
                                    <td align="center" colspan="3" rowspan="2" style="height: 16px">
                                        <asp:FormView ID="FormView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource3"
                                            Height="45px" Style="position: static">
                                            <EditItemTemplate>
                                                Id:
                                                <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>'></asp:Label><br />
                                                Password:
                                                <asp:TextBox ID="PasswordTextBox" runat="server" Text='<%# Bind("Password") %>'>
                                                </asp:TextBox><br />
                                                First_nm:
                                                <asp:TextBox ID="First_nmTextBox" runat="server" Text='<%# Bind("First_nm") %>'>
                                                </asp:TextBox><br />
                                                Last_nm:
                                                <asp:TextBox ID="Last_nmTextBox" runat="server" Text='<%# Bind("Last_nm") %>'>
                                                </asp:TextBox><br />
                                                Email:
                                                <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>'>
                                                </asp:TextBox><br />
                                                Gender:
                                                <asp:TextBox ID="GenderTextBox" runat="server" Text='<%# Bind("Gender") %>'>
                                                </asp:TextBox><br />
                                                FullName:
                                                <asp:TextBox ID="FullNameTextBox" runat="server" Text='<%# Bind("FullName") %>'>
                                                </asp:TextBox><br />
                                                Mobile:
                                                <asp:TextBox ID="MobileTextBox" runat="server" Text='<%# Bind("Mobile") %>'>
                                                </asp:TextBox><br />
                                                Day1:
                                                <asp:TextBox ID="Day1TextBox" runat="server" Text='<%# Bind("Day1") %>'>
                                                </asp:TextBox><br />
                                                Month1:
                                                <asp:TextBox ID="Month1TextBox" runat="server" Text='<%# Bind("Month1") %>'>
                                                </asp:TextBox><br />
                                                Year1:
                                                <asp:TextBox ID="Year1TextBox" runat="server" Text='<%# Bind("Year1") %>'>
                                                </asp:TextBox><br />
                                                DOB:
                                                <asp:TextBox ID="DOBTextBox" runat="server" Text='<%# Bind("DOB") %>'>
                                                </asp:TextBox><br />
                                                Photo:
                                                <asp:TextBox ID="PhotoTextBox" runat="server" Text='<%# Bind("Photo") %>'>
                                                </asp:TextBox><br />
                                                City:
                                                <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>'>
                                                </asp:TextBox><br />
                                                Country:
                                                <asp:TextBox ID="CountryTextBox" runat="server" Text='<%# Bind("Country") %>'>
                                                </asp:TextBox><br />
                                                PhotoX:
                                                <asp:TextBox ID="PhotoXTextBox" runat="server" Text='<%# Bind("PhotoX") %>'>
                                                </asp:TextBox><br />
                                                PhotoY:
                                                <asp:TextBox ID="PhotoYTextBox" runat="server" Text='<%# Bind("PhotoY") %>'>
                                                </asp:TextBox><br />
                                                DateTime1:
                                                <asp:TextBox ID="DateTime1TextBox" runat="server" Text='<%# Bind("DateTime1") %>'>
                                                </asp:TextBox><br />
                                                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update"
                                                    Text="Update">
                                                </asp:LinkButton>
                                                <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
                                                    Text="Cancel">
                                                </asp:LinkButton>
                                            </EditItemTemplate>
                                            <InsertItemTemplate>
                                                Password:
                                                <asp:TextBox ID="PasswordTextBox" runat="server" Text='<%# Bind("Password") %>'>
                                                </asp:TextBox><br />
                                                First_nm:
                                                <asp:TextBox ID="First_nmTextBox" runat="server" Text='<%# Bind("First_nm") %>'>
                                                </asp:TextBox><br />
                                                Last_nm:
                                                <asp:TextBox ID="Last_nmTextBox" runat="server" Text='<%# Bind("Last_nm") %>'>
                                                </asp:TextBox><br />
                                                Email:
                                                <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>'>
                                                </asp:TextBox><br />
                                                Gender:
                                                <asp:TextBox ID="GenderTextBox" runat="server" Text='<%# Bind("Gender") %>'>
                                                </asp:TextBox><br />
                                                FullName:
                                                <asp:TextBox ID="FullNameTextBox" runat="server" Text='<%# Bind("FullName") %>'>
                                                </asp:TextBox><br />
                                                Mobile:
                                                <asp:TextBox ID="MobileTextBox" runat="server" Text='<%# Bind("Mobile") %>'>
                                                </asp:TextBox><br />
                                                Day1:
                                                <asp:TextBox ID="Day1TextBox" runat="server" Text='<%# Bind("Day1") %>'>
                                                </asp:TextBox><br />
                                                Month1:
                                                <asp:TextBox ID="Month1TextBox" runat="server" Text='<%# Bind("Month1") %>'>
                                                </asp:TextBox><br />
                                                Year1:
                                                <asp:TextBox ID="Year1TextBox" runat="server" Text='<%# Bind("Year1") %>'>
                                                </asp:TextBox><br />
                                                DOB:
                                                <asp:TextBox ID="DOBTextBox" runat="server" Text='<%# Bind("DOB") %>'>
                                                </asp:TextBox><br />
                                                Photo:
                                                <asp:TextBox ID="PhotoTextBox" runat="server" Text='<%# Bind("Photo") %>'>
                                                </asp:TextBox><br />
                                                City:
                                                <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>'>
                                                </asp:TextBox><br />
                                                Country:
                                                <asp:TextBox ID="CountryTextBox" runat="server" Text='<%# Bind("Country") %>'>
                                                </asp:TextBox><br />
                                                PhotoX:
                                                <asp:TextBox ID="PhotoXTextBox" runat="server" Text='<%# Bind("PhotoX") %>'>
                                                </asp:TextBox><br />
                                                PhotoY:
                                                <asp:TextBox ID="PhotoYTextBox" runat="server" Text='<%# Bind("PhotoY") %>'>
                                                </asp:TextBox><br />
                                                DateTime1:
                                                <asp:TextBox ID="DateTime1TextBox" runat="server" Text='<%# Bind("DateTime1") %>'>
                                                </asp:TextBox><br />
                                                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert"
                                                    Text="Insert">
                                                </asp:LinkButton>
                                                <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
                                                    Text="Cancel">
                                                </asp:LinkButton>
                                            </InsertItemTemplate>
                                            <ItemTemplate>
                                                <table border="0" cellpadding="0" cellspacing="3" style="position: static">
                                                    <tr>
                                                        <td rowspan="2" style="width: 35px">
                                                            <asp:Image ID="Image1" runat="server" BorderColor="LightGray" BorderStyle="Solid"
                                                                BorderWidth="2px" Height="30px" ImageUrl='<%# Eval("Photo") %>' Style="position: static"
                                                                Width="30px" /></td>
                                                        <td rowspan="2" style="width: 100px">
                                                            <asp:Label ID="Label3" runat="server" BackColor="YellowGreen" BorderStyle="Solid"
                                                                BorderWidth="0px" Font-Bold="True" Font-Size="10pt" ForeColor="Black" Style="position: static"
                                                                Text='<%# Eval("FullName") %>' Width="231px"></asp:Label></td>
                                                    </tr>
                                                    <tr>
                                                    </tr>
                                                </table>
                                            </ItemTemplate>
                                        </asp:FormView>
                                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                                            SelectCommand="SELECT * FROM [Login] WHERE ([Email] = @Email)">
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="Label2" Name="Email" PropertyName="Text" Type="String" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                    </td>
                                </tr>
                                <tr>
                                </tr>
                            </table>
                        </td>
                        <td colspan="2" valign="middle" style="height: 16px; width: 197px;" align="center">
                            <asp:Menu ID="Menu1" runat="server" BackColor="YellowGreen" Height="25px" Orientation="Horizontal"
                                Style="position: static" Width="88px" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="9pt" ForeColor="White" StaticSubMenuIndent="10px" Font-Bold="True">
                                <Items>
                                    <asp:MenuItem Text="Options" Value="Options">
                                        <asp:MenuItem Text="Go Offline" Value="Go Offline"></asp:MenuItem>
                                        <asp:MenuItem Text="Re-order List" Value="Re-order List"></asp:MenuItem>
                                        <asp:MenuItem Text="-------------" Value="-"></asp:MenuItem>
                                        <asp:MenuItem Text="Show Feed story in chat" Value="Show Feed story in chat"></asp:MenuItem>
                                        <asp:MenuItem Text="Play sound on new message" Value="Play sound on new message"></asp:MenuItem>
                                        <asp:MenuItem Text="Show only name in message" Value="Show only name in message"></asp:MenuItem>
                                    </asp:MenuItem>
                                </Items>
                                <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                                <DynamicHoverStyle BackColor="#284E98" ForeColor="White" />
                                <DynamicMenuStyle BackColor="#B5C7DE" />
                                <StaticSelectedStyle BackColor="#507CD1" />
                                <DynamicSelectedStyle BackColor="#507CD1" />
                                <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                                <StaticHoverStyle BackColor="#284E98" ForeColor="White" />
                            </asp:Menu>
                        </td>
                    </tr>
                </table>
            </caption>
            <tr>
                <td style="width: 335px" valign="top">
                    &nbsp;&nbsp;
                    <div style="text-align: left">
                        <table style="position: static">
                            <tr>
                                <td style="width: 100px">
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <asp:Timer ID="Timer1" runat="server" Interval="8000" OnTick="Timer1_Tick">
                            </asp:Timer>
                        <asp:Label ID="Label5" runat="server" Style="position: static" Text="Label" Font-Bold="True" Font-Italic="True" Width="466px"></asp:Label><br />
                            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>"
                                SelectCommand="SELECT * FROM [ChatTable] WHERE (([S_Email] = @S_Email) AND ([R_Email] = @R_Email)) ORDER BY [datetime1] DESC">
                                <SelectParameters>
                                    <asp:SessionParameter Name="S_Email" SessionField="UserMail" Type="String" />
                                    <asp:SessionParameter Name="R_Email" SessionField="ChatMail" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                            <br />
                            <asp:Panel ID="Panel1" runat="server" Height="300px" ScrollBars="Vertical" Style="position: static"
                                Width="125px">
                                <asp:DataList ID="DataList3" runat="server" DataKeyField="id" DataSourceID="SqlDataSource4"
                                    GridLines="Horizontal" RepeatLayout="Flow" Style="position: static" Width="476px">
                                    <ItemTemplate>
                                        id:
                                        <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>'></asp:Label>
                                        &nbsp; S_Email:
                                        <asp:Label ID="S_EmailLabel" runat="server" Text='<%# Eval("S_Email") %>'></asp:Label>&nbsp;
                                        R_Email:
                                        <asp:Label ID="R_EmailLabel" runat="server" Text='<%# Eval("R_Email") %>'></asp:Label><br />
                                        Message1:
                                        <asp:Label ID="Message1Label" runat="server" Text='<%# Eval("Message1") %>'></asp:Label><br />
                                        Time1:
                                        <asp:Label ID="Time1Label" runat="server" Text='<%# Eval("Time1") %>'></asp:Label>datetime1:
                                        <asp:Label ID="datetime1Label" runat="server" Text='<%# Eval("datetime1") %>'></asp:Label>
                                    </ItemTemplate>
                                    <ItemStyle VerticalAlign="Bottom" />
                                </asp:DataList>
                                <asp:TextBox ID="TextBox1" runat="server" Style="position: static"></asp:TextBox></asp:Panel>
                            <br />
                            <br />
                        </ContentTemplate>
                    </asp:UpdatePanel>
                                    <asp:Label ID="Label6" runat="server" Style="position: static" Text="Label"></asp:Label></td>
                            </tr>
                            <tr>
                                <td style="width: 100px">
                                    <table border="0" cellpadding="0" cellspacing="0" style="position: static">
                                        <tr>
                                            <td style="width: 100px; height: 41px;" valign="top">
                                                <asp:Image ID="Image3" runat="server" ImageUrl="~/web2nd/image/ToolChat1.bmp" Style="position: static" /></td>
                                            <td style="width: 100px; height: 41px;" valign="middle">
                    <asp:TextBox ID="TextBox2" runat="server" Style="position: static"
                        Width="426px" Height="33px" OnTextChanged="TextBox2_TextChanged" OnPreRender="TextBox2_PreRender" AutoPostBack="True"></asp:TextBox></td>
                                            <td style="width: 100px; height: 41px;" valign="middle">
                                                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/web2nd/image/B_T_Share with Friends.bmp"
                                                    OnClick="ImageButton1_Click1" Style="position: static" /></td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </div>
                </td>
                <td style="width: 100px" valign="top">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                        SelectCommand="SELECT * FROM [FList] WHERE (([S_Email] = @S_Email) AND ([R_Email] <> @R_Email))">
                        <SelectParameters>
                            <asp:SessionParameter Name="S_Email" SessionField="UserMail" Type="String" />
                            <asp:SessionParameter Name="R_Email" SessionField="UserMail" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:Label ID="Label2" runat="server" Style="position: static" Text="." Width="175px" Font-Bold="True" Font-Size="10pt"></asp:Label>
                    <asp:DataList ID="DataList1" runat="server" DataKeyField="id" DataSourceID="SqlDataSource1"
                        Style="position: static" Width="150px" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Style="position: static" Text='<%# Eval("R_Email") %>'
                                Visible="False" Width="131px"></asp:Label>&nbsp;
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                                SelectCommand="SELECT [Email], [FullName], [Photo] FROM [Login] WHERE ([Email] = @Email)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="Label4" Name="Email" PropertyName="Text" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                            &nbsp;&nbsp;
                            <div style="text-align: left">
                                <table border="0" cellpadding="0" cellspacing="0" style="position: static">
                                    <tr>
                                        <td style="width: 14px">
                            <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource2" Style="position: static"
                                Width="34px" OnSelectedIndexChanged="DataList2_SelectedIndexChanged">
                                <ItemTemplate>
                                    <asp:Image ID="Image2" runat="server" BorderColor="DarkOliveGreen" BorderStyle="Solid"
                                        BorderWidth="1px" Height="30px" ImageUrl='<%# Eval("Photo") %>' Style="position: static"
                                        Width="30px" />
                                </ItemTemplate>
                            </asp:DataList></td>
                                        <td style="width: 100px">
                        <asp:Button ID="Button1" runat="server" BackColor="YellowGreen" BorderColor="DarkOliveGreen"
                                                    BorderStyle="Solid" BorderWidth="1px" Font-Size="10pt" Height="30px" Style="position: static"
                                                    Text='<%# Eval("R_FullName") %>' Width="130px" CommandName="Select" OnClick="Button1_Click" /></td>
                                    </tr>
                                </table>
                            </div>
                        </ItemTemplate>
                    </asp:DataList></td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
