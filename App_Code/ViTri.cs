using System;
using System.Collections.Generic;
using System.Web;

/// <summary>
/// Summary description for ViTri
/// </summary>
public class ViTri
{
    private int Id;
    private string tenvitri;
    private bool chathietbi;    
    public ViTri(int Id, string tenvitri, bool chathietbi)
    {
        this.Id = Id;
        this.tenvitri = tenvitri;
        this.chathietbi = chathietbi;
    }
	public ViTri()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public int Id1
    {
        get { return Id; }
        set { Id = value; }
    }
    public string Tenvitri
    {
        get { return tenvitri; }
        set { tenvitri = value; }
    }
    public bool Chathietbi
    {
        get { return chathietbi; }
        set { chathietbi = value; }
    }
}