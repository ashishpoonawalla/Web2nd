<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MetaS.aspx.cs" Inherits="MetaS" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8"/>
	<title>Meta Search Engine - MauCom</title>
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
		font-family: verdana;
		text-align: center;
	}
	#queryContainer
	{
		margin-bottom:2em;
		width: 90%;
		margin-left:auto;
		margin-right:auto;
	}
	#query
	{
		border:1px solid silver;
		width: 100%;
	}
	#searchcontrol
	{
		width:80%;
		margin-left:auto;
		margin-right:auto;
		text-align:left;
	}
	.gsc-control 
	{ 
		width: 100%; 
	}
	</style>
</head>
<body>
	<h1>
        Web2nd</h1>
    <p>
        Advance Search</p>
	<div id="queryContainer">
		<input type="text" name="query" id="query" style="width: 50%" /></div>
    <table border="0" cellspacing="3" style="width: 100%">
        <tr>
            <td colspan="2" rowspan="1">
    <input id="Submit1" type="submit" value=" Search " />
    Designed By - MauCom
                <br />
	<div id="searchcontrol" style="width: 100%; text-align: left; position: static;"></div>
            </td>
        </tr>
        <tr>
            <td colspan="2" rowspan="3">
                <hr />
                (c) - MauCom</td>
        </tr>
        <tr>
        </tr>
        <tr>
        </tr>
    </table>
	<br />

</body>
</html>
