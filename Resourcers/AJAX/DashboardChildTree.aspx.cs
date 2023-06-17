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
public partial class Resources_AJAX_DashboardChildTree : System.Web.UI.Page
{
    DataUtil data = new DataUtil();
    string caythumuccon = "";
    bool haveChild = false;
    string logsosanh = "";
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public string showCayCon()
    {
        string RequestID = Request.QueryString["ID"];
        int idch = Convert.ToInt32(RequestID);
        int isChild = 0;
        for (int i = 0; i < data.dsThietBi().Count; i++)
        {
            if (data.dsThietBi()[i].Thietbicha == idch)
                isChild = 1;
        }

        if (isChild == 1)
        {
            for (int i = 0; i < data.dsThietBi().Count; i++)
            {
                if (data.dsThietBi()[i].Matb == idch)
                {
                    caythumuccon += "<div class='mtree-text div-minus-icon'><a id='" + data.dsThietBi()[i].Matb + "' class='0' href='#'>&nbsp;&nbsp;</a></div>";
                    caythumuccon += "<span class='mtree-text'><a id='" + data.dsThietBi()[i].Matb + "' class='0' href='#'>" + data.dsThietBi()[i].Tentb + "</a></span>";
                }
                if (data.dsThietBi()[i].Thietbicha == idch)
                {
                    for (int j = 0; j < data.dsThietBi().Count; j++)
                    {
                        if (data.dsThietBi()[j].Thietbicha == data.dsThietBi()[i].Matb)
                        {
                            haveChild = true;
                        }
                    }
                    if (haveChild == true)
                    {
                        caythumuccon += "<li id='" + data.dsThietBi()[i].Matb + "' class='row-tree-tb'>";
                        caythumuccon += "<div class='mtree-text div-plus-icon'><a id='" + data.dsThietBi()[i].Matb + "' class='1' href='#'>&nbsp;&nbsp;</a></div>";
                        caythumuccon += "<span class='mtree-text'><a id='" + data.dsThietBi()[i].Matb + "' class='1' href='#'>" + data.dsThietBi()[i].Tentb + "</a></span>";
                        caythumuccon += "</li>";
                        haveChild = false;
                    }
                    else
                    {
                        caythumuccon += "<li id='" + data.dsThietBi()[i].Matb + "' class='row-tree-tbc'>";
                        caythumuccon += "<span id='" + data.dsThietBi()[i].Matb + "' class='none-icon mtree-p-icon'></span>";
                        caythumuccon += "<span class='mtree-text'><a id='" + data.dsThietBi()[i].Matb + "' class='1' href='#'>" + data.dsThietBi()[i].Tentb + "</a></span>";
                        caythumuccon += "</li>";
                    }
                }
            }
        }
        else
        {
            for (int i = 0; i < data.dsThietBi().Count; i++)
            {
                if (data.dsThietBi()[i].Matb == idch)
                {
                    caythumuccon += "<span id='" + data.dsThietBi()[i].Matb + "' class='none-icon mtree-p-icon'></span>";
                    caythumuccon += "<span class='mtree-text'><a id='" + data.dsThietBi()[i].Matb + "' class='1' href='#'>" + data.dsThietBi()[i].Tentb + "</a></span>";
                }
            }
        }
        return caythumuccon + logsosanh;
    }
}