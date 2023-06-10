using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Resourcers_AJAX_ThietBiViTri : System.Web.UI.Page
{
    public string mavitri;
    protected void Page_Load(object sender, EventArgs e)
    {
        DataUtil data = new DataUtil();
        string id;        
        id = Request.QueryString["mathietbi"];
        for (int i = 0; i < data.dsThietBi().Count; i++)
        {
            if (data.dsThietBi()[i].Matb == Int32.Parse(id))
            {
                for (int j = 0; j < data.dsViTri().Count; j++)
                {
                    if (data.dsViTri()[j].Id1 == data.dsThietBi()[i].Vitri)
                    {
                        mavitri = data.dsViTri()[j].Id1.ToString();
                    }
                }
            }
        }
    }
}