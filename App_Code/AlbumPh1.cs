using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

/// <summary>
/// Summary description for AlbumPh1
/// </summary>
public class AlbumPh1
{
    //private string _userAnswer;

    //public string UserAnswer
    //{
    //    get         {             return _userAnswer;         }
    //    set         {             _userAnswer = value;         }
    //}


    public AlbumPh1()
	{		
	}

    private int _SN;
    private string _PicPath;

    public int SN
    {
        get { return _SN; }
        set { _SN = value; }
    }
  
    public string PicPath
    {
        get { return _PicPath; }
        set { _PicPath = value; }
    }
  

}