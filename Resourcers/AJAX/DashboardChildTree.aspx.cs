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
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public string showCayCon()
    {
        string RequestID = Request.QueryString["ID"];
        int idch = Convert.ToInt32(RequestID);
        int isChild = 0;
        //kiểm tra có thiết bị nào trùng với id nhận về không
        for (int i = 0; i < data.dsThietBi().Count; i++)
        {
            if (data.dsThietBi()[i].Thietbicha == idch)
                isChild = 1;
        }

        //nếu có thiết bị trùng với id nhận về thì in ra
        if (isChild == 1)
        {
            for (int i = 0; i < data.dsThietBi().Count; i++)
            {
                if (data.dsThietBi()[i].Matb == idch)
                {
                    caythumuccon += "<span id='" + data.dsThietBi()[i].Matb + "' class='minus-icon mtree-p-icon 0'></span>";                                                //plus-icon 1
                    caythumuccon += "<span class='mtree-text'><a id='" + data.dsThietBi()[i].Matb + "' class='0' href='#'>" + data.dsThietBi()[i].Tentb + "</a></span>";    //mt 1                    
                }

                if (data.dsThietBi()[i].Thietbicha == idch)
                {
                    //kiểm tra thiet bi co thiet bi con khong                    
                    for (int j = 0; j < data.dsThietBi().Count; j++)
                    {
                        if (data.dsThietBi()[j].Thietbicha == data.dsThietBi()[i].Matb)
                            haveChild = true;
                    }
                    //co thi in với plus-icon                    
                    if (haveChild == true)
                    {
                        //caythumuccon += "<li id='" + data.dsThietBi()[i].Matb + "' class='row' name='dsCha'> <span id='" + data.dsThietBi()[i].Matb + "' class='plus-icon 1' value='1'></span> <span id='" + data.dsThietBi()[i].Matb + "' class='mt 1' value='1'>" + data.dsThietBi()[i].Tentb + "</span></li>";
                        caythumuccon += "<li id='" + data.dsThietBi()[i].Matb + "' class='row-tree-tb'>";                                                                          //row
                        caythumuccon += "<span id='" + data.dsThietBi()[i].Matb + "' class='plus-icon mtree-p-icon'></span>";                                                   //plus-icon 1
                        caythumuccon += "<span class='mtree-text'><a id='" + data.dsThietBi()[i].Matb + "' class='1' href='#'>" + data.dsThietBi()[i].Tentb + "</a></span>";    //mt 1
                        caythumuccon += "</li>";
                        //<li class='row-tree-tb'><span class='plus-icon mtree-p-icon'></span><span class='mtree-text'><a class='1' href='#'> Tên thiết bị </a></span></li>
                    } //không có thì in với không có icon                    
                    else
                    {
                        //caythumuccon += "<li id='" + data.dsThietBi()[i].Matb + "' class='row' name='dsCha'> <span id='" + data.dsThietBi()[i].Matb + "' class='plus-icon 1' value='1'></span> <span id='" + data.dsThietBi()[i].Matb + "' class='mt 1' value='1'>" + data.dsThietBi()[i].Tentb + "</span></li>";
                        caythumuccon += "<li id='" + data.dsThietBi()[i].Matb + "' class='row-tree-tbc'>";                                                                          //row
                        caythumuccon += "<span id='" + data.dsThietBi()[i].Matb + "' class='none-icon mtree-p-icon'></span>";                                                   //plus-icon 1
                        caythumuccon += "<span class='mtree-text'><a id='" + data.dsThietBi()[i].Matb + "' class='1' href='#'>" + data.dsThietBi()[i].Tentb + "</a></span>";    //mt 1
                        caythumuccon += "</li>";
                        //<li class='row-tree-tbc'><span class='none-icon mtree-p-icon'></span><span class='mtree-text'><a class='1' href='#'> Tên thiết bị </a></span></li>
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
                    caythumuccon += "<span id='" + data.dsThietBi()[i].Matb + "' class='none-icon mtree-p-icon'></span>";                                                        //plus-icon 1
                    caythumuccon += "<span class='mtree-text'><a id='" + data.dsThietBi()[i].Matb + "' class='1' href='#'>" + data.dsThietBi()[i].Tentb + "</a></span>";           //mt 1
                    //<span class='none-icon mtree-p-icon'></span><span class='mtree-text'><a class='1' href='#'> Tên thiết bị</a></span>
                }
            }
        }
        return caythumuccon;
    }
}