<%@ Page Language="C#" MasterPageFile="~/web2nd/mainNoMenu.master" AutoEventWireup="true" CodeFile="1PhotoCreate1.aspx.cs" Inherits="web2nd_1Photo" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <table border="0" cellpadding="0" cellspacing="2" style="width: 788px; position: static;
            height: 100%; background-color: whitesmoke;" bgcolor="#f4f6e5">
            <tr>
                <td style="width: 100px; height: 14px;">
                    <table border="0" cellpadding="0" cellspacing="0" style="width: 498px; position: static">
                        <tr>
                            <td style="width: 36px; height: 16px">
                                <asp:Image ID="Image1" runat="server" ImageUrl="~/web2nd/image/ToolPic1.bmp" Style="position: static" /></td>
                            <td style="width: 100px; height: 16px">
                                &nbsp;<asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="11pt" Style="position: static"
                                    Text="...." Width="203px"></asp:Label></td>
                            <td style="width: 100px; height: 16px">
                                &nbsp;</td>
                            <td style="width: 100px; height: 16px">
                                                        <asp:Label ID="Label4" runat="server" Style="position: static" Width="445px" Height="18px" Visible="False"></asp:Label></td>
                            <td style="width: 100px; height: 16px">
                            </td>
                        </tr>
                    </table>
                    <table cellspacing="3" style="width: 605px; position: static">
                        <tr>
                            <td colspan="6">
                                &nbsp;
                                <asp:Label ID="Label1" runat="server" Style="position: static" Width="345px" Visible="False"></asp:Label>
                                <table cellspacing="2" style="width: 100%; position: static">
                                    <tr>
                                        <td style="width: 100px; height: 15px;">
                                            <div style="text-align: left">
                                                <table cellpadding="0" cellspacing="3" style="width: 488px; position: static">
                                                    <tr>
                                                        <td style="width: 100px">
                                                            <asp:Button ID="Button8" runat="server" OnClick="Button8_Click3" Style="position: static"
                                                                Text="<<< Prev - Add Photo" Width="173px" BackColor="Gainsboro" BorderStyle="Solid" BorderWidth="1px" /></td>
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
                                        </td>
                                    </tr>
                                  
                                    <tr>
                                        <td style="width: 100px; height: 15px;">
                                            <asp:Panel ID="Panel2" runat="server" Height="50px" Style="position: static" Width="125px" Visible="False">
                    <asp:UpdatePanel id="UpdatePanel1" runat="server">
                        <contenttemplate>
