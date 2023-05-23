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
/// Summary description for TBBT
/// </summary>
public class TBBT
{
    private int matbbt;
    private int mathietbibt;
    private DateTime thoigianbaotri;
    public DateTime thoigianbatdau;
    public DateTime thoigianketthuc;
    public string ghichu;
    public string loaihinh;
    private string nguoilap;    

    public TBBT(int matbbt, int mathietbibt, DateTime thoigianbatdau, DateTime thoigianketthuc, string ghichu, string nguoilap, string loaihinh)
    {
        this.matbbt = matbbt;
        this.mathietbibt = mathietbibt;
        this.thoigianbatdau = thoigianbatdau;
        this.thoigianketthuc = thoigianketthuc;
        this.ghichu = ghichu;
        this.nguoilap = nguoilap;
        this.loaihinh = loaihinh;
    }

	public TBBT()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public int Matbbt
    {
        get { return matbbt; }
        set { matbbt = value; }
    }
    public int Mathietbibt
    {
        get { return mathietbibt; }
        set { mathietbibt = value; }
    }
    public DateTime Thoigianbaotri
    {
        get { return thoigianbaotri; }
        set { thoigianbaotri = value; }
    }
    public DateTime Thoigianbatdau
    {
        get { return thoigianbatdau; }
        set { thoigianbatdau = value; }
    }
    public DateTime Thoigianketthuc
    {
        get { return thoigianketthuc; }
        set { thoigianketthuc = value; }
    }
    public string Ghichu
    {
        get { return ghichu; }
        set { ghichu = value; }
    }
    public string Loaihinh
    {
        get { return loaihinh; }
        set { loaihinh = value; }
    }
    public string Nguoilap
    {
        get { return nguoilap; }
        set { nguoilap = value; }
    }
}
