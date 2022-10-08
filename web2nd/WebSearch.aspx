<%@ Page Language="C#" MasterPageFile="~/web2nd/main.master" AutoEventWireup="true" CodeFile="WebSearch.aspx.cs" Inherits="web2nd_WebSearch" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8"/>
	
	<link href="http://www.google.com/uds/css/gsearch.css" type="text/css" rel="stylesheet" />
	<script src="http://www.google.com/uds/api?file=uds.js&amp;v=1.0&amp;key=ABQIAAAAbKU1_TiGJxAPxQNRN0Z7thQEKx5ztgmPnP8AiUB_ZtaZmH_j4xR_bAGbjyG4GamffxBhkZcRXMQE0A" type="text/javascript"></script>
	
	<script type="text/javascript">
	var searchControl;
	window.onload = function() {
		onLoad();
	}
	function onLoad() {
		// Create a search control
		searchControl = new GSearchControl();
	
		// add a regular web search, with a custom label 'web'
		var webSrearch = new GwebSearch();
		webSrearch.setUserDefinedLabel("Google.com");
		searchControl.addSearcher(webSrearch);
	
		// add a site-limited web search, with a custom label
		var siteSearch = new GwebSearch();
		siteSearch.setUserDefinedLabel("yahoo.com");
		siteSearch.setSiteRestriction("yahoo.com");
		searchControl.addSearcher(siteSearch);
					
		// add a site-limited web search, with a custom label
		var siteSearch = new GwebSearch();
		siteSearch.setUserDefinedLabel("bing.com");
		siteSearch.setSiteRestriction("bing.com");
		searchControl.addSearcher(siteSearch);
			
	    // add a site-limited web search, with a custom label
		var siteSearch = new GwebSearch();
		siteSearch.setUserDefinedLabel("ask.com");
		siteSearch.setSiteRestriction("ask.com");
		searchControl.addSearcher(siteSearch);
					
				
		// add a blog search, with a custom label
		var blogsSrearch = new GblogSearch();
		blogsSrearch.setUserDefinedLabel("weblogs");
		searchControl.addSearcher(blogsSrearch);
	
		// setting the draw mode for the Google search
		var drawOptions = new GdrawOptions();
		// use tabbed view
		drawOptions.setDrawMode(GSearchControl.DRAW_MODE_TABBED);
		// set the input field (instead of the default one)
		drawOptions.setInput(document.getElementById('query'));
		// actually write the needed markup to the page
		searchControl.draw(document.getElementById("searchcontrol"), drawOptions);
		// set the google logo container
		GSearch.getBranding(document.getElementById("branding"));
	}
	
	var query = null;
	document.onkeydown = function(event) { kd(event); };
	function kd(e) {
		// make it work on FF and IE
		if (!e) e = event;
		// use ESC to clear the search results
		if (e.keyCode == 27)
			searchControl.clearAllResults();
		// get the input field
		if (query == null)
			query = document.getElementById('query');
		// and move the focus in there
		query.focus();
	}
	</script>
	
	<style type="text/css">
	body
	{
		width: 450px;
		font-family: verdana;
		text-align: center;
	}
	#queryContainer
	{
		margin-bottom:2em;
		width: 450px;
		margin-left:auto;
		margin-right:auto;
	}
	#query
	{
		border:1px solid silver;
		width: 400px;
	}
	#searchcontrol
	{
		width:500px;
		margin-left:auto;
		margin-right:auto;
		text-align:left;
	}
	.gsc-control 
	{ 
		width: 500px; 
	}
	</style>
</head>
<body>
	
 
	<div id="queryContainer" >
	  <H1>  Search - Google, Yahoo, Bing, Ask	</H1>	<input type="text" name="query" id="query" style="width: 300px" />
	</div>
    <table border="0" cellspacing="3" style="width: 400px">
        <tr>
            <td colspan="2" rowspan="1"> 
           
            <h2>
	        <div id="searchcontrol" style="width:500px; text-align: left; position: static;"></div>
	        </h2>
            </td>
        </tr>
        
    </table>
	<br />

</body>
</html>


</asp:Content>

