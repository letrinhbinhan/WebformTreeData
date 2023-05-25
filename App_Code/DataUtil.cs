using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Collections.Generic;

/// <summary>
/// Summary description for DataUtil
/// </summary>
public class DataUtil
{
    SqlConnection conn;

    public DataUtil()
    {
        string sqlcon = @"Data Source=AN-PC\MSSQLSERVER2012;Initial Catalog=QLThietBiMayTinhTungPhongBan;User ID=binhan;Password=12345678";
        conn = new SqlConnection(sqlcon);
    }

    public List<ThietBi> dsThietBi()
    {
        List<ThietBi> ds = new List<ThietBi>();
        string sql = "SELECT * FROM tblthietbi";
        SqlCommand cmd = new SqlCommand(sql, conn);
        conn.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            ThietBi tb = new ThietBi();
            if (dr.IsDBNull(0) != true)
            {
                tb.Matb = (int)dr["matb"];
            }
            else
            {
                tb.Matb = 0;
            }
            if (dr.IsDBNull(1) != true)
            {
                tb.Tentb = (string)dr["tentb"];
            }
            else
            {
                tb.Tentb = "";
            }
            if (dr.IsDBNull(2) != true)
            {
                tb.Loaitb = (int)dr["loaitb"];
            }
            else
            {
                tb.Loaitb = 1;
            }
            if (dr.IsDBNull(3) != true)
            {
                tb.Phongban = (int)dr["phongban"];
            }
            else
            {
                tb.Phongban = 0;
            }
            if (dr.IsDBNull(4) != true)
            {
                tb.Ngaynhap = (DateTime)dr["ngaynhap"];
            }
            else
            {
                tb.Ngaynhap = new DateTime(1900, 1, 1);
            }
            if (dr.IsDBNull(5) != true)
            {
                tb.Tinhtrang = (string)dr["tinhtrang"];
            }
            else
            {
                tb.Tinhtrang = "";
            }
            if (dr.IsDBNull(6) != true)
            {
                tb.Thongsokthuat = (string)dr["thongsokythuat"];
            }
            else
            {
                tb.Thongsokthuat = "";
            }
            if (dr.IsDBNull(7) != true)
            {
                tb.Giathanh = String.Format("{0:c}", dr["giathanh"]);
            }
            else
            {
                tb.Giathanh = "";
            }
            if (dr.IsDBNull(8) != true)
            {
                tb.Vitri = (int)dr["vitri"];
            }
            else
            {
                tb.Vitri = 0;
            }
            if (dr.IsDBNull(9) != true)
            {
                tb.NCC1 = (string)dr["NCC"];
            }
            else
            {
                tb.NCC1 = "";
            }
            if (dr.IsDBNull(10) != true)
            {
                tb.Phieumuahang = (string)dr["phieumuahang"];
            }
            else
            {
                tb.Phieumuahang = "";
            }
            if (dr.IsDBNull(11) != true)
            {
                tb.Huhong = (string)dr["huhong"];
            }
            else
            {
                tb.Huhong = "";
            }
            if (dr.IsDBNull(12) != true)
            {
                tb.Nguoiduyet = (string)dr["nguoiduyet"];
            }
            else
            {
                tb.Nguoiduyet = "";
            }
            if (dr.IsDBNull(13) != true)
            {
                tb.Ngayduyet = (DateTime)dr["ngayduyet"];
            }
            else
            {
                tb.Ngayduyet = new DateTime(1900, 1, 1);
            }
            if (dr.IsDBNull(14) != true)
            {
                tb.Thoihanbaohanh = (string)dr["thoihanbaohanh"];
            }
            else
            {
                tb.Thoihanbaohanh = "";
            }
            if (dr.IsDBNull(15) != true)
            {
                tb.Thietbicha = (int)dr["thietbicha"];
            }
            else
            {
                tb.Thietbicha = 0;
            }
            if (dr.IsDBNull(16) != true)
            {
                tb.Capcaythumuc = (int)dr["capcaythumuc"];
            }
            else
            {
                tb.Capcaythumuc = 0;
            }
            if (dr.IsDBNull(17) != true)
            {
                tb.Nhasanxuat = (string)dr["nhasanxuat"];
            }
            else
            {
                tb.Nhasanxuat = "";
            }
            if (dr.IsDBNull(18) != true)
            {
                tb.Nuocsanxuat = (string)dr["nuocsanxuat"];
            }
            else
            {
                tb.Nuocsanxuat = "";
            }
            if (dr.IsDBNull(19) != true)
            {
                tb.Serial = (string)dr["serial"];
            }
            else
            {
                tb.Serial = "";
            }
            if (dr.IsDBNull(20) != true)
            {
                tb.Model = (string)dr["model"];
            }
            else
            {
                tb.Model = "";
            }
            if (dr.IsDBNull(21) != true)
            {
                tb.Ngaylapdat = (DateTime)dr["ngaylapdat"];
            }
            else
            {
                tb.Ngaylapdat = new DateTime(1900,1,1);
            }
            if (dr.IsDBNull(22) != true)
            {
                tb.Ngaymua = (DateTime)dr["ngaymua"];
            }
            else
            {
                tb.Ngaymua = new DateTime(1900, 1, 1);
            }
            if (dr.IsDBNull(23) != true)
            {
                tb.Linkimage = (string)dr["linkimage"];
            }
            else
            {
                tb.Linkimage = "";
            }
            if (dr.IsDBNull(24) != true)
            {
                tb.Imagedescription = (string)dr["imagedescription"];
            }
            else
            {
                tb.Imagedescription = "";
            }
            if (dr.IsDBNull(25) != true)
            {
                tb.Chitietbangbaogia = (int)dr["chitietbangbaogia"];
            }
            else
            {
                tb.Chitietbangbaogia = 0;
            }
            if (dr.IsDBNull(26) != true)
            {
                tb.Maql = (string)dr["maql"];
            }
            else
            {
                tb.Maql = "";
            }
            if (dr.IsDBNull(27) != true)
            {
                tb.Phieunhapkho = (string)dr["phieunhapkho"];
            }
            else
            {
                tb.Phieunhapkho = "";
            }
            if (dr.IsDBNull(28) != true)
            {
                tb.Linhvucsudung = (string)dr["linhvucsudung"];
            }
            else
            {
                tb.Linhvucsudung = "";
            }            
            if (dr.IsDBNull(29) != true)
            {
                tb.Donvitiente = (string)dr["donvitiente"];
            }
            else
            {
                tb.Donvitiente = "";
            }
            if (dr.IsDBNull(30) != true)
            {
                tb.Lathietbigoc = (bool)dr["lathietbigoc"];
            }
            else
            {
                tb.Lathietbigoc = false;
            }
            ds.Add(tb);
        }
        conn.Close();
        return ds;
    }

    public List<LoaiThietBi> dsLoaiThietBi()
    {
        List<LoaiThietBi> ds = new List<LoaiThietBi>();
        string sql = "SELECT * FROM tblloaithietbi";
        SqlCommand cmd = new SqlCommand(sql, conn);
        conn.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            LoaiThietBi tb = new LoaiThietBi();
            if (dr.IsDBNull(0) != true)
            {
                tb.Maloaitb = (int)dr["maloaitb"];
            }
            else
            {
                tb.Maloaitb = 0;
            }
            if (dr.IsDBNull(1) != true)
            {
                tb.Tenloaitb = (string)dr["tenloaitb"];
            }
            else
            {
                tb.Tenloaitb = "null";
            }
            if (dr.IsDBNull(2) != true)
            {
                tb.Ttcaythumuc = (int)dr["ttcaythumuc"];
            }
            else
            {
                tb.Ttcaythumuc = 0;
            }
            ds.Add(tb);
        }
        conn.Close();
        return ds;
    }

    public List<PhongBan> dsPhongBan()
    {
        List<PhongBan> ds = new List<PhongBan>();
        string sql = "SELECT * FROM tblphongban";
        SqlCommand cmd = new SqlCommand(sql, conn);
        conn.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            PhongBan tb = new PhongBan();
            if (dr.IsDBNull(1) != true)
            {
                tb.Idphongban = (int)dr["idphongban"];
            }
            else
            {
                tb.Maphongban = "null";
            }
            if (dr.IsDBNull(1) != true)
            {
                tb.Maphongban = (string)dr["maphongban"];
            }
            else
            {
                tb.Maphongban = "null";
            }
            if (dr.IsDBNull(2) != true)
            {
                tb.Tenphongban = (string)dr["tenphongban"];
            }
            else
            {
                tb.Tenphongban = "null";
            }
            if (dr.IsDBNull(3) != true)
            {
                tb.Ttcaythumuc = (int)dr["ttcaythumuc"];
            }
            else
            {
                tb.Ttcaythumuc = 0;
            }
            ds.Add(tb);
        }
        conn.Close();
        return ds;
    }
    public List<TBBT> dsTBBT()
    {
        List<TBBT> ds = new List<TBBT>();
        string sql = "SELECT * FROM tblTBBT";
        SqlCommand cmd = new SqlCommand(sql, conn);
        conn.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            TBBT tb = new TBBT();
            if (dr.IsDBNull(0) != true)
            {
                tb.Matbbt = (int)dr["matbbt"];
            }
            else
            {
                tb.Matbbt = 0;
            }
            if (dr.IsDBNull(1) != true)
            {
                tb.Mathietbibt = (int)dr["mathietbibt"];
            }
            else
            {
                tb.Mathietbibt = 0;
            }
            if (dr.IsDBNull(2) != true)
            {
                tb.Thoigianbatdau = (DateTime)dr["thoigianbatdau"];
            }
            else
            {
                tb.Thoigianbatdau = new DateTime(1900, 1, 1);
            }
            if (dr.IsDBNull(3) != true)
            {
                tb.Thoigianketthuc = (DateTime)dr["thoigianketthuc"];
            }
            else
            {
                tb.Thoigianketthuc = new DateTime(1900, 1, 1);
            }
            if (dr.IsDBNull(4) != true)
            {
                tb.Ghichu = (string)dr["ghichu"];
            }
            else
            {
                tb.Ghichu = "";
            }
            if (dr.IsDBNull(5) != true)
            {
                tb.Nguoilap = (string)dr["nguoilap"];
            }
            else
            {
                tb.Nguoilap = "";
            }
            if (dr.IsDBNull(6) != true)
            {
                tb.Loaihinh = (string)dr["loaihinh"];
            }
            else
            {
                tb.Loaihinh = "";
            }
            ds.Add(tb);
        }
        conn.Close();
        return ds;
    }
    public List<ThietBiTaiLieu> dsThietBiTaiLieu()
    {
        List<ThietBiTaiLieu> ds = new List<ThietBiTaiLieu>();
        string sql = "SELECT * FROM tblThietBiTaiLieu";
        SqlCommand cmd = new SqlCommand(sql, conn);
        conn.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            ThietBiTaiLieu tb = new ThietBiTaiLieu();
            if (dr.IsDBNull(0) != true)
            {
                tb.Mathietbitailieu = (int)dr["mathietbitailieu"];
            }
            else
            {
                tb.Mathietbitailieu = 0;
            }
            if (dr.IsDBNull(1) != true)
            {
                tb.Mathietbi = (int)dr["mathietbi"];
            }
            else
            {
                tb.Mathietbi = 0;
            }
            if (dr.IsDBNull(2) != true)
            {
                tb.Tentailieu = (string)dr["tentailieu"];
            }
            else
            {
                tb.Tentailieu = "null";
            }
            if (dr.IsDBNull(3) != true)
            {
                tb.Linktailieu = (string)dr["linktailieu"];
            }
            else
            {
                tb.Tentailieu = "null";
            }
            if (dr.IsDBNull(4) != true)
            {
                tb.Tenfile = (string)dr["tenfile"];
            }
            else
            {
                tb.Tenfile = "";
            }
            if (dr.IsDBNull(4) != true)
            {
                tb.Ngaythem = (DateTime)dr["ngaythem"];
            }
            else
            {
                tb.Ngaythem = new DateTime(2000,1,1);
            }
            ds.Add(tb);
        }
        conn.Close();
        return ds;
    }

    public List<NhaCungCap> dsNhaCungCap()
    {
        List<NhaCungCap> ds = new List<NhaCungCap>();
        string sql = "SELECT * FROM tblnhacungcap";
        SqlCommand cmd = new SqlCommand(sql, conn);
        conn.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            NhaCungCap nhacungcap = new NhaCungCap();
            if (dr.IsDBNull(0) != true)
            {
                nhacungcap.Id1 = (int)dr["id"];
            }
            else
            {
                nhacungcap.Id1 = 0;
            }
            if (dr.IsDBNull(1) != true)
            {
                nhacungcap.Tennhacungcap = (string)dr["tennhacungcap"];
            }
            else
            {
                nhacungcap.Tennhacungcap = "null";
            }
            if (dr.IsDBNull(2) != true)
            {
                nhacungcap.Ma = (string)dr["ma"];
            }
            else
            {
                nhacungcap.Ma = "null";
            }
            if (dr.IsDBNull(3) != true)
            {
                nhacungcap.Email = (string)dr["email"];
            }
            else
            {
                nhacungcap.Email = "null";
            }
            if (dr.IsDBNull(4) != true)
            {
                nhacungcap.Sodienthoai = (string)dr["sodienthoai"];
            }
            else
            {
                nhacungcap.Sodienthoai = "null";
            }
            if (dr.IsDBNull(5) != true)
            {
                nhacungcap.Diachi = (string)dr["diachi"];
            }
            else
            {
                nhacungcap.Diachi = "null";
            }
            if (dr.IsDBNull(6) != true)
            {
                nhacungcap.Fax = (string)dr["fax"];
            }
            else
            {
                nhacungcap.Fax = "null";
            }
            if (dr.IsDBNull(7) != true)
            {
                nhacungcap.Masothue = (string)dr["masothue"];
            }
            else
            {
                nhacungcap.Masothue = "null";
            }
            if (dr.IsDBNull(8) != true)
            {
                nhacungcap.Sotaikhoan = (string)dr["sotaikhoan"];
            }
            else
            {
                nhacungcap.Sotaikhoan = "null";
            }
            if (dr.IsDBNull(9) != true)
            {
                nhacungcap.Nganhang = (string)dr["nganhang"];
            }
            else
            {
                nhacungcap.Nganhang = "null";
            }
            if (dr.IsDBNull(10) != true)
            {
                nhacungcap.Linklogo = (string)dr["linklogo"];
            }
            else
            {
                nhacungcap.Linklogo = "";
            }
            if (dr.IsDBNull(11) != true)
            {
                nhacungcap.Hoatdong = (bool)dr["hoatdong"];
            }
            else
            {
                nhacungcap.Hoatdong = true;
            }
            if (dr.IsDBNull(12) != true)
            {
                nhacungcap.Ngaythem = (DateTime)dr["ngaythem"];
            }
            else
            {
                nhacungcap.Ngaythem = new DateTime(1900,1,1);
            }
            if (dr.IsDBNull(13) != true)
            {
                nhacungcap.Nguonhang = (string)dr["nguonhang"];
            }
            else
            {
                nhacungcap.Nguonhang = "";
            }
            if (dr.IsDBNull(14) != true)
            {
                nhacungcap.Dotincay = (int)dr["dotincay"];
            }
            else
            {
                nhacungcap.Dotincay = 11;
            }
            if (dr.IsDBNull(15) != true)
            {
                nhacungcap.Nguoidaidien = (string)dr["nguoidaidien"];
            }
            else
            {
                nhacungcap.Nguoidaidien = "";
            }
            if (dr.IsDBNull(16) != true)
            {
                nhacungcap.Tendaidien = (string)dr["tendaidien"];
            }
            else
            {
                nhacungcap.Tendaidien = "";
            }
            if (dr.IsDBNull(17) != true)
            {
                nhacungcap.Condaunhacungcap = (string)dr["condaunhacungcap"];
            }
            else
            {
                nhacungcap.Condaunhacungcap = "";
            }
            if (dr.IsDBNull(18) != true)
            {
                nhacungcap.Thangdiem = (int)dr["thangdiem"];
            }
            else
            {
                nhacungcap.Thangdiem = 11;
            }
            if (dr.IsDBNull(19) != true)
            {
                nhacungcap.Ghichu = (string)dr["ghichu"];
            }
            else
            {
                nhacungcap.Ghichu = "";
            }
            ds.Add(nhacungcap);
        }
        conn.Close();
        return ds;
    }
    public List<ChiTietBangBaoGia> dsChiTietBangBaoGia()
    {
        List<ChiTietBangBaoGia> ds = new List<ChiTietBangBaoGia>();
        string sql = "SELECT * FROM tblchitietbangbaogia";
        SqlCommand cmd = new SqlCommand(sql, conn);
        conn.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            ChiTietBangBaoGia ctbbg = new ChiTietBangBaoGia();
            if (dr.IsDBNull(0) != true)
            {
                ctbbg.Id1 = (int)dr["id"];
            }
            else
            {
                ctbbg.Id1 = 0;
            }
            if (dr.IsDBNull(1) != true)
            {
                ctbbg.Tenthietbi = (string)dr["tenthietbi"];
            }
            else
            {
                ctbbg.Tenthietbi = "";
            }
            if (dr.IsDBNull(2) != true)
            {
                ctbbg.Soluong = (int)dr["soluong"];
            }
            else
            {
                ctbbg.Soluong = 0;
            }
            if (dr.IsDBNull(3) != true)
            {
                ctbbg.Dongia = (float)dr.GetDouble(3);
            }
            else
            {
                ctbbg.Dongia = 0;
            }
            if (dr.IsDBNull(4) != true)
            {
                ctbbg.Thanhtien = (float)dr.GetDouble(4);
            }
            else
            {
                ctbbg.Thanhtien = 0;
            }
            if (dr.IsDBNull(5) != true)
            {
                ctbbg.Thoigianbaohanh = (string)dr["thoigianbaohanh"];
            }
            else
            {
                ctbbg.Thoigianbaohanh = "";
            }
            if (dr.IsDBNull(6) != true)
            {
                ctbbg.Bangbaogia = (int)dr["bangbaogia"];
            }
            else
            {
                ctbbg.Bangbaogia = 0;
            }
            ds.Add(ctbbg);
        }
        conn.Close();
        return ds;
    }

    public List<PhuTung> dsPhuTung()
    {
        List<PhuTung> ds = new List<PhuTung>();
        string sql = "SELECT * FROM tblphutung";
        SqlCommand cmd = new SqlCommand(sql, conn);
        conn.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            PhuTung tb = new PhuTung();
            if (dr.IsDBNull(0) != true)
            {
                tb.Mapt = (int)dr["mapt"];
            }
            else
            {
                tb.Mapt = 0;
            }
            if (dr.IsDBNull(1) != true)
            {
                tb.Tenpt = (string)dr["tenpt"];
            }
            else
            {
                tb.Tenpt = "null";
            }
            if (dr.IsDBNull(2) != true)
            {
                tb.Ngaynhap = (DateTime)dr["ngaynhap"];
            }
            else
            {
                tb.Ngaynhap = new DateTime(2012, 1, 1);
            }
            if (dr.IsDBNull(3) != true)
            {
                tb.Giaca = (int)dr["giaca"];
            }
            else
            {
                tb.Giaca = 0;
            }
            if (dr.IsDBNull(4) != true)
            {
                tb.Tinhtrang = (bool)dr["tinhtrang"];
            }
            else
            {
                tb.Tinhtrang = false;
            }
            if (dr.IsDBNull(5) != true)
            {
                tb.Thietbi = (int)dr["thietbi"];
            }
            else
            {
                tb.Thietbi = 0;
            }
            ds.Add(tb);
        }
        conn.Close();
        return ds;
    }

    public List<Users> dsUsers()
    {
        List<Users> ds = new List<Users>();
        string sql = "SELECT * FROM tblusers";
        SqlCommand cmd = new SqlCommand(sql, conn);
        conn.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            Users tb = new Users();
            if (dr.IsDBNull(0) != true)
            {
                tb.Userid = (string)dr["userid"];
            }
            else
            {
                tb.Userid = "null";
            }
            if (dr.IsDBNull(1) != true)
            {
                tb.Username = (string)dr["username"];
            }
            else
            {
                tb.Username = "null";
            }
            if (dr.IsDBNull(2) != true)
            {
                tb.Password = (string)dr["password"];
            }
            else
            {
                tb.Password = "null";
            }
            if (dr.IsDBNull(3) != true)
            {
                tb.Fullname = (string)dr["fullname"];
            }
            else
            {
                tb.Password = "null";
            }
            if (dr.IsDBNull(4) != true)
            {
                tb.Birthday = (DateTime)dr["birthday"];
            }
            else
            {
                tb.Birthday = new DateTime(2000,1,1);
            }
            if (dr.IsDBNull(5) != true)
            {
                tb.Email = (string)dr["Email"];
            }
            else
            {
                tb.Email = "null";
            }
            if (dr.IsDBNull(6) != true)
            {
                tb.Gender = (bool)dr["gender"];
            }
            else
            {
                tb.Gender = false;
            }
            if (dr.IsDBNull(7) != true)
            {
                tb.Address = (string)dr["address"];
            }
            else
            {
                tb.Address = "null";
            }
            if (dr.IsDBNull(8) != true)
            {
                tb.Phonenumber = (string)dr["phonenumber"];
            }
            else
            {
                tb.Address = "null";
            }
            if (dr.IsDBNull(9) != true)
            {
                tb.Active = (bool)dr["active"];
            }
            else
            {
                tb.Active = false;
            }
            ds.Add(tb);
        }
        conn.Close();
        return ds;
    }

    public List<ChiTietThietBi> dsChiTietThietBi()
    {
        List<ChiTietThietBi> ds = new List<ChiTietThietBi>();
        string sql = "SELECT * FROM tblchitietthietbi";
        SqlCommand cmd = new SqlCommand(sql, conn);
        conn.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            ChiTietThietBi cttb = new ChiTietThietBi();
            if (dr.IsDBNull(0) != true)
            {
                cttb.Id = (int)dr["id"];
            }
            else
            {
                cttb.Id = 0;
            }
            if (dr.IsDBNull(1) != true)
            {
                cttb.Tenchitiet = (string)dr["tenchitiet"];
            }
            else
            {
                cttb.Tenchitiet = "null";
            }
            if (dr.IsDBNull(2) != true)
            {
                cttb.Thongsokythuat = (string)dr["thongsokythuat"];
            }
            else
            {
                cttb.Thongsokythuat = "";
            }
            if (dr.IsDBNull(3) != true)
            {
                cttb.Donvi = (string)dr["donvi"];
            }
            else
            {
                cttb.Donvi = "";
            }
            if (dr.IsDBNull(4) != true)
            {
                cttb.Model = (string)dr["Model"];
            }
            else
            {
                cttb.Model = "";
            }
            if (dr.IsDBNull(5) != true)
            {
                cttb.Partno = (string)dr["partno"];
            }
            else
            {
                cttb.Partno = "";
            }
            if (dr.IsDBNull(6) != true)
            {
                cttb.Kyhieu = (string)dr["kyhieu"];
            }
            else
            {
                cttb.Kyhieu = "";
            }
            if (dr.IsDBNull(7) != true)
            {
                cttb.Thietbi = (int)dr["thietbi"];
            }
            else
            {
                cttb.Thietbi = 0;
            }
            ds.Add(cttb);
        }
        conn.Close();
        return ds;
    }
    public List<ViTri> dsViTri()
    {
        List<ViTri> ds = new List<ViTri>();
        string sql = "SELECT * FROM tblvitri";
        SqlCommand cmd = new SqlCommand(sql, conn);
        conn.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            ViTri vt = new ViTri();
            if (dr.IsDBNull(0) != true)
            {
                vt.Id1 = (int)dr["Id"];
            }
            else
            {
                vt.Id1 = 0;
            }
            if (dr.IsDBNull(1) != true)
            {
                vt.Tenvitri = (string)dr["tenvitri"];
            }
            else
            {
                vt.Tenvitri = "null";
            }
            if (dr.IsDBNull(2) != true)
            {
                vt.Chathietbi = (bool)dr["chathietbi"];
            }
            else
            {
                vt.Chathietbi = false;
            }
            ds.Add(vt);
        }
        conn.Close();
        return ds;
    }
    public List<PhieuMuaHang> dsPhieuMuaHang()
    {
        List<PhieuMuaHang> ds = new List<PhieuMuaHang>();
        string sql = "SELECT * FROM tblphieumuahang";
        SqlCommand cmd = new SqlCommand(sql, conn);
        conn.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            PhieuMuaHang pmh = new PhieuMuaHang();
            if (dr.IsDBNull(0) != true)
            {
                pmh.Id1 = (int)dr["Id"];
            }
            else
            {
                pmh.Id1 = 0;
            }
            if (dr.IsDBNull(1) != true)
            {
                pmh.Tenphieumuahang = (string)dr["tenphieumuahang"];
            }
            else
            {
                pmh.Tenphieumuahang = "null";
            }
            if (dr.IsDBNull(2) != true)
            {
                pmh.Ngaylap = (DateTime)dr["ngaylap"];
            }
            else
            {
                pmh.Ngaylap = new DateTime(1900, 1, 1);
            }
            if (dr.IsDBNull(3) != true)
            {
                pmh.Loaiphieu = (int)dr["loaiphieu"];
            }
            else
            {
                pmh.Loaiphieu = 0;
            }
            if (dr.IsDBNull(4) != true)
            {
                pmh.Nguoinhan = (string)dr["nguoinhan"];
            }
            else
            {
                pmh.Nguoinhan = "";
            }
            if (dr.IsDBNull(5) != true)
            {
                pmh.Kehoachmuahang = (string)dr["kehoachmuahang"];
            }
            else
            {
                pmh.Kehoachmuahang = "";
            }
            if (dr.IsDBNull(6) != true)
            {
                pmh.Phieuyeucausuachua = (int)dr["phieuyeucausuachua"];
            }
            else
            {
                pmh.Phieuyeucausuachua = 0;
            }
            if (dr.IsDBNull(7) != true)
            {
                pmh.Ngaypheduyetkehoachmuahang = (DateTime)dr["ngaypheduyetkehoachmuahang"];
            }
            else
            {
                pmh.Ngaypheduyetkehoachmuahang = new DateTime(1900,1,1);
            }
            if (dr.IsDBNull(8) != true)
            {
                pmh.Hanghoa = (int)dr["hanghoa"];
            }
            else
            {
                pmh.Hanghoa = 0;
            }
            if (dr.IsDBNull(9) != true)
            {
                pmh.Thongtin = (string)dr["thongtin"];
            }
            else
            {
                pmh.Thongtin = "";
            }
            if (dr.IsDBNull(10) != true)
            {
                pmh.Hinhthucmuasam = (int)dr["hinhthucmuasam"];
            }
            else
            {
                pmh.Hinhthucmuasam = 0;
            }
            if (dr.IsDBNull(11) != true)
            {
                pmh.DanhsachNCC = (int)dr["danhsachNCC"];
            }
            else
            {
                pmh.DanhsachNCC = 0;
            }
            if (dr.IsDBNull(12) != true)
            {
                pmh.Dsnguoiduyet = (int)dr["dsnguoiduyet"];
            }
            else
            {
                pmh.Dsnguoiduyet = 0;
            }
            ds.Add(pmh);
        }
        conn.Close();
        return ds;
    }
}