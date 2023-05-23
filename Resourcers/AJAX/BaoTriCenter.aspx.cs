using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Collections.Generic;

public partial class Resourcers_AJAX_BaoTriCenter : System.Web.UI.Page
{
    DataUtil data = new DataUtil();
    ThietBi tb = new ThietBi();
    TBBT tbbt = new TBBT();
    public List<TBBT> listTBBT = new List<TBBT>();
    public string TenThietBi = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        string RequestID = Request.QueryString["ID"];
        int idch = Convert.ToInt32(RequestID);
        for (int i = 0; i < data.dsThietBi().Count; i++)
        {
            if (data.dsThietBi()[i].Matb == idch)
            {
                tb = data.dsThietBi()[i];
            }
        }
        for (int j = 0; j < data.dsTBBT().Count; j++)
        {
            if (data.dsTBBT()[j].Mathietbibt == idch)
            {
                listTBBT.Add(data.dsTBBT()[j]);
            }
        }
        try
        {
            TenThietBi = tb.Tentb;
        }
        catch
        {
            TenThietBi = "Empty";
        }

    }
}
