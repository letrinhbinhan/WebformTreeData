<%@ Page Language="C#" AutoEventWireup="true" CodeFile="XoaPhuTung.aspx.cs" Inherits="Resourcers_AJAX_XoaPhuTung" %>

<%
    DataUtil data= new DataUtil();
    string id;
    id = Request.QueryString["id"];
    using (System.Data.SqlClient.SqlConnection connection = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["QLThietBiConnectionString"].ConnectionString))
    {
        connection.Open();
        string sql = "DELETE FROM tblphutung WHERE mapt=@param1";

        using (System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(sql, connection))
        {
            cmd.Parameters.Add("@param1", System.Data.SqlDbType.NVarChar).Value = id;
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.ExecuteNonQuery();
        }
    }
%>

