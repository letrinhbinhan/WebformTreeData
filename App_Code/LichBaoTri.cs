using System;
using System.Collections.Generic;
using System.Web;

/// <summary>
/// Summary description for LichBaoTri
/// </summary>
public class LichBaoTri
{
    private int id;
    private string mabaotri;
    private string tenbaotri;
    private string chuki;
    private int socong;
    private int bophan;    
    public LichBaoTri(int id, string mabaotri, string tenbaotri, string chuki, int socong, int bophan)
    {
        this.id=id;
        this.mabaotri = mabaotri;
        this.tenbaotri = tenbaotri;
        this.chuki = chuki;
        this.socong=socong;
        this.bophan=bophan;
    }
	public LichBaoTri()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public int Id
    {
        get { return id; }
        set { id = value; }
    }
    public string Mabaotri
    {
        get { return mabaotri; }
        set { mabaotri = value; }
    }
    public string Tenbaotri
    {
        get { return tenbaotri; }
        set { tenbaotri = value; }
    }
    public string Chuki
    {
        get { return chuki; }
        set { chuki = value; }
    }
    public int Socong
    {
        get { return socong; }
        set { socong = value; }
    }
    public int Bophan
    {
        get { return bophan; }
        set { bophan = value; }
    }
}