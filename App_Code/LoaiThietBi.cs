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
/// Summary description for LoaiThietBi
/// </summary>
public class LoaiThietBi
{
    private int maloaitb;
    private string tenloaitb;
    private int ttcaythumuc;

    public LoaiThietBi(int maloaitb, string tenloaitb, int ttcaythumuc)
    {
        this.maloaitb = maloaitb;
        this.tenloaitb = tenloaitb;
        this.ttcaythumuc = ttcaythumuc;
    }

    public LoaiThietBi()
    {

    }

    public int Maloaitb
    {
        get { return maloaitb; }
        set { maloaitb = value; }
    }
    public string Tenloaitb
    {
        get { return tenloaitb; }
        set { tenloaitb = value; }
    }
    public int Ttcaythumuc
    {
        get { return ttcaythumuc; }
        set { ttcaythumuc = value; }
    }
}
