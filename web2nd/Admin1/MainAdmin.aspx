<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MainAdmin.aspx.cs" Inherits="web2nd_Admin1_MainAdmin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <link href="../../Main1.css" rel="stylesheet" type="text/css" />
    
</head>
<body background="../../Background/a9.bmp">
    <form id="form1" runat="server">
    <div>
        <div style="text-align: left">
            <table border="1" cellpadding="0" cellspacing="2" style="width: 100%; position: static">
                <tr>
                    <td style="width: 63px">
                        <asp:Button ID="Button1" runat="server" BackColor="YellowGreen" BorderWidth="1px"
                            Font-Bold="True" Font-Size="9pt" Height="22px" Style="position: static" Text="Add Advertise"
                            Width="166px" OnClick="Button1_Click" /></td>
                    <td style="width: 100px">
                        <asp:Button ID="Button2" runat="server" BackColor="YellowGreen" BorderWidth="1px"
                            Font-Bold="True" Font-Size="9pt" Height="22px" Style="position: static" Text="Edit Advertise"
                            Width="160px" OnClick="Button2_Click" /></td>
                    <td colspan="3">
                        <asp:Label ID="Label1" runat="server" Style="position: static" Text="." Width="669px"></asp:Label></td>
                </tr>
                <tr>
                    <td colspan="5" style="height: 15px">
                        &nbsp;<asp:Panel ID="Panel2" runat="server" Height="50px" Style="position: static"
                            Width="125px">
                            <table bgcolor="whitesmoke" cellspacing="4" style="width: 100%; position: static">
                                <tr>
                                    <td style="width: 122px" valign="top">
                                        &nbsp;<asp:Label ID="Label15" runat="server" Style="position: static" Text="Advertisement Type"
                                            Width="118px"></asp:Label>
                                    </td>
                                    <td style="width: 28px" valign="top">
                                        <asp:DropDownList ID="DropDownList2" runat="server" Style="position: static" Width="130px" AutoPostBack="True" Font-Size="8pt" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                                            <asp:ListItem>B</asp:ListItem>
                                            <asp:ListItem>A</asp:ListItem>
                                        </asp:DropDownList></td>
                                    <td style="width: 100px" valign="top">
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                                            DeleteCommand="DELETE FROM [Advertise1] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Advertise1] ([Title], [Message], [Image1], [Link1], [Type], [Date1], [DateSt], [DateEn], [City], [State], [Country], [Note1]) VALUES (@Title, @Message, @Image1, @Link1, @Type, @Date1, @DateSt, @DateEn, @City, @State, @Country, @Note1)"
                                            SelectCommand="SELECT * FROM [Advertise1] WHERE ([Type] LIKE '%' + @Type + '%')" UpdateCommand="UPDATE [Advertise1] SET [Title] = @Title, [Message] = @Message, [Image1] = @Image1, [Link1] = @Link1, [Type] = @Type, [Date1] = @Date1, [DateSt] = @DateSt, [DateEn] = @DateEn, [City] = @City, [State] = @State, [Country] = @Country, [Note1] = @Note1 WHERE [ID] = @ID">
                                            <DeleteParameters>
                                                <asp:Parameter Name="ID" Type="Int32" />
                                            </DeleteParameters>
                                            <UpdateParameters>
                                                <asp:Parameter Name="Title" Type="String" />
                                                <asp:Parameter Name="Message" Type="String" />
                                                <asp:Parameter Name="Image1" Type="String" />
                                                <asp:Parameter Name="Link1" Type="String" />
                                                <asp:Parameter Name="Type" Type="String" />
                                                <asp:Parameter Name="Date1" Type="DateTime" />
                                                <asp:Parameter Name="DateSt" Type="DateTime" />
                                                <asp:Parameter Name="DateEn" Type="DateTime" />
                                                <asp:Parameter Name="City" Type="String" />
                                                <asp:Parameter Name="State" Type="String" />
                                                <asp:Parameter Name="Country" Type="String" />
                                                <asp:Parameter Name="Note1" Type="String" />
                                                <asp:Parameter Name="ID" Type="Int32" />
                                            </UpdateParameters>
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="DropDownList2" Name="Type" PropertyName="SelectedValue"
                                                    Type="String" />
                                            </SelectParameters>
                                            <InsertParameters>
                                                <asp:Parameter Name="Title" Type="String" />
                                                <asp:Parameter Name="Message" Type="String" />
                                                <asp:Parameter Name="Image1" Type="String" />
                                                <asp:Parameter Name="Link1" Type="String" />
                                                <asp:Parameter Name="Type" Type="String" />
                                                <asp:Parameter Name="Date1" Type="DateTime" />
                                                <asp:Parameter Name="DateSt" Type="DateTime" />
                                                <asp:Parameter Name="DateEn" Type="DateTime" />
                                                <asp:Parameter Name="City" Type="String" />
                                                <asp:Parameter Name="State" Type="String" />
                                                <asp:Parameter Name="Country" Type="String" />
                                                <asp:Parameter Name="Note1" Type="String" />
                                            </InsertParameters>
                                        </asp:SqlDataSource>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" valign="top" style="height: 318px">
                                        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False"
                                            BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px"
                                            CellPadding="4" DataKeyNames="ID" DataSourceID="SqlDataSource1" ForeColor="Black"
                                            GridLines="Horizontal" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"
                                            Style="position: static" Width="635px">
                                            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                            <Columns>
                                                <asp:CommandField ShowSelectButton="True" />
                                                <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                                                <asp:BoundField DataField="Message" HeaderText="Message" SortExpression="Message" />
                                                <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
                                                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                                                <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
                                            </Columns>
                                            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                                        </asp:GridView>
                                    </td>
                                    <td style="width: 100px; height: 318px;" valign="top">
                                        &nbsp;
                                        <asp:FormView ID="FormView1" runat="server" DataKeyNames="ID" DataSourceID="SqlDataSource1"
                                            Style="position: static" Width="212px">
                                            <EditItemTemplate>
                                                ID:
                                                <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>'></asp:Label><br />
                                                Title:
                                                <asp:TextBox ID="TitleTextBox" runat="server" Text='<%# Bind("Title") %>'>
                                                </asp:TextBox><br />
                                                Message:
                                                <asp:TextBox ID="MessageTextBox" runat="server" Text='<%# Bind("Message") %>'>
                                                </asp:TextBox><br />
                                                Image1:
                                                <asp:TextBox ID="Image1TextBox" runat="server" Text='<%# Bind("Image1") %>'>
                                                </asp:TextBox><br />
                                                Link1:
                                                <asp:TextBox ID="Link1TextBox" runat="server" Text='<%# Bind("Link1") %>'>
                                                </asp:TextBox><br />
                                                Type:
                                                <asp:TextBox ID="TypeTextBox" runat="server" Text='<%# Bind("Type") %>'>
                                                </asp:TextBox><br />
                                                Date1:
                                                <asp:TextBox ID="Date1TextBox" runat="server" Text='<%# Bind("Date1") %>'>
                                                </asp:TextBox><br />
                                                DateSt:
                                                <asp:TextBox ID="DateStTextBox" runat="server" Text='<%# Bind("DateSt") %>'>
                                                </asp:TextBox><br />
                                                DateEn:
                                                <asp:TextBox ID="DateEnTextBox" runat="server" Text='<%# Bind("DateEn") %>'>
                                                </asp:TextBox><br />
                                                City:
                                                <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>'>
                                                </asp:TextBox><br />
                                                State:
                                                <asp:TextBox ID="StateTextBox" runat="server" Text='<%# Bind("State") %>'>
                                                </asp:TextBox><br />
                                                Country:
                                                <asp:TextBox ID="CountryTextBox" runat="server" Text='<%# Bind("Country") %>'>
                                                </asp:TextBox><br />
                                                Note1:
                                                <asp:TextBox ID="Note1TextBox" runat="server" Text='<%# Bind("Note1") %>'>
                                                </asp:TextBox><br />
                                                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update"
                                                    Text="Update">
                                                </asp:LinkButton>
                                                <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
                                                    Text="Cancel">
                                                </asp:LinkButton>
                                            </EditItemTemplate>
                                            <InsertItemTemplate>
                                                Title:
                                                <asp:TextBox ID="TitleTextBox" runat="server" Text='<%# Bind("Title") %>'>
                                                </asp:TextBox><br />
                                                Message:
                                                <asp:TextBox ID="MessageTextBox" runat="server" Text='<%# Bind("Message") %>'>
                                                </asp:TextBox><br />
                                                Image1:
                                                <asp:TextBox ID="Image1TextBox" runat="server" Text='<%# Bind("Image1") %>'>
                                                </asp:TextBox><br />
                                                Link1:
                                                <asp:TextBox ID="Link1TextBox" runat="server" Text='<%# Bind("Link1") %>'>
                                                </asp:TextBox><br />
                                                Type:
                                                <asp:TextBox ID="TypeTextBox" runat="server" Text='<%# Bind("Type") %>'>
                                                </asp:TextBox><br />
                                                Date1:
                                                <asp:TextBox ID="Date1TextBox" runat="server" Text='<%# Bind("Date1") %>'>
                                                </asp:TextBox><br />
                                                DateSt:
                                                <asp:TextBox ID="DateStTextBox" runat="server" Text='<%# Bind("DateSt") %>'>
                                                </asp:TextBox><br />
                                                DateEn:
                                                <asp:TextBox ID="DateEnTextBox" runat="server" Text='<%# Bind("DateEn") %>'>
                                                </asp:TextBox><br />
                                                City:
                                                <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>'>
                                                </asp:TextBox><br />
                                                State:
                                                <asp:TextBox ID="StateTextBox" runat="server" Text='<%# Bind("State") %>'>
                                                </asp:TextBox><br />
                                                Country:
                                                <asp:TextBox ID="CountryTextBox" runat="server" Text='<%# Bind("Country") %>'>
                                                </asp:TextBox><br />
                                                Note1:
                                                <asp:TextBox ID="Note1TextBox" runat="server" Text='<%# Bind("Note1") %>'>
                                                </asp:TextBox><br />
                                                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert"
                                                    Text="Insert">
                                                </asp:LinkButton>
                                                <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
                                                    Text="Cancel">
                                                </asp:LinkButton>
                                            </InsertItemTemplate>
                                            <ItemTemplate>
                                                <br />
                                                <asp:ImageButton ID="ImageButton1" runat="server" Height="89px" ImageUrl='<%# Eval("Image1") %>'
                                                    Style="position: static" Width="132px" /><br />
                                                ID:
                                                <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>'></asp:Label><br />
                                                Title:
                                                <asp:Label ID="TitleLabel" runat="server" Text='<%# Bind("Title") %>'></asp:Label><br />
                                                Message:
                                                <asp:Label ID="MessageLabel" runat="server" Text='<%# Bind("Message") %>'></asp:Label><br />
                                                Image1:
                                                <asp:Label ID="Image1Label" runat="server" Text='<%# Bind("Image1") %>'></asp:Label><br />
                                                Link1:
                                                <asp:Label ID="Link1Label" runat="server" Text='<%# Bind("Link1") %>'></asp:Label><br />
                                                Type:
                                                <asp:Label ID="TypeLabel" runat="server" Text='<%# Bind("Type") %>'></asp:Label><br />
                                                Date1:
                                                <asp:Label ID="Date1Label" runat="server" Text='<%# Bind("Date1") %>'></asp:Label><br />
                                                DateSt:
                                                <asp:Label ID="DateStLabel" runat="server" Text='<%# Bind("DateSt") %>'></asp:Label><br />
                                                DateEn:
                                                <asp:Label ID="DateEnLabel" runat="server" Text='<%# Bind("DateEn") %>'></asp:Label><br />
                                                City:
                                                <asp:Label ID="CityLabel" runat="server" Text='<%# Bind("City") %>'></asp:Label><br />
                                                State:
                                                <asp:Label ID="StateLabel" runat="server" Text='<%# Bind("State") %>'></asp:Label><br />
                                                Country:
                                                <asp:Label ID="CountryLabel" runat="server" Text='<%# Bind("Country") %>'></asp:Label><br />
                                                Note1:
                                                <asp:Label ID="Note1Label" runat="server" Text='<%# Bind("Note1") %>'></asp:Label><br />
                                                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit"
                                                    Text="Edit"></asp:LinkButton>
                                                <asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete"
                                                    Text="Delete"></asp:LinkButton>
                                                <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New"
                                                    Text="New"></asp:LinkButton>
                                            </ItemTemplate>
                                        </asp:FormView>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" valign="top">
                                    </td>
                                    <td style="width: 100px" valign="top">
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
                    </td>
                </tr>
                <tr>
                    <td colspan="5">
                        <asp:Panel ID="Panel1" runat="server" Height="50px" Style="position: static" Width="125px">
                        <table border="0" cellspacing="4" style="width: 538px; position: static" bgcolor="whitesmoke">
                            <tr>
                                <td style="width: 100px; height: 32px;" valign="top">
                                </td>
                                <td style="width: 114px; height: 32px;" valign="top">
                                    <asp:Label ID="Label14" runat="server" ForeColor="Red" Style="position: static" Text="."></asp:Label></td>
                                <td style="width: 100px; height: 32px;" valign="top">
                                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Style="position: static"
                                        Text="Save Addvertise" Width="161px" /></td>
                            </tr>
                            <tr>
                                <td style="width: 100px; height: 8px;" valign="top">
                                    <asp:Label ID="Label2" runat="server" Style="position: static" Text="Image File"></asp:Label></td>
                                <td colspan="2" valign="top" style="height: 8px">
                                    <asp:FileUpload ID="FileUpload1" runat="server" Style="position: static" Width="391px" /></td>
                            </tr>
                            <tr>
                                <td style="width: 100px" valign="top">
                                    <asp:Label ID="Label3" runat="server" Style="position: static" Text="Title" Width="45px"></asp:Label></td>
                                <td colspan="2" valign="top">
                                    <asp:TextBox ID="TextBox1" runat="server" Style="position: static" Width="301px"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td style="width: 100px" valign="top">
                                    <asp:Label ID="Label4" runat="server" Style="position: static" Text="Description"></asp:Label></td>
                                <td colspan="2" valign="top">
                                    <asp:TextBox ID="TextBox2" runat="server" Height="50px" Style="position: static"
                                        TextMode="MultiLine" Width="302px"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td style="width: 100px" valign="top">
                                    <asp:Label ID="Label5" runat="server" Style="position: static" Text="Link :"></asp:Label></td>
                                <td colspan="2" valign="top">
                                    <asp:TextBox ID="TextBox3" runat="server" Style="position: static" Width="382px">http://</asp:TextBox></td>
                            </tr>
                            <tr>
                                <td style="width: 100px; height: 15px;" valign="top">
                                    <asp:Label ID="Label6" runat="server" Style="position: static" Text="Type :"></asp:Label></td>
                                <td style="width: 114px; height: 15px;" valign="top">
                                    <asp:DropDownList ID="DropDownList1" runat="server" Style="position: static" Width="61px">
                                        <asp:ListItem>A1</asp:ListItem>
                                        <asp:ListItem>A2</asp:ListItem>
                                        <asp:ListItem>B1</asp:ListItem>
                                        <asp:ListItem>B2</asp:ListItem>
                                        <asp:ListItem>B3</asp:ListItem>
                                    </asp:DropDownList></td>
                                <td style="width: 100px; height: 15px;" valign="top">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px" valign="top">
                                    <asp:Label ID="Label7" runat="server" Style="position: static" Text="City :"></asp:Label></td>
                                <td style="width: 114px" valign="top">
                                    <asp:TextBox ID="TextBox4" runat="server" Style="position: static" Width="166px"></asp:TextBox></td>
                                <td style="width: 100px" valign="top">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px" valign="top">
                                    <asp:Label ID="Label8" runat="server" Style="position: static" Text="Country"></asp:Label></td>
                                <td style="width: 114px" valign="top">
                                    <asp:TextBox ID="TextBox5" runat="server" Style="position: static" Width="166px"></asp:TextBox></td>
                                <td style="width: 100px" valign="top">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px" valign="top">
                                    <asp:Label ID="Label9" runat="server" Style="position: static" Text="Starting Date"
                                        Width="88px"></asp:Label></td>
                                <td style="width: 114px" valign="top">
                                    <asp:Label ID="Label11" runat="server" Style="position: static" Text="." Width="278px"></asp:Label></td>
                                <td style="width: 100px" valign="top">
                                    <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged"
                                        Style="position: static"></asp:Calendar>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px" valign="top">
                                    <asp:Label ID="Label10" runat="server" Style="position: static" Text="Ending Date"></asp:Label></td>
                                <td style="width: 114px" valign="top">
                                    <asp:Label ID="Label12" runat="server" Style="position: static" Text="." Width="279px"></asp:Label></td>
                                <td style="width: 100px" valign="top">
                                    <asp:Calendar ID="Calendar2" runat="server" OnSelectionChanged="Calendar2_SelectionChanged"
                                        Style="position: static"></asp:Calendar>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px" valign="top">
                                    <asp:Label ID="Label13" runat="server" Style="position: static" Text="Notes"></asp:Label></td>
                                <td colspan="2" valign="top">
                                    <asp:TextBox ID="TextBox6" runat="server" Height="60px" Style="position: static"
                                        TextMode="MultiLine" Width="323px"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td style="width: 100px" valign="top">
                                </td>
                                <td style="width: 114px" valign="top">
                                </td>
                                <td style="width: 100px" valign="top">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px" valign="top">
                                </td>
                                <td style="width: 114px" valign="top">
                                </td>
                                <td style="width: 100px" valign="top">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px" valign="top">
                                </td>
                                <td style="width: 114px" valign="top">
                                </td>
                                <td style="width: 100px" valign="top">
                                </td>
                            </tr>
                        </table>
                        </asp:Panel>
                    </td>
                </tr>
                <tr>
                    <td colspan="5">
                    </td>
                </tr>
                <tr>
                    <td style="width: 63px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                </tr>
            </table>
        </div>
    
    </div>
    </form>
</body>
</html>
