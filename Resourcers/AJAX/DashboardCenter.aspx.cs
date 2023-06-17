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

public partial class Resourcers_AJAX_DashboardCenter : System.Web.UI.Page
{
    DataUtil data = new DataUtil();
    ThietBi tb = new ThietBi();
    public int MaLoaiThietBi;
    public string TenLoaiThietBi;
    public string TenPhongBan;
    public int MaPhongBan;
    public DateTime NgayNhap;
    public string MaThietBi;
    public string TenThietBi;
    public string TinhTrang;
    public string ThongSoKyThuat;
    public string GiaThanh;
    public string ViTri;
    public string MaNhaCungCap;
    public string PhieuMuaHang;
    public string HuHong;
    public string NguoiDuyet;
    public DateTime NgayDuyet;
    public string ThoiHanBaoHanh;
    public string ThietBiCha;
    public string MaThietBiCha;
    public string LinkImage;
    public string ImageDescription;
    public string ChiTietBangGia;
    public string MaQuanLy;
    public string PhieuNhapKho;
    public string LinhVucSuDung;
    public string DonViTienTe;
    public string NSX;
    public string NuocSX;
    public string Serial;
    public string Model;
    public DateTime NgayLapDat;
    public DateTime NgayMua;
    public List<PhuTung> dsphutung = new List<PhuTung>();
    public List<TBBT> dsLBTThietBi = new List<TBBT>();
    public List<ThietBiTaiLieu> dsThietBiTaiLieu = new List<ThietBiTaiLieu>();
    public List<ChiTietThietBi> dsChiTietThietBi = new List<ChiTietThietBi>();
    public string tblvsb;
    public string giamoi;
    public string lbtvisible;
    public string tbllbt;
    public string mathietbi;
    public string chitietvsb;
    protected void Page_Load(object sender, EventArgs e)
    {
        string tenloaithietbi, tenphongban, thietbicha, manhacungcap;
        int maloaithietbi, maphongban;
        MaLoaiThietBi = 0;
        TenLoaiThietBi = "";
        MaPhongBan = 0;
        TenPhongBan = "";
        NgayNhap = new DateTime(2000, 1, 1);
	      MaThietBi = "";
        TenThietBi = "";
        TinhTrang = "";
        ThongSoKyThuat = "";
        GiaThanh="";
        ViTri = "";
        MaNhaCungCap = "";
        PhieuMuaHang = "";
        HuHong = "";
        NguoiDuyet = "";
        NgayDuyet = new DateTime(2000,1,1);
        ThoiHanBaoHanh = "";
        ThietBiCha = "";
        MaThietBiCha = "";
        LinkImage = "";
        ImageDescription = "";
        PhieuNhapKho = "";
        ChiTietBangGia = "";
        MaQuanLy = "";
        LinhVucSuDung = "";
        DonViTienTe = "";
        NSX = "";
        NuocSX = "";
        Serial = "";
        Model = "";
        NgayLapDat = new DateTime(2000, 1, 1);
        NgayMua = new DateTime(2000,1,1);
        tblvsb = "";
        giamoi = "";
        lbtvisible = "";
        tbllbt = "";
        mathietbi = "";
        maloaithietbi = 0;
        tenloaithietbi = "";
        maphongban = 0;
        tenphongban = "";
        thietbicha = "";
        chitietvsb = "";
        manhacungcap = "";
        string RequestID = Request.QueryString["ID"];
        int idch = Convert.ToInt32(RequestID);
        mathietbi = idch.ToString();
        for (int i = 0; i < data.dsThietBi().Count; i++)
        {
            if (data.dsThietBi()[i].Matb == idch)
            {
                tb = data.dsThietBi()[i];
            }
        }
        for (int i = 0; i < data.dsChiTietThietBi().Count;i++ )
        {
            if (data.dsChiTietThietBi()[i].Thietbi == idch)
            {
                dsChiTietThietBi.Add(data.dsChiTietThietBi()[i]);
            }
        }
        if(dsChiTietThietBi.Count == 0 )
        {
            chitietvsb = "unvisible";
        }
        else
        {
            chitietvsb = "visible";
        }
        for (int i = 0; i < data.dsPhuTung().Count; i++)
        {
            if (data.dsPhuTung()[i].Thietbi == idch)
            {
                dsphutung.Add(data.dsPhuTung()[i]);
            }
        }
        if (dsphutung.Count == 0)
        {
            tblvsb = "unvisible";
        }
        else
        {
            tblvsb = "visible";
        }
        for (int j = 0; j < data.dsTBBT().Count; j++)
        {
            if (data.dsTBBT()[j].Mathietbibt == idch)
            {
                dsLBTThietBi.Add(data.dsTBBT()[j]);
            }
        }
        if (dsLBTThietBi.Count == 0)
        {
            tbllbt = "unvisible";
        }
        else
        {
            tbllbt = "visible";
        }
        for (int z = 0; z < data.dsThietBiTaiLieu().Count; z++)
        {
            if (data.dsThietBiTaiLieu()[z].Mathietbi == idch)
            {
                dsThietBiTaiLieu.Add(data.dsThietBiTaiLieu()[z]);
            }
        }
        for (int i = 0; i < data.dsLoaiThietBi().Count; i++)
        {
            if (tb.Loaitb == data.dsLoaiThietBi()[i].Maloaitb)
            {
                maloaithietbi = data.dsLoaiThietBi()[i].Maloaitb;
                tenloaithietbi = data.dsLoaiThietBi()[i].Tenloaitb;
            }
        }
        for (int i = 0; i < data.dsPhongBan().Count; i++)
        {
            if(tb.Phongban == data.dsPhongBan()[i].Idphongban)
            {
                maphongban = data.dsPhongBan()[i].Idphongban;
                tenphongban = data.dsPhongBan()[i].Tenphongban;
            }
        }
        for (int i = 0; i < data.dsThietBi().Count; i++)
        {
            if (tb.Thietbicha == data.dsThietBi()[i].Matb)
            {
                thietbicha = data.dsThietBi()[i].Tentb;
            }
        }

            try
            {
                MaLoaiThietBi = maloaithietbi;
                TenLoaiThietBi = tenloaithietbi;
                MaPhongBan = maphongban;
                TenPhongBan = tenphongban;
                NgayNhap = tb.Ngaynhap;
                TinhTrang = tb.Tinhtrang;
                ThongSoKyThuat = tb.Thongsokthuat;
                GiaThanh = tb.Giathanh;
                ViTri = tb.Vitri.ToString();
                MaNhaCungCap = tb.NCC1;
                PhieuMuaHang = tb.Phieumuahang;
                HuHong = tb.Huhong;
                NguoiDuyet = tb.Nguoiduyet;
                NgayDuyet = tb.Ngayduyet;
                ThoiHanBaoHanh = tb.Thoihanbaohanh;
                ThietBiCha = thietbicha;
                MaThietBiCha = tb.Thietbicha.ToString();
                MaThietBi = tb.Matb.ToString();
                TenThietBi = tb.Tentb;
                LinkImage = tb.Linkimage;
                ImageDescription = tb.Imagedescription;
                PhieuNhapKho = tb.Phieunhapkho;
                ChiTietBangGia = tb.Chitietbangbaogia.ToString();
                MaQuanLy = tb.Maql;
                LinhVucSuDung = tb.Linhvucsudung;
                DonViTienTe = tb.Donvitiente;
                NSX = tb.Nhasanxuat;
                NuocSX = tb.Nuocsanxuat;
                Serial = tb.Serial;
                Model = tb.Model;
                NgayLapDat = tb.Ngaylapdat;
                NgayMua = tb.Ngaymua;
            }
            catch
            {
                MaLoaiThietBi = 0;
                TenLoaiThietBi = "";
                MaPhongBan = 0;
                TenPhongBan = "";
                TinhTrang = "";
                ThongSoKyThuat = "";
                GiaThanh = "";
                ViTri = "";
                MaNhaCungCap = "";
                PhieuMuaHang = "";
                HuHong = "";
                NguoiDuyet = "";
                NgayDuyet = new DateTime(2000,1,1);
                ThoiHanBaoHanh = "";
                ThietBiCha = "";
                MaThietBiCha = "";
                LinkImage = "";
                ImageDescription = "";
                PhieuNhapKho = "";
                ChiTietBangGia = "";
                MaQuanLy = "";
                LinhVucSuDung = "";
                DonViTienTe = "";
                NgayNhap = new DateTime(2000,1,1);
                MaThietBi = "";
                TenThietBi = "Empty";
                NSX = "";
                NuocSX = "";
                Serial = "";
                Model = "";
                NgayLapDat = new DateTime(2000, 1, 1);
                NgayMua = new DateTime(2000, 1, 1);
            }
        HttpCookie cookie = new HttpCookie("mathietbi");
        cookie.Value = MaThietBi;
        cookie.Expires = DateTime.Now.AddHours(3);
        Response.SetCookie(cookie);
    }

    public string FormatVND(int x) {
        char[] gia;
        List<string> giamoi = new List<string>();
        List<string> stringreturn = new List<string>();
        string formatcrrency;
        formatcrrency = "";
        string sentence = x.ToString();
        char[] charArr = sentence.ToCharArray();
        gia = charArr;
        int i = charArr.Length - 1;
        int c = 0;
        while (i > -1)
        {
            if (c == 3)
            {
                giamoi.Add(".");
                c = 0;
                i++;
            }
            else
            {
                giamoi.Add(gia[i].ToString());
                c++;
            }
            i--;
        }

        i = giamoi.Count - 1;
        while (i > -1)
        {
            stringreturn.Add(giamoi[i].ToString());
            i--;
        }
        for (int e = 0; e < stringreturn.Count;e++ )
        {
            formatcrrency = formatcrrency + stringreturn[e];
        }

        return formatcrrency;
    }
}
