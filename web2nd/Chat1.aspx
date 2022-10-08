<%@ Page Language="C#" MasterPageFile="~/web2nd/mainNoMenu.master" AutoEventWireup="true" CodeFile="Chat1.aspx.cs" Inherits="web2nd_Chat1" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: left">
        <table border="0" cellspacing="5" style="width: 687px; position: static">
            <tr>
                <td rowspan="1" style="width: 100px; background-color: lightgrey;" valign="top">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="9pt" Style="position: static"
                        Text="Chat Page" Width="261px"></asp:Label></td>
                <td rowspan="1" style="width: 143px; background-color: lightgrey;" valign="top">
                                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="9pt" ForeColor="Black"
                                        Style="position: static" Width="511px">.</asp:Label></td>
            </tr>
            <tr>
                <td rowspan="3" style="width: 100px" valign="top">
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
<asp:SqlDataSource id="SqlDataSource1" runat="server" SelectCommand="SELECT Login.Email, Login.City, Login.LoginTime1, FList.S_Email, FList.R_Email, Login.First_nm, Login.Photo, Login.Id FROM Login INNER JOIN FList ON Login.Email = FList.R_Email WHERE (FList.S_Email = @S_Email) AND (FList.R_Email <> @S_Email) AND (Login.LoginTime1 > @L8) ORDER BY Login.First_nm&#13;&#10;&#13;&#10;&#13;&#10;&#13;&#10;" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"><SelectParameters>
<asp:SessionParameter SessionField="UserMail" Name="S_Email"></asp:SessionParameter>
<asp:SessionParameter SessionField="Date3" Name="L8"></asp:SessionParameter>
</SelectParameters>
</asp:SqlDataSource> <asp:SqlDataSource id="SqlDataSource2" runat="server" SelectCommand="SELECT Login.Email, Login.City, Login.LoginTime1, FList.S_Email, FList.R_Email, Login.First_nm, Login.Photo, Login.Id FROM Login INNER JOIN FList ON Login.Email = FList.R_Email WHERE (FList.S_Email = @S_Email) AND (FList.R_Email <> @S_Email) AND (Login.LoginTime1 < @L8) ORDER BY Login.First_nm" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" __designer:wfdid="w3"><SelectParameters>
<asp:SessionParameter SessionField="UserMail" Name="S_Email"></asp:SessionParameter>
<asp:SessionParameter SessionField="Date3" Name="L8"></asp:SessionParameter>
</SelectParameters>
</asp:SqlDataSource>&nbsp; <asp:Label style="POSITION: static" id="Label9" runat="server" Width="222px" Text="Label" Visible="False"></asp:Label><asp:Panel style="POSITION: static" id="Panel1" runat="server" Width="250px" Height="550px" ScrollBars="Vertical"><asp:DataList style="POSITION: static" id="DataList1" runat="server" Width="227px" OnSelectedIndexChanged="DataList1_SelectedIndexChanged1" DataSourceID="SqlDataSource1" DataKeyField="Id"><ItemTemplate>
<DIV style="TEXT-ALIGN: left"><TABLE style="WIDTH: 202px; POSITION: static" cellSpacing=2 cellPadding=0 border=0><TBODY><TR><TD style="WIDTH: 100px"><asp:ImageButton style="POSITION: static" id="ImageButton1" runat="server" Width="40px" Height="40px" ImageUrl='<%# Eval("Photo") %>' CommandName="Select" __designer:wfdid="w1"></asp:ImageButton></TD><TD style="WIDTH: 100px"><asp:Button style="POSITION: static" id="Button1" onclick="Button1_Click" runat="server" Width="174px" Text='<%# Eval("First_nm") %>' Font-Bold="True" Height="40px" BorderWidth="0px" BackColor="YellowGreen" CommandName="Select" __designer:wfdid="w2"></asp:Button></TD></TR></TBODY></TABLE></DIV>
</ItemTemplate>
</asp:DataList> <asp:DataList style="POSITION: static" id="DataList4" runat="server" Width="227px" OnSelectedIndexChanged="DataList4_SelectedIndexChanged1" DataSourceID="SqlDataSource2" DataKeyField="Id" __designer:wfdid="w4"><ItemTemplate>
                                            <div style="text-align: left">
                                                <table border="0" cellpadding="0" cellspacing="2" style="position: static; width: 175px;">
                                                    <tr>
                                                        <td style="width: 100px">
                                                            <asp:ImageButton ID="ImageButton1" runat="server" CommandName="Select" Height="40px"
                                                    ImageUrl='<%# Eval("Photo") %>' Style="position: static" Width="40px" /></td>
                                                        <td style="width: 100px">
                                                            <asp:Button ID="Button1" runat="server" BackColor="LightSlateGray" BorderWidth="0px"
                                                    CommandName="Select" Font-Bold="True" Height="40px" OnClick="Button1_Click" Style="position: static"
                                                    Text='<%# Eval("First_nm") %>' Width="174px" /></td>
                                                    </tr>
                                    </table>
                                </div>
                            
