<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LamChaThietBi.aspx.cs" Inherits="Resourcers_AJAX_LamChaThietBi" %>
<%
    DataUtil data = new DataUtil();
    //&mathietbi=134&tenphutung=ruotbut&ngaynhap=2023&thangnhap=01&namnhap=01&giaca=1000&tinhtrang=true
    string mavitri;
    mavitri = Request.QueryString["mavitri"];
    using (System.Data.SqlClient.SqlConnection connection = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["QLThietBiConnectionString"].ConnectionString))
    {
        connection.Open();
        string sql = "UPDATE tblvitri SET chathietbi=@param1 WHERE Id=@param2";
        using (System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(sql, connection))
        {
            cmd.Parameters.Add("@param1", System.Data.SqlDbType.Bit).Value = true;
            cmd.Parameters.Add("@param2", System.Data.SqlDbType.Int).Value = mavitri;
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.ExecuteNonQuery();
        }
    }
    %>
<%= mavitri %>