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
/// Summary description for BangBaoGia
/// </summary>
public class BangBaoGia
{
    private int mabangbaogia;
    private int manhacungcap;
    private string donvi;
    private string diachidonvi;
    private string dienthoailienlac;
    private string emaildonvi;
    private DateTime ngaylap;
    private string nguoilap;
    private bool dabaogomVAT;
    private int soluongmathang;
    private string moichaogia;    

    public BangBaoGia(int mabangbaogia, int manhacungcap, string donvi, string diachidonvi, string dienthoailienlac, string emaildonvi, DateTime ngaylap, string nguoilap, bool dabaogomVAT, int soluongmathang, string moichaogia)
    {
        this.mabangbaogia = mabangbaogia;
        this.manhacungcap = manhacungcap;
        this.donvi = donvi;
        this.diachidonvi = diachidonvi;
        this.dienthoailienlac = dienthoailienlac;
        this.emaildonvi = emaildonvi;
        this.ngaylap = ngaylap;
        this.nguoilap = nguoilap;
        this.dabaogomVAT = dabaogomVAT;
        this.soluongmathang = soluongmathang;
        this.moichaogia = moichaogia;
    }
	public BangBaoGia()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public int Mabangbaogia
    {
        get { return mabangbaogia; }
        set { mabangbaogia = value; }
    }
    public int Manhacungcap
    {
        get { return manhacungcap; }
        set { manhacungcap = value; }
    }
    public string Donvi
    {
        get { return donvi; }
        set { donvi = value; }
    }
    public string Diachidonvi
    {
        get { return diachidonvi; }
        set { diachidonvi = value; }
    }
    public string Dienthoailienlac
    {
        get { return dienthoailienlac; }
        set { dienthoailienlac = value; }
    }
    public string Emaildonvi
    {
        get { return emaildonvi; }
        set { emaildonvi = value; }
    }
    public DateTime Ngaylap
    {
        get { return ngaylap; }
        set { ngaylap = value; }
    }
    public string Nguoilap
    {
        get { return nguoilap; }
        set { nguoilap = value; }
    }
    public bool DabaogomVAT
    {
        get { return dabaogomVAT; }
        set { dabaogomVAT = value; }
    }
    public int Soluongmathang
    {
        get { return soluongmathang; }
        set { soluongmathang = value; }
    }
    public string Moichaogia
    {
        get { return moichaogia; }
        set { moichaogia = value; }
    }
}
