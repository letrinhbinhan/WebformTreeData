using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Resourcers_AJAX_XoaChiTiet : System.Web.UI.Page
{
    DataUtil data = new DataUtil();
    public string thongbao;
    protected void Page_Load(object sender, EventArgs e)
    {
        string machitiet = Request.QueryString["machitiet"];
        using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["QLThietBiConnectionString"].ConnectionString))
        {
            connection.Open();
            string sql = "DELETE FROM tblchitietthietbi WHERE Id=@param1";

            using (SqlCommand cmd = new SqlCommand(sql, connection))
            {
                cmd.Parameters.Add("@param1", SqlDbType.NVarChar).Value = machitiet;
                cmd.CommandType = CommandType.Text;
                cmd.ExecuteNonQuery();
            }
        }
    }
}