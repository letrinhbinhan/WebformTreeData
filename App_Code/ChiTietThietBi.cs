using System;
using System.Collections.Generic;
using System.Web;

/// <summary>
/// Summary description for ChiTietThietBi
/// </summary>
public class ChiTietThietBi
{
    private int id;
    private string tenchitiet;
    private string thongsokythuat;
    private string donvi;
    private string model;
    private string partno;
    private string kyhieu;
    private int thietbi;
    public ChiTietThietBi(int id, string tenchitiet, string thongsokythuat, string donvi, string model, string partno, string kyhieu, int thietbi)
    {
        this.id = id;
        this.tenchitiet = tenchitiet;
        this.thongsokythuat = thongsokythuat;
        this.donvi = donvi;
        this.model = model;
        this.partno = partno;
        this.kyhieu = kyhieu;
        this.thietbi = thietbi;
    }
	public ChiTietThietBi()
	{
	}
    public int Id
    {
        get { return id; }
        set { id = value; }
    }
    public string Tenchitiet
    {
        get { return tenchitiet; }
        set { tenchitiet = value; }
    }
    public string Thongsokythuat
    {
        get { return thongsokythuat; }
        set { thongsokythuat = value; }
    }
    public string Donvi
    {
        get { return donvi; }
        set { donvi = value; }
    }
    public string Model
    {
        get { return model; }
        set { model = value; }
    }
    public string Partno
    {
        get { return partno; }
        set { partno = value; }
    }
    public string Kyhieu
    {
        get { return kyhieu; }
        set { kyhieu = value; }
    }
    public int Thietbi
    {
        get { return thietbi; }
        set { thietbi = value; }
    }
}