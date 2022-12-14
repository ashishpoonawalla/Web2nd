// (c) Copyright Microsoft Corporation.
// This source is subject to the Microsoft Permissive License.
// See http://www.microsoft.com/resources/sharedsource/licensingbasics/sharedsourcelicenses.mspx.
// All other rights reserved.


using System;
using System.Collections;
using System.Web.UI;

/// <summary>
/// This Page class is common to all sample pages and exists as a place to
/// implement common functionality
/// </summary>
public class CommonPage : Page
{
    public CommonPage()
    {
    }

    public string GetContentFillerText()
    {
        return
            "ASP.NET AJAX is a free framework for building a new generation of richer, more interactive, highly personalized cross-browser web applications.  " +
            "This new web development technology from Microsoft integrates cross-browser client script libraries with the ASP.NET 2.0 server-based development framework.  " +
            "In addition, ASP.NET AJAX offers you the same type of development platform for client-based web pages that ASP.NET offers for server-based pages.  " +
            "And because ASP.NET AJAX is an extension of ASP.NET, it is fully integrated with server-based services. ASP.NET AJAX makes it possible to easily take advantage of AJAX techniques on the web and enables you to create ASP.NET pages with a rich, responsive UI and server communication.  " +
            "However, AJAX isn't just for ASP.NET.  " +
            "You can take advantage of the rich client framework to easily build client-centric web applications that integrate with any backend data provider and run on most modern browsers.  ";
    }
}

public interface IContentPlaceHolders
{
    IList GetContentPlaceHolders();
}