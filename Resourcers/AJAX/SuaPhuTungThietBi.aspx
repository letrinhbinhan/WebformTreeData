<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SuaPhuTungThietBi.aspx.cs" Inherits="Resourcers_AJAX_SuaPhuTungThietBi" %>

<%
        //Resourcers/AJAX/SuaPhuTungThietBi.aspx?mathietbi=134&maphutung=61&tenphutung=123&ngaynhap=1-1-2023&giaca=2000&tinhtrang=true
        //maphutung=61&tenphutung=mouse&ngaynhap=01&thangnhap=01&namnhap=2023&giaca=3000&tinhtrang=true&mathietbi=134
        string mathietbi, maphutung, tenphutung, ngaythaythe, giaca, tinhtrang, soluong;
        mathietbi = Request.QueryString["mathietbi"];
        maphutung = Request.QueryString["maphutung"];
        tenphutung = Request.QueryString["tenphutung"];
        ngaythaythe = Request.QueryString["ngaythaythe"];
        giaca = Request.QueryString["giaca"];
        tinhtrang = Request.QueryString["tinhtrang"];
        soluong = Request.QueryString["soluong"];
        using (System.Data.SqlClient.SqlConnection connection = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["QLThietBiConnectionString"].ConnectionString))
        {
            connection.Open();
            string sql = "UPDATE tblphutung SET tenpt=@param1, ngaythaythe=@param2, giaca=@param3, tinhtrang=@param4, thietbi=@param5, soluong=@param6 WHERE mapt=@param7";
            using (System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(sql, connection))
            {
                cmd.Parameters.Add("@param1", System.Data.SqlDbType.NVarChar).Value = tenphutung;
                cmd.Parameters.Add("@param2", System.Data.SqlDbType.DateTime).Value = ngaythaythe;
                cmd.Parameters.Add("@param3", System.Data.SqlDbType.Int).Value = Int32.Parse(giaca);
                cmd.Parameters.Add("@param4", System.Data.SqlDbType.Bit).Value = tinhtrang;
                cmd.Parameters.Add("@param5", System.Data.SqlDbType.Int).Value = Int32.Parse(mathietbi);
                cmd.Parameters.Add("@param6", System.Data.SqlDbType.Int).Value = soluong;
                cmd.Parameters.Add("@param7", System.Data.SqlDbType.Int).Value = Int32.Parse(maphutung);
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.ExecuteNonQuery();
            }
        }
%>
