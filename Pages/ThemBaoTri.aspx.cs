using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_ThemBaoTri : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DropDownList ddlNgay = (DropDownList)FormView1.FindControl("ddlNgay");
        DropDownList ddlThang = (DropDownList)FormView1.FindControl("ddlThang");
        DropDownList ddlNam = (DropDownList)FormView1.FindControl("ddlNam");
        DropDownList ddlNgay2 = (DropDownList)FormView1.FindControl("ddlNgay2");
        DropDownList ddlThang2 = (DropDownList)FormView1.FindControl("ddlThang2");
        DropDownList ddlNam2 = (DropDownList)FormView1.FindControl("ddlNam2");
        int nam;
        nam = 1999;
        for (int i = 0; i < 31; i++)
        {
            ddlNgay.Items.Add((i + 1).ToString());
            ddlNgay2.Items.Add((i + 1).ToString());
        }
        for (int i = 0; i < 12; i++)
        {
            ddlThang.Items.Add((i + 1).ToString());
            ddlThang2.Items.Add((i + 1).ToString());
        }
        for (int i = 0; i < 30; i++)
        {
            ddlNam.Items.Add((nam).ToString());
            ddlNam2.Items.Add((nam).ToString());
            nam++;
        }
        ddlNgay.SelectedValue = DateTime.Now.Day.ToString();
        ddlThang.SelectedValue = DateTime.Now.Month.ToString();
        ddlNam.SelectedValue = DateTime.Now.Year.ToString();
        ddlNgay2.SelectedValue = DateTime.Now.Day.ToString();
        ddlThang2.SelectedValue = DateTime.Now.Month.ToString();
        ddlNam2.SelectedValue = DateTime.Now.Year.ToString();
    }
    protected void FormView1_PreRender(object sender, EventArgs e)
    {
        DropDownList ddlNgay = (DropDownList)FormView1.FindControl("ddlNgay");
        DropDownList ddlThang = (DropDownList)FormView1.FindControl("ddlThang");
        DropDownList ddlNam = (DropDownList)FormView1.FindControl("ddlNam");
        DropDownList ddlNgay2 = (DropDownList)FormView1.FindControl("ddlNgay2");
        DropDownList ddlThang2 = (DropDownList)FormView1.FindControl("ddlThang2");
        DropDownList ddlNam2 = (DropDownList)FormView1.FindControl("ddlNam2");
        int nam;
        nam = 1999;
        for (int i = 0; i < 31; i++)
        {
            ddlNgay.Items.Add((i + 1).ToString());
            ddlNgay2.Items.Add((i + 1).ToString());
        }
        for (int i = 0; i < 12; i++)
        {
            ddlThang.Items.Add((i + 1).ToString());
            ddlThang2.Items.Add((i + 1).ToString());
        }
        for (int i = 0; i < 30; i++)
        {
            ddlNam.Items.Add((nam).ToString());
            ddlNam2.Items.Add((nam).ToString());
            nam++;
        }
        ddlNgay.SelectedValue = DateTime.Now.Day.ToString();
        ddlThang.SelectedValue = DateTime.Now.Month.ToString();
        ddlNam.SelectedValue = DateTime.Now.Year.ToString();
        ddlNgay2.SelectedValue = DateTime.Now.Day.ToString();
        ddlThang2.SelectedValue = DateTime.Now.Month.ToString();
        ddlNam2.SelectedValue = DateTime.Now.Year.ToString();
    }
    protected void FormView1_ItemInserting(object sender, FormViewInsertEventArgs e)
    {
        int ngaybd, tn, nambd, nkt, tkt, namkt;
        DropDownList ddlNgay = (DropDownList)FormView1.FindControl("ddlNgay");
        DropDownList ddlThang = (DropDownList)FormView1.FindControl("ddlThang");
        DropDownList ddlNam = (DropDownList)FormView1.FindControl("ddlNam");
        DropDownList ddlNgay2 = (DropDownList)FormView1.FindControl("ddlNgay2");
        DropDownList ddlThang2 = (DropDownList)FormView1.FindControl("ddlThang2");
        DropDownList ddlNam2 = (DropDownList)FormView1.FindControl("ddlNam2");
        //e.Values[1] = new DateTime(Int32.Parse(ddlNam.SelectedValue), Int32.Parse(ddlThang.SelectedValue), Int32.Parse(ddlNgay.SelectedValue));
        //e.Values[2] = new DateTime(Int32.Parse(ddlNam2.SelectedValue), Int32.Parse(ddlThang2.SelectedValue), Int32.Parse(ddlNgay2.SelectedValue));
        //e.Values[1] = new DateTime(2023, 5, 7);
        //e.Values[2] = new DateTime(2023, 5, 9);
        //e.Values[1] = new DateTime(Int32.Parse(ddlNgay.SelectedValue), Int32.Parse(ddlThang.SelectedValue), Int32.Parse(ddlNam.SelectedValue));
        //e.Values[2] = new DateTime(Int32.Parse(ddlNgay2.SelectedValue), Int32.Parse(ddlThang2.SelectedValue), Int32.Parse(ddlNam2.SelectedValue));        
        //e.Values[1] = new DateTime(Int32.Parse(ddlNam.SelectedValue), Int32.Parse(ddlThang.SelectedValue), Int32.Parse(ddlNgay.SelectedValue));
        //e.Values[1] = new DateTime(2023, 1, 1); 01-01-2023
        ngaybd = Int32.Parse(ddlNgay.SelectedValue);
        tn = Int32.Parse(ddlThang.SelectedValue);
        nambd = Int32.Parse(ddlNam.SelectedValue);
        e.Values[1] = new DateTime(nambd, tn, ngaybd);
        //e.Values[2] = new DateTime(Int32.Parse(ddlNam2.SelectedValue), Int32.Parse(ddlThang2.SelectedValue), Int32.Parse(ddlNgay2.SelectedValue));
        //e.Values[2] = new DateTime(2023, 2, 2); 02-02-023
        nkt = Int32.Parse(ddlNgay2.SelectedValue);
        tkt = Int32.Parse(ddlThang2.SelectedValue);
        namkt = Int32.Parse(ddlNam2.SelectedValue);
        e.Values[2] = new DateTime(nkt, tkt, namkt);
        
    }
}