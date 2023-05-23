using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Resourcers_AJAX_ThemBaoTri : System.Web.UI.Page
{
    DataUtil data = new DataUtil();
    public string thongbao;
    protected void Page_Load(object sender, EventArgs e)
    {
        string mathietbibt, nambatdau, thangbatdau, ngaybatdau, namketthuc, thangketthuc, ngayketthuc, ghichu, nguoilap, loaihinh;
        bool tontai;
        tontai = false;
        thongbao = "";
        mathietbibt = Request.QueryString["mathietbibt"];
        for (int i = 0; i < data.dsThietBi().Count; i++)
        {
            if (data.dsThietBi()[i].Matb == Int32.Parse(mathietbibt))
            {
                tontai = true;
            }
        }
        if (tontai == false)
        {
            thongbao = "Không tồn tại thiết bị này.";
            return;
        }
                
        mathietbibt = Request.QueryString["mathietbibt"];
        nambatdau = Request.QueryString["nambatdau"];
        thangbatdau = Request.QueryString["thangbatdau"];
        ngaybatdau = Request.QueryString["ngaybatdau"];
        namketthuc = Request.QueryString["namketthuc"];
        thangketthuc = Request.QueryString["thangketthuc"];
        ngayketthuc = Request.QueryString["ngayketthuc"];
        ghichu = Request.QueryString["ghichu"];
        nguoilap = Request.QueryString["nguoilap"];
        loaihinh = Request.QueryString["loaihinh"];
        using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["QLThietBiConnectionString"].ConnectionString))
        {
            connection.Open();
            string sql = "INSERT INTO tblTBBT(mathietbibt, thoigianbatdau, thoigianketthuc, ghichu, nguoilap, loaihinh) VALUES(@param1,@param2,@param3,@param4,@param5,@param6)";

            using (SqlCommand cmd = new SqlCommand(sql, connection))
            {
                cmd.Parameters.Add("@param1", SqlDbType.Int).Value = mathietbibt;
                cmd.Parameters.Add("@param2", SqlDbType.DateTime).Value = new DateTime(Int32.Parse(nambatdau), Int32.Parse(thangbatdau), Int32.Parse(ngaybatdau));
                cmd.Parameters.Add("@param3", SqlDbType.DateTime).Value = new DateTime(Int32.Parse(namketthuc), Int32.Parse(thangketthuc), Int32.Parse(ngayketthuc));
                cmd.Parameters.Add("@param4", SqlDbType.NVarChar).Value = ghichu;
                cmd.Parameters.Add("@param5", SqlDbType.NVarChar).Value = nguoilap;
                cmd.Parameters.Add("@param6", SqlDbType.NVarChar).Value = loaihinh;
                cmd.CommandType = CommandType.Text;
                cmd.ExecuteNonQuery();
                thongbao = "Thêm thành công lịch bảo trì cho thiết bị " + mathietbibt + ".";
            }
        }
    }
}