// (c) Copyright Microsoft Corporation.
// This source is subject to the Microsoft Permissive License.
// See http://www.microsoft.com/resources/sharedsource/licensingbasics/sharedsourcelicenses.mspx.
// All other rights reserved.


using System;
using System.Collections.Specialized;
using System.Web;
using System.Web.Services;
using System.Xml;

/// <summary>
/// Helper web service for CascadingDropDown sample
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
[System.Web.Script.Services.ScriptService]
public class CarsService : WebService
{
    // Member variables
    private static XmlDocument _document;    
    private static object _lock = new object();

    // we make these public statics just so we can call them from externally for the
    // page method call
    public static XmlDocument Document
    {
        get
        {
            lock (_lock)
            {
                if (_document == null)
                {
                    // Read XML data from disk
                    _document = new XmlDocument();
                    _document.Load(HttpContext.Current.Server.MapPath("~/App_Data/CarsService.xml"));
                }
            }
            return _document;
        }
    }

    public static string[] Hierarchy
    {
        get { return new string[] { "make", "model" }; }
    }

    /// <summary>
    /// Constructor to initialize members
    /// </summary>
    public CarsService()
    {
    }
        
    /// <summary>
    /// Helper web service method
    /// </summary>
    /// <param name="knownCategoryValues">private storage format string</param>
    /// <param name="category">category of DropDownList to populate</param>
    /// <returns>list of content items</returns>
    [WebMethod]
    public AjaxControlToolkit.CascadingDropDownNameValue[] GetDropDownContents(string knownCategoryValues, string category)
    {
        // Get a dictionary of known category/value pairs
        StringDictionary knownCategoryValuesDictionary = AjaxControlToolkit.CascadingDropDown.ParseKnownCategoryValuesString(knownCategoryValues);

        // Perform a simple query against the data document
        return AjaxControlToolkit.CascadingDropDown.QuerySimpleCascadingDropDownDocument(Document, Hierarchy, knownCategoryValuesDictionary, category);
    }
}