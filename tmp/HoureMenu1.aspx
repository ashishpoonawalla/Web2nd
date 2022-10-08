<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HoureMenu1.aspx.cs" Inherits="HoureMenu1" %>
<%@ Register
    Assembly="AjaxControlToolkit"
    Namespace="AjaxControlToolkit"
    TagPrefix="ajaxToolkit" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
     <asp:ScriptManager ID="ScriptManager1" runat="Server" />
        <table border="1" style="position: static">
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="Label4" runat="server" Style="position: static" Text="Label" Width="102px"></asp:Label></td>
                <td style="width: 100px">
                
                
    
                                      <asp:UpdatePanel ID="up1" runat="server">
                                            <ContentTemplate>
                                    
                                                <asp:GridView ID="GridView1" runat="server"
                                                    AutoGenerateColumns="False" DataKeyNames="ItemID" DataSourceID="ObjectDataSource1"
                                                    ShowHeader="False" Width="500px" BackColor="Azure" GridLines="None" >
                                                    <Columns>
                                                        <asp:TemplateField>
                                                           
                                                           
                                                           
                                                           
                                                            <ItemTemplate>
                                                                <asp:Panel CssClass="popupMenu" ID="PopupMenu" runat="server" BackColor="#E0E0E0">
                                                                    <div style="border:1px outset white;padding:2px;">
                                                                        <div><asp:LinkButton ID="LinkButton1" runat="server" CommandName="Edit" Text="Edit" /></div>
                                                                        <div><asp:LinkButton ID="LinkButton2" runat="server" CommandName="Delete" Text="Delete" />&nbsp;</div>
                                                                </div>
                                                                </asp:Panel>

                                                                <asp:Panel ID="Panel9" runat="server">
                                                                    <table width="100%">
                                                                        <tr>
                                                                            <td width="25%"><asp:Label Font-Bold="true" ID="Label1" runat="server"          Text='<%# HttpUtility.HtmlEncode(Convert.ToString(Eval("Title"))) %>' /></td>
                                                                            <td width="50%"><asp:Label ID="Label2" runat="server"            Text='<%# HttpUtility.HtmlEncode(Convert.ToString(Eval("Description"))) %>' /></td>
                                                                            <td width="25%"><asp:Label ID="Label3" runat="server" Text='<%# Eval("Priority") %>' /></td>
                                                                        </tr>
                                                                    </table>
                                                                </asp:Panel>
                                                                <asp:Panel CssClass="popupMenu" ID="Panel1" runat="server" BackColor="#E0E0E0" style="position: static">
                                                                    <div>
                                                                    </div>
                                                                </asp:Panel>
                                                              
                                                                <ajaxToolkit:HoverMenuExtender ID="hme2" runat="Server"
                                                                    HoverCssClass="popupHover"
                                                                    PopupControlID="PopupMenu"
                                                                    PopupPosition="Left"
                                                                    TargetControlID="Panel9"
                                                                    PopDelay="25" />
                                                                <br />

                                                                <ajaxToolkit:HoverMenuExtender ID="HoverMenuExtender1" runat="server"
                                                                    HoverCssClass="popupHover"
                                                                    PopupControlID="PopupMenu"
                                                                    PopupPosition="Left"
                                                                    TargetControlID="Panel9"
                                                                    PopDelay="25" />
                                                            </ItemTemplate>
                                                            
                                                            
                                                            
                                                            
                                                            
                                                            <EditItemTemplate>  
                                                                <asp:Panel ID="Panel9" runat="server" Width="80%">
                                                                    <table width="100%">
                                                                        <tr>
                                                                            <td width="30%">Title:<br /><asp:TextBox Font-Bold="true" ID="TextBox1" runat="server"
                                                                                Text='<%# Bind("Title") %>' Width="100" /></td>
                                                                            <td width="55%">Desc:<br /><asp:TextBox ID="TextBox2" runat="server"
                                                                                Text='<%# Bind("Description") %>' Width="150" /></td>
                                                                            <td width="15%">Pri:<br /><asp:TextBox ID="TextBox3" runat="server"
                                                                                Text='<%# Bind("Priority") %>' Width="40" /></td>
                                                                        </tr>
                                                                    </table>
                                                                </asp:Panel>

                                                                <ajaxToolkit:HoverMenuExtender ID="hme1" runat="Server"
                                                                    TargetControlID="Panel9"
                                                                    PopupControlID="PopupMenu"
                                                                    HoverCssClass="popupHover"
                                                                    PopupPosition="Right"
                                                                    
                                                                     OffsetX="0" OffsetY="0" />
                                                               
                                                                <asp:Panel ID="PopupMenu" runat="server" CssClass="popupMenu" Width="80" BackColor="YellowGreen">
                                                                    <div style="border:1px outset white">
                                                                        <asp:LinkButton ID="LinkButton1" runat="server"
                                                                            CausesValidation="True" CommandName="Update" Text="Update" />
                                                                        <br />
                                                                        <asp:LinkButton ID="LinkButton2" runat="server"
                                                                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                    </div>
                                                                </asp:Panel>
                                                            </EditItemTemplate>
                                                            
                                                            
                                                            
                                                            
                                                        </asp:TemplateField>
                                                    </Columns>
                                                </asp:GridView>
                                                
                                                
                                                
                                                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete"
                                                    InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="Select"
                                                    TypeName="SessionTodoXmlDataObject" UpdateMethod="Update">
                                                    <DeleteParameters>
                                                        <asp:Parameter Name="Original_ItemID" Type="Int32" />
                                                    </DeleteParameters>
                                                    <UpdateParameters>
                                                        <asp:Parameter Name="Title" Type="String" />
                                                        <asp:Parameter Name="Description" Type="String" />
                                                        <asp:Parameter Name="Priority" Type="Int32" />
                                                        <asp:Parameter Name="Original_ItemID" Type="Int32" />
                                                    </UpdateParameters>
                                                    <InsertParameters>
                                                        <asp:Parameter Name="Title" Type="String" />
                                                        <asp:Parameter Name="Description" Type="String" />
                                                        <asp:Parameter Name="Priority" Type="Int32" />
                                                    </InsertParameters>
                                                </asp:ObjectDataSource>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                        
                                        
                                        
                                        
                </td>
                <td style="width: 100px">
                    <asp:Label ID="Label5" runat="server" Style="position: static" Text="Label" Width="96px"></asp:Label></td>
            </tr>
        </table>
    <div class="demoarea">
        &nbsp;</div>

  
    
    </div>
    </form>
</body>
</html>
