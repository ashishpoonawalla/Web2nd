<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Accordian1.aspx.cs" Inherits="Accordian1" %>
<%@ Register
    Assembly="AjaxControlToolkit"
    Namespace="AjaxControlToolkit"
    TagPrefix="ajaxToolkit" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
  <asp:ScriptManager ID="ScriptManager1" runat="server" />
    <div class="demoarea" >
        <div class="demoheading">Accordion Demonstration</div>
    
        <ajaxToolkit:Accordion ID="MyAccordion" runat="server" SelectedIndex="0"
            HeaderCssClass="accordionHeader" ContentCssClass="accordionContent"
            FadeTransitions="false" FramesPerSecond="40" TransitionDuration="1000" AutoSize="None">
           <Panes>
           
           
            <ajaxToolkit:AccordionPane ID="AccordionPane1" runat="server">
                <Header><a href="" onclick="return false;" class="accordionLink">1. Accordion</a></Header>
                <Content>
                    The Accordion is a web control that allows you to provide multiple panes and display them one at a time.
                    It is like having several <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/CollapsiblePanel/CollapsiblePanel.aspx" Text="CollapsiblePanels" />
                    where only one can be expanded at a time.  The Accordion is implemented as a web control that contains
                    AccordionPane web controls. Each AccordionPane control has a template for its Header and its Content.
                    We keep track of the selected pane so it stays visible across postbacks.
                </Content>
            </ajaxToolkit:AccordionPane>
            
            <ajaxToolkit:AccordionPane ID="AccordionPane2" runat="server">
                <Header><a href="" onclick="return false;" class="accordionLink">2. AutoSize</a></Header>
                <Content>
                    <p>It also supports three AutoSize modes so it can fit in a variety of layouts.
                        <ul>
                            <li><b>None</b> - The Accordion grows/shrinks without restriction.  This can cause other elements
                                on your page to move up and down with it.</li>
                            <li><b>Limit</b> - The Accordion never grows larger than the value specified by its Height
                                property.  This will cause the content to scroll if it is too large to be displayed.</li>
                            <li><b>Fill</b> - The Accordion always stays the exact same size as its Height property.  This
                                will cause the content to be expanded or shrunk if it isn't the right size.</li>
                        </ul>
                    </p>
                </Content>
            </ajaxToolkit:AccordionPane>
            
            <ajaxToolkit:AccordionPane ID="AccordionPane3" runat="server">
                <Header><a href="" onclick="return false;" class="accordionLink">3. Control or Extender</a></Header>
                <Content>
                    The Accordion is written using an extender like most of the other extenders in the AJAX Control Toolkit.
                    The extender expects its input in a very specific hierarchy of container elements (like divs/spans), so
                    the Accordion and AccordionPane web controls are used to generate the expected input for the extender.
                    The extender can also be used on its own if you provide it appropriate input.
                </Content>
            </ajaxToolkit:AccordionPane>
            
            <ajaxToolkit:AccordionPane ID="AccordionPane4" runat="server">
                <Header><a href="" onclick="return false;" class="accordionLink">4. What is ASP.NET AJAX?</a></Header>
                <Content>
                    <p>sdkfsdf sdf sfsdfhsd fsdf hsdf s</p>
                    <p>sdkfsdf sdf sfsdfhsd fsdf hsdf s</p>
                    <p>sdkfsdf sdf sfsdfhsd fsdf hsdf s</p>
                    <p>sdkfsdf sdf sfsdfhsd fsdf hsdf s</p>
                    <p>sdkfsdf sdf sfsdfhsd fsdf hsdf s</p>
                </Content>
            </ajaxToolkit:AccordionPane>
            
            </Panes>
        </ajaxToolkit:Accordion>
        
        <br />

    </div>
    <div class="demobottom"></div>
    
    </div>
    </form>
</body>
</html>
