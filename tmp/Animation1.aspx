<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Animation1.aspx.cs" Inherits="Animation1" %>
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
    
     
    <asp:ScriptManager ID="ScriptManager1" runat="server" />
    <div class="demoarea">
        <div class="demoheading">Animation Demonstration</div>
        <p>
            The animation support in the Toolkit is more than just a control.  It's a pluggable, extensible
            framework for easily adding animation effects to your web pages.
        </p>
      
        <p>
            <!-- Button used to launch the animation -->
            <asp:Button ID="btnInfo" runat="server" OnClientClick="return false;" Text="Click Here" style="position: static" OnClick="btnInfo_Click"/></p>
            
        <p>
            By composing basic animations (there are many to choose from!) you can create very sophisticated
            effects, or use them independently from client code, server-side code, or XML markup.
        </p>
        <p>
           
        
        <div id="flyout" style="display: none; overflow: hidden; z-index: 2; background-color: #FFFFFF; border: solid 1px #D0D0D0; position: absolute">
        
        </div>
        <div id="info" style="display: none; width: 250px; z-index: 2; opacity: 0; filter: progid:DXImageTransform.Microsoft.Alpha(opacity=0); font-size: 12px; background-color: #FFFFFF; padding: 5px; border-right: #cccccc 3px solid; border-top: #cccccc 3px solid; border-left: #cccccc 3px solid; border-bottom: #cccccc 3px solid; position: absolute">
          
            <div id="btnCloseParent" style="float: right; opacity: 0; filter: progid:DXImageTransform.Microsoft.Alpha(opacity=0);">
                <asp:LinkButton id="btnClose" runat="server" OnClientClick="return false;" Text="X" ToolTip="Close" Style="background-color: #666666; color: #FFFFFF; text-align: center; font-weight: bold; text-decoration: none; border: outset thin #FFFFFF; padding: 5px;" />
            </div>
          
            <div>
                <p>
                    Once you get the general idea of the animation's markup, you'll want to play a bit.  All of
                    the animations are created from simple, reusable building blocks that you can compose together.
                    Before long you'll be creating dazzling visuals.  By grouping steps together and specifying
                    them to be run either in sequence or in parallel, you'll achieve almost anything you can
                    imagine, without writing a single line of code!
                </p>
                <br />
                <p>
                    The XML defining the animations is very easy to learn and write, such as this example's
                  
                    markup.
                </p>
            </div>
        </div>
        
        <script type="text/javascript" language="javascript">
            // Move an element directly on top of another element (and optionally
            // make it the same size)
            function Cover(bottom, top, ignoreSize) {
                var location = Sys.UI.DomElement.getLocation(bottom);
                top.style.position = 'absolute';
                top.style.top = location.y + 'px';
                top.style.left = location.x + 'px';
                if (!ignoreSize) {
                    top.style.height = bottom.offsetHeight + 'px';
                    top.style.width = bottom.offsetWidth + 'px';
                }
            }
        </script>
        
        <ajaxToolkit:AnimationExtender id="OpenAnimation" runat="server" TargetControlID="btnInfo">
            <Animations>
                <OnClick>
                    <Sequence>
                        <%-- Disable the button so it can't be clicked again --%>
                        <EnableAction Enabled="false" />
                        
                        <%-- Position the wire frame on top of the button and show it --%>
                        <ScriptAction Script="Cover($get('ctl00_SampleContent_btnInfo'), $get('flyout'));" />
                        <StyleAction AnimationTarget="flyout" Attribute="display" Value="block"/>
                        
                        <%-- Move the wire frame from the button's bounds to the info panel's bounds --%>
                        <Parallel AnimationTarget="flyout" Duration=".3" Fps="25">
                            <Move Horizontal="150" Vertical="-50" />
                            <Resize Width="260" Height="280" />
                            <Color PropertyKey="backgroundColor" StartValue="#AAAAAA" EndValue="#FFFFFF" />
                        </Parallel>
                        
                        <%-- Move the info panel on top of the wire frame, fade it in, and hide the frame --%>
                        <ScriptAction Script="Cover($get('flyout'), $get('info'), true);" />
                        <StyleAction AnimationTarget="info" Attribute="display" Value="block"/>
                        <FadeIn AnimationTarget="info" Duration=".2"/>
                        <StyleAction AnimationTarget="flyout" Attribute="display" Value="none"/>
                        
                        <%-- Flash the text/border red and fade in the "close" button --%>
                        <Parallel AnimationTarget="info" Duration=".5">
                            <Color PropertyKey="color" StartValue="#666666" EndValue="#FF0000" />
                            <Color PropertyKey="borderColor" StartValue="#666666" EndValue="#FF0000" />
                        </Parallel>
                        <Parallel AnimationTarget="info" Duration=".5">
                            <Color PropertyKey="color" StartValue="#FF0000" EndValue="#666666" />
                            <Color PropertyKey="borderColor" StartValue="#FF0000" EndValue="#666666" />
                            <FadeIn AnimationTarget="btnCloseParent" MaximumOpacity=".9" />
                        </Parallel>
                    </Sequence>
                </OnClick>
            </Animations>
        </ajaxToolkit:AnimationExtender>
        
        
        <ajaxToolkit:AnimationExtender id="CloseAnimation" runat="server" TargetControlID="btnClose">
            <Animations>
                <OnClick>
                    <Sequence AnimationTarget="info">
                        <%--  Shrink the info panel out of view --%>
                        <StyleAction Attribute="overflow" Value="hidden"/>
                        <Parallel Duration=".3" Fps="15">
                            <Scale ScaleFactor="0.05" Center="true" ScaleFont="true" FontUnit="px" />
                            <FadeOut />
                        </Parallel>
                        
                        <%--  Reset the sample so it can be played again --%>
                        <StyleAction Attribute="display" Value="none"/>
                        <StyleAction Attribute="width" Value="250px"/>
                        <StyleAction Attribute="height" Value=""/>
                        <StyleAction Attribute="fontSize" Value="12px"/>
                        <OpacityAction AnimationTarget="btnCloseParent" Opacity="0" />
                        
                        <%--  Enable the button so it can be played again --%>
                        <EnableAction AnimationTarget="ctl00_SampleContent_btnInfo" Enabled="true" />
                    </Sequence>
                </OnClick>
                <OnMouseOver>
                    <Color Duration=".2" PropertyKey="color" StartValue="#FFFFFF" EndValue="#FF0000" />
                </OnMouseOver>
                <OnMouseOut>
                    <Color Duration=".2" PropertyKey="color" StartValue="#FF0000" EndValue="#FFFFFF" />
                </OnMouseOut>
             </Animations>
        </ajaxToolkit:AnimationExtender>
        <br />
        f sdfsd fds sdfdsf sdf sdfsd fsdff sdf<br />
        sd
        <br />
        f<br />
        ds f<br />
        sdfsd ffsd<br />
        &nbsp;fd fsdf sdfsdf k hauwoedADOJad jJDAS JDAI DJOadoasod joasjdo ajsdojodj aosjdo
        jasodjas d<br />
        <br />
        asd as<br />
        d<br />
        sad<br />
        asd<br />
        da<br />
        d as<br />
        dd<br />
        </p>
    </div>
    
    
   
     
     
    </div>
    </form>
</body>
</html>
