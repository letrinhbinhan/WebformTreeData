<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ThemChiTiet.aspx.cs" Inherits="Resourcers_AJAX_ThemChiTiet" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <% 
        //&tenchitiet=ocvit&thongsokythuat=thepkhongri&donvi=con&chitietmodel=123&partno=21
        string tenchitiet, thongsokythuat, donvi, chitietmodel, partno;
        tenchitiet = Request.QueryString["tenchitiet"];
        thongsokythuat = Request.QueryString["thongsokythuat"];
        donvi = Request.QueryString["donvi"];
        chitietmodel = Request.QueryString["chitietmodel"];
        partno = Request.QueryString["partno"];
        
        using (System.Data.SqlClient.SqlConnection connection = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["QLThietBiConnectionString"].ConnectionString))
        {
            connection.Open();
            string sql = "INSERT INTO tblchitietthietbi (tenchitiet, thongsokythuat, donvi, chitietmodel, partno) VALUES (@param1, @param2, @param3, @param4, @param5)";
            using (System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(sql, connection))
            {
                cmd.Parameters.Add("@param1", System.Data.SqlDbType.NVarChar).Value = tenchitiet;
                cmd.Parameters.Add("@param2", System.Data.SqlDbType.NVarChar).Value = thongsokythuat;
                cmd.Parameters.Add("@param3", System.Data.SqlDbType.NVarChar).Value = donvi;
                cmd.Parameters.Add("@param4", System.Data.SqlDbType.NVarChar).Value = chitietmodel;
                cmd.Parameters.Add("@param5", System.Data.SqlDbType.NVarChar).Value = partno;
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.ExecuteNonQuery();
            }
        }
         %>
</body>
</html>
