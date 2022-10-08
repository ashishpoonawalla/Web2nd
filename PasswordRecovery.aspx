<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="PasswordRecovery.aspx.cs" Inherits="_Default" %>
<%@ Register
    Assembly="AjaxControlToolkit"
    Namespace="AjaxControlToolkit"
    TagPrefix="ajaxToolkit" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>web2nd</title>
<script language="javascript" type="text/javascript">

</script>
    <link href="MainStyle.css" rel="stylesheet" type="text/css" />
</head>

<body background="Background/a9.bmp">
    <form id="form1" runat="server">
       
    <div>
        <div style="text-align: left">
            <table cellpadding="0" style="width: 100%; position: static;" border="0" cellspacing="0">
                <tr>
                    <td align="right" colspan="2" valign="top">
                        <span style="color: #ffffff"></span><strong><span style="font-family: Arial"><span style="color: gray"></span></span></strong>
                    </td>
                </tr>
                <tr>
                    <td align="right" colspan="2" valign="top" style="height: 13px">
                        <span style="color: #ffffff"></span><strong><span style="font-family: Arial"><span style="color: gray">
                            <div style="text-align: left">
                                <table border="0" cellspacing="0" style="width: 100%; position: static; background-color: #545c99">
                                    <tr>
                                        <td style="width: 100px; height: 112px">
                        <table border="0" cellpadding="0" cellspacing="0" style="position: static; background-color: transparent;">
                            <tr>
                                <td style="width: 100px; height: 62px">
                                    &nbsp;<asp:Label ID="Label16" runat="server" ForeColor="YellowGreen" Style="position: static" Width="26px"></asp:Label></td>
                                <td style="width: 100px; height: 62px; color: gray;">
                                    <table border="0" cellpadding="0" cellspacing="0" style="position: static">
                                        <tr>
                                            <td style="width: 100px; height: 52px">
                                                <asp:Label ID="Label2" runat="server" Font-Size="32pt" ForeColor="White" Style="position: static"
                            Text="Web2nd" Width="478px" Font-Bold="True"></asp:Label></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 100px; height: 13px;">
                        <asp:Label ID="Label3" runat="server" Style="position: static" Text="Art of Connecting People..." Font-Size="10pt" Width="260px" Font-Bold="True" ForeColor="Gainsboro"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 100px; height: 13px">
                        </td>
                                        </tr>
                                    </table>
                                    </td>
                            </tr>
                        </table>
                                        </td>
                                        <td style="width: 100px; height: 112px">
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </span></span></strong>
                    </td>
                </tr>
                <tr>
                    <td align="right" colspan="2" valign="top" style="height: 13px">
                        <span style="color: #ffffff">.</span><strong><span style="font-family: Arial"><span style="color: gray"></span></span></strong></td>
                </tr>
                <tr>
                    <td align="right" colspan="2" style="height: 27px" valign="top">
                        <span style="color: #ffffff"></span>
                        <strong><span style="font-family: Arial"><span style="color: gray">
                            <div style="text-align: center">
                                &nbsp;
                                <img src="images/WEB2ND.JPG" style="position: static" /></div>
                    </span></span></strong>
                    </td>
                </tr>
                <tr>
                    <td align="right" colspan="2" style="height: 16px" valign="top">
                    </td>
                </tr>
                <tr>
                    <td align="left" rowspan="2" style="width: 171px; height: 217px;" valign="top">
                        <div style="text-align: left">
                            <table border="0" cellpadding="0" cellspacing="0" style="width: 433px; position: static">
                                <tr>
                                    <td style="width: 100px" valign="top">
                                    <asp:Label ID="Label7" runat="server" ForeColor="White" Style="position: static"
                                        Text="." Width="90px"></asp:Label></td>
                                    <td style="width: 100px" valign="top">
                                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="28pt" ForeColor="LightSlateGray"
                                Style="position: static" Text="we connect every person, every machin to the world with one click........" Width="386px" Font-Names="Arial"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td style="width: 100px" valign="top">
                                    </td>
                                    <td style="width: 100px" valign="top">
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <br />
                        <span style="font-size: 24pt"></span>
                    </td>
                    <td align="right" rowspan="2" style="width: 147px; height: 217px;" valign="top">
                      
                        <span style="color: #000000;  font-family: Tahoma">
                                        </span>
                        <asp:ScriptManager ID="ScriptManager1" runat="server">
                        </asp:ScriptManager>
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                            <table cellpadding="0" style="position: static" cellspacing="5">
                                <tr>
                                    <td style="width: 100px; height: 13px;" align="right" valign="top">
                                        <asp:Label ID="Label4" runat="server" Style="position: static" Text="User Name" Width="86px"></asp:Label></td>
                                    <td style="width: 115px; height: 13px;" align="right" valign="top">
                    <asp:TextBox ID="TextBox2" runat="server" Style="position: static" Font-Bold="True" Font-Names="Arial" Font-Size="8pt" Width="230px" ForeColor="MidnightBlue" AutoPostBack="True" OnPreRender="TextBox2_PreRender" OnTextChanged="TextBox2_TextChanged"></asp:TextBox></td>
                                    <td style="width: 100px; height: 13px;" align="right" valign="top">
                                        </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 100px">
                                    </td>
                                    <td align="right" style="width: 115px; height: 24px">
                                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Style="position: static"
                        Text="Get account information" Font-Bold="True" Font-Names="Arial" Font-Size="9pt" Width="237px" ValidationGroup="A2" BackColor="OliveDrab" BorderWidth="1px" ForeColor="White" Height="31px" BorderColor="White" BorderStyle="Solid" /></td>
                                    <td align="right" style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" colspan="3">
                                        <div style="text-align: left">
                                            &nbsp;</div>
                                        <asp:Panel ID="Panel1" runat="server" Style="position: static" Visible="False">
                                            <table border="0" cellspacing="3" style="width: 409px; position: static">
                                                <tr>
                                                    <td style="width: 82px">
                                                        <asp:Label ID="Label9" runat="server" Style="position: static" Text="Question" Width="94px"></asp:Label></td>
                                                    <td style="width: 86px">
                                                        <asp:Label ID="Label11" runat="server" Style="position: static" Text="." Width="303px"></asp:Label></td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 82px">
                                                    </td>
                                                    <td style="width: 86px">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 82px">
                                                        <asp:Label ID="Label12" runat="server" Style="position: static" Text="Answer" Width="91px"></asp:Label></td>
                                                    <td style="width: 86px">
                                                        <asp:TextBox ID="TextBox1" runat="server" Style="position: static" Width="293px"></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 82px">
                                                    </td>
                                                    <td style="width: 86px">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 82px">
                                                    </td>
                                                    <td style="width: 86px">
                                                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Style="position: static"
                        Text="Ok" Font-Bold="True" Font-Names="Arial" Font-Size="9pt" Width="76px" ValidationGroup="A2" BackColor="OliveDrab" BorderWidth="1px" ForeColor="White" Height="31px" BorderColor="White" BorderStyle="Solid" /></td>
                                                </tr>
                                            </table>
                                        </asp:Panel>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100px" align="right">
                    </td>
                                    <td style="width: 115px; height: 24px;" align="right">
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Style="position: static"
                        Text="Send my password to my email" Font-Bold="True" Font-Names="Arial" Font-Size="9pt" Width="237px" ValidationGroup="A2" BackColor="OliveDrab" BorderWidth="1px" ForeColor="White" Height="31px" BorderColor="White" BorderStyle="Solid" Visible="False" /></td>
                                    <td style="width: 100px" align="right">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="right" colspan="3" style="height: 19px">
                                        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="8pt"
                                            ForeColor="White" Style="position: static" Width="415px">.</asp:Label></td>
                                </tr>
                                <tr>
                                    <td align="right" colspan="3" style="height: 19px">
                    <asp:Label ID="Label6" runat="server" Style="position: static" Font-Bold="True" Font-Names="Arial" Font-Size="8pt" Width="415px" ForeColor="DimGray"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td align="right" colspan="3" style="height: 19px">
                                        <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="8pt"
                                            ForeColor="White" Style="position: static" Width="415px">.</asp:Label></td>
                                </tr>
                                <tr>
                                    <td align="right" colspan="3" style="height: 19px">
                                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" Style="position: static"
                                            Width="158px">Login Page ...</asp:LinkButton></td>
                                </tr>
                            </table>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                            
                           </td>
                </tr>
                <tr>
                </tr>
                <tr>
                    <td align="right" colspan="2" style="height: 23px" valign="top">
                    </td>
                </tr>
                <tr>
                    <td align="center" style="height: 13px;" colspan="2">
                        &nbsp;
                        <br />
                        <hr style="position: static" size="1" />
                        </td>
                </tr>
                <tr>
                    <td align="left" style="width: 171px; height: 13px;">
                        &nbsp;
                        <asp:Label ID="Label10" runat="server" Font-Bold="True" ForeColor="MidnightBlue"
                            Style="position: static" Text="Web2nd - 2010 (Beta)" Width="152px" Font-Size="9pt"></asp:Label></td>
                    <td align="right" style="width: 147px; height: 13px;" valign="top">
                    </td>
                </tr>
            </table>
        </div>
        <br />
        &nbsp;&nbsp;
    
    </div>
    </form>
</body>
</html>
