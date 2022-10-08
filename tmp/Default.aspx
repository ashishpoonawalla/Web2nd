<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>
<%@ Register     Assembly="AjaxControlToolkit"    Namespace="AjaxControlToolkit"    TagPrefix="ajaxToolkit" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
     <TITLE>Web2nd.com - Campus for every Students. </TITLE>
        
        <META http-equiv=Content-Type content="text/html; charset=utf-8">
        <META content="Social Network in India - Delhi, Mumbai, Bangalore, Kolkata. Find Best Friends in all the world. Craete Account on Web2nd.com And find your dream friends Now !"         name=Description>
        <META content="web2nd.com, network, social network, find friends, connect to the world, network in india, friends in india, it jobs india, software jobs india, it in india, friends india, india friends, friends search in india, online friends in india, best friends in india, search in india, magazin in india, newspaper in india"         name=Keywords>
        <META content="2010 Web2nd.com" name=copyright>
        <META content=EN name=content-language>
        <META content=www.web2nd.com name=author>
        <META content=document name=resource-type>
        <META content=GLOBAL name=distribution>
        <META content=ALL name=robots>
        <META content="1 day" name=revisit-after>
        <META content=general name=rating>
        <META content=no-cache name=pragma>
        <META content="Social Network: Find best friends, Search Friends, Friendship Development, Search, Network"        name=classification>
        <LINK href="/Web2nd.ico" rel="shortcut icon">
        
<script language="javascript" type="text/javascript">

</script>
    <link href="MainStyle.css" rel="stylesheet" type="text/css" />
</head>

