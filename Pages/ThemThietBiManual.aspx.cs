using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_ThemThietBiManual : System.Web.UI.Page
{
    public DataUtil data = new DataUtil();
    List<ThietBi> dsthietbicha = new List<ThietBi>();
    public string mathietbimoi;
    public string tenhinhanh;
    protected void Page_Load(object sender, EventArgs e)
    {
        int max;
        mathietbimoi = "1";
        max = 1;
        for (int i = 0; i < data.dsThietBi().Count; i++)
        {
            if(data.dsThietBi()[i].Matb > max)
            {
                max = data.dsThietBi()[i].Matb;
            }
        }
        mathietbimoi = (max + 1).ToString();
        tenhinhanh = "";
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            FileUpload1.SaveAs(Server.MapPath("~/Resourcers/Images/ThietBi/" + FileUpload1.FileName));
            string tenfile = FileUpload1.FileName;
            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["QLThietBiMayTinhTungPhongBanConnectionString2"].ConnectionString))
            {
                connection.Open();
                string sql = "UPDATE tblthietbi SET linkimage='" + tenfile + "' WHERE matb='" + mathietbimoi+"'";
                using (SqlCommand cmd = new SqlCommand(sql, connection))
                {
                    cmd.CommandType = CommandType.Text;
                    cmd.ExecuteNonQuery();
                }
            }
            tenhinhanh = tenfile;
        }
    }
}