﻿using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
// <i class="fa-solid fa-plus"></i>
public partial class Resourcers_AJAX_DashboardChildTreeByViTri : System.Web.UI.Page
{
    DataUtil data = new DataUtil();
    string caythumuccon = "";
    bool haveChild = false;
    bool haveChildViTri;
    protected void Page_Load(object sender, EventArgs e)
    {
        haveChildViTri = false;
    }
    public string showCayCon()
    {
        string RequestID = Request.QueryString["mavitri"];
        int idch = Convert.ToInt32(RequestID);
        string RequestState = Request.QueryString["tinhtrang"];
        int trch = Convert.ToInt32(RequestState);		
        for (int i = 0; i < data.dsViTri().Count; i++)
        {
            if (data.dsViTri()[i].Id1 == idch && trch == 1)
            {			
				caythumuccon += "<span class='mtree-text'><a id='"+data.dsViTri()[i].Id1+"' class='2' href='#'><span id='"+data.dsViTri()[i].Id1+"' class='minus-icon mtree-p-icon'></span><img src='/Resourcers/Images/ngoi-nha.ico' alt='ngoinhaicon' class='position-row-icon'/> "+data.dsViTri()[i].Tenvitri+"</a></span>";
                
                for (int j = 0; j < data.dsThietBi().Count; j++)
                {
                    //hiển thị danh sách lần lượt các con cùng cấp ứng với thiết bị cha
                    if (data.dsThietBi()[j].Vitri == idch && data.dsThietBi()[j].Thietbicha == 0)
                    {
                        if(CheckChild(data.dsThietBi()[j].Matb))
                        {
                            //dòng ngày có check child
                            //nếu có child trong dòng này thì chạy code này
                            caythumuccon += "<li id='" + data.dsThietBi()[j].Matb + "' class='row-tree-tb'>";
                            caythumuccon += "<span class='mtree-text'><a id='" + data.dsThietBi()[j].Matb + "' class='1' href='#'> <span id='" + data.dsThietBi()[j].Matb + "' class='plus-icon mtree-p-icon'></span> " + data.dsThietBi()[j].Tentb + "</a></span>";
                            caythumuccon += "</li>";
                        }
                        else
                        {
                            //dòng này không check child
                            //nếu không có child trong dòng này thì chạy code này
                            caythumuccon += "<li id='" + data.dsThietBi()[j].Matb + "' class='row-tree-tb'>";
                            caythumuccon += "<span class='mtree-text'><a id='" + data.dsThietBi()[j].Matb + "' class='1' href='#'> <span id='" + data.dsThietBi()[j].Matb + "' class='none-icon mtree-p-icon'></span> " + data.dsThietBi()[j].Tentb + "</a></span>";
                            caythumuccon += "</li>";
                        }                        
                    }
                }
            }
            if (data.dsViTri()[i].Id1 == idch && trch == 2)
            {
                //trường hợp của vị trí với id và trch là 2
                caythumuccon += "<span class='mtree-text'><a id='" + data.dsViTri()[i].Id1 + "' class='2' href='#'> <span id='" + data.dsViTri()[i].Id1 + "' class='plus-icon mtree-p-icon'></span><img src='/Resourcers/Images/ngoi-nha.ico' alt='ngoinhaicon' class='position-row-icon'/> " + data.dsViTri()[i].Tenvitri + "</a></span>";
            }
            if(data.dsViTri()[i].Id1 == idch && trch == 3)
            {
                caythumuccon += "<span id='" + data.dsViTri()[i].Id1 + "' class='none-icon mtree-p-icon'></span>";
                caythumuccon += "<span class='mtree-text'><a id='" + data.dsViTri()[i].Id1 + "' class='2 0' href='#'>" + data.dsViTri()[i].Tenvitri + "</a></span>";
            }
        }
        return caythumuccon;
    }

    bool CheckChild(int mathietbi)
    {
        for (int i = 0; i < data.dsThietBi().Count; i++)
        {
            if (data.dsThietBi()[i].Thietbicha == mathietbi)
            {
                return true;
            }
        }
        return false;
    }
}