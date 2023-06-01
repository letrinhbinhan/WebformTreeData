using System;
using System.Collections.Generic;
using System.Web;

/// <summary>
/// Summary description for PhuTung
/// </summary>
public class PhuTung
{
    private int mapt;
    private string tenpt;
    private DateTime ngaythaythe;    
    private int giaca;
    private bool tinhtrang;
    private int thietbi;
    private int soluong;
    public PhuTung(int mapt, string tenpt, DateTime ngaythaythe, int giaca, bool tinhtrang, int thietbi, int soluong)
    {
        this.mapt = mapt;
        this.tenpt = tenpt;
        this.ngaythaythe = ngaythaythe;
        this.giaca = giaca;
        this.tinhtrang = tinhtrang;
        this.thietbi = thietbi;
        this.soluong = soluong;
    }
	public PhuTung()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public int Mapt
    {
        get { return mapt; }
        set { mapt = value; }
    }
    public string Tenpt
    {
        get { return tenpt; }
        set { tenpt = value; }
    }
    public DateTime Ngaythaythe
    {
        get { return ngaythaythe; }
        set { ngaythaythe = value; }
    }
    public int Giaca
    {
        get { return giaca; }
        set { giaca = value; }
    }
    public bool Tinhtrang
    {
        get { return tinhtrang; }
        set { tinhtrang = value; }
    }
    public int Thietbi
    {
        get { return thietbi; }
        set { thietbi = value; }
    }
    public int Soluong
    {
        get { return soluong; }
        set { soluong = value; }
    }
}