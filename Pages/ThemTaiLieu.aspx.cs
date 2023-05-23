using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

public partial class Pages_ThemTaiLieu : System.Web.UI.Page
{
    private int mathietbi;
    private string tentailieu;
    private string linktailieu;
    private string tenfile;
    private DateTime ngaythem;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string RequestID = Request.QueryString["mathietbi"];
        int idch = Convert.ToInt32(RequestID);
        if (FileUpload1.HasFile)
        {
            FileUpload1.SaveAs(Server.MapPath("~/Resourcers/TaiLieu/" + FileUpload1.FileName));
            mathietbi = idch;
            tentailieu = FileUpload1.FileName;
            linktailieu = "~/Resource/TaiLieu/";
            tenfile = FileUpload1.FileName;
            ngaythem = DateTime.Now;
            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["QLThietBiConnectionString"].ConnectionString))
            {
                connection.Open();
                string sql = "INSERT INTO tblThietBiTaiLieu(mathietbi,tentailieu,linktailieu,tenfile,ngaythem) VALUES(@param1,@param2,@param3,@param4,@param5)";
                using (SqlCommand cmd = new SqlCommand(sql, connection))
                {
                    cmd.Parameters.Add("@param1", SqlDbType.Int).Value = mathietbi;
                    cmd.Parameters.Add("@param2", SqlDbType.NVarChar).Value = tentailieu;
                    cmd.Parameters.Add("@param3", SqlDbType.NVarChar).Value = linktailieu;
                    cmd.Parameters.Add("@param4", SqlDbType.NVarChar).Value = tenfile;
                    cmd.Parameters.Add("@param5", SqlDbType.DateTime).Value = ngaythem;
                    cmd.CommandType = CommandType.Text;
                    cmd.ExecuteNonQuery();
                }
            }
            Label1.Text = "Upload thành công.";
        }
        else
        {

        }
    }
}