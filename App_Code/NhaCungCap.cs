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
/// Summary description for NhaCungCap
/// </summary>
public class NhaCungCap
{
    private int Id;    
    private string tennhacungcap;
    private string ma;
    private string email;
    private string sodienthoai;
    private string diachi;
    private string fax;
    private string masothue;
    private string sotaikhoan;
    private string nganhang;
    private string linklogo;
    private bool hoatdong;
    private DateTime ngaythem;
    private string nguonhang;
    private int dotincay;
    private string nguoidaidien;
    private string tendaidien;
    private string condaunhacungcap;
    private int thangdiem;
    private string ghichu;

	public NhaCungCap(int Id, string tennhacungcap, string ma, string email, string sodienthoai, string diachi, string fax, string masothue, string sotaikhoan,
        string linklogo, bool hoatdong, DateTime ngaythem, string nguonhang,int dotincay, string nguoidaidien, string tendaidien, string condaunhacungcap, int thangdiem, string ghichu)
	{
		this.tennhacungcap = tennhacungcap;
        this.ma = ma;
        this.email = email;
        this.sodienthoai = sodienthoai;
        this.diachi = diachi;
        this.fax = fax;
        this.masothue = masothue;
        this.sotaikhoan = sotaikhoan;
        this.linklogo = linklogo;
        this.hoatdong = hoatdong;
        this.ngaythem = ngaythem;
        this.nguonhang = nguonhang;
        this.dotincay = dotincay;
        this.nguoidaidien = nguoidaidien;
        this.tendaidien = tendaidien;
        this.condaunhacungcap = condaunhacungcap;
        this.thangdiem = thangdiem;
        this.ghichu = ghichu;
	}
    public int Id1
    {
        get { return Id; }
        set { Id = value; }
    }
    public NhaCungCap()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public string Tennhacungcap
    {
        get { return tennhacungcap; }
        set { tennhacungcap = value; }
    }
    public string Ma
    {
        get { return ma; }
        set { ma = value; }
    }
    public string Email
    {
        get { return email; }
        set { email = value; }
    }
    public string Sodienthoai
    {
        get { return sodienthoai; }
        set { sodienthoai = value; }
    }
    public string Diachi
    {
        get { return diachi; }
        set { diachi = value; }
    }
    public string Fax
    {
        get { return fax; }
        set { fax = value; }
    }
    public string Masothue
    {
        get { return masothue; }
        set { masothue = value; }
    }
    public string Sotaikhoan
    {
        get { return sotaikhoan; }
        set { sotaikhoan = value; }
    }
    public string Nganhang
    {
        get { return nganhang; }
        set { nganhang = value; }
    }
    public string Linklogo
    {
        get { return linklogo; }
        set { linklogo = value; }
    }
    public bool Hoatdong
    {
        get { return hoatdong; }
        set { hoatdong = value; }
    }
    public DateTime Ngaythem
    {
        get { return ngaythem; }
        set { ngaythem = value; }
    }
    public string Nguonhang
    {
        get { return nguonhang; }
        set { nguonhang = value; }
    }
    public int Dotincay
    {
        get { return dotincay; }
        set { dotincay = value; }
    }
    public string Condaunhacungcap
    {
        get { return condaunhacungcap; }
        set { condaunhacungcap = value; }
    }
    public string Nguoidaidien
    {
        get { return nguoidaidien; }
        set { nguoidaidien = value; }
    }
    public string Tendaidien
    {
        get { return tendaidien; }
        set { tendaidien = value; }
    }
    public int Thangdiem
    {
        get { return thangdiem; }
        set { thangdiem = value; }
    }
    public string Ghichu
    {
        get { return ghichu; }
        set { ghichu = value; }
    }
}
