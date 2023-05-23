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
/// Summary description for ChiTietBangBaoGia
/// </summary>
public class ChiTietBangBaoGia
{
    private int Id;
    private string tenthietbi;    
    private int soluong;
    private float dongia;
    private float thanhtien;
    private string thoigianbaohanh;
    private int bangbaogia;
    private string mathietbi;

    public ChiTietBangBaoGia(int Id, string tenthietbi, int soluong, float dongia, float thanhtien, string thoigianbaohanh, int bangbaogia, string mathietbi)
    {
        this.Id = Id;
        this.tenthietbi = tenthietbi;
        this.soluong = soluong;
        this.dongia = dongia;
        this.thanhtien = thanhtien;
        this.thoigianbaohanh = thoigianbaohanh;
        this.bangbaogia = bangbaogia;
        this.mathietbi = mathietbi;
    }

	public ChiTietBangBaoGia()
	{

	}
    public int Id1
    {
        get { return Id; }
        set { Id = value; }
    }
    public string Tenthietbi
    {
        get { return tenthietbi; }
        set { tenthietbi = value; }
    }
    public int Soluong
    {
        get { return soluong; }
        set { soluong = value; }
    }
    public float Dongia
    {
        get { return dongia; }
        set { dongia = value; }
    }
    public float Thanhtien
    {
        get { return thanhtien; }
        set { thanhtien = value; }
    }
    public string Thoigianbaohanh
    {
        get { return thoigianbaohanh; }
        set { thoigianbaohanh = value; }
    }
    public int Bangbaogia
    {
        get { return bangbaogia; }
        set { bangbaogia = value; }
    }
    public string Mathietbi
    {
        get { return mathietbi; }
        set { mathietbi = value; }
    }
}
