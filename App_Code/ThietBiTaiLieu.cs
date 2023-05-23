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
/// Summary description for ThietBiTaiLieu
/// </summary>
public class ThietBiTaiLieu
{
    private int mathietbitailieu;
    private int mathietbi;
    private string tentailieu;
    private string linktailieu;
    private string tenfile;
    private DateTime ngaythem;    

    public ThietBiTaiLieu(int mathietbitailieu, int mathietbi, string tentailieu, string linktailieu, string tenfile, DateTime ngaythem)
    {
        this.mathietbitailieu = mathietbitailieu;
        this.mathietbi = mathietbi;
        this.tentailieu = tentailieu;
        this.linktailieu = linktailieu;
        this.tenfile = tenfile;
        this.ngaythem = ngaythem;
    }
	public ThietBiTaiLieu()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public int Mathietbitailieu
    {
        get { return mathietbitailieu; }
        set { mathietbitailieu = value; }
    }
    public int Mathietbi
    {
        get { return mathietbi; }
        set { mathietbi = value; }
    }
    public string Tentailieu
    {
        get { return tentailieu; }
        set { tentailieu = value; }
    }
    public string Linktailieu
    {
        get { return linktailieu; }
        set { linktailieu = value; }
    }
    public string Tenfile
    {
        get { return tenfile; }
        set { tenfile = value; }
    }
    public DateTime Ngaythem
    {
        get { return ngaythem; }
        set { ngaythem = value; }
    }
}
