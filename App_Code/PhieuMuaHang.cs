using System;
using System.Collections.Generic;
using System.Web;

/// <summary>
/// Summary description for PhieuMuaHang
/// </summary>
public class PhieuMuaHang
{
    int Id;
    string tenphieumuahang;
    DateTime ngaylap;
    int loaiphieu;
    string nguoinhan;
    string kehoachmuahang;
    int phieuyeucausuachua;
    DateTime ngaypheduyetkehoachmuahang;
    int hanghoa;
    string thongtin;
    int hinhthucmuasam;
    int danhsachNCC;
    int dsnguoiduyet;    
    public PhieuMuaHang(int Id, string tenphieumuahang, DateTime ngaylap, int loaiphieu, string nguoinhan, string kehoachmuahang, int phieuyeucausuachua, DateTime ngaypheduyetkehoachmuahang, int hanghoa, string thongtin, int hinhthucmuasam, int danhsachNCC, int dsnguoiduyet)
    {
        this.Id = Id;
        this.tenphieumuahang = tenphieumuahang;
        this.ngaylap = ngaylap;
        this.loaiphieu = loaiphieu;
        this.nguoinhan = nguoinhan;
        this.kehoachmuahang = kehoachmuahang;
        this.phieuyeucausuachua = phieuyeucausuachua;
        this.ngaypheduyetkehoachmuahang = ngaypheduyetkehoachmuahang;
        this.hanghoa = hanghoa;
        this.thongtin = thongtin;
        this.hinhthucmuasam = hinhthucmuasam;
        this.danhsachNCC = danhsachNCC;
        this.dsnguoiduyet = dsnguoiduyet;
    }
	public PhieuMuaHang()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public int Id1
    {
        get { return Id; }
        set { Id = value; }
    }
    public string Tenphieumuahang
    {
        get { return tenphieumuahang; }
        set { tenphieumuahang = value; }
    }
    public DateTime Ngaylap
    {
        get { return ngaylap; }
        set { ngaylap = value; }
    }
    public int Loaiphieu
    {
        get { return loaiphieu; }
        set { loaiphieu = value; }
    }
    public string Nguoinhan
    {
        get { return nguoinhan; }
        set { nguoinhan = value; }
    }
    public string Kehoachmuahang
    {
        get { return kehoachmuahang; }
        set { kehoachmuahang = value; }
    }
    public int Phieuyeucausuachua
    {
        get { return phieuyeucausuachua; }
        set { phieuyeucausuachua = value; }
    }
    public DateTime Ngaypheduyetkehoachmuahang
    {
        get { return ngaypheduyetkehoachmuahang; }
        set { ngaypheduyetkehoachmuahang = value; }
    }
    public int Hanghoa
    {
        get { return hanghoa; }
        set { hanghoa = value; }
    }
    public string Thongtin
    {
        get { return thongtin; }
        set { thongtin = value; }
    }
    public int Hinhthucmuasam
    {
        get { return hinhthucmuasam; }
        set { hinhthucmuasam = value; }
    }
    public int DanhsachNCC
    {
        get { return danhsachNCC; }
        set { danhsachNCC = value; }
    }
    public int Dsnguoiduyet
    {
        get { return dsnguoiduyet; }
        set { dsnguoiduyet = value; }
    }
}