<DIV style="TEXT-ALIGN: left"><TABLE style="POSITION: static" cellSpacing=4 width=500 border=0 __designer:dtid="281474976710689"><TBODY><TR __designer:dtid="281474976710690"><TD colSpan=2 __designer:dtid="281474976710691"><asp:SqlDataSource id="SqlDataSource1" runat="server" SelectCommand="SELECT id, SEMail, SessionID, index1, PicPath, Caption1, Chance1 FROM TmpAlbum WHERE (SEMail = @SEMail) AND (SessionID = @SID) AND (Chance1 = @Chh1)" UpdateCommand="UPDATE [TmpAlbum] SET [SEMail] = @SEMail, [SessionID] = @SessionID, [index1] = @index1, [PicPath] = @PicPath, [Caption1] = @Caption1, [Chance1] = @Chance1 WHERE [id] = @id" InsertCommand="INSERT INTO [TmpAlbum] ([SEMail], [SessionID], [index1], [PicPath], [Caption1], [Chance1]) VALUES (@SEMail, @SessionID, @index1, @PicPath, @Caption1, @Chance1)" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [TmpAlbum] WHERE [id] = @id" __designer:wfdid="w49"><DeleteParameters>
<asp:Parameter Type="Int32" Name="id"></asp:Parameter>
</DeleteParameters>
<UpdateParameters>
<asp:Parameter Type="String" Name="SEMail"></asp:Parameter>
<asp:Parameter Type="String" Name="SessionID"></asp:Parameter>
<asp:Parameter Type="String" Name="index1"></asp:Parameter>
<asp:Parameter Type="String" Name="PicPath"></asp:Parameter>
<asp:Parameter Type="String" Name="Caption1"></asp:Parameter>
<asp:Parameter Type="String" Name="Chance1"></asp:Parameter>
<asp:Parameter Type="Int32" Name="id"></asp:Parameter>
</UpdateParameters>
<SelectParameters>
<asp:SessionParameter SessionField="UserMail" Type="String" Name="SEMail"></asp:SessionParameter>
<asp:SessionParameter SessionField="SessionID" Name="SID"></asp:SessionParameter>
<asp:SessionParameter SessionField="Chance1" Name="Chh1"></asp:SessionParameter>
</SelectParameters>
<InsertParameters>
<asp:Parameter Type="String" Name="SEMail"></asp:Parameter>
<asp:Parameter Type="String" Name="SessionID"></asp:Parameter>
<asp:Parameter Type="String" Name="index1"></asp:Parameter>
<asp:Parameter Type="String" Name="PicPath"></asp:Parameter>
<asp:Parameter Type="String" Name="Caption1"></asp:Parameter>
<asp:Parameter Type="String" Name="Chance1"></asp:Parameter>
</InsertParameters>
</asp:SqlDataSource> <TABLE style="WIDTH: 614px; POSITION: static" cellSpacing=5 border=0><TBODY><TR><TD style="WIDTH: 100px"></TD><TD style="WIDTH: 100px"><asp:Button style="POSITION: static" id="Button10" onclick="Button10_Click" runat="server" __designer:dtid="281474976710684" Width="162px" Text="Save Album" Font-Bold="True" Height="25px" BorderWidth="1px" BackColor="OliveDrab" __designer:wfdid="w2" ForeColor="White"></asp:Button></TD><TD style="WIDTH: 100px"><asp:Button style="POSITION: static" id="Button11" onclick="Button11_Click" runat="server" __designer:dtid="281474976710687" Width="146px" Text="Delete Album" Font-Bold="True" Height="25px" BorderWidth="1px" BackColor="#804040" __designer:wfdid="w3" ForeColor="White"></asp:Button></TD><TD style="WIDTH: 100px"></TD></TR></TBODY></TABLE><BR /><BR />&nbsp;<asp:Label style="POSITION: static" id="Label6" runat="server" Width="318px" Visible="False" __designer:wfdid="w12"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label style="POSITION: static" id="Label7" runat="server" Width="161px" Visible="False" BorderWidth="1px" __designer:wfdid="w25"></asp:Label> <asp:FormView style="POSITION: static" id="FormView2" runat="server" Width="685px" Visible="False" __designer:wfdid="w50" DataKeyNames="id" DataSourceID="SqlDataSource1" OnPageIndexChanging="FormView2_PageIndexChanging"><EditItemTemplate>
<TABLE style="WIDTH: 623px; POSITION: static" cellSpacing=3 cellPadding=0 border=0><TBODY><TR><TD vAlign=top colSpan=2 rowSpan=2>Caption1:&nbsp;<BR /><asp:TextBox style="POSITION: static" id="Caption1TextBox" runat="server" Width="353px" Text='<%# Bind("Caption1") %>' Height="20px" __designer:wfdid="w28"></asp:TextBox><BR />&nbsp;<asp:Label style="POSITION: static" id="idLabel1" runat="server" Text='<%# Eval("id") %>' __designer:wfdid="w29" Visible="False"></asp:Label><BR /><asp:TextBox style="POSITION: static" id="SEMailTextBox" runat="server" Text='<%# Bind("SEMail") %>' __designer:wfdid="w30" Visible="False"></asp:TextBox><BR /><asp:TextBox style="POSITION: static" id="SessionIDTextBox" runat="server" Text='<%# Bind("SessionID") %>' __designer:wfdid="w31" Visible="False"></asp:TextBox><BR /><asp:TextBox style="POSITION: static" id="index1TextBox" runat="server" Text='<%# Bind("index1") %>' __designer:wfdid="w32" Visible="False"></asp:TextBox><BR /><asp:TextBox style="POSITION: static" id="PicPathTextBox" runat="server" Text='<%# Bind("PicPath") %>' __designer:wfdid="w33" Visible="False"></asp:TextBox><BR /><asp:TextBox style="POSITION: static" id="Chance1TextBox" runat="server" Text='<%# Bind("Chance1") %>' __designer:wfdid="w34" Visible="False"></asp:TextBox><BR /></TD><TD style="WIDTH: 100px" vAlign=top rowSpan=3><asp:ImageButton style="POSITION: static" id="ImageButton2" runat="server" Width="265px" ImageUrl='<%# Eval("PicPath") %>' Height="183px" __designer:wfdid="w18"></asp:ImageButton></TD></TR><TR></TR><TR><TD style="WIDTH: 174px" vAlign=top>&nbsp;&nbsp; <asp:LinkButton style="POSITION: static" id="UpdateButton" runat="server" Text="Update" __designer:wfdid="w20" CausesValidation="True" CommandName="Update"></asp:LinkButton>&nbsp;&nbsp; <asp:LinkButton style="POSITION: static" id="UpdateCancelButton" runat="server" Text="Cancel" __designer:wfdid="w21" CausesValidation="False" CommandName="Cancel"></asp:LinkButton></TD><TD style="WIDTH: 100px" vAlign=top></TD></TR></TBODY></TABLE><BR />&nbsp; 
</EditItemTemplate>
<InsertItemTemplate>
SEMail: <asp:TextBox Text='<%# Bind("SEMail") %>' runat="server" id="SEMailTextBox" /><br />
SessionID: <asp:TextBox Text='<%# Bind("SessionID") %>' runat="server" id="SessionIDTextBox" /><br />
index1: <asp:TextBox Text='<%# Bind("index1") %>' runat="server" id="index1TextBox" /><br />
PicPath: <asp:TextBox Text='<%# Bind("PicPath") %>' runat="server" id="PicPathTextBox" /><br />
Caption1: <asp:TextBox Text='<%# Bind("Caption1") %>' runat="server" id="Caption1TextBox" /><br />
Chance1: <asp:TextBox Text='<%# Bind("Chance1") %>' runat="server" id="Chance1TextBox" /><br />
<asp:LinkButton runat="server" Text="Insert" CommandName="Insert" id="InsertButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" id="InsertCancelButton" CausesValidation="False" />
</InsertItemTemplate>
<ItemTemplate>
<TABLE style="WIDTH: 623px; POSITION: static; HEIGHT: 194px" cellSpacing=3 cellPadding=0 border=0><TBODY><TR><TD style="WIDTH: 174px; HEIGHT: 27px" vAlign=top>Caption1: <BR /><asp:Label style="POSITION: static" id="idLabel" runat="server" Text='<%# Eval("id") %>' Visible="False" __designer:wfdid="w5"></asp:Label><BR /><asp:Label style="POSITION: static" id="SEMailLabel" runat="server" Text='<%# Bind("SEMail") %>' Visible="False" __designer:wfdid="w6"></asp:Label><BR /><asp:Label style="POSITION: static" id="SessionIDLabel" runat="server" Text='<%# Bind("SessionID") %>' Visible="False" __designer:wfdid="w7"></asp:Label><BR /><asp:Label style="POSITION: static" id="index1Label" runat="server" Text='<%# Bind("index1") %>' Visible="False" __designer:wfdid="w8"></asp:Label><BR /><asp:Label style="POSITION: static" id="PicPathLabel" runat="server" Text='<%# Bind("PicPath") %>' Visible="False" __designer:wfdid="w9"></asp:Label><BR /><asp:Label style="POSITION: static" id="Chance1Label" runat="server" Text='<%# Bind("Chance1") %>' Visible="False" __designer:wfdid="w10"></asp:Label></TD><TD style="WIDTH: 92px; HEIGHT: 27px" vAlign=top><asp:Label style="POSITION: static" id="Caption1Label" runat="server" Width="320px" Text='<%# Bind("Caption1") %>' Height="110px" __designer:wfdid="w11"></asp:Label></TD><TD style="WIDTH: 996px" vAlign=top rowSpan=3><asp:ImageButton style="POSITION: static" id="ImageButton3" runat="server" ImageUrl='<%# Eval("PicPath") %>' BorderWidth="3px" BorderColor="LightGray" __designer:wfdid="w12" BorderStyle="Solid"></asp:ImageButton></TD></TR><TR><TD vAlign=top colSpan=2></TD></TR><TR><TD style="WIDTH: 174px" vAlign=top><asp:LinkButton style="POSITION: static" id="EditButton" runat="server" Text="Edit" __designer:wfdid="w13" CommandName="Edit" CausesValidation="False"></asp:LinkButton>&nbsp;<asp:LinkButton style="POSITION: static" id="DeleteButton" runat="server" Text="Delete" __designer:wfdid="w14" CommandName="Delete" CausesValidation="False"></asp:LinkButton>&nbsp; </TD><TD style="WIDTH: 92px" vAlign=top><asp:LinkButton style="POSITION: static" id="LinkButton1" onclick="LinkButton1_Click" runat="server" Width="180px" __designer:wfdid="w15" CommandName="Select">Set Album Cover Photo</asp:LinkButton></TD></TR></TBODY></TABLE><BR /><BR /><BR />
</ItemTemplate>
</asp:FormView><BR /><asp:DataList style="POSITION: static" id="DataList1" runat="server" Width="641px" Visible="False" __designer:wfdid="w51" DataSourceID="SqlDataSource1" RepeatColumns="3" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" DataKeyField="id" RepeatDirection="Horizontal"><ItemTemplate>
<DIV style="TEXT-ALIGN: center"><TABLE style="WIDTH: 251px; POSITION: static; HEIGHT: 271%" cellSpacing=4 border=0><TBODY><TR><TD style="WIDTH: 100px; HEIGHT: 150px" vAlign=top><asp:ImageButton style="POSITION: static" id="ImageButton1" runat="server" ImageUrl='<%# Eval("PicPath") %>' BorderWidth="3px" BorderColor="Silver" __designer:wfdid="w18" CommandName="Select" BorderStyle="Solid"></asp:ImageButton></TD></TR><TR><TD style="WIDTH: 100px" vAlign=top><asp:Label style="POSITION: static" id="Caption1Label" runat="server" Width="160px" Text='<%# Eval("Caption1") %>' Font-Size="8pt" Height="29px" ForeColor="DimGray" __designer:wfdid="w19"></asp:Label></TD></TR></TBODY></TABLE></DIV><BR /><BR /><BR /><BR /><BR />
</ItemTemplate>
</asp:DataList> </TD></TR><TR __designer:dtid="281474976710692"><TD style="WIDTH: 100px; HEIGHT: 9px" __designer:dtid="281474976710693"></TD><TD style="WIDTH: 100px; HEIGHT: 9px" __designer:dtid="281474976710694"></TD></TR><TR __designer:dtid="281474976710695"><TD style="WIDTH: 100px" __designer:dtid="281474976710696"></TD><TD style="WIDTH: 100px" __designer:dtid="281474976710697"></TD></TR></TBODY></TABLE></DIV>
</contenttemplate>
                    </asp:UpdatePanel>
                                            </asp:Panel>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 100px">
                                            <asp:Panel ID="Panel1" runat="server" Height="50px" Style="position: static" Width="125px">
                                                        <table border="0" cellpadding="0" cellspacing="0" style="position: static" width="100%">
                                                            <tr>
                                                                <td style="width: 33750px" valign="top">
                                                                    &nbsp;</td>
                                                                <td style="width: 100px" valign="top">
                                                                    <table border="0" cellpadding="0" cellspacing="2" style="position: static">
                                                                        <tr>
                                                                            <td style="width: 100px">
                                                                                <asp:FileUpload ID="FileUpload1" runat="server" Style="position: static" Width="400px" /></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td style="width: 100px">
                                                                                <asp:FileUpload ID="FileUpload2" runat="server" Style="position: static" Width="400px" /></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td style="width: 100px">
                                                                                <asp:FileUpload ID="FileUpload3" runat="server" Style="position: static" Width="400px" /></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td style="width: 100px">
                                                                                <asp:FileUpload ID="FileUpload4" runat="server" Style="position: static" Width="400px" /></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td style="width: 100px">
                                                                                <asp:FileUpload ID="FileUpload5" runat="server" Style="position: static" Width="400px" Visible="False" /></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td style="width: 100px">
                                                                                <asp:FileUpload ID="FileUpload6" runat="server" Style="position: static" Width="400px" Visible="False" /></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td style="width: 100px" rowspan="4">
                                                                                </td>
                                                                        </tr>
                                                                        <tr>
                                                                        </tr>
                                                                        <tr>
                                                                        </tr>
                                                                        <tr>
                                                                        </tr>
                                                                        <tr>
                                                                            <td style="width: 100px">
                                                        <table border="0" cellpadding="0" cellspacing="0" style="width: 399px; position: static">
                                                            <tr>
                                                                <td style="width: 100px; height: 25px;" valign="top">
                                                                    <asp:Button ID="Button5" runat="server" BackColor="OliveDrab" BorderWidth="0px" Font-Bold="True"
                                                                        Font-Size="9pt" ForeColor="White" Height="25px" OnClick="Button5_Click" Style="position: static"
                                                                        Text="Upload File" Width="159px" /></td>
                                                                <td style="width: 100px; height: 25px;" valign="top">
                                                                    </td>
                                                                <td style="width: 100px; height: 25px;" valign="top">
                                                                    <asp:Button ID="Button9" runat="server" Font-Bold="True" Height="25px" OnClick="Button9_Click"
                                                                        Style="position: static" Text="Next  >>>" Width="159px" BackColor="YellowGreen" BorderWidth="0px" /></td>
                                                            </tr>
                                                        </table>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                        <asp:Label ID="Label3" runat="server" ForeColor="SlateBlue" Style="position: static"
                                                            Text="Upload your file. file size less than 2 MB File type .jpg .gif .png   ......  And maximum 20 Photo in a album" Width="403px" Font-Bold="False" Font-Size="8pt" Height="58px"></asp:Label></td>
                                                                <td style="width: 100px" valign="top">
                                                                </td>
                                                            </tr>
                                                        </table>
                                                <asp:Label ID="Label5" runat="server" Style="position: static" Text="You Select 0 Files"
                                                    Width="138px"></asp:Label>&nbsp;
                                            </asp:Panel>
                                            <br />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 100px">
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td style="width: 100px; height: 79px;">
                    &nbsp;</td>
            </tr>
        </table>
    <br />
    <br />
</asp:Content>

