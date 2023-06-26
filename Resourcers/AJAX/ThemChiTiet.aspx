<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ThemChiTiet.aspx.cs" Inherits="Resourcers_AJAX_ThemChiTiet" %>
    <%
        DataUtil data = new DataUtil();
        //&tenchitiet=ocvit&thongsokythuat=thepkhongri&donvi=con&model=123&partno=123&thietbi=134
        //&tenchitiet=ocvit&thongsokythuat=thepkhongri&donvi=con&model=123&partno=21&kyhieu=123&thietbi=123
        string tenchitiet, thongsokythuat, donvi, model, partno, thietbi;
        tenchitiet = Request.QueryString["tenchitiet"];
        thongsokythuat = Request.QueryString["thongsokythuat"];
        donvi = Request.QueryString["donvi"];
        model = Request.QueryString["model"];
        partno = Request.QueryString["partno"];
        thietbi = Request.QueryString["thietbi"];
        using (System.Data.SqlClient.SqlConnection connection = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["QLThietBiConnectionString"].ConnectionString))
        {
            connection.Open();
            string sql = "INSERT INTO tblchitietthietbi (tenchitiet, thongsokythuat, donvi, model, partno, thietbi) VALUES(@param1, @param2, @param3, @param4, @param5, @param6)";
            using (System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(sql, connection))
            {
                cmd.Parameters.Add("@param1", System.Data.SqlDbType.NVarChar).Value = tenchitiet;
                cmd.Parameters.Add("@param2", System.Data.SqlDbType.NVarChar).Value = thongsokythuat;
                cmd.Parameters.Add("@param3", System.Data.SqlDbType.NVarChar).Value = donvi;
                cmd.Parameters.Add("@param4", System.Data.SqlDbType.NVarChar).Value = model;
                cmd.Parameters.Add("@param5", System.Data.SqlDbType.NVarChar).Value = partno;
                cmd.Parameters.Add("@param6", System.Data.SqlDbType.Int).Value = thietbi;
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.ExecuteNonQuery();
            }
        }
        string machitietthietbithemmoi;
        machitietthietbithemmoi = data.dsChiTietThietBi()[data.dsChiTietThietBi().Count - 1].Id.ToString();
         %>
        <%= machitietthietbithemmoi %>
