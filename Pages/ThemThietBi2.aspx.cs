using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_ThemThietBi2 : System.Web.UI.Page
{
    DataUtil data = new DataUtil();
    protected void Page_Load(object sender, EventArgs e)
    {
        DropDownList ddlNgay = (DropDownList)FormView1.FindControl("ddlNgay1");
        DropDownList ddlThang = (DropDownList)FormView1.FindControl("ddlThang1");
        DropDownList ddlNam = (DropDownList)FormView1.FindControl("ddlNam1");
        DropDownList ddlThietBiCha = (DropDownList)FormView1.FindControl("DropDownList3");
        DropDownList ddlNhaCungCap = (DropDownList)FormView1.FindControl("DropDownList6");
        DropDownList ddlLoaiThietBi = (DropDownList)FormView1.FindControl("DropDownList2");
        DropDownList ddlNgay2 = (DropDownList)FormView1.FindControl("ddlNgay2");
        DropDownList ddlThang2 = (DropDownList)FormView1.FindControl("ddlThang2");
        DropDownList ddlNam2 = (DropDownList)FormView1.FindControl("ddlNam2");
        DropDownList ddlNgay3 = (DropDownList)FormView1.FindControl("ddlNgay3");
        DropDownList ddlThang3 = (DropDownList)FormView1.FindControl("ddlThang3");
        DropDownList ddlNam3 = (DropDownList)FormView1.FindControl("ddlNam3");
        int max, maloaikhac, nam;
        nam = 1999;
        for (int i = 0; i < 31; i++)
        {
            ddlNgay.Items.Add((i+1).ToString());
            ddlNgay2.Items.Add((i + 1).ToString());
            ddlNgay3.Items.Add((i + 1).ToString());
        }
        for (int i = 0; i < 12; i++)
        {
            ddlThang.Items.Add((i + 1).ToString());
            ddlThang2.Items.Add((i + 1).ToString());
            ddlThang3.Items.Add((i + 1).ToString());
        }
        for (int i = 0; i < 30; i++)
        {
            ddlNam.Items.Add((nam).ToString());
            ddlNam2.Items.Add((nam).ToString());
            ddlNam3.Items.Add((nam).ToString());
            nam++;
        }
        ddlNgay.SelectedValue = DateTime.Now.Day.ToString();
        ddlThang.SelectedValue = DateTime.Now.Month.ToString();
        ddlNam.SelectedValue = DateTime.Now.Year.ToString();
        ddlNgay2.SelectedValue = DateTime.Now.Day.ToString();
        ddlThang2.SelectedValue = DateTime.Now.Month.ToString();
        ddlNam2.SelectedValue = DateTime.Now.Year.ToString();
        ddlNgay3.SelectedValue = DateTime.Now.Day.ToString();
        ddlThang3.SelectedValue = DateTime.Now.Month.ToString();
        ddlNam3.SelectedValue = DateTime.Now.Year.ToString();
        TextBox matbTextBox = (TextBox)FormView1.FindControl("matbTextBox");
        max = 0;
        for (int i = 0; i < data.dsThietBi().Count; i++)
        {
            if (data.dsThietBi()[i].Matb > max)
            {
                max = data.dsThietBi()[i].Matb;
            }
        }
        matbTextBox.Text = (max + 1).ToString();
        ddlThietBiCha.Items.Insert(0, "");
        ddlNhaCungCap.Items.Insert(0, "");
        maloaikhac = 0 ;
        maloaikhac = ddlLoaiThietBi.Items.Count - 1;
        ddlLoaiThietBi.SelectedIndex = maloaikhac;
    }
    protected void FormView1_ItemInserting(object sender, FormViewInsertEventArgs e)
    {
        DropDownList ddlNgay = (DropDownList)FormView1.FindControl("ddlNgay1");
        DropDownList ddlThang = (DropDownList)FormView1.FindControl("ddlThang1");
        DropDownList ddlNam = (DropDownList)FormView1.FindControl("ddlNam1");
        DropDownList ddlNgay2 = (DropDownList)FormView1.FindControl("ddlNgay2");
        DropDownList ddlThang2 = (DropDownList)FormView1.FindControl("ddlThang2");
        DropDownList ddlNam2 = (DropDownList)FormView1.FindControl("ddlNam2");
        DropDownList ddlNgay3 = (DropDownList)FormView1.FindControl("ddlNgay3");
        DropDownList ddlThang3 = (DropDownList)FormView1.FindControl("ddlThang3");
        DropDownList ddlNam3 = (DropDownList)FormView1.FindControl("ddlNam3");
        e.Values[3] = new DateTime(Int32.Parse(ddlNam.SelectedValue), Int32.Parse(ddlThang.SelectedValue), Int32.Parse(ddlNgay.SelectedValue));
        e.Values[7] = new DateTime(Int32.Parse(ddlNam2.SelectedValue), Int32.Parse(ddlThang2.SelectedValue), Int32.Parse(ddlNgay2.SelectedValue));
        e.Values[8] = new DateTime(Int32.Parse(ddlNam3.SelectedValue), Int32.Parse(ddlThang3.SelectedValue), Int32.Parse(ddlNgay3.SelectedValue));
        FileUpload FileUpload1 = (FileUpload)FormView1.FindControl("FileUpload1");
        if (FileUpload1.HasFile)
        {
            FileUpload1.SaveAs(Server.MapPath("~/Resourcers/Images/ThietBi/" + FileUpload1.FileName));
            e.Values[15] = FileUpload1.FileName;
        }
    }
    protected void FormView1_PreRender(object sender, EventArgs e)
    {
        TextBox matbTextBox = (TextBox)FormView1.FindControl("matbTextBox");
        DropDownList ddlNgay = (DropDownList)FormView1.FindControl("ddlNgay1");
        DropDownList ddlThang = (DropDownList)FormView1.FindControl("ddlThang1");
        DropDownList ddlNam = (DropDownList)FormView1.FindControl("ddlNam1");
        DropDownList ddlNgay2 = (DropDownList)FormView1.FindControl("ddlNgay2");
        DropDownList ddlThang2 = (DropDownList)FormView1.FindControl("ddlThang2");
        DropDownList ddlNam2 = (DropDownList)FormView1.FindControl("ddlNam2");
        DropDownList ddlNgay3 = (DropDownList)FormView1.FindControl("ddlNgay3");
        DropDownList ddlThang3 = (DropDownList)FormView1.FindControl("ddlThang3");
        DropDownList ddlNam3 = (DropDownList)FormView1.FindControl("ddlNam3");
        DropDownList ddlThietBiCha = (DropDownList)FormView1.FindControl("DropDownList3");
        DropDownList ddlNhaCungCap = (DropDownList)FormView1.FindControl("DropDownList6");
        DropDownList ddlLoaiThietBi = (DropDownList)FormView1.FindControl("DropDownList2");
        int max;
        int nam;
        int maloaikhac;
        max = 0;
        nam = 1999;
        maloaikhac = 0;
        for (int i = 0; i < data.dsThietBi().Count; i++)
        {
            if (data.dsThietBi()[i].Matb > max)
            {
                max = data.dsThietBi()[i].Matb;
            }
        }
        matbTextBox.Text = (max + 1).ToString();
        for (int i = 0; i < 31; i++)
        {
            ddlNgay.Items.Add((i + 1).ToString());
            ddlNgay2.Items.Add((i + 1).ToString());
            ddlNgay3.Items.Add((i + 1).ToString());
        }
        for (int i = 0; i < 12; i++)
        {
            ddlThang.Items.Add((i + 1).ToString());
            ddlThang2.Items.Add((i + 1).ToString());
            ddlThang3.Items.Add((i + 1).ToString());
        }
        
        for (int i = 0; i < 30; i++)
        {
            ddlNam.Items.Add((nam).ToString());
            ddlNam2.Items.Add((nam).ToString());
            ddlNam3.Items.Add((nam).ToString());
            nam++;
        }
        ddlThietBiCha.Items.Insert(0,"");
        ddlNhaCungCap.Items.Insert(0, "");
        maloaikhac = ddlLoaiThietBi.Items.Count - 1;
        ddlLoaiThietBi.SelectedIndex = maloaikhac;
    }
}