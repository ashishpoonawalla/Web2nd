<%@ Page Language="C#" MasterPageFile="~/web2nd/main.master" AutoEventWireup="true" CodeFile="2InviteFriends.aspx.cs" Inherits="web2nd_SearchResult" Title="Untitled Page" %>
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

    <table border="0" cellpadding="0" cellspacing="4" style="width: 100%; position: static">
        <tr>
            <td style="width: 100px; height: 11px">
                <asp:Button ID="Button5" runat="server" Height="22px" OnClick="Button5_Click" Style="position: static"
                    Text="Send E-Mail for Join Web2nd" Width="173px" BackColor="Silver" BorderWidth="0px" /></td>
            <td colspan="4" style="height: 11px">
                <table border="0" cellpadding="0" cellspacing="0" style="position: static">
                    <tr>
                        <td style="width: 100px">
                <asp:TextBox ID="TextBox1" runat="server" Style="position: static" Width="276px"></asp:TextBox></td>
                        <td style="width: 100px">
                <asp:Button ID="Button3" runat="server" Height="22px" OnClick="Button3_Click" Style="position: static"
                    Text="Find Friends" Width="95px" BackColor="Silver" BorderWidth="0px" /></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Button ID="Button4" runat="server" Height="22px" OnClick="Button4_Click" Style="position: static"
                    Text="Send SMS to Friends" Width="172px" BackColor="Silver" BorderWidth="0px" /></td>
            <td colspan="4">
                <asp:DropDownList ID="DropDownList1" runat="server" Style="position: static" Visible="False"
                    Width="231px">
                    <asp:ListItem>Find Friends by Name</asp:ListItem>
                    <asp:ListItem>Find Friends by E-Mail ID</asp:ListItem>
                    <asp:ListItem>Find Friends by City</asp:ListItem>
                    <asp:ListItem>Find Friends by Mobile</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td colspan="5" style="height: 13px">
            </td>
        </tr>
        <tr>
            <td colspan="5" style="height: 13px">
                &nbsp;<asp:Panel ID="Panel2" runat="server" Height="50px" Style="position: static"
                    Visible="False" Width="450px">
                    <table border="0" cellpadding="0" cellspacing="2" style="width: 113%; position: static">
                        <tr>
                            <td style="width: 65px" valign="top">
                                <asp:Label ID="Label4" runat="server" Style="position: static" Text="To Mail:"></asp:Label></td>
                            <td style="width: 100px" valign="top">
                                <asp:TextBox ID="TextBox2" runat="server" Style="position: static"></asp:TextBox></td>
                            <td style="width: 100px" valign="top">
                                <asp:Button ID="Button2" runat="server" Style="position: static" Text="Send Mail"
                                    Width="97px" BackColor="Silver" BorderWidth="0px" /></td>
                        </tr>
                        <tr>
                            <td style="width: 65px" valign="top">
                                <asp:Label ID="Label5" runat="server" Style="position: static" Text="From:"></asp:Label></td>
                            <td style="width: 100px" valign="top">
                                <asp:TextBox ID="TextBox3" runat="server" Style="position: static"></asp:TextBox></td>
                            <td style="width: 100px" valign="top">
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 65px" valign="top">
                            </td>
                            <td style="width: 100px" valign="top">
                            </td>
                            <td style="width: 100px" valign="top">
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 65px" valign="top">
                                <asp:Label ID="Label6" runat="server" Style="position: static" Text="Subject:"></asp:Label></td>
                            <td style="width: 100px" valign="top">
                                <asp:TextBox ID="TextBox4" runat="server" Style="position: static" Width="298px"></asp:TextBox></td>
                            <td style="width: 100px" valign="top">
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 65px" valign="top">
                                <asp:Label ID="Label7" runat="server" Style="position: static" Text="Message:"></asp:Label></td>
                            <td colspan="2" valign="top">
                                <asp:TextBox ID="TextBox5" runat="server" Height="117px" Style="position: static"
                                    TextMode="MultiLine" Width="486px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="width: 65px" valign="top">
                            </td>
                            <td style="width: 100px" valign="top">
                            </td>
                            <td style="width: 100px" valign="top">
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td colspan="5" style="height: 13px">
                <asp:Panel ID="Panel3" runat="server" Height="50px" Style="position: static" Visible="False"
                    Width="125px">
                    <table border="0" cellpadding="0" cellspacing="2" style="position: static" width="510">
                        <tr>
                            <td style="width: 100px">
                                <asp:Label ID="Label8" runat="server" Style="position: static" Text="Mobile No:"></asp:Label></td>
                            <td style="width: 83px">
                                <asp:TextBox ID="TextBox6" runat="server" Style="position: static" Width="226px"></asp:TextBox></td>
                            <td style="width: 100px">
                                <asp:Button ID="Button6" runat="server" Style="position: static" Text="Send SMS"
                                    Width="83px" BackColor="Silver" BorderWidth="0px" CausesValidation="False" /></td>
                        </tr>
                        <tr>
                            <td style="width: 100px; height: 1px;">
                            </td>
                            <td style="width: 83px; height: 1px;">
                            </td>
                            <td style="width: 100px; height: 1px;">
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 100px">
                                <asp:Label ID="Label9" runat="server" Style="position: static" Text="Message:"></asp:Label></td>
                            <td colspan="2">
                                <asp:TextBox ID="TextBox7" runat="server" Height="40px" Style="position: static"
                                    TextMode="MultiLine" Width="486px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="width: 100px">
                            </td>
                            <td style="width: 83px">
                            </td>
                            <td style="width: 100px">
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td colspan="5" style="height: 13px">
                <asp:Panel ID="Panel1" runat="server" Height="50px" Style="position: static" Width="125px">
                    <table cellspacing="2" style="position: static">
                        <tr>
                            <td style="width: 100px">
                                &nbsp;<asp:Label ID="Label1" runat="server" Style="position: static" Text="Label"></asp:Label><asp:Label
        ID="Label2" runat="server" Style="position: static" Text="Label"></asp:Label><asp:SqlDataSource
        ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
        SelectCommand="SELECT * FROM [Login] WHERE ([FullName] LIKE '%' + @FullName + '%')" OnSelecting="SqlDataSource1_Selecting">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="FullName" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DataList ID="DataList1" runat="server" CellPadding="4" DataKeyField="Id" DataSourceID="SqlDataSource1"
        ForeColor="#333333" Style="position: static" Width="542px" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <ItemTemplate>
            <div style="text-align: center">
                <table align="left" style="width: 100%; position: static">
                    <tr>
                        <td colspan="2" rowspan="4">
                            <asp:Image ID="Image1" runat="server" Height="59px" ImageUrl='<%# Eval("Photo") %>'
                                Style="position: static" Width="66px" /></td>
                        <td align="left" colspan="3" rowspan="2">
                            <asp:Label ID="FullNameLabel" runat="server" ForeColor="#0000CC" Style="position: static"
                                Text='<%# Eval("FullName") %>' Width="300px" Font-Size="9pt"></asp:Label><asp:Label ID="EmailLabel" runat="server" Style="position: static" Text='<%# Eval("Email") %>' Visible="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                    </tr>
                    <tr>
                        <td align="left" style="width: 100px">
                            &nbsp;<asp:Label ID="GenderLabel" runat="server" Style="position: static" Text='<%# Eval("Gender") %>'></asp:Label></td><td align="left" style="width: 100px">
                            &nbsp;<asp:Label ID="CityLabel" runat="server" Style="position: static" Text='<%# Eval("City") %>'></asp:Label></td>
                        <td align="left" style="width: 100px">
                            &nbsp;<asp:Label ID="CountryLabel" runat="server" Style="position: static" Text='<%# Eval("Country") %>'></asp:Label></td>
                    </tr>
                    <tr>
                        <td align="left" style="width: 100px">
                            &nbsp;
                        </td>
                        <td align="left" style="width: 100px">
                            &nbsp;
                        </td>
                        <td align="left" style="width: 100px">
                            &nbsp;
                            <asp:Button ID="Button1" runat="server" Style="position: static" Text="Send Request"
                                Width="110px" CommandName="Select" OnClick="Button1_Click" OnCommand="Select" BackColor="Silver" BorderWidth="0px" /></td>
                    </tr>
                </table>
            </div>
            <span style="color: lightgrey">--------</span>
        </ItemTemplate>
        <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
        <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    </asp:DataList></td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td colspan="5" style="height: 13px">
                <div style="width: 330px; position: static; height: 80px">
                    <asp:Panel ID="timer" runat="server" BackColor="White" BorderColor="Gray" BorderStyle="None"
                        BorderWidth="0px" ForeColor="#404040" Style="z-index: 1" Width="320px">
                        <asp:Panel ID="Panel9" runat="server" BackColor="WhiteSmoke" BorderColor="LightSteelBlue"
                            BorderWidth="5px" Height="76px" Style="position: static" Width="479px">
                            <table border="0" cellpadding="0" cellspacing="4" style="width: 100%; position: static">
                                <tr>
                                    <td style="width: 100px">
                                        <asp:Label ID="Label14" runat="server" Font-Bold="True" Style="position: static"
                                            Text="Message" Width="353px"></asp:Label></td>
                                    <td align="right" style="width: 100px">
                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; </td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                        <asp:TextBox ID="TextBox8" runat="server" MaxLength="100" Style="position: static"
                                            Width="395px" BackColor="WhiteSmoke" BorderWidth="0px" Font-Bold="True" ForeColor="#0000C0">Your Request of Friendship sent....</asp:TextBox></td>
                                    <td align="right" style="width: 100px">
                                        <asp:Button ID="Button14" runat="server" BackColor="#404040" BorderWidth="1px" Font-Bold="True"
                                            ForeColor="White" OnClick="Button14_Click2" Style="position: static" Text="x"
                                            Width="56px" /></td>
                                </tr>
                            </table>
                        </asp:Panel>
                    </asp:Panel>
                    <ajaxtoolkit:alwaysvisiblecontrolextender id="avce" runat="server" horizontaloffset="5"
                        horizontalside="Center" scrolleffectduration=".01" targetcontrolid="timer" verticaloffset="0"
                        verticalside="Middle">
                        </ajaxtoolkit:alwaysvisiblecontrolextender>
                </div>
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
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
    </table></contenttemplate>
    </asp:UpdatePanel>
    <br />
</asp:Content>

