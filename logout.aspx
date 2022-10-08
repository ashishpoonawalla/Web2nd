<%@ Page Language="C#" AutoEventWireup="true" CodeFile="logout.aspx.cs" Inherits="logout" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script language="javascript" type="text/javascript">

history.forward(1);

function Button1_onclick() {

}

</script>



<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <link href="MainStyle.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    
    </div>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <br />
                <br />
                <br />
                <br />
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="24pt" ForeColor="#0033CC"
                    Text="Thank you for using web2nd" Width="519px"></asp:Label><br />
                <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick">
                </asp:Timer>
                <br />
                <br />
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="11pt" ForeColor="OliveDrab"
                    Text="Closing Your Profile for safety --- Logout in progress..." Width="500px"></asp:Label>
            </ContentTemplate>
        </asp:UpdatePanel>
    </form>
</body>
</html>
