using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Resourcers_AJAX_SuaPhuTung : System.Web.UI.Page
{
    public string thongbao;
    protected void Page_Load(object sender, EventArgs e)
    {
        DataUtil data = new DataUtil();
        thongbao="";
        string RequestID = Request.QueryString["maphutung"];
        if(Request.QueryString["maphutung"] == null || Request.QueryString["maphutung"] == "")
        {
            return;
        }
        string tenphutung, thangnhap, namnhap, ngaynhap, giaca, tinhtrang, thietbi, maphutung;
        bool fkthietbi;        
        tenphutung = "";
        thangnhap = "";
        namnhap = "";
        ngaynhap = "";        
        tinhtrang = "";
        thietbi = "";
        maphutung = "";
        giaca = "";
        tenphutung = Request.QueryString["tenphutung"];
        thangnhap = Request.QueryString["thangnhap"];
        namnhap = Request.QueryString["namnhap"];
        ngaynhap = Request.QueryString["ngaynhap"];
        giaca = Request.QueryString["giaca"];
        tinhtrang = Request.QueryString["tinhtrang"];
        thietbi = Request.QueryString["thietbi"];
        maphutung = RequestID;
        fkthietbi = false;
        //check foreign key
        for(int i = 0; i < data.dsThietBi().Count;i++){
            if(Int32.Parse(thietbi) == data.dsThietBi()[i].Matb)
            {
                fkthietbi = true;
            }
        }
        if(fkthietbi==false) {
            thongbao = "Khóa ngoại thiết bị không chính xác.";
            return;
        }
        //maphutung=11&thangnhap=5&namnhap=2023&ngaynhap=11&giaca=100000&tinhtrang=true&thietbi=143
        using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["QLThietBiConnectionString"].ConnectionString))
        {
            connection.Open();
            string sql = "UPDATE tblphutung SET tenpt = @param1, ngaynhap = @param2, giaca = @param3, tinhtrang = @param4, thietbi = @param5 WHERE mapt = @param6";
			
            using (SqlCommand cmd = new SqlCommand(sql, connection))
            {
                cmd.Parameters.Add("@param1", SqlDbType.NVarChar).Value = tenphutung;                
                cmd.Parameters.Add("@param2", SqlDbType.DateTime).Value = new DateTime(Int32.Parse(namnhap), Int32.Parse(thangnhap), Int32.Parse(ngaynhap));
                cmd.Parameters.Add("@param3", SqlDbType.Int).Value = giaca;
                cmd.Parameters.Add("@param4", SqlDbType.Bit).Value = tinhtrang;
                cmd.Parameters.Add("@param5", SqlDbType.Int).Value = Int32.Parse(thietbi);
                cmd.Parameters.Add("@param6", SqlDbType.Int).Value = Int32.Parse(maphutung);                
                cmd.CommandType = CommandType.Text;
                cmd.ExecuteNonQuery();
                thongbao = "Sửa thành công phụ tùng  " + maphutung + ".";
            }
        }
    }
}