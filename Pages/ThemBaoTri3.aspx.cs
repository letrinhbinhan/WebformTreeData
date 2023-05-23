using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_ThemBaoTri3 : System.Web.UI.Page
{
    DataUtil data = new DataUtil();
    public string mathietbi;
    public string nguoilap;
    public string tennguoilap;
    protected void Page_Load(object sender, EventArgs e)
    {
        mathietbi = "";
        nguoilap = "";
        tennguoilap = "";
        string RequestID = Request.QueryString["mathietbi"];    
        mathietbi = RequestID;
        string RequestNL = Request.QueryString["nguoilap"];
        nguoilap = RequestNL;
        for(int i = 0; i<data.dsUsers().Count;i++)
        {
            if (data.dsUsers()[i].Userid.Trim() == nguoilap)
            {
                tennguoilap = data.dsUsers()[i].Fullname;
            }
        }
    }
}