using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Resourcers_AJAX_ThemChiTiet : System.Web.UI.Page
{
    public string thongbao;
    protected void Page_Load(object sender, EventArgs e)
    {
        string tenchitiet, thongsokythuat, donvi, model, partno, kyhieu, thietbi;        
        tenchitiet = Request.QueryString["tenchitiet"];
        thongsokythuat = Request.QueryString["thongsokythuat"];
        donvi = Request.QueryString["donvi"];
        model = Request.QueryString["model"];
        partno = Request.QueryString["partno"];
        kyhieu = Request.QueryString["kyhieu"];
        thietbi = Request.QueryString["thietbi"];
        using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["QLThietBiConnectionString"].ConnectionString))
        {
            connection.Open();
            string sql = "INSERT INTO tblchitietthietbi(tenchitiet, thongsokythuat, donvi, model, partno, kyhieu, thietbi) VALUES(@param1,@param2,@param3,@param4,@param5,@param6,@param7)";

            using (SqlCommand cmd = new SqlCommand(sql, connection))
            {
                cmd.Parameters.Add("@param1", SqlDbType.NVarChar).Value = tenchitiet;
                cmd.Parameters.Add("@param2", SqlDbType.NVarChar).Value = thongsokythuat;
                cmd.Parameters.Add("@param3", SqlDbType.NVarChar).Value = donvi;
                cmd.Parameters.Add("@param4", SqlDbType.NVarChar).Value = model;
                cmd.Parameters.Add("@param5", SqlDbType.NVarChar).Value = partno;
                cmd.Parameters.Add("@param6", SqlDbType.NVarChar).Value = kyhieu;
                cmd.Parameters.Add("@param7", SqlDbType.NVarChar).Value = thietbi;
                cmd.CommandType = CommandType.Text;
                cmd.ExecuteNonQuery();
                thongbao = "Thêm thành công chi tiết cho thiết bị " + tenchitiet + ".";
            }
        }
    }
}