</ItemTemplate>
</asp:DataList></asp:Panel> 
</ContentTemplate>
                    </asp:UpdatePanel>
                    &nbsp;&nbsp;<br />
                    <br />
                    &nbsp;</td>
                <td rowspan="2" style="width: 143px" valign="top">
                    <div style="text-align: left">
                        <table border="0" cellspacing="3" style="width: 477px; position: static; background-color: whitesmoke">
                            <tr>
                                <td colspan="2" rowspan="2">
                                    <asp:TextBox ID="TextBox1" runat="server" Height="42px" Style="position: static"
                                        TextMode="MultiLine" Width="405px" MaxLength="200" OnTextChanged="TextBox1_TextChanged"></asp:TextBox></td>
                                <td rowspan="2" style="width: 100px">
                                    <asp:Button ID="Button2" runat="server" BackColor="CornflowerBlue" BorderWidth="0px"
                                        Height="50px" OnClick="Button2_Click" Style="position: static" Text="Send" Width="90px" /></td>
                            </tr>
                            <tr>
                            </tr>
                            <tr>
                                <td style="width: 100px; height: 12px;">
                                    <asp:SqlDataSource ID="SqlDataSource22" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                                        DeleteCommand="DELETE FROM [ChatMess] WHERE [ID] = @ID" InsertCommand="INSERT INTO [ChatMess] ([SMail], [SPhoto], [RMail], [RPhoto], [Mess], [Time1], [datetime1]) VALUES (@SMail, @SPhoto, @RMail, @RPhoto, @Mess, @Time1, @datetime1)"
                                        SelectCommand="SELECT * FROM [ChatMess] WHERE (([SMail] = @SMail) AND ([RMail] = @RMail) AND (ChatMess.datetime1 > @dtd)) OR (([RMail] = @SMail) AND ([SMail] = @RMail) AND (ChatMess.datetime1 > @dtd))  ORDER BY [datetime1] DESC"
                                        UpdateCommand="UPDATE [ChatMess] SET [SMail] = @SMail, [SPhoto] = @SPhoto, [RMail] = @RMail, [RPhoto] = @RPhoto, [Mess] = @Mess, [Time1] = @Time1, [datetime1] = @datetime1 WHERE [ID] = @ID" OnSelecting="SqlDataSource22_Selecting">
                                        <SelectParameters>
                                            <asp:SessionParameter Name="SMail" SessionField="UserMail" Type="String" />
                                            <asp:ControlParameter ControlID="Label2" Name="RMail" PropertyName="Text" Type="String" />
                                            <asp:SessionParameter Name="dtd" SessionField="Date2" />
                                        </SelectParameters>
                                        <DeleteParameters>
                                            <asp:Parameter Name="ID" Type="Int32" />
                                        </DeleteParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="SMail" Type="String" />
                                            <asp:Parameter Name="SPhoto" Type="String" />
                                            <asp:Parameter Name="RMail" Type="String" />
                                            <asp:Parameter Name="RPhoto" Type="String" />
                                            <asp:Parameter Name="Mess" Type="String" />
                                            <asp:Parameter Name="Time1" Type="String" />
                                            <asp:Parameter Name="datetime1" Type="DateTime" />
                                            <asp:Parameter Name="ID" Type="Int32" />
                                        </UpdateParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="SMail" Type="String" />
                                            <asp:Parameter Name="SPhoto" Type="String" />
                                            <asp:Parameter Name="RMail" Type="String" />
                                            <asp:Parameter Name="RPhoto" Type="String" />
                                            <asp:Parameter Name="Mess" Type="String" />
                                            <asp:Parameter Name="Time1" Type="String" />
                                            <asp:Parameter Name="datetime1" Type="DateTime" />
                                        </InsertParameters>
                                    </asp:SqlDataSource>
                                    </td>
                                <td style="width: 100px; height: 12px;">
                                    <asp:Label ID="Label5" runat="server" Style="position: static" Text="Label" Visible="False"
                                        Width="79px"></asp:Label></td>
                                <td style="width: 100px; height: 12px;">
                                </td>
                            </tr>
                        </table>
                    </div>
                    <asp:UpdatePanel id="UpdatePanel2" runat="server">
                        <contenttemplate>
