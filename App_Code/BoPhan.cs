using System;
using System.Collections.Generic;
using System.Web;

/// <summary>
/// Summary description for BoPhan
/// </summary>
public class BoPhan
{
    private int id;
    private string tenbophan;    
    public BoPhan(int id, string tenbophan)
    {
        this.id=id;
        this.tenbophan=tenbophan;
    }
	public BoPhan()
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
    public string Tenbophan
    {
        get { return tenbophan; }
        set { tenbophan = value; }
    }
}