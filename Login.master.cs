using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.MasterPage
{
    public string MaHoaMatKhau(string password)
    {
        UnicodeEncoding encoding = new UnicodeEncoding();
        Byte[] hashBytes = encoding.GetBytes(password);
        // Compute the SHA-1 hash
        SHA1CryptoServiceProvider sha1 = new SHA1CryptoServiceProvider();
        Byte[] cryptPassword = sha1.ComputeHash(hashBytes);
        return BitConverter.ToString(cryptPassword);
    }
    private static DataSet ThucThiStore_DataSet(string StoredProcedure, params SqlParameter[] Parameters)
    {
        string ConnectionString =
       @"Server =tri-pc;Initial Catalog=QLThietBiMayTinhTungPhongBan;User ID=sa;Password=12345678";
        SqlConnection Conn = new SqlConnection(ConnectionString);
        SqlCommand Command = new SqlCommand(StoredProcedure, Conn);
        if (Parameters != null)
        {
            Command.Parameters.Clear();
            Command.Parameters.AddRange(Parameters);
        }
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(StoredProcedure, Conn);
        Command.CommandType = CommandType.StoredProcedure;
        da.SelectCommand = Command;
        try
        {
            Conn.Open();
            da.Fill(ds);
        }
        finally
        {
            if (Conn.State == ConnectionState.Open)
                Conn.Close();
            Conn.Dispose();
        }
        return ds;
    }
    private DataTable StoreToDataTable(string TenDangNhap, string MatKhau)
    {
        SqlParameter[] arrParam = {
            new SqlParameter("@TenDangNhap", SqlDbType.NVarChar),
            new SqlParameter("@MatKhau", SqlDbType.NVarChar)
            };
        arrParam[0].Value = TenDangNhap;
        arrParam[1].Value = MatKhau;
        return ThucThiStore_DataSet("pro_LoginUser", arrParam).Tables[0];
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Session["TenDangNhap"] != null || Session["MatKhau"] != null)
        //{
        //    Response.Redirect("Dashboard.aspx");
        //}
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        KiemTraNhap(txt_UserName.Value + "", MaHoaMatKhau(txt_PassWord.Value.Trim()));
    }

    private void KiemTraNhap(string TenDangNhap, string MatKhau)
    {
        DataTable dtb = StoreToDataTable(TenDangNhap, MatKhau);
        int num = 0;
        if (dtb.Rows.Count > 0)
        {
            num = int.Parse("0" + dtb.Rows[0][0]);
            switch (num)
            {
                case 0: // Khai báo Session cho phép đăng nhập
                    Session["TenDangNhap"] = txt_UserName.Value.ToString().ToLower();
                    Session["MatKhau"] = MaHoaMatKhau(txt_PassWord.Value);
                    Response.Redirect("Dashboard.aspx");
                    break;
                case 1: //Thông báo tên đăng nhập không tồn tại
                    Response.Write("<script>alert('Tên đăng nhập không tồn tại')</script>");
                    //ScriptManager.RegisterStartupScript(this, this.GetType(), "redirectMe", "alert('Lỗi: Tên đăng nhập không tồn tại');", true);
                    break;
                case 2: // thông báo sai mật khẩu
                    Response.Write("<script>alert('Mật khẩu đăng nhập không đúng!')</script>");
                    //ScriptManager.RegisterStartupScript(this, this.GetType(), "redirectMe", "alert('Lỗi; Mật khẩu đăng nhập không đúng!');", true);
                    break;
                case 3: //thông báo TenDangNhap đã bị khóa
                    Response.Write("<script>alert('Tên đăng nhập này đã bị khóa!')</script>");
                    //ScriptManager.RegisterStartupScript(this, this.GetType(), "redirectMe", "alert('Lỗi: Tên đăng nhập này đã bị khóa!');", true);
                    break;
                case 4: // Thông báo phải đổi mật khẩu và chuyển người dùng đến trang DoiMatKhau.aspx
                    Response.Write("<script>alert('Bạn phải đổi mật khẩu trước khi đăng nhập!')</script>");
                    //ScriptManager.RegisterStartupScript(this, this.GetType(), "redirectMe", "alert('Bạn phải đổi mật khẩu trước khi đăng nhập!');location.href='DoiMatKhau.aspx?userid=" + TenDangNhap + "'", true);
                    break;
            }
        }
        dtb.Dispose();
    }
}
