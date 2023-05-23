using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_ThemPhuTung : System.Web.UI.Page
{
    public string thongbao;
    protected void Page_Load(object sender, EventArgs e)
    {
        DropDownList ddlNgay = (DropDownList)FormView1.FindControl("ddlNgay");
        DropDownList ddlThang = (DropDownList)FormView1.FindControl("ddlThang");
        DropDownList ddlNam = (DropDownList)FormView1.FindControl("ddlNam");
        int nam;
        nam = 1999;
        for (int i = 0; i < 31; i++)
        {
            ddlNgay.Items.Add((i + 1).ToString());
        }
        for (int i = 0; i < 12; i++)
        {
            ddlThang.Items.Add((i + 1).ToString());
        }
        for (int i = 0; i < 30; i++)
        {
            ddlNam.Items.Add((nam).ToString());
            nam++;
        }
        ddlNgay.SelectedValue = DateTime.Now.Day.ToString();
        ddlThang.SelectedValue = DateTime.Now.Month.ToString();
        ddlNam.SelectedValue = DateTime.Now.Year.ToString();
    }
    protected void FormView1_PreRender(object sender, EventArgs e)
    {
        DropDownList ddlNgay = (DropDownList)FormView1.FindControl("ddlNgay");
        DropDownList ddlThang = (DropDownList)FormView1.FindControl("ddlThang");
        DropDownList ddlNam = (DropDownList)FormView1.FindControl("ddlNam");
        int nam;
        nam = 1999;        
        for (int i = 0; i < 31; i++)
        {
            ddlNgay.Items.Add((i + 1).ToString());
        }
        for (int i = 0; i < 12; i++)
        {
            ddlThang.Items.Add((i + 1).ToString());
        }

        for (int i = 0; i < 30; i++)
        {
            ddlNam.Items.Add((nam).ToString());
            nam++;
        }
        ddlNgay.SelectedValue = DateTime.Now.Day.ToString();
        ddlThang.SelectedValue = DateTime.Now.Month.ToString();
        ddlNam.SelectedValue = DateTime.Now.Year.ToString();
    }
    protected void FormView1_ItemInserting(object sender, FormViewInsertEventArgs e)
    {
        TextBox txtTenPhuTung = (TextBox)FormView1.FindControl("tenptTextBox");
        string RequestID = Request.QueryString["mathietbi"];
        int idch = Convert.ToInt32(RequestID);
        e.Values[3] = idch;
        thongbao = "Thêm thành công phụ tùng " + txtTenPhuTung.Text +".";
    }
}