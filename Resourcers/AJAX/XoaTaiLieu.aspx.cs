using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Resourcers_AJAX_XoaTaiLieu : System.Web.UI.Page
{
    public string thongbao;
    protected void Page_Load(object sender, EventArgs e)
    {
        int matailieu;
        thongbao = "";
        matailieu = 0;
        string RequestID = Request.QueryString["matailieu"];
        int idch = Int32.Parse(RequestID);
        matailieu = idch;
        try
        {
            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["QLThietBiConnectionString"].ConnectionString))
            {
                connection.Open();
                string sql = "DELETE FROM tblthietbitailieu WHERE mathietbitailieu=@param1";

                using (SqlCommand cmd = new SqlCommand(sql, connection))
                {
                    cmd.Parameters.Add("@param1", SqlDbType.NVarChar).Value = matailieu;
                    cmd.CommandType = CommandType.Text;
                    cmd.ExecuteNonQuery();
                }
                thongbao = "Xóa thành công tài liệu " + matailieu + "!";
            }
        }
        catch { thongbao = "Xóa không thành công!"; }
    }
}