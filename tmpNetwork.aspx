<%@ Page Language="C#" AutoEventWireup="true" CodeFile="tmpNetwork.aspx.cs" Inherits="tmpNetwork" %>

<%@ Register Src="ChangeNetwork.ascx" TagName="ChangeNetwork" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
        <uc1:ChangeNetwork id="ChangeNetwork1" runat="server" OnLoad="ChangeNetwork1_Load">
        </uc1:ChangeNetwork>
    </form>
</body>
</html>
