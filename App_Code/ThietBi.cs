using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

/// <summary>
/// Summary description for ThietBi
/// </summary>
public class ThietBi
{
    private int matb;
    private string tentb;
    private int loaitb;
    private int phongban;
    private DateTime ngaynhap;
    private string tinhtrang;
    private string thongsokthuat;
    private string giathanh;
    private int vitri;
    private string NCC;
    private string phieumuahang;    
    private string huhong;
    private string nguoiduyet;
    private DateTime ngayduyet;
    private string thoihanbaohanh;
    private int thietbicha;
    private int capcaythumuc;
    private string nhasanxuat;
    private string nuocsanxuat;
    private string serial;
    private string model;
    private DateTime ngaylapdat;
    private DateTime ngaymua;
    private string linkimage;
    private string imagedescription;
    private int chitietbangbaogia;
    private string maql;
    private string phieunhapkho;
    private string linhvucsudung;
    private string donvitiente;
    private bool lathietbigoc;    
    public ThietBi(int matb, string tentb, int loaitb, int phongban, DateTime ngaynhap, string tinhtrang, string thongsokthuat, string giathanh, int vitri, string NCC, string phieumuahang, string huhong, string nguoiduyet, DateTime ngayduyet, string thoihanbaohanh, int thietbicha, int capcaythumuc, string nhasanxuat, string nuocsanxuat, string serial, string model, DateTime ngaylapdat, DateTime ngaymua, string linkimage, string imagedescription, int chitietbangbaogia, string maql, string phieunhapkho, string linhvucsudung, string donvitiente, bool lathietbigoc)
    {
        this.matb = matb;
        this.tentb = tentb;
        this.loaitb = loaitb;
        this.phongban = phongban;
        this.ngaynhap = ngaynhap;
        this.tinhtrang = tinhtrang;
        this.thongsokthuat = thongsokthuat;
        this.giathanh = giathanh;
        this.vitri = vitri;
        this.NCC = NCC;
        this.phieumuahang = phieumuahang;
        this.huhong = huhong;
        this.nguoiduyet = nguoiduyet;
        this.ngayduyet = ngayduyet;
        this.thoihanbaohanh = thoihanbaohanh;
        this.thietbicha = thietbicha;
        this.capcaythumuc = capcaythumuc;
        this.linkimage = linkimage;
        this.imagedescription = imagedescription;
        this.chitietbangbaogia = chitietbangbaogia;
        this.maql = maql;
        this.phieunhapkho = phieunhapkho;
        this.linhvucsudung = linhvucsudung;
        this.donvitiente = donvitiente;
        this.lathietbigoc = lathietbigoc;
    }
    public ThietBi()
    {

    }
    public int Matb
    {
        get { return matb; }
        set { matb = value; }
    }
    public string Tentb
    {
        get { return tentb; }
        set { tentb = value; }
    }
    public int Loaitb
    {
        get { return loaitb; }
        set { loaitb = value; }
    }
    public int Phongban
    {
        get { return phongban; }
        set { phongban = value; }
    }
    public DateTime Ngaynhap
    {
        get { return ngaynhap; }
        set { ngaynhap = value; }
    }
    public string Tinhtrang
    {
        get { return tinhtrang; }
        set { tinhtrang = value; }
    }
    public string Thongsokthuat
    {
        get { return thongsokthuat; }
        set { thongsokthuat = value; }
    }
    public string Giathanh
    {
        get { return giathanh; }
        set { giathanh = value; }
    }
    public int Vitri
    {
        get { return vitri; }
        set { vitri = value; }
    }
    public string NCC1
    {
        get { return NCC; }
        set { NCC = value; }
    }
    public string Phieumuahang
    {
        get { return phieumuahang; }
        set { phieumuahang = value; }
    }
    public string Huhong
    {
        get { return huhong; }
        set { huhong = value; }
    }
    public string Nguoiduyet
    {
        get { return nguoiduyet; }
        set { nguoiduyet = value; }
    }
    public DateTime Ngayduyet
    {
        get { return ngayduyet; }
        set { ngayduyet = value; }
    }
    public string Thoihanbaohanh
    {
        get { return thoihanbaohanh; }
        set { thoihanbaohanh = value; }
    }
    public int Thietbicha
    {
        get { return thietbicha; }
        set { thietbicha = value; }
    }
    public int Capcaythumuc
    {
        get { return capcaythumuc; }
        set { capcaythumuc = value; }
    }
    public string Nhasanxuat
    {
        get { return nhasanxuat; }
        set { nhasanxuat = value; }
    }
    public string Nuocsanxuat
    {
        get { return nuocsanxuat; }
        set { nuocsanxuat = value; }
    }
    public string Serial
    {
        get { return serial; }
        set { serial = value; }
    }
    public string Model
    {
        get { return model; }
        set { model = value; }
    }
    public DateTime Ngaylapdat
    {
        get { return ngaylapdat; }
        set { ngaylapdat = value; }
    }
    public DateTime Ngaymua
    {
        get { return ngaymua; }
        set { ngaymua = value; }
    }
    public string Linkimage
    {
        get { return linkimage; }
        set { linkimage = value; }
    }
    public string Imagedescription
    {
        get { return imagedescription; }
        set { imagedescription = value; }
    }
    public int Chitietbangbaogia
    {
        get { return chitietbangbaogia; }
        set { chitietbangbaogia = value; }
    }
    public string Maql
    {
        get { return maql; }
        set { maql = value; }
    }
    public string Phieunhapkho
    {
        get { return phieunhapkho; }
        set { phieunhapkho = value; }
    }
    public string Linhvucsudung
    {
        get { return linhvucsudung; }
        set { linhvucsudung = value; }
    }
    public string Donvitiente
    {
        get { return donvitiente; }
        set { donvitiente = value; }
    }
    public bool Lathietbigoc
    {
        get { return lathietbigoc; }
        set { lathietbigoc = value; }
    }
}
