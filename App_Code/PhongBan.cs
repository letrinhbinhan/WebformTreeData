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
/// Summary description for PhongBan
/// </summary>
public class PhongBan
{
    private int idphongban;
    private string maphongban;
    private string tenphongban;
    private int ttcaythumuc;

    public PhongBan(int idphongban, string maphongban, string tenphongban, int ttcaythumuc)
    {
        this.maphongban = maphongban;
        this.tenphongban = tenphongban;
        this.ttcaythumuc = ttcaythumuc;
    }

    public PhongBan()
    {

    }
    public int Idphongban
    {
        get { return idphongban; }
        set { idphongban = value; }
    }
    public string Maphongban
    {
        get { return maphongban; }
        set { maphongban = value; }
    }
    public string Tenphongban
    {
        get { return tenphongban; }
        set { tenphongban = value; }
    }
    public int Ttcaythumuc
    {
        get { return ttcaythumuc; }
        set { ttcaythumuc = value; }
    }
}

