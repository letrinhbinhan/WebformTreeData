using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_SuaThietBi : System.Web.UI.Page
{

    DataUtil data = new DataUtil();
	public string maquanly;
	public string tenthietbi;
	public string giathanh;
	public int ngaynhap;
	public int thangnhap;
	public int namnhap;
	public string thongsokythuat;
	public int phongban;
	public string Serial;
	public string Modal;
	public int ngaylapdat;
	public int thanglapdat;
	public int namlapdat;
	public int ngaymua;
	public int thangmua;
	public int nammua;
	public string nhasanxuat;
	public string nuocsanxuat;
	public string nhacungcap;
	public int loaithietbi;
	public int thietbicha;
	public string thoihanbaohanh;
	public string ghichuhinhanh;
    protected void Page_Load(object sender, EventArgs e)
    {
        //ThietBi tb = new ThietBi();
        //string RequestID = Request.QueryString["mathietbi"];
        //int idch = Int32.Parse(RequestID);
        //for(int i=0; i< data.dsThietBi().Count;i++)
        //{
        //    if(data.dsThietBi()[i].Matb==idch)
        //    {
        //        tb = data.dsThietBi()[i];
        //        break;
        //    }			
        //}
        //maquanly = tb.Maql;
        //tenthietbi = tb.Tentb;
        //giathanh = tb.Giathanh;
        //ngaynhap = tb.Ngaynhap.Day;
        //thangnhap = tb.Ngaynhap.Month;
        //namnhap = tb.Ngaynhap.Year;
        //thongsokythuat = tb.Thongsokthuat;
        //phongban = tb.Phongban;
        //Serial = tb.Serial;
        //Modal = tb.Model;
        //ngaylapdat = tb.Ngaylapdat.Day;
        //thanglapdat = tb.Ngaylapdat.Month;
        //namlapdat = tb.Ngaylapdat.Year;
        //ngaymua = tb.Ngaymua.Day;
        //thangmua = tb.Ngaymua.Month;
        //nammua = tb.Ngaymua.Year;
        //nhasanxuat = tb.Nhasanxuat;
        //nuocsanxuat = tb.Nuocsanxuat;
        //nhacungcap = "";
        //loaithietbi = 0;
        //thietbicha = tb.Thietbicha;
        //thoihanbaohanh = tb.Thoihanbaohanh;
        //ghichuhinhanh = tb.Imagedescription;
        DropDownList ddlNgay = (DropDownList)FormView1.FindControl("ddlNgay1");
        DropDownList ddlThang = (DropDownList)FormView1.FindControl("ddlThang1");
        DropDownList ddlNam = (DropDownList)FormView1.FindControl("ddlNam1");
        DropDownList ddlNgay2 = (DropDownList)FormView1.FindControl("ddlNgay2");
        DropDownList ddlThang2 = (DropDownList)FormView1.FindControl("ddlThang2");
        DropDownList ddlNam2 = (DropDownList)FormView1.FindControl("ddlNam2");
        DropDownList ddlNgay3 = (DropDownList)FormView1.FindControl("ddlNgay3");
        DropDownList ddlThang3 = (DropDownList)FormView1.FindControl("ddlThang3");
        DropDownList ddlNam3 = (DropDownList)FormView1.FindControl("ddlNam3");
        DropDownList ddlNgay4 = (DropDownList)FormView1.FindControl("ddlNgay4");
        DropDownList ddlThang4 = (DropDownList)FormView1.FindControl("ddlThang4");
        DropDownList ddlNam4 = (DropDownList)FormView1.FindControl("ddlNam4");
        //DropDownList ddlThietBiCha = (DropDownList)FormView1.FindControl("DropDownList3");
        //DropDownList ddlNhaCungCap = (DropDownList)FormView1.FindControl("DropDownList6");
        //DropDownList ddlLoaiThietBi = (DropDownList)FormView1.FindControl("DropDownList2");        
        int max, maloaikhac, nam;
        nam = 1999;
        for (int i = 0; i < 31; i++)
        {
            if(i < 9)
            {
                ddlNgay.Items.Add("0"+ (i+1).ToString());
            }
            else 
            {
                ddlNgay.Items.Add((i + 1).ToString());
            }
            if(i < 9)
            {
                ddlNgay2.Items.Add("0"+(i + 1).ToString());
            }
            else 
            {
                ddlNgay2.Items.Add((i + 1).ToString());
            }
            if(i < 9)
            {
                ddlNgay3.Items.Add("0"+(i + 1).ToString());
            }
            else 
            {
                ddlNgay3.Items.Add((i + 1).ToString());
            }
            if(i < 9)
            {
                ddlNgay4.Items.Add("0"+(i+1).ToString());
            }
            else 
            {
                ddlNgay4.Items.Add((i+1).ToString());
            }
        }
        for (int i = 0; i < 12; i++)
        {
            if(i < 9)
            {
                ddlThang.Items.Add("0"+(i+1).ToString());
            }
            else
            {
                ddlThang.Items.Add((i+1).ToString());
            }
            if(i < 9)
            {
                ddlThang2.Items.Add("0"+(i + 1).ToString());
            }
            else 
            {
                ddlThang2.Items.Add((i+1).ToString());
            }
            if(i < 9)
            {
                ddlThang3.Items.Add("0"+(i + 1).ToString());
            }
            else {
                ddlThang3.Items.Add((i+1).ToString());
            }
            if(i < 9)
            {
                ddlThang4.Items.Add("0"+(i + 1).ToString());
            }
            else 
            {
                ddlThang4.Items.Add((i+1).ToString());
            }
        }
        for (int i = 0; i < 30; i++)
        {
            ddlNam.Items.Add(nam.ToString());;
            ddlNam2.Items.Add((nam).ToString());
            ddlNam3.Items.Add((nam).ToString());
            ddlNam4.Items.Add((nam).ToString());
            nam++;
        }
        //ddlNgay.SelectedValue = DateTime.Now.Day.ToString();
        //ddlThang.SelectedValue = DateTime.Now.Month.ToString();
        //ddlNam.SelectedValue = DateTime.Now.Year.ToString();
        //ddlNgay2.SelectedValue = DateTime.Now.Day.ToString();
        //ddlThang2.SelectedValue = DateTime.Now.Month.ToString();
        //ddlNam2.SelectedValue = DateTime.Now.Year.ToString();
        //ddlNgay3.SelectedValue = DateTime.Now.Day.ToString();
        //ddlThang3.SelectedValue = DateTime.Now.Month.ToString();
        //ddlNam3.SelectedValue = DateTime.Now.Year.ToString();
        //TextBox matbTextBox = (TextBox)FormView1.FindControl("matbTextBox");
        //max = 0;
        //for (int i = 0; i < data.dsThietBi().Count; i++)
        //{
        //    if (data.dsThietBi()[i].Matb > max)
        //    {
        //        max = data.dsThietBi()[i].Matb;
        //    }
        //}
        //matbTextBox.Text = (max + 1).ToString();
        //ddlThietBiCha.Items.Insert(0, "");
        //ddlNhaCungCap.Items.Insert(0, "");
        //maloaikhac = 0;
        //maloaikhac = ddlLoaiThietBi.Items.Count - 1;
        //ddlLoaiThietBi.SelectedIndex = maloaikhac;
        //for (int i = 0; i < data.dsNhaCungCap().Count; i++)
        //{
        //    if(tb.NCC1 == data.dsNhaCungCap()[i].Id1.ToString())
        //    {
        //        nhacungcap = data.dsNhaCungCap()[i].Tennhacungcap;
        //    }
        //}
        //for (int z = 0; z < data.dsLoaiThietBi().Count; z++)
        //{
        //    if (loaithietbi == data.dsLoaiThietBi()[z].Maloaitb)
        //    {
        //        loaithietbi = Int32.Parse(data.dsLoaiThietBi()[z].Tenloaitb);
        //    }
        //}
    }
    protected void FormView1_ItemInserting(object sender, FormViewInsertEventArgs e)
    {
        //DropDownList ddlNgay = (DropDownList)FormView1.FindControl("ddlNgay1");
        //DropDownList ddlThang = (DropDownList)FormView1.FindControl("ddlThang1");
        //DropDownList ddlNam = (DropDownList)FormView1.FindControl("ddlNam1");
        //DropDownList ddlNgay2 = (DropDownList)FormView1.FindControl("ddlNgay2");
        //DropDownList ddlThang2 = (DropDownList)FormView1.FindControl("ddlThang2");
        //DropDownList ddlNam2 = (DropDownList)FormView1.FindControl("ddlNam2");
        //DropDownList ddlNgay3 = (DropDownList)FormView1.FindControl("ddlNgay3");
        //DropDownList ddlThang3 = (DropDownList)FormView1.FindControl("ddlThang3");
        //DropDownList ddlNam3 = (DropDownList)FormView1.FindControl("ddlNam3");
        //e.Values[3] = new DateTime(Int32.Parse(ddlNam.SelectedValue), Int32.Parse(ddlThang.SelectedValue), Int32.Parse(ddlNgay.SelectedValue));
        //e.Values[7] = new DateTime(Int32.Parse(ddlNam2.SelectedValue), Int32.Parse(ddlThang2.SelectedValue), Int32.Parse(ddlNgay2.SelectedValue));
        //e.Values[8] = new DateTime(Int32.Parse(ddlNam3.SelectedValue), Int32.Parse(ddlThang3.SelectedValue), Int32.Parse(ddlNgay3.SelectedValue));
        
        //FileUpload FileUpload1 = (FileUpload)FormView1.FindControl("FileUpload1");
        //if (FileUpload1.HasFile)
        //{
        //    FileUpload1.SaveAs(Server.MapPath("~/Resourcers/Images/ThietBi/" + FileUpload1.FileName));
        //    e.Values[15] = FileUpload1.FileName;
        //}
    }
    protected void FormView1_PreRender(object sender, EventArgs e)
    {
        //TextBox matbTextBox = (TextBox)FormView1.FindControl("matbTextBox");
        //DropDownList ddlNgay = (DropDownList)FormView1.FindControl("ddlNgay1");
        //DropDownList ddlThang = (DropDownList)FormView1.FindControl("ddlThang1");
        //DropDownList ddlNam = (DropDownList)FormView1.FindControl("ddlNam1");
        //DropDownList ddlNgay2 = (DropDownList)FormView1.FindControl("ddlNgay2");
        //DropDownList ddlThang2 = (DropDownList)FormView1.FindControl("ddlThang2");
        //DropDownList ddlNam2 = (DropDownList)FormView1.FindControl("ddlNam2");
        //DropDownList ddlNgay3 = (DropDownList)FormView1.FindControl("ddlNgay3");
        //DropDownList ddlThang3 = (DropDownList)FormView1.FindControl("ddlThang3");
        //DropDownList ddlNam3 = (DropDownList)FormView1.FindControl("ddlNam3");
        //DropDownList ddlThietBiCha = (DropDownList)FormView1.FindControl("DropDownList3");
        //DropDownList ddlNhaCungCap = (DropDownList)FormView1.FindControl("DropDownList6");
        //DropDownList ddlLoaiThietBi = (DropDownList)FormView1.FindControl("DropDownList2");
        //int max;
        //int nam;
        //int maloaikhac;
        //max = 0;
        //nam = 1999;
        //maloaikhac = 0;
        //for (int i = 0; i < data.dsThietBi().Count; i++)
        //{
        //    if (data.dsThietBi()[i].Matb > max)
        //    {
        //        max = data.dsThietBi()[i].Matb;
        //    }
        //}
        //matbTextBox.Text = (max + 1).ToString();
        //for (int i = 0; i < 31; i++)
        //{
        //    ddlNgay.Items.Add((i + 1).ToString());
        //    ddlNgay2.Items.Add((i + 1).ToString());
        //    ddlNgay3.Items.Add((i + 1).ToString());
        //}
        //for (int i = 0; i < 12; i++)
        //{
        //    ddlThang.Items.Add((i + 1).ToString());
        //    ddlThang2.Items.Add((i + 1).ToString());
        //    ddlThang3.Items.Add((i + 1).ToString());
        //}

        //for (int i = 0; i < 30; i++)
        //{
        //    ddlNam.Items.Add((nam).ToString());
        //    ddlNam2.Items.Add((nam).ToString());
        //    ddlNam3.Items.Add((nam).ToString());
        //    nam++;
        //}
        //ddlThietBiCha.Items.Insert(0, "");
        //ddlNhaCungCap.Items.Insert(0, "");
        //maloaikhac = ddlLoaiThietBi.Items.Count - 1;
        //ddlLoaiThietBi.SelectedIndex = maloaikhac;
    }
    protected void FormView1_Init(object sender, EventArgs e)
    {
        Label lblMaTB = (Label)FormView1.FindControl("matbLabel1");
        //lblMaTB.Text = "137";
    }
}