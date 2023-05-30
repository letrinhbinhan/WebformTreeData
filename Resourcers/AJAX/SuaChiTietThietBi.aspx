<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SuaChiTietThietBi.aspx.cs" Inherits="Resourcers_AJAX_SuaChiTietThietBi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<body>
    <%
        //?machitiet=1016&tenchitiet=ocvit&thongsokythuat=thepkhongri&donvi=con&model=123&partno=123
        string machitiet, tenchitiet, thongsokythuat, donvi, model, partno, thietbi;
        machitiet = Request.QueryString["machitiet"];
        tenchitiet = Request.QueryString["tenchitiet"];
        thongsokythuat = Request.QueryString["thongsokythuat"];
        donvi = Request.QueryString["donvi"];
        model = Request.QueryString["model"];
        partno = Request.QueryString["partno"];

        using (System.Data.SqlClient.SqlConnection connection = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["QLThietBiConnectionString"].ConnectionString))
        {
            connection.Open();
            string sql = "UPDATE tblchitietthietbi SET tenchitiet=@param1, thongsokythuat=@param2, donvi=@param3, model=@param4, partno=@param5 WHERE id=@param6";
            using (System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(sql, connection))
            {
                cmd.Parameters.Add("@param1", System.Data.SqlDbType.NVarChar).Value = tenchitiet;
                cmd.Parameters.Add("@param2", System.Data.SqlDbType.NVarChar).Value = thongsokythuat;
                cmd.Parameters.Add("@param3", System.Data.SqlDbType.NVarChar).Value = donvi;
                cmd.Parameters.Add("@param4", System.Data.SqlDbType.NVarChar).Value = model;
                cmd.Parameters.Add("@param5", System.Data.SqlDbType.NVarChar).Value = partno;
                cmd.Parameters.Add("@param6", System.Data.SqlDbType.Int).Value = machitiet;
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.ExecuteNonQuery();
            }
        }
         %>
</body>
</html>
