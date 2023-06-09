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

public partial class Pages_BaoTri : System.Web.UI.Page
{
    DataUtil data = new DataUtil();
    string ctm = "";
    bool haveChild = false;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public string showGocCayThuMuc()
    {
        ctm += "<ul id='ul-ctm' class='tree-ul-v2'>";
        for (int i = 0; i < data.dsThietBi().Count; i++)
        {
            //kiểm tra thiet bi co thiet bi con khong                    
            for (int j = 0; j < data.dsThietBi().Count; j++)
            {
                if (data.dsThietBi()[j].Thietbicha == data.dsThietBi()[i].Matb)
                    haveChild = true;
            }
            //co thi in với plus-icon
            if (haveChild == true && data.dsThietBi()[i].Thietbicha == 0)
            {
                //caythumuccon += "<li id='" + data.dsThietBi()[i].Matb + "' class='row' name='dsCha'> <span id='" + data.dsThietBi()[i].Matb + "' class='plus-icon 1' value='1'></span> <span id='" + data.dsThietBi()[i].Matb + "' class='mt 1' value='1'>" + data.dsThietBi()[i].Tentb + "</span></li>";
                //ctm += "<li id='" + data.dsThietBi()[o].Matb + "' class='row' name='dsCha'> <span id='" + data.dsThietBi()[o].Matb + "' class='plus-icon 1'></span> <span id='" + data.dsThietBi()[o].Matb + "' class='mt 1' >" + data.dsThietBi()[o].Tentb + "</span></li>";
                ctm += "<li id='" + data.dsThietBi()[i].Matb + "' class='row-tree-tb'>";                                                                          //row
                //ctm += "<span id='" + data.dsThietBi()[i].Matb + "' class='plus-icon mtree-p-icon'></span>";                                                      //plus-icon 1
                ctm += "<span class='mtree-text'><a id='" + data.dsThietBi()[i].Matb + "' class='1' href='#'> <span id='" + data.dsThietBi()[i].Matb + "' class='plus-icon mtree-p-icon'></span> " + data.dsThietBi()[i].Tentb + "</a></span>";       //mt 1
                ctm += "</li>";
                haveChild = false;
            } //không có thì in với không có icon
            else if (haveChild == false && data.dsThietBi()[i].Thietbicha == 0)
            {
                ctm += "<li id='" + data.dsThietBi()[i].Matb + "' class='row-tree-tb'>";                                                                              //row
                ctm += "<span id='" + data.dsThietBi()[i].Matb + "' class='none-icon mtree-p-icon'></span>";                                                        //plus-icon 1
                ctm += "<span class='mtree-text'><a id='" + data.dsThietBi()[i].Matb + "' class='1' href='#'>" + data.dsThietBi()[i].Tentb + "</a></span>";           //mt 1
                ctm += "</li>";
            }
            //}
            //if (data.dsThietBi()[i].Thietbicha == 0)
            //{
            //    //ctm += "<li id='" + data.dsThietBi()[o].Matb + "' class='row' name='dsCha'> <span id='" + data.dsThietBi()[o].Matb + "' class='plus-icon 1'></span> <span id='" + data.dsThietBi()[o].Matb + "' class='mt 1' >" + data.dsThietBi()[o].Tentb + "</span></li>";
            //    ctm += "<li id='" + data.dsThietBi()[i].Matb + "' class='row-tree-tb'>";                                                                            //row
            //        ctm += "<span id='" + data.dsThietBi()[i].Matb + "' class='plus-icon mtree-p-icon'></span>";                                                    //plus-icon 1
            //        ctm += "<span class='mtree-text'><a id='" + data.dsThietBi()[i].Matb + "' class='1' href='#'>" + data.dsThietBi()[i].Tentb + "</a></span>";     //mt 1
            //    ctm += "</li>";
            //}
        }
        ctm += "</ul";
        return ctm;
    }
}
