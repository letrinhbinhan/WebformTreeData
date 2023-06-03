<%@ Page Language="C#" AutoEventWireup="true" CodeFile="XoaThietBi.aspx.cs" Inherits="Resourcers_AJAX_XoaThietBi" %>
<% 
    DataUtil data = new DataUtil();
    //&mathietbi=134&tenphutung=ruotbut&ngaynhap=2023&thangnhap=01&namnhap=01&giaca=1000&tinhtrang=true
    string mathietbi;
    mathietbi = Request.QueryString["mathietbi"];
    using (System.Data.SqlClient.SqlConnection connection = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["QLThietBiConnectionString"].ConnectionString))
    {
        connection.Open();
        string sql = "DELETE FROM tblthietbi WHERE matb=@param1";
        using (System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(sql, connection))
        {
            cmd.Parameters.Add("@param1", System.Data.SqlDbType.Int).Value = Int32.Parse(mathietbi);
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.ExecuteNonQuery();
        }
    }    
    %>
<%= mathietbi %>