<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SuaThietBiDashboard.aspx.cs" Inherits="Resourcers_AJAX_SuaThietBiDashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <% 
       string mathietbi = Request.QueryString["mathietbi"];
       string loaithietbi = Request.QueryString["loaithietbi"];
       string phongban = Request.QueryString["phongban"];
       string ngaynhap = Request.QueryString["ngaynhap"];
       string thangnhap = Request.QueryString["thangnhap"];
       string namnhap = Request.QueryString["namnhap"];
       string tenthietbi = Request.QueryString["tenthietbi"];
       string nhacungcap = Request.QueryString["nhacungcap"];
       string huhong = Request.QueryString["huhong"];
       string thoihanbaohanh = Request.QueryString["thoihanbaohanh"];
       string nhasanxuat = Request.QueryString["nhasanxuat"];
       string nuocsanxuat = Request.QueryString["nuocsanxuat"];
       string serial = Request.QueryString["serial"];
       string model = Request.QueryString["model"];
       string ngaylapdat = Request.QueryString["ngaylapdat"];
       string thanglapdat = Request.QueryString["thanglapdat"];
       string namlapdat = Request.QueryString["namlapdat"];
       string ngaymua = Request.QueryString["ngaymua"];
       string thangmua = Request.QueryString["thangmua"];
       string nammua = Request.QueryString["nammua"];
       string maquanly = Request.QueryString["maquanly"];

       using (System.Data.SqlClient.SqlConnection connection = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["QLThietBiConnectionString"].ConnectionString))
       {
           connection.Open();
           string sql = "UPDATE tblthietbi SET loaitb=@param2, phongban=@param3, ngaynhap=@param4, tentb=@param5, NCC=@param6, huhong=@param7, thoihanbaohanh=@param8, nhasanxuat=@param9, nuocsanxuat=@param10, serial=@param11, model=@param12, ngaylapdat=@param13, ngaymua=@param14, maql=@param15 WHERE matb=@param1";
           using (System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(sql, connection))
           {
               cmd.Parameters.Add("@param1", System.Data.SqlDbType.Int).Value = mathietbi;
               cmd.Parameters.Add("@param2", System.Data.SqlDbType.Int).Value = loaithietbi;
               cmd.Parameters.Add("@param3", System.Data.SqlDbType.Int).Value = phongban;
               cmd.Parameters.Add("@param4", System.Data.SqlDbType.DateTime).Value = new DateTime(Int32.Parse(namnhap),Int32.Parse(thangnhap),Int32.Parse(ngaynhap));
               cmd.Parameters.Add("@param5", System.Data.SqlDbType.NVarChar).Value = tenthietbi;
               cmd.Parameters.Add("@param6", System.Data.SqlDbType.NVarChar).Value = nhacungcap;
               cmd.Parameters.Add("@param7", System.Data.SqlDbType.NVarChar).Value = huhong;
               cmd.Parameters.Add("@param8", System.Data.SqlDbType.NVarChar).Value = thoihanbaohanh;
               cmd.Parameters.Add("@param9", System.Data.SqlDbType.NVarChar).Value = nhasanxuat;
               cmd.Parameters.Add("@param10", System.Data.SqlDbType.NVarChar).Value = nuocsanxuat;
               cmd.Parameters.Add("@param11", System.Data.SqlDbType.NVarChar).Value = serial;
               cmd.Parameters.Add("@param12", System.Data.SqlDbType.NVarChar).Value = model;
               cmd.Parameters.Add("@param13", System.Data.SqlDbType.DateTime).Value = new DateTime(Int32.Parse(namlapdat), Int32.Parse(thanglapdat),Int32.Parse(ngaylapdat));
               cmd.Parameters.Add("@param14", System.Data.SqlDbType.DateTime).Value = new DateTime(Int32.Parse(nammua), Int32.Parse(thangmua), Int32.Parse(ngaymua));
               cmd.Parameters.Add("@param15", System.Data.SqlDbType.NVarChar).Value = maquanly;
               cmd.CommandType = System.Data.CommandType.Text;
               cmd.ExecuteNonQuery();
           }
       }       
       %>
</body>
</html>
