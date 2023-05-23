using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_ThemThietBiThanhCong : System.Web.UI.Page
{
    public string tenthietbi;
    public string mathietbi;
    protected void Page_Load(object sender, EventArgs e)
    {
        string TenThietBi;
        string MaThietBi;
        TenThietBi = "";
        MaThietBi = "";
        tenthietbi = "";
        mathietbi = "";
        tenthietbi = "";
        TenThietBi = Request.QueryString["tenthietbi"];
        MaThietBi = Request.QueryString["mathietbi"];
        tenthietbi = TenThietBi;
        mathietbi = MaThietBi;
        if(TenThietBi == null || TenThietBi == "")
        {
            //Response.Redirect("../Pages/ErrorPages/ErrorPage.aspx");
        }
        if (MaThietBi == null || MaThietBi == "")
        {
            //Response.Redirect("../Pages/ErrorPages/ErrorPage.aspx");
        }
    }
}