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

public partial class Pages_ChiTietThietBi : System.Web.UI.Page
{
    DataUtil data = new DataUtil();
    ThietBi tb = new ThietBi();   
    public string tenthietbi;
    public string mathietbi;
    public string loaithietbi;
    public string phongban;
    public string ngaynhap;
    public string tinhtrang;
    public string thongsokythuat;
    public string giathanh;
    public string vitri;
    public string linhvuc;
    public string nhacungcap;
    public string phieumuahang;
    public string nhapkho;
    public string huhong;
    public string nguoiduyet;
    public string ngayduyet;
    public string thoigianbaohanh;
    public string tinhtrangthanhtoan;
    public string thietbicha;
    public string capcaythumuc;
    public string nhasanxuat;
    public string nuocsanxuat;
    public string serial;
    public string model;
    public string ngaylap;
    public string ngaymua;
    public string linkimage;
    public string imagedescription;
    public string tinhtrangimage;    
    public string manhacungcap;
    public string emailncc;
    public string diachiNCC;
    public string sdtncc;
    public string faxncc;
    public string chaogialandau;
    public string chaogialancuoi;
    public string loaithueVAT;
    public string tongtien;
    public string danhgiaketquachaogia;
    public string nguoithuchienchaogia;
    protected void Page_Load(object sender, EventArgs e)
    {
        tenthietbi = "__________________";
        mathietbi = "__________________";
        loaithietbi = "__________________";
        phongban = "__________________";
        ngaynhap = "__________________";
        tinhtrang = "";
        thongsokythuat = "__________________";
        giathanh = "__________________";
        vitri = "__________________";
        linhvuc = "__________________";
        nhacungcap = "__________________";
        phieumuahang = "__________________";
        nhapkho = "__________________";
        huhong = "__________________";
        nguoiduyet = "__________________";
        ngayduyet = "__________________";
        thoigianbaohanh = "__________________";
        tinhtrangthanhtoan = "__________________";
        thietbicha = "__________________";
        capcaythumuc = "__________________";
        nhasanxuat = "__________________";
        nuocsanxuat = "__________________";
        serial = "__________________";
        model = "__________________";
        ngaylap = "__________________";
        ngaymua = "__________________";
        linkimage = "";
        imagedescription = "__________________";
        tinhtrangimage = "";
        manhacungcap = "__________________";
        emailncc = "__________________";
        diachiNCC = "__________________";
        sdtncc = "__________________";
        faxncc = "__________________";
        chaogialandau = "__________________"; //chưa làm việc
        chaogialancuoi = "__________________"; //chưa làm việc
        loaithueVAT = "__________________"; //clv
        tongtien = "__________________"; //clv
        danhgiaketquachaogia = "__________________"; //clv
        nguoithuchienchaogia = "__________________"; //clv

        string RequestID = Request.QueryString["matb"];
        int idch = Convert.ToInt32(RequestID);
        if (RequestID != "" && RequestID != null)
        {
            for (int i = 0; i < data.dsThietBi().Count; i++)
            {
                if (data.dsThietBi()[i].Matb == idch)
                {
                    tb = data.dsThietBi()[i];
                    tenthietbi = tb.Tentb.ToString();
                    mathietbi = tb.Matb.ToString();
                    loaithietbi = tb.Loaitb.ToString();
                    phongban = tb.Phongban.ToString();
                    ngaynhap = tb.Ngaynhap.ToString();
                    tinhtrang = tb.Tinhtrang.ToString();
                    if (tb.Thongsokthuat.ToString() == "null")
                        thongsokythuat = "";
                    else
                        thongsokythuat = tb.Thongsokthuat.ToString();
                    giathanh = tb.Giathanh.ToString();
                    vitri = tb.Vitri.ToString();
                    if (tb.NCC1.ToString() == "null")
                        nhacungcap = "__________________";
                    else
                        nhacungcap = tb.NCC1.ToString();
                    phieumuahang = tb.Phieumuahang.ToString();
                    huhong = tb.Huhong.ToString();
                    nguoiduyet = tb.Nguoiduyet.ToString();
                    ngayduyet = tb.Ngayduyet.ToString();
                    if (tb.Thoihanbaohanh.ToString() == "null")
                        thoigianbaohanh = "__________________";
                    else
                        thoigianbaohanh = tb.Thoihanbaohanh.ToString();
                    //tinhtrangthanhtoan = tb.Tinhtrangthanhtoan.ToString();
                    thietbicha = tb.Thietbicha.ToString();
                    capcaythumuc = tb.Capcaythumuc.ToString();
                    nhasanxuat = tb.Nhasanxuat.ToString();
                    nuocsanxuat = tb.Nuocsanxuat.ToString();
                    serial = tb.Serial.ToString();
                    model = tb.Model.ToString();
                    ngaylap = tb.Ngaylapdat.ToString();
                    ngaymua = tb.Ngaymua.ToString();
                    if(tb.Linkimage.ToString() == "null")
                        linkimage = "";
                    else
                        linkimage = tb.Linkimage.ToString();
                    
                    imagedescription = tb.Imagedescription.ToString();
                    for (int j = 0; j < data.dsNhaCungCap().Count; j++)
                    {
                        if (data.dsThietBi()[i].NCC1 == data.dsNhaCungCap()[j].Ma)
                        {
                            if (data.dsNhaCungCap()[j].Ma == "null")
                                manhacungcap = "";
                            else
                                manhacungcap = data.dsNhaCungCap()[j].Ma;
                            emailncc = data.dsNhaCungCap()[j].Email;
                            diachiNCC = data.dsNhaCungCap()[j].Diachi;
                            sdtncc = data.dsNhaCungCap()[j].Sodienthoai;
                            faxncc = data.dsNhaCungCap()[j].Fax;
                        }
                    }
                    //for (int z = 0; z < data.dsChiTietBangBaoGia().Count; z++)
                    //{
                    //    if (data.dsThietBi()[i].Chitietbangbaogia == data.dsChiTietBangBaoGia()[z].Id1)
                    //    {
                    //        //chaogialandau = data.dsChiTietBangBaoGia()[z].Dongia; 
                    //        //chaogialancuoi = data.dsChiTietBangBaoGia()[z].Dongia;
                    //        //loaithueVAT;
                    //        //tongtien;
                    //        //danhgiaketquachaogia;
                    //        //nguoithuchienchaogia;
                    //    }
                    //}
                }
            }
        }
        if (linkimage == "")
            linkimage = "empty.png";
        if (tinhtrang == "hư hỏng")
            tinhtrangimage = "396-3969451_red-led-on-off.png";
        else
            if (tinhtrang == "bình thường")
                tinhtrangimage = "pngkey.com-led-png-2173622.png";
            else
                tinhtrangimage = "png-transparent-computer-icons-led-background-angle-grey-color.png";        
    }
}