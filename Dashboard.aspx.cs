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

public partial class Dashboard : System.Web.UI.Page
{
    public string MaThietBiLonNhat;
    public int IntMaThietBiLonNhat;
    DataUtil data = new DataUtil();
    string ctm = "";
    bool haveChild = false;    
    protected void Page_Load(object sender, EventArgs e)
    {
        IntMaThietBiLonNhat = 1;
        for(int i = 0; i< data.dsThietBi().Count; i++){
            if(data.dsThietBi()[i].Matb > IntMaThietBiLonNhat){
                IntMaThietBiLonNhat = data.dsThietBi()[i].Matb;
            }
        }
        MaThietBiLonNhat = IntMaThietBiLonNhat.ToString();
    }
    public string showGocCayThuMuc()
    {        
        ctm += "<ul id='ul-ctm' class='tree-ul-v2'>";        
        for (int i = 0; i < data.dsThietBi().Count; i++)
        {
            for (int j = 0; j < data.dsThietBi().Count; j++)
            {
                if (data.dsThietBi()[j].Thietbicha == data.dsThietBi()[i].Matb)
                    haveChild = true;
            }
            if (haveChild == true && data.dsThietBi()[i].Thietbicha == 0)
            {
                ctm += "<li id='" + data.dsThietBi()[i].Matb + "' class='row-tree-tb'>";
                ctm += "<img src='/Resourcers/Images/ngoi-nha.ico' alt='ngoinhaicon' class='position-row-icon'/>";
                ctm += "<span class='mtree-text'><a id='" + data.dsThietBi()[i].Matb + "' class='1' href='#'> <span id='" + data.dsThietBi()[i].Matb + "' class='plus-icon mtree-p-icon'></span> " + data.dsThietBi()[i].Tentb + "</a></span>";
                ctm += "</li>";
                haveChild = false;
            }
            else if (haveChild == false && data.dsThietBi()[i].Thietbicha == 0)
            {
                ctm += "<li id='" + data.dsThietBi()[i].Matb + "' class='row-tree-tb'>";
                ctm += "<img src='/Resourcers/Images/ngoi-nha.ico' alt='ngoinhaicon' class='position-row-icon'/>";
                ctm += "<span id='" + data.dsThietBi()[i].Matb + "' class='none-icon mtree-p-icon'></span>";
                ctm += "<span class='mtree-text'><a id='" + data.dsThietBi()[i].Matb + "' class='1' href='#'>" + data.dsThietBi()[i].Tentb + "</a></span>";
                ctm += "</li>";
            }
        }        
        ctm += "</ul";
        return ctm;
    }
    public string showGocCayThuMucViTri()
    {
        ctm += "<ul id='ul-ctm' class='tree-ul-v2'>";
        for (int vt = 0; vt < data.dsViTri().Count; vt++)
        {
            if (data.dsViTri()[vt].Chathietbi)
            {
                ctm += "<li id='vt" + data.dsViTri()[vt].Id1 + "' class='row-tree-tb'>";                
                ctm += "<span class='mtree-text'><a id='" + data.dsViTri()[vt].Id1 + "' class='2' href='#'> <span id='" + data.dsViTri()[vt].Id1 + "' class='plus-icon mtree-p-icon'></span><img src='/Resourcers/Images/ngoi-nha.ico' alt='ngoinhaicon' class='position-row-icon'/>" + data.dsViTri()[vt].Tenvitri + "</a></span>";
                ctm += "</li>";
            }
            else
            {				                
				ctm += "<span id='"+data.dsViTri()[vt]+"' class='none-icon mtree-p-icon'></span>";
                ctm += "<li id='vt"+data.dsViTri()[vt].Id1+"' class='row-tree-tb row-tree-none-icon'>";
                ctm += "<img src='/Resourcers/Images/ngoi-nha.ico' alt='ngoinhaicon' class='position-row-icon-nc'/>";
				ctm += "<span class='mtree-text'><a id='"+ data.dsViTri()[vt].Id1+"' class='2 0' href='#'>"+data.dsViTri()[vt].Tenvitri+"</a></span>";
                ctm += "</li>";
            }
        }
        ctm += "</ul>";
        return ctm;
    }
    //cây thư mục
    //<ul>
    //  <li><span>Hình ảnh</span><span>Tên của thiết bị</span></li>
    //</ul>
    //trạng thái cho ẩn đi 
    //cho thêm vào trong li
    //thay đổi class để li hiển thị ảnh khác nhau
    //bắt được sự kiên click trên cả li hình và li tên thiết bị
}