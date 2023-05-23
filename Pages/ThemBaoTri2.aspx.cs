using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_ThemBaoTri2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {    
        ddlNgay.SelectedValue = DateTime.Now.Day.ToString();
        ddlThang.SelectedValue = DateTime.Now.Month.ToString();
        ddlNam.SelectedValue = DateTime.Now.Year.ToString();
        ddlNgay2.SelectedValue = DateTime.Now.Day.ToString();
        ddlThang2.SelectedValue = DateTime.Now.Month.ToString();
        ddlNam2.SelectedValue = DateTime.Now.Year.ToString();
    }
    protected void btnThem_Click(object sender, EventArgs e)
    {
        
        using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["QLThietBiConnectionString"].ConnectionString))
        {
            connection.Open();
            string sql = "INSERT INTO tblTBBT(mathietbibt, thoigianbatdau, thoigianketthuc, ghichu, nguoilap, loaihinh) VALUES(@param1,@param2,@param3,@param4,@param5,@param6)";

            using (SqlCommand cmd = new SqlCommand(sql, connection))
            {
                cmd.Parameters.Add("@param1", SqlDbType.Int).Value = ddlMaThietBi.SelectedValue;
                cmd.Parameters.Add("@param2", SqlDbType.DateTime).Value = new DateTime(Int32.Parse(ddlNam.SelectedValue), Int32.Parse(ddlThang.SelectedValue), Int32.Parse(ddlNgay.SelectedValue));
                cmd.Parameters.Add("@param3", SqlDbType.DateTime).Value = new DateTime(Int32.Parse(ddlNam2.SelectedValue), Int32.Parse(ddlThang2.SelectedValue), Int32.Parse(ddlNgay2.SelectedValue));
                cmd.Parameters.Add("@param4", SqlDbType.NVarChar).Value = txtGhiChu.Text;
                cmd.Parameters.Add("@param5", SqlDbType.NVarChar).Value = txtNguoiLap.Text;
                cmd.Parameters.Add("@param6", SqlDbType.NVarChar).Value = txtLoaiHinh.Text;
                cmd.CommandType = CommandType.Text;
                cmd.ExecuteNonQuery();
            }
        }
    }
}