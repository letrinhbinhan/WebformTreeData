using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_SuaThietBiUploadHinhAnh : System.Web.UI.Page
{
    private string RequestID;
    private int idch;
    private string matb;
    private string tentb;
    private string loaitb;
    private string phongban;
    private string ngaynhap;
    private string tinhtrang;
    private string thongsokthuat;
    private string giathanh;
    private string vitri;
    private string NCC;
    private string phieumuahang;
    private string huhong;
    private string nguoiduyet;
    private string ngayduyet;
    private string thoihanbaohanh;
    private string thietbicha;
    private string capcaythumuc;
    private string nhasanxuat;
    private string nuocsanxuat;
    private string serial;
    private string model;
    private string ngaylapdat;
    private string ngaymua;
    private string linkimage;
    private string imagedescription;
    private string chitietbangbaogia;
    private string maql;
    private string phieunhapkho;
    private string linhvucsudung;
    private string donvitiente;
    private string lathietbigoc;
    protected void Page_Load(object sender, EventArgs e)
    {
        matb = Request.QueryString["matb"];
        tentb = Request.QueryString["tentb"];
        loaitb = Request.QueryString["loaitb"];
        phongban = Request.QueryString["phongban"];
        ngaynhap = Request.QueryString["ngaynhap"];
        tinhtrang = Request.QueryString["tinhtrang"];
        thongsokthuat = Request.QueryString["thongsokthuat"];
        giathanh = Request.QueryString["giathanh"];
        vitri = Request.QueryString["vitri"];
        NCC = Request.QueryString["NCC"];
        phieumuahang = Request.QueryString["phieumuahang"];
        huhong = Request.QueryString["huhong"];
        nguoiduyet = Request.QueryString["nguoiduyet"];
        ngayduyet = Request.QueryString["ngayduyet"];
        thoihanbaohanh = Request.QueryString["thoihanbaohanh"];
        thietbicha = Request.QueryString["thietbicha"];
        capcaythumuc = Request.QueryString["capcaythumuc"];
        nhasanxuat = Request.QueryString["nhasanxuat"];
        nuocsanxuat = Request.QueryString["nuocsanxuat"];
        serial = Request.QueryString["serial"];
        model = Request.QueryString["model"];
        ngaylapdat = Request.QueryString["ngaylapdat"];
        ngaymua = Request.QueryString["ngaymua"];
        linkimage = Request.QueryString["linkimage"];
        imagedescription = Request.QueryString["imagedescription"];
        chitietbangbaogia = Request.QueryString["chitietbangbaogia"];
        maql = Request.QueryString["maql"];
        phieunhapkho = Request.QueryString["phieunhapkho"];
        linhvucsudung = Request.QueryString["linhvucsudung"];
        donvitiente = Request.QueryString["donvitiente"];
        lathietbigoc = Request.QueryString["lathietbigoc"];
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string RequestID = Request.QueryString["ID"];
        int idch = Convert.ToInt32(RequestID);
        if (FileUpload1.HasFile)
        {
            FileUpload1.SaveAs(Server.MapPath("~/Resourcers/Images/ThietBi/" + FileUpload1.FileName));
            int mathietbi = idch;
            string linkimage = FileUpload1.FileName;
            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["QLThietBiConnectionString"].ConnectionString))
            {
                connection.Open();
                string sql = "UPDATE tblthietbi SET linkimage=@param1 WHERE Matb=@param2)";
                using (SqlCommand cmd = new SqlCommand(sql, connection))
                {
                    cmd.Parameters.Add("@param1", SqlDbType.NVarChar).Value = linkimage;
                    cmd.Parameters.Add("@param2", SqlDbType.Int).Value = mathietbi;
                    cmd.CommandType = CommandType.Text;
                    cmd.ExecuteNonQuery();
                }
            }
            Response.Redirect("./SuaThietBi.aspx?matb=" + matb + "&tentb=" + tentb + "&loaitb=" + loaitb + "&phongban=" + phongban + "&ngaynhap=" + ngaynhap + "&tinhtrang" + tinhtrang + "&thongsokthuat=" + thongsokthuat + "&giathanh=" + giathanh + "&vitri=" + vitri + "&NCC=" + NCC + "&phieumuahang" + phieumuahang + "&huhong=" + huhong + "&nguoiduyet=" + nguoiduyet + "&ngayduyet=" + ngayduyet + "&thoihanbaohanh=" + thoihanbaohanh + "&thietbicha=" + thietbicha + "&capcaythumuc=" + capcaythumuc + "&nhasanxuat=" + nhasanxuat + "&nuocsanxuat=" + nuocsanxuat + "&serial=" + serial + "&model=" + model + "&ngaylapdat=" + ngaylapdat + "&ngaymua" + ngaymua + "&imagedescription=" + imagedescription + "&chitietbangbaogia=" + chitietbangbaogia + "&maql=" + maql + "&phieunhapkho=" + phieunhapkho + "&linhvucsudung=" + linhvucsudung + "&donvitiente=" + donvitiente + "&lathietbigoc=" + lathietbigoc + "&ketquaupload=thanhcong" + "&linkimage=" + linkimage);
        }
        else
        {

        }
    }
}