<body background="Background/a9.bmp">
    <form id="form1" runat="server">
       
    <div>
        <div style="text-align: left">
            <table cellpadding="0" style="width: 100%; position: static; border-bottom: gray 1px solid;" border="0" cellspacing="0">
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
                                    &nbsp;<asp:Label ID="Label16" runat="server" ForeColor="YellowGreen" Style="position: static" Width="90px"></asp:Label></td>
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
                            <table cellpadding="0" style="position: static">
                                <tr>
                                    <td style="width: 100px" align="right" valign="top">
                                        <table border="0" cellpadding="2" cellspacing="2" style="position: static; width: 156px;">
                                            <tr>
                                                <td align="left" style="width: 4px" valign="top">
                                        <asp:CheckBox ID="CheckBox1" runat="server" ForeColor="White" Text=" " Width="25px" style="position: static" Height="6px"  /></td>
                                                <td align="left" style="width: 100px" valign="top">
                                                    <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" ForeColor="White"
                                                        OnClick="LinkButton1_Click1" Style="position: static" Width="114px" Height="19px">Remember Me</asp:LinkButton></td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td style="width: 115px" align="right" valign="top">
                                        <table border="0" cellpadding="0" cellspacing="2" style="width: 100%; position: static">
                                            <tr>
                                                <td style="width: 100px; height: 13px;">
                                                    <asp:LinkButton ID="LinkButton3" runat="server" Font-Bold="True" ForeColor="White"
                                                        Style="position: static" Width="144px" Height="20px" OnClick="LinkButton3_Click">Forget Password</asp:LinkButton></td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td style="width: 100px" align="right" valign="top">
                                        </td>
                                </tr>
                                <tr>
                                    <td style="width: 100px" align="right">
                    <asp:TextBox ID="TextBox2" runat="server" Style="position: static" Font-Bold="True" Font-Names="Arial" Font-Size="8pt" Width="150px" ForeColor="MidnightBlue"></asp:TextBox></td>
                                    <td style="width: 115px; height: 24px;" align="right">
                    <asp:TextBox ID="TextBox3" runat="server" OnTextChanged="TextBox3_TextChanged" Style="position: static" Font-Bold="True" Font-Names="Arial" Font-Size="8pt" Width="150px" ForeColor="MidnightBlue"></asp:TextBox></td>
                                    <td style="width: 100px" align="right">
                                        &nbsp;<asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Style="position: static"
                        Text="Login" Font-Bold="True" Font-Names="Arial" Font-Size="8pt" Width="85px" ValidationGroup="A2" BackColor="OliveDrab" BorderWidth="1px" ForeColor="White" Height="20px" BorderColor="White" BorderStyle="Solid" /></td>
                                </tr>
                                <tr>
                                    <td align="right" colspan="3" style="height: 19px">
                    <asp:Label ID="Label6" runat="server" Style="position: static" Font-Bold="True" Font-Names="Arial" Font-Size="8pt" Width="353px" ForeColor="Gainsboro"></asp:Label></td>
                                </tr>
                            </table>
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
                                </div>
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
                            <br />
                            <br />
                            <br />
                            <table border="0" cellpadding="0" cellspacing="0" style="width: 433px; position: static">
                                <tr>
                                    <td style="width: 100px" valign="top">
                                    <asp:Label ID="Label7" runat="server" ForeColor="White" Style="position: static"
                                        Text="." Width="90px"></asp:Label></td>
                                    <td style="width: 100px" valign="top">
                                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="28pt" ForeColor="LightSlateGray"
                                Style="position: static" Text="web2nd connect every person, every machin to the world........" Width="300px" Font-Names="Arial"></asp:Label></td>
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
                        <br />
                        <br />
                        <br />
                        <br />
                        <span style="font-size: 24pt"></span>
                    </td>
                    <td align="right" rowspan="2" style="width: 147px; height: 217px;" valign="top">
                        <img src="images/HomePage.jpg" style="position: static" /><br />
                        <br />
                        <asp:Panel ID="Panel1" runat="server" Height="50px" Style="position: static" Visible="False"
                            Width="125px">
                            
                            <table cellpadding="0" style="position: static; font-weight: bold; text-align: left;" cellspacing="8" width="380">
                                <tr>
                                    <td align="left" colspan="3" style="height: 2px" valign="top">
                                <asp:LinkButton ID="LinkButton4" runat="server" Font-Names="Arial" Font-Size="14pt"
                                    Font-Underline="False" ForeColor="MidnightBlue" 
                                    Style="position: static" Width="360px" Font-Bold="True">Any one can join this.</asp:LinkButton></td>
                                </tr>
                                <tr>
                                    <td align="left" colspan="3" style="height: 2px" valign="top">
                                        </td>
                                </tr>
                                <tr>
                                    <td style="width: 31px" align="right" valign="top">
                                        <asp:Label ID="Label5" runat="server" Style="position: static"
                        Text="First Name" Font-Bold="False" Font-Names="Arial" Font-Size="10pt" ForeColor="MidnightBlue" Width="100px"></asp:Label></td><td style="width: 39px" valign="top">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox5"
                                ErrorMessage="First Name Req." ForeColor="Navy" Style="position: static" ValidationGroup="A1">*</asp:RequiredFieldValidator></td>
                                    <td style="width: 100px" align="left" valign="top">
                    <asp:TextBox ID="TextBox5" runat="server" Style="position: static" Font-Bold="False" Font-Names="Arial" Font-Size="9pt" ForeColor="DimGray" Width="166px" BorderColor="Silver" BorderStyle="Solid" BorderWidth="1px" MaxLength="25"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td style="width: 31px" align="right" valign="top">
                                        <asp:Label ID="Label11" runat="server" Style="position: static"
                        Text="Last Name" Font-Bold="False" Font-Names="Arial" Font-Size="10pt" ForeColor="MidnightBlue" Width="100px"></asp:Label></td><td style="width: 39px" valign="top">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox4"
                                ErrorMessage="Last Name Req." ForeColor="Navy" Style="position: static" ValidationGroup="A1">*</asp:RequiredFieldValidator></td>
                                    <td style="width: 100px" align="left" valign="top">
                    <asp:TextBox ID="TextBox4" runat="server" Style="position: static" Font-Bold="False" Font-Names="Arial" Font-Size="9pt" ForeColor="DimGray" Width="166px" BorderColor="Silver" BorderStyle="Solid" BorderWidth="1px" MaxLength="25"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td style="width: 31px; height: 16px;" align="right" valign="top">
                                        <asp:Label ID="Label12" runat="server" Style="position: static"
                        Text="Login Name (Email-Id)" Font-Bold="False" Font-Names="Arial" Font-Size="10pt" ForeColor="MidnightBlue" Width="135px"></asp:Label></td><td style="width: 39px; height: 16px;" valign="top">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox6"
                                ErrorMessage="E-Mail Req." ForeColor="Navy" Style="position: static" ValidationGroup="A1">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox6"
                                ErrorMessage="RegularExpressionValidator" ForeColor="Navy" Style="position: static"
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="A1" Width="1px">*</asp:RegularExpressionValidator></td>
                                    <td style="width: 100px; height: 16px;" align="left" valign="top">
                    <asp:TextBox ID="TextBox6" runat="server" Style="position: static" Font-Bold="False" Font-Names="Arial" Font-Size="9pt" ForeColor="DimGray" Width="166px" BorderColor="Silver" BorderStyle="Solid" BorderWidth="1px" MaxLength="50"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td style="width: 31px" align="right" valign="top">
                                        <asp:Label ID="Label13" runat="server" Style="position: static"
                        Text="New Password" Font-Bold="False" Font-Names="Arial" Font-Size="10pt" ForeColor="MidnightBlue" Width="100px"></asp:Label></td><td style="width: 39px" valign="top">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox7"
                                ErrorMessage="Password Req." ForeColor="Navy" Style="position: static" ValidationGroup="A1">*</asp:RequiredFieldValidator></td>
                                    <td style="width: 100px" align="left" valign="top">
                    <asp:TextBox ID="TextBox7" runat="server" Style="position: static" TextMode="Password" Font-Bold="False" Font-Names="Arial" Font-Size="9pt" ForeColor="DimGray" Width="166px" BorderColor="Silver" BorderStyle="Solid" BorderWidth="1px" MaxLength="15"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td style="width: 31px" align="right" valign="top">
                                        <asp:Label
                        ID="Label14" runat="server" Style="position: static" Text="I am" Font-Bold="False" Font-Names="Arial" Font-Size="10pt" ForeColor="MidnightBlue" Width="100px"></asp:Label></td><td style="width: 39px" valign="top">
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="DropDownList2"
                                ErrorMessage="Select M/F" Font-Names="Arial" Font-Size="9pt" ForeColor="Navy"
                                Operator="NotEqual" Style="position: static" ValidationGroup="A1" ValueToCompare="Select">*</asp:CompareValidator></td>
                                    <td style="width: 100px" align="left" valign="top">
                                        <asp:DropDownList ID="DropDownList2" runat="server" Style="position: static" Font-Bold="False" Width="131px" ForeColor="Black" Font-Names="Arial">
                                            <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList></td>
                                </tr>
                                <tr>
                                    <td style="width: 31px; height: 14px;" align="right" valign="top">
                                        <span style="color: #ffffff">
                                            <asp:Label ID="Label9" runat="server" Font-Bold="False" Font-Names="Arial"
                                                Font-Size="10pt" ForeColor="MidnightBlue" Style="position: static" Text="..."
                                                Visible="False" Width="100px"></asp:Label></span></td>
                                    <td style="width: 39px; height: 14px;" valign="top">
                                    </td>
                                    <td style="width: 100px; height: 14px;" align="left" valign="top">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 31px; height: 14px;" align="right" valign="top">
                                        <span style="color: #ffffff">
                                            </span></td>
                                    <td style="width: 39px; height: 14px;" valign="top">
                                    </td>
                                    <td style="width: 100px; height: 14px;" align="left" valign="top">
                    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Style="position: static"
                        Text="Signup" Font-Bold="True" Font-Names="Arial Baltic" Font-Size="9pt" ValidationGroup="A1" Width="85px" BackColor="OliveDrab" BorderWidth="1px" ForeColor="White" BorderColor="#404040" Height="21px" /></td>
                                </tr>
                                <tr>
                                    <td style="height: 14px;" align="right" valign="top" colspan="3">
                                        <span style="color: #ffffff">
                    </span>
                                        &nbsp;<asp:Label ID="Label4" runat="server" Font-Bold="False" Font-Names="Arial" Font-Size="8pt"
                                            ForeColor="MidnightBlue" Style="position: static" Width="307px"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td align="left" colspan="3" style="height: 2px" valign="top">
                                        </td>
                                </tr>
                            </table>
                        </asp:Panel>
                            
                           </td>
                </tr>
                <tr>
                </tr>
                <tr>
                    <td align="right" colspan="2" style="height: 39px" valign="top">
                        &nbsp;
                        <asp:Label ID="Label10" runat="server" Font-Bold="True" ForeColor="DarkOliveGreen"
                            Style="position: static" Text="Web2nd - 2012 (Beta)" Width="253px" Font-Size="9pt"></asp:Label>
                        <asp:LinkButton ID="LinkButton2" runat="server" Font-Underline="False" ForeColor="MidnightBlue"
                            OnClick="LinkButton2_Click" Style="position: static" Width="620px" Font-Size="11pt" Font-Bold="True" Height="31px">Create a Professional Network System for your College and Institute.</asp:LinkButton></td>
                </tr>
                <tr>
                    <td align="center" style="height: 13px;" colspan="2">
                        &nbsp; &nbsp; &nbsp;
                        </td>
                </tr>
            </table>
        </div>
        <br />
        &nbsp;
                            <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="9pt" ForeColor="DarkBlue"
                                Style="position: static" Text="&copy MauCom Solutions (P) Ltd" Width="218px"></asp:Label><br />
        &nbsp;&nbsp;
    
    </div>
    </form>
</body>
</html>
