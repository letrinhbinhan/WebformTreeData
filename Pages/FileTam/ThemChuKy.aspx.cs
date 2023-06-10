using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_FileTam_ThemChuKy : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            int nam;
            nam = 1980;
            for (int i = 0; i < 31; i++)
            {
                ListItem item = new ListItem();
                item.Value = (i + 1).ToString();
                if (i < 9)
                {
                    item.Text = "0" + (i + 1).ToString();
                }
                else if (i > 9)
                {
                    item.Text = (i + 1).ToString();
                }
                ddlNgayBatDau.Items.Add(item);
                ddlNgayKetThuc.Items.Add(item);
                ddlNgayNhapLieu.Items.Add(item);
            }
            for (int i = 0; i < 12; i++)
            {
                ListItem item = new ListItem();
                item.Value = (i + 1).ToString();
                if (i < 9)
                {
                    item.Text = "0" + (i + 1).ToString();
                }
                else if (i > 9)
                {
                    item.Text = (i + 1).ToString();
                }
                ddlThangBatDau.Items.Add(item);
                ddlThangKetThuc.Items.Add(item);
                ddlThangNhapLieu.Items.Add(item);
            }
            for (int i = 0; i < 60; i++)
            {
                ListItem item = new ListItem();
                item.Value = (nam + i).ToString();
                item.Text = (nam + i).ToString();
                ddlNamBatDau.Items.Add(item);
                ddlNamKetThuc.Items.Add(item);
                ddlNamNhapLieu.Items.Add(item);
            }
        }
        ddlNamBatDau.SelectedValue = 2023.ToString();
        ddlNamKetThuc.SelectedValue = 2023.ToString();
        ddlNgayNhapLieu.SelectedValue = DateTime.Now.Day.ToString();
        ddlThangNhapLieu.SelectedValue = DateTime.Now.Month.ToString();
        ddlNamNhapLieu.SelectedValue = DateTime.Now.Year.ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
    }
    protected void btnNhapChuKi_Click(object sender, EventArgs e)
    {
    }
}