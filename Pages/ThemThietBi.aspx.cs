using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class ThemThietBi : System.Web.UI.Page
{
    DataUtil data = new DataUtil();
    string ErrorMessenger;
    Calendar cldNgayThem = new Calendar();
    CalendarUtil calendarUtilOfInsertDay = new CalendarUtil(1, 1, 1900);
    DropDownList ddlNgayNhap = new DropDownList();
    DropDownList ddlThangNhap = new DropDownList();
    DropDownList ddlNamNhap = new DropDownList();
    
    protected void Page_Load(object sender, EventArgs e)
    {
        calendarUtilOfInsertDay = new CalendarUtil(1, 1, 2000);

        //int i = 0;
        //int n = 1900;
        //while (i < 31)
        //{
        //    ddlNgayNhap.Items.Insert(i, new ListItem((i + 1).ToString(), (i + 1).ToString()));
        //    i++;
        //}
        //i = 0;
        //while (i < 12)
        //{
        //    ddlThangNhap.Items.Insert(i, new ListItem((i + 1).ToString(), (i + 1).ToString()));
        //    i++;
        //}
        //i = 0;
        //while (i < 138)
        //{
        //    ddlNamNhap.Items.Insert(i, new ListItem(n.ToString(), n.ToString()));
        //    n++;
        //    i++;
        //}
        //i = 0;
        //ddlNamNhap.SelectedIndex = 0;
        //ddlThangNhap.SelectedIndex = 0;
        //ddlNamNhap.SelectedIndex = 88;

        TextBox matbTextBox = (TextBox)FormView1.FindControl("matbTextBox");

        int im, max, matbmoi;
        im = 0;
        max = 0;
        matbmoi = 0;
        while (im < data.dsThietBi().Count)
        {
            if (data.dsThietBi()[im].Matb > max)
            {
                max = data.dsThietBi()[im].Matb;
            }
            im++;
        }
        matbmoi = max + 1;
        matbTextBox.Text = matbmoi.ToString();
    }

    //int songaytrongthang(int thang, int nam)
    //{
    //    int ngaytrongthang;
    //    int year;
    //    bool namnhuan;
    //    ngaytrongthang = 30;         
    //    year = nam;
    //    namnhuan = DateTime.IsLeapYear(year);
    //    switch (thang)
    //    {
    //        case 1:
    //            ngaytrongthang = 31;
    //            break;
    //        case 2:
    //            if (namnhuan)
    //            {
    //                ngaytrongthang = 29;
    //                break;
    //            }
    //            else if (!namnhuan)
    //            {
    //                ngaytrongthang = 28;
    //                break;
    //            }
    //            else
    //                break;
    //        case 3:
    //            ngaytrongthang = 31;
    //            break;
    //        case 4:
    //            ngaytrongthang = 30;
    //            break;
    //        case 5:
    //            ngaytrongthang = 31;
    //            break;
    //        case 6:
    //            ngaytrongthang = 30;
    //            break;
    //        case 7:
    //            ngaytrongthang = 31;
    //            break;
    //        case 8:
    //            ngaytrongthang = 30;
    //            break;
    //        case 9:
    //            ngaytrongthang = 31;
    //            break;
    //        case 10:
    //            ngaytrongthang = 30;
    //            break;
    //        case 11:
    //            ngaytrongthang = 31;
    //            break;
    //        case 12:
    //            ngaytrongthang = 30;
    //            break;
    //        default:
    //            ngaytrongthang = 0;
    //            break;
    //    }
    //    return ngaytrongthang;
    //} 

    //protected void Button1_Click(object sender, EventArgs e)
    //{
    //    if (CapNhatUser( this.txtEmail.Text, this.txtPassword.Text, this.txtFirstName.Text, this.txtMiddleName.Text,
    //                    this.txtLastName.Text, this.DropDownList1.SelectedIndex.ToString(), this.DropDownList2.SelectedIndex.ToString(),
    //                    this.txtYear.Text, this.DropDownList3.SelectedIndex.ToString(), this.txtPhoneNumber.Text, this.txtStreet.Text,
    //                    this.txtCity.Text, this.txtProvince.Text, this.Country.SelectedIndex.ToString(), this.txtPostalCode.Text))
    //    {
    //        this.Label1.Text = "Cap nhat thanh cong!";
    //    }
    //    else this.Label1.Text = "Cap nhat that bai!";
    //}
    //public static bool CapNhatUser(string _Email, string _Password, string _FirstName, string _MiddleName, string _LastName, string _Month, string _Day, string _Year, string _Gender, string _Phone, string _Street, string _City, string _State, string _Country, string _PostalCode)
    //{
    //    string connSQL = ConfigurationManager.ConnectionStrings["BookStoreDBConnectionString"].ConnectionString;
    //    SqlConnection conn = new SqlConnection(connSQL);
    //    try
    //    {
    //        conn.Open();
    //        SqlCommand cmd = new SqlCommand("Users_Update", conn);
    //        cmd.CommandType = CommandType.StoredProcedure;
    //        //cmd.Parameters.AddWithValue("@UserID", _UserID);
    //        cmd.Parameters.AddWithValue("@Email", _Email);
    //        cmd.Parameters.AddWithValue("@Password", _Password);
    //        cmd.Parameters.AddWithValue("@FirstName", _FirstName);
    //        cmd.Parameters.AddWithValue("@MiddleName", _MiddleName);
    //        cmd.Parameters.AddWithValue("@LastName", _LastName);
    //        cmd.Parameters.AddWithValue("@Month", _Month);
    //        cmd.Parameters.AddWithValue("@Day", _Day);
    //        cmd.Parameters.AddWithValue("@Year", _Year);
    //        cmd.Parameters.AddWithValue("@Gender", _Gender);
    //        cmd.Parameters.AddWithValue("@Phone", _Phone);
    //        cmd.Parameters.AddWithValue("@Street", _Street);
    //        cmd.Parameters.AddWithValue("@City", _City);
    //        cmd.Parameters.AddWithValue("@State", _State);
    //        cmd.Parameters.AddWithValue("@Country", _Country);
    //        cmd.Parameters.AddWithValue("@PostalCode", _PostalCode);

    //        cmd.ExecuteNonQuery();
    //        cmd.Dispose();
    //        return true;
    //    }
    //    catch (Exception)
    //    {
    //        return false;
    //    }
    //    finally
    //    {
    //        conn.Close();
    //    }
    //}
    protected void InsertButton_Click(object sender, EventArgs e)
    {
        //FileUpload fileUpload1 = (FileUpload)FormView1.FindControl("FileUpload1");

        //if (fileUpload1.HasFile)
        //{
        //    FileUpload DataTitle = (FileUpload)FormView1.FindControl("FileUpload1");
        //    fileUpload1.SaveAs(MapPath("~\\Resourcers\\Images\\" + fileUpload1.FileName));
        //}
    }
    protected void FormView1_OnInserting(object sender, SqlDataSourceCommandEventArgs e)
    {
        //TextBox matbTextBox = (TextBox)FormView1.FindControl("matbTextBox");
        //int matbmoi;
        //matbmoi = Int32.Parse(matbTextBox.Text);
        //matbmoi = matbmoi + 1;
        //matbTextBox.Text = matbmoi.ToString();

        //DropDownList ddlNgayNhap = (DropDownList)FormView1.FindControl("ddlNgayNhap");
        //DropDownList ddlThangNhap = (DropDownList)FormView1.FindControl("ddlThangNhap");
        //DropDownList ddlNamNhap = (DropDownList)FormView1.FindControl("ddlNamNhap");
        //int ngaynhap, thangnhap, namnhap;
        //ngaynhap = 1;
        //thangnhap = 1;
        //namnhap = 2000;
        //ngaynhap = Int32.Parse(ddlNgayNhap.SelectedValue);
        //thangnhap = Int32.Parse(ddlThangNhap.SelectedValue);
        //namnhap = Int32.Parse(ddlNamNhap.SelectedValue);
        //ErrorMessenger = "Ngày nhập: " + ngaynhap + ", tháng nhập: " + thangnhap + " năm nhập: " + namnhap + ".";

        ////e.Command.Parameters["@ngaynhap"].Value = new DateTime(namnhap, thangnhap, ngaynhap);
        //FileUpload fileUpload1 = (FileUpload)FormView1.FindControl("FileUpload1");
        //if (fileUpload1.HasFile){
        //    fileUpload1.SaveAs(Server.MapPath("~//images//" + fileUpload1.FileName));
        //    e.Command.Parameters["@linkimage"].Value = fileUpload1.FileName;
        //}
        //else
        //    e.Cancel = true;
        //e.Command.Parameters["@matb"].Value = "224";
        //thử thay đổi các thông số khi thêm mới
        //e.Command.Parameters["@tentb"].Value = "a";
        //e.Command.Parameters["@loaitb"].Value = "1";
        //e.Command.Parameters["@phongban"].Value = "1";
        //e.Command.Parameters["@ngaynhap"].Value = new DateTime(1900,1,1);
        //e.Command.Parameters["@linkimage"].Value = "a";
    }
        
    //protected void ddlNgayNhap_SelectedIndexChanged(object sender, EventArgs e)
    //{      
    //    calendarUtilOfInsertDay.Ngay = Int32.Parse(ddlNgayNhap.SelectedValue);
    //    calendarUtilOfInsertDay.Thang = Int32.Parse(ddlThangNhap.SelectedValue);
    //    calendarUtilOfInsertDay.Nam = Int32.Parse(ddlNamNhap.SelectedValue);
    //    cldNgayThem.SelectedDate = new DateTime(calendarUtilOfInsertDay.Nam, calendarUtilOfInsertDay.Thang, calendarUtilOfInsertDay.Ngay);
    //    Label1.Text = "Ngày thêm: " + cldNgayThem.SelectedDate.Day.ToString() + "-" + cldNgayThem.SelectedDate.Month.ToString() + "-" + cldNgayThem.SelectedDate.Year.ToString();
    //}

    /*
    hàm này có thực hiện kết quả khi DropDownList ddlNgayNhap thực hiện thay đổi không protected void ddlNgayNhap_SelectedIndexChanged(object sender, EventArgs e){}
    hàm này có thực hiện kết quả khi DropDownList ddlThangNhap thực hiện thay đổi không protected void ddlThangNhap_SelectedIndexChanged(object sender, EventArgs e){}
    hàm này có thực hiện kết quả khi DropDownList ddlNamNhap thực hiện thay đổi không protected void ddlNgayNhap_SelectedIndexChanged(object sender, EventArgs e){}
    khi thêm dòng này vào các hàm kia thì kết quả trả về như thế nào cldNgayThem.SelectedDate = new DateTime(calendarUtilOfInsertDay.Nam, calendarUtilOfInsertDay.Thang, calendarUtilOfInsertDay.Ngay);
    nội dung calendarUtilOfInsertDay.Nam nhận về có đúng không, 
    nội dung calendarUtilOfInsertDay.Thang nhận về có đúng không, 
    nội dung calendarUtilOfInsertDay.Ngay
    nội dung cldNgayThem.SelectedDate nhận về có đúng không
    kiểm thử việc thay đổi trong DropDownList nằm trong ListView có làm thay đổi nội dung Calender cùng nằm trong ListView không
    việc thay đổi thứ tự khác nhau ...
    */

    //protected void ddlNamNhap_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    CalendarUtil calendarUtilOfInsertDay = new CalendarUtil(1, 1, 2000);
    //    DropDownList ddlNgayNhap = (DropDownList)FormView1.FindControl("ddlNgayNhap");
    //    DropDownList ddlThangNhap = (DropDownList)FormView1.FindControl("ddlThangNhap");
    //    DropDownList ddlNamNhap = (DropDownList)FormView1.FindControl("ddlNamNhap");
    //    Calendar cldNgayThem = (Calendar)FormView1.FindControl("Calendar5");
    //    calendarUtilOfInsertDay.Ngay = Int32.Parse(ddlNgayNhap.SelectedValue);
    //    calendarUtilOfInsertDay.Thang = Int32.Parse(ddlThangNhap.SelectedValue);
    //    calendarUtilOfInsertDay.Nam = Int32.Parse(ddlNamNhap.SelectedValue);
    //    cldNgayThem.SelectedDate = new DateTime(calendarUtilOfInsertDay.Nam, calendarUtilOfInsertDay.Thang, calendarUtilOfInsertDay.Ngay);
    //    Label1.Text = "Ngày thêm: " + cldNgayThem.SelectedDate.Day.ToString() + "-" + cldNgayThem.SelectedDate.Month.ToString() + "-" + cldNgayThem.SelectedDate.Year.ToString();
    //}
    protected void FormView1_PreRender(object sender, EventArgs e)
    {
        //DropDownList ddlNgayNhap = (DropDownList)FormView1.FindControl("ddlNgayNhap");
        //DropDownList ddlThangNhap = (DropDownList)FormView1.FindControl("ddlThangNhap");
        //DropDownList ddlNamNhap = (DropDownList)FormView1.FindControl("ddlNamNhap");

        //int i = 0;
        //int n = 1900;
        //while (i < 31)
        //{
        //    ddlNgayNhap.Items.Insert(i, new ListItem((i + 1).ToString(), (i + 1).ToString()));
        //    i++;
        //}
        //i = 0;
        //while (i < 12)
        //{
        //    ddlThangNhap.Items.Insert(i, new ListItem((i + 1).ToString(), (i + 1).ToString()));
        //    i++;
        //}
        //i = 0;
        //while (i < 138)
        //{
        //    ddlNamNhap.Items.Insert(i, new ListItem(n.ToString(), n.ToString()));
        //    n++;
        //    i++;
        //}
        //i = 0;
        //ddlNamNhap.SelectedIndex = 0;
        //ddlThangNhap.SelectedIndex = 0;
        //ddlNamNhap.SelectedIndex = 88;
        //ErrorMessenger = "";

        TextBox matbTextBox = (TextBox)FormView1.FindControl("matbTextBox");

        int im, max, matbmoi;
        im = 0;
        max = 0;
        matbmoi = 0;
        while (im < data.dsThietBi().Count)
        {
            if (data.dsThietBi()[im].Matb > max)
            {
                max = data.dsThietBi()[im].Matb;
            }
            im++;
        }
        matbmoi = max + 1;
        ErrorMessenger = matbmoi.ToString();
        matbTextBox.Text = matbmoi.ToString();
    }
    //protected void ddlNgayNhap_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    cldNgayThem = (Calendar)FormView1.FindControl("Calendar5");
    //    calendarUtilOfInsertDay.Ngay = Int32.Parse(ddlNgayNhap.SelectedValue);
    //    calendarUtilOfInsertDay.Thang = Int32.Parse(ddlThangNhap.SelectedValue);
    //    calendarUtilOfInsertDay.Nam = Int32.Parse(ddlNamNhap.SelectedValue);
    //    cldNgayThem.SelectedDate = new DateTime(Int32.Parse(ddlNamNhap.SelectedValue), Int32.Parse(ddlThangNhap.SelectedValue), Int32.Parse(ddlThangNhap.SelectedValue));
    //    Label1.Text = "Ngày thêm: " + cldNgayThem.SelectedDate.Day.ToString() + "-" + cldNgayThem.SelectedDate.Month.ToString() + "-" + cldNgayThem.SelectedDate.Year.ToString();
    //}
    
    //protected void ddlThangNhap_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    //calendarUtilOfInsertDay.Ngay = Int32.Parse(ddlNgayNhap.SelectedValue);
    //    //calendarUtilOfInsertDay.Thang = Int32.Parse(ddlThangNhap.SelectedValue);
    //    //calendarUtilOfInsertDay.Nam = Int32.Parse(ddlNamNhap.SelectedValue);
    //    cldNgayThem = (Calendar)FormView1.FindControl("Calendar5");
    //    cldNgayThem.SelectedDate = new DateTime(Int32.Parse(ddlNamNhap.SelectedValue), Int32.Parse(ddlThangNhap.SelectedValue), Int32.Parse(ddlNgayNhap.SelectedValue));
    //    Label1.Text = "Ngày thêm: " + cldNgayThem.SelectedDate.Day.ToString() + "-" + cldNgayThem.SelectedDate.Month.ToString() + "-" + cldNgayThem.SelectedDate.Year.ToString();
    //}

    //protected void ddlNamNhap_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    cldNgayThem = (Calendar)FormView1.FindControl("Calendar5");
    //    //calendarUtilOfInsertDay.Ngay = Int32.Parse(ddlNgayNhap.SelectedValue);
    //    //calendarUtilOfInsertDay.Thang = Int32.Parse(ddlThangNhap.SelectedValue);
    //    //calendarUtilOfInsertDay.Nam = Int32.Parse(ddlNamNhap.SelectedValue);
    //    cldNgayThem.SelectedDate = new DateTime(Int32.Parse(ddlNamNhap.SelectedValue), Int32.Parse(ddlThangNhap.SelectedValue), Int32.Parse(ddlNgayNhap.SelectedValue));
    //    Label1.Text = "Ngày thêm: " + cldNgayThem.SelectedDate.Day.ToString() + "-" + cldNgayThem.SelectedDate.Month.ToString() + "-" + cldNgayThem.SelectedDate.Year.ToString();
    //}
    protected void FormView1_ItemDeleting(object sender, FormViewDeleteEventArgs e)
    {
        DropDownList ddlNgay = (DropDownList)FormView1.FindControl("ddlNgay");
        DropDownList ddlThang = (DropDownList)FormView1.FindControl("ddlThang");
        DropDownList ddlNam = (DropDownList)FormView1.FindControl("ddlNam");

        e.Values[4] = new DateTime(Int32.Parse(ddlNam.SelectedValue),Int32.Parse(ddlThang.SelectedValue),Int32.Parse(ddlNgay.SelectedValue));
    }
}