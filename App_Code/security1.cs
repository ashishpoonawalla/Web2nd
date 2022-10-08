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
/// Summary description for security1
/// </summary>
public class security1
{
    string st1, st3 = "", st4 = "", st5 = "", str1 = "A", costr = "";
    string st21, st22 = "", st23 = "", st24 = "", str12 = "A", costr2 = "";
    int a = 0, b = 0, i = 0, ln;
    int a2 = 0, b2 = 0, i2 = 0, ln2, dde1 = 0, dde2 = 0;

	public security1()
	{
	}


    public string ddd22(string ssss)
    {
        //label7.Text = "";
        //      string st21, st22 = "", st23 = "", st24 = "", str12 = "A", costr2 = "";
        //       int a2 = 0, b2 = 0, i2 = 0, ln2, dde1=0, dde2=0;
        st24 = "";
        i = 3;
        char d;
        //st21 = textBox4.Text;
        st21 = ssss;



        ln2 = st21.Length;
        str12 = st21.Substring(ln2 - 1, 1);
        //label2.Text = str12;

        if (str12 == "d")
            str12 = "A";
        else if (str12 == "f")
            str12 = "B";
        else if (str12 == "m")
            str12 = "C";
        else if (str12 == "e")
            str12 = "D";

        //label3.Text = str12;

        st21 = st21.Substring(0, ln2 - 1);
        //label4.Text = st21;

        ln2 = st21.Length;

        dde1 = 0;
        int x = 0, u = 0;
        st23 = "";
        while (dde1 <= ln2 - 3)
        {
            costr = "";
            x++;

            if (str12 == "A" || str12 == "C")
            {
                if (x % 2 == 0)
                {
                    costr = st21.Substring(dde1, 3);
//                    label7.Text += costr; label7.Text += ".";
                    ddd21();

                    st23 = st23 + costr;

                    dde1 += 3;
                }
                else
                {
                    costr = st21.Substring(dde1, 3);
//                    label7.Text += costr; label7.Text += ".";
                    ddd21();

                    st23 = st23 + costr;

                    dde1 += 4;
                }
            }
            else if (str12 == "B" || str12 == "D")
            {
                if (x % 2 != 0)
                {
                    costr = st21.Substring(dde1, 3);
//                    label7.Text += costr; label7.Text += ".";
                    ddd21();

                    st23 = st23 + costr;

                    dde1 += 3;
                }
                else
                {
                    costr = st21.Substring(dde1, 3);
//                    label7.Text += costr; label7.Text += ".";
                    ddd21();

                    st23 = st23 + costr;

                    dde1 += 4;
                }


            }
            else
            {
                dde1++;
            }



        }

        //textBox5.Text = st23.Trim();
        ln2 = st23.Length;


        st24 = "";
        i = 3;

        st4 = st23;
        foreach (char c in st4)
        {
            st5 = st5 + c.ToString();
            ln = st5.Length;
            if (ln == i)
            {
                b = Convert.ToInt32(st5);
                b = b - 102;
                d = Convert.ToChar(b);
                st24 += d.ToString();
                st5 = "";
            }
        }

        //textBox3.Text = st24;
        return (st24);

    }

    void ddd21()
    {

        if (str12 == "A")
        {
            if (costr == "gr2") costr = "0";
            if (costr == "D5c") costr = "1";
            if (costr == "NaR") costr = "2";
            if (costr == "Xt3") costr = "3";
            if (costr == "mo8") costr = "4";
            if (costr == "gTa") costr = "5";
            if (costr == "K3e") costr = "6";
            if (costr == "at3") costr = "7";
            if (costr == "26s") costr = "8";
            if (costr == "yoi") costr = "9";

        }

        else if (str12 == "B")
        {
            if (costr == "kRt") costr = "0";
            if (costr == "8j4") costr = "1";
            if (costr == "xtr") costr = "2";
            if (costr == "m5g") costr = "3";
            if (costr == "jlg") costr = "4";
            if (costr == "i54") costr = "5";
            if (costr == "iol") costr = "6";
            if (costr == "ao1") costr = "7";
            if (costr == "mcj") costr = "8";
            if (costr == "8s3") costr = "9";

        }


        else if (str12 == "C")
        {
            if (costr == "8k3") costr = "0";
            if (costr == "lSd") costr = "1";
            if (costr == "ncj") costr = "2";
            if (costr == "39d") costr = "3";
            if (costr == "2kd") costr = "4";
            if (costr == "39y") costr = "5";
            if (costr == "n2s") costr = "6";
            if (costr == "nfj") costr = "7";
            if (costr == "p9i") costr = "8";
            if (costr == "kri") costr = "9";

        }

        else if (str12 == "D")
        {
            if (costr == "zsh") costr = "0";
            if (costr == "fhr") costr = "1";
            if (costr == "2jn") costr = "2";
            if (costr == "7dj") costr = "3";
            if (costr == "mj3") costr = "4";
            if (costr == "jif") costr = "5";
            if (costr == "mdk") costr = "6";
            if (costr == "jri") costr = "7";
            if (costr == "f3s") costr = "8";
            if (costr == "f43") costr = "9";

        }
        else
        {
            
        }
        //label7.Text += costr;
    }
}
