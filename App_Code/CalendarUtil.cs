using System;
using System.Collections.Generic;
using System.Web;

/// <summary>
/// Summary description for CalendarUtil
/// </summary>
public class CalendarUtil
{
    private int ngay;
    private int thang;
    private int nam;

    public CalendarUtil(int ngay, int thang, int nam)
    {
        this.ngay = ngay;
        this.thang = thang;
        this.nam = nam;
    }
	public CalendarUtil()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public int Ngay
    {
        get { return ngay; }
        set { ngay = value; }
    }
    public int Thang
    {
        get { return thang; }
        set { thang = value; }
    }
    public int Nam
    {
        get { return nam; }
        set { nam = value; }
    }
}