<asp:Timer id="Timer1" runat="server" EnableViewState="False" OnTick="Timer1_Tick" Interval="4000"></asp:Timer><asp:Panel style="POSITION: static" id="Panel2" runat="server" Width="514px" Height="450px" ScrollBars="Vertical"><asp:DataList style="POSITION: static" id="DataList2" runat="server" Width="358px" ForeColor="#333333" __designer:wfdid="w1" DataKeyField="ID" DataSourceID="SqlDataSource22" CellPadding="4">
<FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True"></FooterStyle>

<SelectedItemStyle BackColor="#C5BBAF" ForeColor="#333333" Font-Bold="True"></SelectedItemStyle>
<ItemTemplate>
<DIV style="TEXT-ALIGN: left"><TABLE style="WIDTH: 480px; POSITION: static" cellSpacing=4 border=0><TBODY><TR><TD style="WIDTH: 100px" vAlign=top rowSpan=2><asp:Image style="POSITION: static" id="Image2" runat="server" Width="35px" Height="35px" __designer:wfdid="w1" ImageUrl='<%# Eval("SPhoto") %>'></asp:Image></TD><TD vAlign=top colSpan=2 rowSpan=2><asp:Label style="POSITION: static" id="Label4" runat="server" Width="419px" Text='<%# Eval("Mess") %>' Font-Size="8pt" Font-Bold="True" ForeColor="DarkSlateBlue" __designer:wfdid="w165"></asp:Label></TD></TR><TR></TR><TR><TD style="WIDTH: 100px" vAlign=top></TD><TD vAlign=top colSpan=2><asp:Label style="POSITION: static" id="Label8" runat="server" Width="358px" __designer:wfdid="w3"></asp:Label><asp:Label style="POSITION: static" id="Time1Label" runat="server" Text='<%# Eval("Time1") %>' Font-Size="8pt" ForeColor="DimGray" __designer:wfdid="w4"></asp:Label></TD></TR></TBODY></TABLE></DIV>
</ItemTemplate>

<AlternatingItemStyle BackColor="White"></AlternatingItemStyle>

<ItemStyle BackColor="#E3EAEB"></ItemStyle>

<HeaderStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True"></HeaderStyle>
</asp:DataList></asp:Panel> 
</contenttemplate>
                    </asp:UpdatePanel><br />
                </td>
            </tr>
            <tr>
            </tr>
            <tr>
                <td style="width: 143px" valign="top">
                </td>
            </tr>
            <tr>
                <td style="width: 100px" valign="top">
                </td>
                <td style="width: 143px" valign="top">
                    <asp:Label ID="Label2" runat="server" Style="position: static" Text="Label" Width="480px" Visible="False"></asp:Label></td>
            </tr>
        </table>
        <asp:Label ID="Label3" runat="server" Style="position: static" Text="Label" Width="625px" Visible="False"></asp:Label>
        <asp:Label ID="Label7" runat="server" Style="position: static" Text="Label" Visible="False"></asp:Label><br />
        &nbsp;</div>
</asp:Content>

