using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Resourcers_AJAX_ThemThietBi : System.Web.UI.Page
{    
    protected void Page_Load(object sender, EventArgs e)
    {
        string RequestMaThietBi = Request.QueryString["mathietbi"];
        int mathietbi = Convert.ToInt32(RequestMaThietBi);
        string tenthietbi = Request.QueryString["tenthietbi"];
        string RequestLoaiThietBi = Request.QueryString["giaTriLTB"];
        int giatriLTB = Convert.ToInt32(RequestLoaiThietBi);
        string RequestPhongBan = Request.QueryString["giaTriPB"];
        int giaTriPB = Convert.ToInt32(RequestPhongBan);
        string RequestNgayNhap = Request.QueryString["giaTriNN"];
        int giaTriNN = Convert.ToInt32(RequestNgayNhap);
        string RequestThangNhap = Request.QueryString["giaTriTN"];
        int giaTriTN = Convert.ToInt32(RequestThangNhap);
        string RequestNamNhap = Request.QueryString["giaTriNN"];
        int giaTriNamN = Convert.ToInt32(RequestNamNhap);
        string txttinhtrang = Request.QueryString["tinhtrang"];
        string thongsokythuat = Request.QueryString["thongsokythuat"];
        string giathanh = Request.QueryString["giathanh"];
        string txtvitri = Request.QueryString["txtvitri"];
        string linhvuc = Request.QueryString["linhvuc"];
        string nhacungcap = Request.QueryString["nhacungcap"];
        string phieumuahang = Request.QueryString["phieumuahang"];
        string phieunhapkho = Request.QueryString["phieunhapkho"];
        string RequestThietBiCha = Request.QueryString["phieunhapkho"];
        int thietbicha = Convert.ToInt32(RequestThietBiCha);
        string RequestTBC = Request.QueryString["giaTriTBC"];
        int giaTriTBC = Convert.ToInt32(RequestTBC);
        string nhasanxuat = Request.QueryString["nhasanxuat"];
        string nuocsanxuat = Request.QueryString["nuocsanxuat"];
        string serial = Request.QueryString["serial"];
        string model = Request.QueryString["model"];
        string RequestNLD = Request.QueryString["giaTriNLD"];
        int giaTriNLD = Convert.ToInt32(RequestNLD);
        string RequestTLD = Request.QueryString["giaTriTLD"];
        int giaTriTLD = Convert.ToInt32(RequestNLD);
        string RequestNamLD = Request.QueryString["giaTriNamLD"];
        int giaTriNamLD = Convert.ToInt32(RequestNamLD);
        string RequestNM = Request.QueryString["giaTriNM"];
        int giaTriNM = Convert.ToInt32(RequestNM);
        string RequestTM = Request.QueryString["giaTriTM"];
        int giaTriTM = Convert.ToInt32(RequestTM);
        string RequestNamM = Request.QueryString["giaTriNamM"];
        int giaTriNamM = Convert.ToInt32(RequestNamM);
        string tenhinhanh = Request.QueryString["tenhinhanh"];
        string motahinhanh = Request.QueryString["motahinhanh"];
        
        if (mathietbi != null)
        {
            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["QLThietBiConnectionString"].ConnectionString))
            {
                connection.Open();
                string sql = "INSERT INTO tblthietbi(tinhtrang,thongsokythuat,giathanh,vitri,NCC,phieumuahang,huhong,nguoiduyet,ngayduyet,thoihanbaohanh,tinhtrangthanhtoan,thietbicha,capcaythumuc,nhasanxuat,nuocsanxuat,serial,model,ngaylapdat,ngaymua,linkimage,imagedescription,chitietbangbaogia,maql,phieunhapkho,linhvucsudung) VALUES(@param1,@param2,@param3,@param4,@param5,@param6,@param7,@param8,@param9,@param10,@param11,@param12,@param13,@param14,@param15,@param16,@param17,@param18,@param19,@param20,@param21,@param22,@param23,@param24,@param25)";
                    	
                using (SqlCommand cmd = new SqlCommand(sql, connection))
                {
                    cmd.Parameters.Add("@param1", SqlDbType.Int).Value = mathietbi;
                    cmd.Parameters.Add("@param2", SqlDbType.DateTime).Value = "thoigianbatdau";
                    cmd.Parameters.Add("@param3", SqlDbType.DateTime).Value = "thoigianketthuc";
                    cmd.Parameters.Add("@param4", SqlDbType.NVarChar).Value = "ghichu";
                    cmd.Parameters.Add("@param5", SqlDbType.VarChar).Value = "admin";
                    cmd.Parameters.Add("@param6", SqlDbType.NVarChar).Value = "loaibaotri";
                    cmd.CommandType = CommandType.Text;
                    cmd.ExecuteNonQuery();
                }
            }
        }


    }
}