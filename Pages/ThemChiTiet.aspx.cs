using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_ThemChiTiet : System.Web.UI.Page
{
    DataUtil data = new DataUtil();
    public string tenthietbi;
    public string thietbi;
    protected void Page_Load(object sender, EventArgs e)
    {
        tenthietbi = "";
        thietbi = "";
        thietbi = Request.QueryString["mathietbi"];
        for(int i = 0; i< data.dsThietBi().Count; i++)
        {
            if(Int32.Parse(thietbi) == data.dsThietBi()[i].Matb)
            {
                tenthietbi = data.dsThietBi()[i].Tentb;
            }
        }
    }
}