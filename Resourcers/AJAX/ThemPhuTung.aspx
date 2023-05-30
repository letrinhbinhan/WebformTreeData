<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ThemPhuTung.aspx.cs" Inherits="Resourcers_AJAX_ThemPhuTung" %>
<% 
    DataUtil data = new DataUtil();
    //&mathietbi=134&tenphutung=ruotbut&ngaynhap=2023&thangnhap=01&namnhap=01&giaca=1000&tinhtrang=true
    string mathietbi, tenphutung, ngaynhap, thangnhap, namnhap, giaca, tinhtrang, maphutung;
    tenphutung = Request.QueryString["tenphutung"];
    mathietbi = Request.QueryString["mathietbi"];
    ngaynhap = Request.QueryString["ngaynhap"];
    thangnhap = Request.QueryString["thangnhap"];
    namnhap = Request.QueryString["namnhap"];
    giaca = Request.QueryString["giaca"];
    tinhtrang = Request.QueryString["tinhtrang"];
    maphutung = "";
    using (System.Data.SqlClient.SqlConnection connection = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["QLThietBiConnectionString"].ConnectionString))
    {
        connection.Open();
        string sql = "INSERT INTO tblphutung (tenpt, ngaynhap, giaca, tinhtrang, thietbi) VALUES(@param1, @param2, @param3, @param4, @param5)";
        using (System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(sql, connection))
        {
            cmd.Parameters.Add("@param1", System.Data.SqlDbType.NVarChar).Value = tenphutung;
            cmd.Parameters.Add("@param2", System.Data.SqlDbType.DateTime).Value = new DateTime(Int32.Parse(namnhap) ,Int32.Parse(thangnhap) ,Int32.Parse(ngaynhap));
            cmd.Parameters.Add("@param3", System.Data.SqlDbType.Int).Value = giaca;
            cmd.Parameters.Add("@param4", System.Data.SqlDbType.Bit).Value = tinhtrang;
            cmd.Parameters.Add("@param5", System.Data.SqlDbType.Int).Value = mathietbi;
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.ExecuteNonQuery();
        }
    }
    maphutung = data.dsPhuTung()[data.dsPhuTung().Count - 1].Mapt.ToString();
    %>
<%= maphutung %>