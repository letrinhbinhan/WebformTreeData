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
    private DateTime ngaynhap;    
    private int giaca;
    private bool tinhtrang;
    private int thietbi;

    public PhuTung(int mapt, string tenpt, DateTime ngaynhap, int giaca, bool tinhtrang, int thietbi)
    {
        this.mapt = mapt;
        this.tenpt = tenpt;
        this.ngaynhap = ngaynhap;
        this.giaca = giaca;
        this.tinhtrang = tinhtrang;
        this.thietbi = thietbi;
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
    //public DateTime Ngaythem
    //{
    //    get { return ngaythem; }
    //    set { ngaythem = value; }
    //}
    public DateTime Ngaynhap
    {
        get { return ngaynhap; }
        set { ngaynhap = value; }
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
    //public int Phutung
    //{
    //    get { return phutung; }
    //    set { phutung = value; }
    //}
    public int Thietbi
    {
        get { return thietbi; }
        set { thietbi = value; }
    }
}