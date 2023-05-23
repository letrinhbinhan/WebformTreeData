using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Resourcers_AJAX_SuaBaoTri : System.Web.UI.Page
{
    DataUtil data = new DataUtil();
    public string thongbao;
	public string mathietbibaotri, nambatdau, thangbatdau, ngaybatdau, namketthuc, thangketthuc, ngayketthuc, ghichu, nguoilap, loaihinh, matbbt;
    protected void Page_Load(object sender, EventArgs e)
    {
        //string mathietbibaotri, nambatdau, thangbatdau, ngaybatdau, namketthuc, thangketthuc, ngayketthuc, ghichu, nguoilap, loaihinh, matbbt;
        bool tontai, tontaitbbt;
        tontai = false;
		tontaitbbt = false;
        thongbao = "";
		if(Request.QueryString["matbbt"] != null && Request.QueryString["matbbt"] != "undefined")
		{
			matbbt = Request.QueryString["matbbt"];
			for(int i = 0; i < data.dsTBBT().Count; i++)
			{
				if(data.dsTBBT()[i].Matbbt == Int32.Parse(matbbt))
				{
					tontaitbbt = true;
				}
			}
			if(tontaitbbt == false)
			{
				thongbao = "Không tồn tại thiết bị bảo trì.";
				return;
			}
		}
		
		if(Request.QueryString["mathietbibaotri"] != null)
		{
			mathietbibaotri = Request.QueryString["mathietbibaotri"];		
			for (int i = 0; i < data.dsThietBi().Count; i++)
			{
				if (data.dsThietBi()[i].Matb == Int32.Parse(mathietbibaotri))
				{
					tontai = true;
				}
			}
			if (tontai == false)
			{
				thongbao = "Không tồn tại thiết bị này.";
				return;
			}
		}
        matbbt = Request.QueryString["matbbt"];
        mathietbibaotri = Request.QueryString["mathietbibaotri"];
		
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
            string sql = "UPDATE tbltbbt SET mathietbibt = @param1, thoigianbatdau = @param2, thoigianketthuc = @param3, ghichu = @param4, nguoilap = @param5, loaihinh = @param6 WHERE matbbt = @param7";
			
            using (SqlCommand cmd = new SqlCommand(sql, connection))
            {
                cmd.Parameters.Add("@param1", SqlDbType.Int).Value = Int32.Parse(mathietbibaotri);
                cmd.Parameters.Add("@param2", SqlDbType.DateTime).Value = new DateTime(Int32.Parse(nambatdau), Int32.Parse(thangbatdau), Int32.Parse(ngaybatdau));
                cmd.Parameters.Add("@param3", SqlDbType.DateTime).Value = new DateTime(Int32.Parse(namketthuc), Int32.Parse(thangketthuc), Int32.Parse(ngayketthuc));
                cmd.Parameters.Add("@param4", SqlDbType.NVarChar).Value = ghichu;
                cmd.Parameters.Add("@param5", SqlDbType.NVarChar).Value = nguoilap;
                cmd.Parameters.Add("@param6", SqlDbType.NVarChar).Value = loaihinh;
                cmd.Parameters.Add("@param7", SqlDbType.NVarChar).Value = Int32.Parse(matbbt);
                cmd.CommandType = CommandType.Text;
                cmd.ExecuteNonQuery();
                thongbao = "Sửa thành công lịch bảo trì cho thiết bị " + mathietbibaotri + ".";
            }
        }
    }
}