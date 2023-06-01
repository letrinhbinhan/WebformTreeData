<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ThemThietBiMoi.aspx.cs" Inherits="Resourcers_AJAX_ThemThietBiMoi" %>
<% 
    DataUtil data = new DataUtil();
    //&loaithietbi=1&phongban=1&ngaynhap=1&thangnhap=1&namnhap=2023&tenthietbi=123&nhacungcap=1&huhong=false&thoihanbaohanh=123&nhasanxuat=Dell&nuocsanxuat=China&serial=123&model=123&ngaylapdat=1&thanglapdat=1&namlapdat=2023&ngaymua=1&thangmua=1&nammua=2023&maquanly=1
    //?&mathietbi=205&loaithietbi=2&phongban=3&ngaynhap=31&thangnhap=5&namnhap=2023&tenthietbi=mouse%20Dell&nhacungcap=Khánh%20Trang&huhong=khôn&thoihanbaohanh=1%20năm&nhasanxuat=Dell&nuocsanxuat=China&serial=11232302&model=15246213&ngaylapdat=31&thanglapdat=5&namlapdat=2023&ngaymua=31&thangmua=5&nammua=2019&maquanly=VSX2111    
    string loaithietbi, phongban, ngaynhap, thangnhap, namnhap, tenthietbi, nhacungcap, huhong, thoihanbaohanh, nhasanxuat, nuocsanxuat, serial, model, ngaylapdat, thanglapdat, namlapdat, ngaymua, thangmua, nammua, maquanly, mathietbi, thietbicha;
    loaithietbi = Request.QueryString["loaithietbi"];
    phongban = Request.QueryString["phongban"];
    ngaynhap = Request.QueryString["ngaynhap"];
    thangnhap = Request.QueryString["thangnhap"];
    namnhap = Request.QueryString["namnhap"];
    tenthietbi = Request.QueryString["tenthietbi"];
    nhacungcap = Request.QueryString["nhacungcap"];
    huhong = Request.QueryString["huhong"];
    thoihanbaohanh = Request.QueryString["thoihanbaohanh"];
    nhasanxuat = Request.QueryString["nhasanxuat"];
    nuocsanxuat = Request.QueryString["nuocsanxuat"];
    serial = Request.QueryString["serial"];
    model = Request.QueryString["model"];
    ngaylapdat = Request.QueryString["ngaylapdat"];
    thanglapdat = Request.QueryString["thanglapdat"];
    namlapdat = Request.QueryString["namlapdat"];
    ngaymua = Request.QueryString["ngaymua"];
    thangmua = Request.QueryString["thangmua"];
    nammua = Request.QueryString["nammua"];
    maquanly = Request.QueryString["maquanly"];
    mathietbi = Request.QueryString["mathietbi"];
    thietbicha = Request.QueryString["thietbicha"];
    using (System.Data.SqlClient.SqlConnection connection = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["QLThietBiConnectionString"].ConnectionString))
    {
        connection.Open();
        string sql = "INSERT INTO tblthietbi (loaitb, phongban, ngaynhap, tentb, NCC, huhong, thoihanbaohanh, nhasanxuat, nuocsanxuat, serial, model, ngaylapdat, ngaymua, maql, matb, vitri, thietbicha) VALUES(@param1, @param2, @param3, @param4, @param5, @param6, @param7, @param8, @param9, @param10, @param11, @param12, @param13, @param14, @param15, @param16, @param17)";        
        using (System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(sql, connection))
        {       
            cmd.Parameters.Add("@param1", System.Data.SqlDbType.Int).Value = loaithietbi;
            cmd.Parameters.Add("@param2", System.Data.SqlDbType.Int).Value = phongban;
            cmd.Parameters.Add("@param3", System.Data.SqlDbType.DateTime).Value = new DateTime(Int32.Parse(namnhap),Int32.Parse(thangnhap),Int32.Parse(ngaynhap));
            cmd.Parameters.Add("@param4", System.Data.SqlDbType.NVarChar).Value = tenthietbi; 
            cmd.Parameters.Add("@param5", System.Data.SqlDbType.Int).Value = nhacungcap; 
            cmd.Parameters.Add("@param6", System.Data.SqlDbType.NVarChar).Value = huhong; 
            cmd.Parameters.Add("@param7", System.Data.SqlDbType.NVarChar).Value = thoihanbaohanh; 
            cmd.Parameters.Add("@param8", System.Data.SqlDbType.NVarChar).Value = nhasanxuat; 
            cmd.Parameters.Add("@param9", System.Data.SqlDbType.NVarChar).Value = nuocsanxuat; 
            cmd.Parameters.Add("@param10", System.Data.SqlDbType.NVarChar).Value = serial; 
            cmd.Parameters.Add("@param11", System.Data.SqlDbType.NVarChar).Value = model; 
            cmd.Parameters.Add("@param12", System.Data.SqlDbType.DateTime).Value = new DateTime(Int32.Parse(namlapdat),Int32.Parse(thanglapdat),Int32.Parse(ngaylapdat));            
            cmd.Parameters.Add("@param13", System.Data.SqlDbType.DateTime).Value = new DateTime(Int32.Parse(nammua),Int32.Parse(thangmua),Int32.Parse(ngaymua));  
            cmd.Parameters.Add("@param14", System.Data.SqlDbType.NVarChar).Value = maquanly;
            cmd.Parameters.Add("@param15", System.Data.SqlDbType.Int).Value = (Int32.Parse(mathietbi) + 1);
            cmd.Parameters.Add("@param16", System.Data.SqlDbType.Int).Value = 3;
            cmd.Parameters.Add("@param17", System.Data.SqlDbType.Int).Value = thietbicha;            
            cmd.ExecuteNonQuery();            
        }
    }
    %>
<%= mathietbi %>
