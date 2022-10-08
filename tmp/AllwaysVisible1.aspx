<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AllwaysVisible1.aspx.cs" Inherits="AllwaysVisible1" %>
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
    <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePartialRendering="true" />
    <div class="demoarea">
        <div class="demoheading">AlwaysVisibleControl Demonstration</div>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <div style="width:230px;height:100px">
                    <asp:Panel ID="timer" runat="server"
                        Width="220px" BackColor="White" ForeColor="DarkBlue"
                        BorderWidth="2" BorderStyle="solid" BorderColor="DarkBlue" style="z-index: 1;">
                            <div style="width: 100%; height: 100%; vertical-align: middle; text-align: center;">
                                <p>Current Time:</p>
                                <span id="currentTime" runat="server" style="font-size:xx-large;font-weight:bold;line-height:40px;"/>
                            </div>
                    </asp:Panel>
                    <ajaxToolkit:AlwaysVisibleControlExtender ID="avce" runat="server"
                        TargetControlID="timer"
                        VerticalSide="Top"
                        VerticalOffset="10"
                        HorizontalSide="Right"
                        HorizontalOffset="10"
                        ScrollEffectDuration=".1" />
                </div>
         
            </ContentTemplate>
         </asp:UpdatePanel>
        <br />
        <br />
        <br />
        <br />
        <br />
        f<br />
        &nbsp;gh<br />
        gfh<br />
        fg<br />
        h fgh<br />
        gf h<br />
        fh<br />
        &nbsp;f<br />
        hf<br />
        &nbsp;h<br />
        gfh<br />
        fg
        <br />
        hf<br />
        ghfg<br />
        hf<br />
        h f<br />
        hfh
        <br />
        fgh<br />
        &nbsp;h<br />
        fgh<br />
        fg
        <br />
        hfg<br />
        &nbsp;hfg<br />
        &nbsp;hf hf h<br />
        gf h<br />
        fgh<br />
        f g<br />
        hfgh
        <br />
        gffg hf<br />
        hf
         
         <script type="text/javascript" language="javascript">
            function updateTime()
            {
                var label = document.getElementById('ctl00_SampleContent_currentTime');
                if (label) {
                    var time = (new Date()).toLocaleTimeString();
                    time = time.match(/^(\s*\d{1,2}\s*\:\s*\d{1,2}\s*\:\s*\d{1,2}\s*[A-Za-z]{2}).*$/)[1];
                    label.innerHTML = time;
                }
            }            
            updateTime();
            window.setInterval(updateTime, 1000);
        </script>

        &nbsp;</div>
    <div class="demobottom"></div>
    </div>
    </form>
</body>
</html>
