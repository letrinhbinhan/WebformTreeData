using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.IO;

public partial class Dashboard : System.Web.UI.Page
{
    public string MaThietBiLonNhat;
    public int IntMaThietBiLonNhat;
    DataUtil data = new DataUtil();
    string ctm = "";
    bool haveChild = false;    
    protected void Page_Load(object sender, EventArgs e)
    {        
        if (!IsPostBack)
        {
            #region fill data ddlngay,thang,nam
            // Create a new ListItemCollection.
            ListItemCollection listNgayNhap = new ListItemCollection();
            ListItemCollection listNgayLapDat = new ListItemCollection();
            ListItemCollection listNgayMua = new ListItemCollection();
            // Add items to the collection.
            for (int i = 0; i < 31; i++)
            {
                if (i < 9) {
                    listNgayNhap.Add(new ListItem("0" + (i + 1).ToString()));
                    listNgayLapDat.Add(new ListItem("0" + (i + 1).ToString()));
                    listNgayMua.Add(new ListItem("0" + (i + 1).ToString()));
                }
                else {
                    listNgayNhap.Add(new ListItem((i + 1).ToString()));
                    listNgayLapDat.Add(new ListItem((i + 1).ToString()));
                    listNgayMua.Add(new ListItem((i + 1).ToString()));
                }
                
            }
            // For now, just bind the data to the DropDownList.
            ddlngaynhap.DataSource = listNgayNhap;
            ddlngaynhap.DataBind();
            ddlngaylapdat.DataSource = listNgayLapDat;
            ddlngaylapdat.DataBind();            
            ddlngaymua.DataSource = listNgayMua;
            ddlngaymua.DataBind();
            if (DateTime.Now.Day < 10)
            {
                ddlngaynhap.SelectedValue = "0" + DateTime.Now.Day.ToString();
                ddlngaylapdat.SelectedValue = "0" + DateTime.Now.Day.ToString();
                ddlngaymua.SelectedValue = "0" + DateTime.Now.Day.ToString();
            }
            else
            {
                ddlngaynhap.SelectedValue = DateTime.Now.Day.ToString();
                ddlngaylapdat.SelectedValue = DateTime.Now.Day.ToString();
                ddlngaymua.SelectedValue = DateTime.Now.Day.ToString();
            }
            ListItemCollection listThangNhap = new ListItemCollection();
            ListItemCollection listThangLapDat = new ListItemCollection();
            ListItemCollection listThangMua = new ListItemCollection();
            for (int i = 0; i < 12; i++)
            {
                if (i < 9)
                {
                    listThangNhap.Add(new ListItem("0" + (i + 1).ToString()));
                    listThangLapDat.Add(new ListItem("0" + (i + 1).ToString()));
                    listThangMua.Add(new ListItem("0" + (i + 1).ToString()));
                }
                else
                {
                    listThangNhap.Add(new ListItem((i + 1).ToString()));
                    listThangLapDat.Add(new ListItem((i + 1).ToString()));
                    listThangMua.Add(new ListItem((i + 1).ToString()));
                }
            }
            ddlthangnhap.DataSource = listThangNhap;
            ddlthangnhap.DataBind();
            ddlthangnhap.SelectedValue = DateTime.Now.Month.ToString();
            ddlthanglapdat.DataSource = listThangLapDat;
            ddlthanglapdat.DataBind();
            ddlthanglapdat.SelectedValue = DateTime.Now.Month.ToString();
            ddlthangmua.DataSource = listThangMua;
            ddlthangmua.DataBind();
            ddlthangmua.SelectedValue = DateTime.Now.Month.ToString();
            if (DateTime.Now.Month < 10)
            {
                ddlthangnhap.SelectedValue = "0" + DateTime.Now.Month.ToString();
                ddlthanglapdat.SelectedValue = "0" + DateTime.Now.Month.ToString();
                ddlthangmua.SelectedValue = "0" + DateTime.Now.Month.ToString();
            }
            else
            {
                ddlthangnhap.SelectedValue = DateTime.Now.Month.ToString();
                ddlthanglapdat.SelectedValue = DateTime.Now.Month.ToString();
                ddlthangmua.SelectedValue = DateTime.Now.Month.ToString();
            }
            ListItemCollection listNamNhap = new ListItemCollection();
            ListItemCollection listNamLapDat = new ListItemCollection();
            ListItemCollection listNamMua = new ListItemCollection();
            int nam;
            nam = 1980;
            for (int i = 0; i < 60; i++)
            {
                listNamNhap.Add(new ListItem((nam + i).ToString()));
                listNamLapDat.Add(new ListItem((nam + i).ToString()));
                listNamMua.Add(new ListItem((nam + i).ToString()));
            }
            ddlnamnhap.DataSource = listNamNhap;
            ddlnamnhap.DataBind();
            ddlnamnhap.SelectedValue = DateTime.Now.Year.ToString();
            ddlnamlapdat.DataSource = listNamLapDat;
            ddlnamlapdat.DataBind();
            ddlnamlapdat.SelectedValue = DateTime.Now.Year.ToString();
            ddlnammua.DataSource = listNamMua;
            ddlnammua.DataBind();
            ddlnammua.SelectedValue = DateTime.Now.Year.ToString();            
        }
        #endregion
            IntMaThietBiLonNhat = 1;
            for(int i = 0; i< data.dsThietBi().Count; i++) {
            if(data.dsThietBi()[i].Matb > IntMaThietBiLonNhat) {
                IntMaThietBiLonNhat = data.dsThietBi()[i].Matb;
            }
        }
        MaThietBiLonNhat = IntMaThietBiLonNhat.ToString();
        #region them khoang trang dll
        //ddlloaithietbi.Items.Add("1");
        //ddlloaithietbi.Items.Insert(0, new ListItem("Add New", ""));
        #endregion
    }
    public string showGocCayThuMuc()
    {        
        ctm += "<ul id='ul-ctm' class='tree-ul-v2'>";        
        for (int i = 0; i < data.dsThietBi().Count; i++)
        {
            for (int j = 0; j < data.dsThietBi().Count; j++)
            {
                if (data.dsThietBi()[j].Thietbicha == data.dsThietBi()[i].Matb)
                    haveChild = true;
            }
            if (haveChild == true && data.dsThietBi()[i].Thietbicha == 0)
            {
                ctm += "<li id='" + data.dsThietBi()[i].Matb + "' class='row-tree-tb'>";
                ctm += "<img src='/Resourcers/Images/ngoi-nha.ico' alt='ngoinhaicon' class='position-row-icon'/>";
                ctm += "<span class='mtree-text'><a id='" + data.dsThietBi()[i].Matb + "' class='1' href='#'> <span id='" + data.dsThietBi()[i].Matb + "' class='plus-icon mtree-p-icon'></span> " + data.dsThietBi()[i].Tentb + "</a></span>";
                ctm += "</li>";
                haveChild = false;
            }
            else if (haveChild == false && data.dsThietBi()[i].Thietbicha == 0)
            {
                ctm += "<li id='" + data.dsThietBi()[i].Matb + "' class='row-tree-tb'>";
                ctm += "<img src='/Resourcers/Images/ngoi-nha.ico' alt='ngoinhaicon' class='position-row-icon'/>";
                ctm += "<span id='" + data.dsThietBi()[i].Matb + "' class='none-icon mtree-p-icon'></span>";
                ctm += "<span class='mtree-text'><a id='" + data.dsThietBi()[i].Matb + "' class='1' href='#'>" + data.dsThietBi()[i].Tentb + "</a></span>";
                ctm += "</li>";
            }
        }        
        ctm += "</ul";
        return ctm;
    }
    public string showGocCayThuMucViTri()
    {
        ctm += "<ul id='ul-ctm' class='tree-ul-v2'>";
        for (int vt = 0; vt < data.dsViTri().Count; vt++)
        {
            if (data.dsViTri()[vt].Chathietbi)
            {
                ctm += "<li id='vt" + data.dsViTri()[vt].Id1 + "' class='row-tree-tb'>";                
                ctm += "<span class='mtree-text'><a id='" + data.dsViTri()[vt].Id1 + "' class='2' href='#'> <span id='" + data.dsViTri()[vt].Id1 + "' class='plus-icon mtree-p-icon'></span><img src='/Resourcers/Images/ngoi-nha.ico' alt='ngoinhaicon' class='position-row-icon'/>" + data.dsViTri()[vt].Tenvitri + "</a></span>";
                ctm += "</li>";
            }
            else
            {				                
				ctm += "<span id='"+data.dsViTri()[vt]+"' class='none-icon mtree-p-icon'></span>";
                ctm += "<li id='vt"+data.dsViTri()[vt].Id1+"' class='row-tree-tb row-tree-none-icon'>";
                ctm += "<img src='/Resourcers/Images/ngoi-nha.ico' alt='ngoinhaicon' class='position-row-icon-nc'/>";
				ctm += "<span class='mtree-text'><a id='"+ data.dsViTri()[vt].Id1+"' class='2 0' href='#'>"+data.dsViTri()[vt].Tenvitri+"</a></span>";
                ctm += "</li>";
            }
        }
        ctm += "</ul>";
        return ctm;
    }
    //cây thư mục
    //<ul>
    //  <li><span>Hình ảnh</span><span>Tên của thiết bị</span></li>
    //</ul>
    //trạng thái cho ẩn đi 
    //cho thêm vào trong li
    //thay đổi class để li hiển thị ảnh khác nhau
    //bắt được sự kiên click trên cả li hình và li tên thiết bị
    protected void btnThemThietBi_Click(object sender, EventArgs e)
    {
        if (txttenthietbi.Text == "")
        {
            return;
        }
        Nullable<int> thietbicha = null;
        #region khai bao cac bien them thiet bi
        int loaithietbi, phongban, ngaynhap, thangnhap, namnhap, nhacungcap, ngaylapdat, thanglapdat, namlapdat, ngaymua, thangmua, nammua, vitri, mathietbilonnhat, mathietbi;
        string tenthietbi, huhong, thoihanbaohanh, nhasanxuat, nuocsanxuat, serial, model, maquanly;        
        loaithietbi = Int32.Parse(ddlloaithietbi.SelectedValue);
        phongban = Int32.Parse(ddlphongban.SelectedValue);
        ngaynhap = Int32.Parse(ddlngaynhap.SelectedValue);
        thangnhap = Int32.Parse(ddlthangnhap.SelectedValue);
        namnhap = Int32.Parse(ddlnamnhap.SelectedValue);
        nhacungcap = Int32.Parse(ddlnhacungcap.SelectedValue);
        ngaylapdat = Int32.Parse(ddlngaylapdat.SelectedValue);
        thanglapdat = Int32.Parse(ddlthangnhap.SelectedValue);
        namlapdat = Int32.Parse(ddlnamlapdat.SelectedValue);
        ngaymua = Int32.Parse(ddlngaymua.SelectedValue);
        thangmua = Int32.Parse(ddlthangmua.SelectedValue);
        nammua = Int32.Parse(ddlnammua.SelectedValue);        
        vitri = Int32.Parse(ddlvitri.SelectedValue);
        tenthietbi = txttenthietbi.Text;
        huhong = txthuhong.Text;
        thoihanbaohanh = txtthoihanbaohanh.Text;
        nhasanxuat = txtnhasanxuat.Text;
        nuocsanxuat = txtnuocsanxuat.Text;
        serial = txtserial.Text;
        model = txtmodel.Text;
        maquanly = txtmaquanly.Text;
        mathietbilonnhat = 1;        
        thietbicha = Int32.Parse(ddlthietbicha.SelectedValue);        
        #endregion
        for (int i = 0; i < data.dsThietBi().Count; i++)
        {
            if (data.dsThietBi()[i].Matb > mathietbilonnhat)
            {
                mathietbilonnhat = data.dsThietBi()[i].Matb;
            }
        }
        mathietbi = mathietbilonnhat + 1;
        #region them du lieu thiet bi moi vao CSDL        
        using (System.Data.SqlClient.SqlConnection connection = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["QLThietBiConnectionString"].ConnectionString))
        {
            connection.Open();
            string sql = "INSERT INTO tblthietbi (loaitb, phongban, ngaynhap, tentb, NCC, huhong, thoihanbaohanh, nhasanxuat, nuocsanxuat, serial, model, ngaylapdat, ngaymua, linkimage, maql, thietbicha, vitri, matb) VALUES (@param1,@param2,@param3,@param4,@param5,@param6,@param7,@param8,@param9,@param10,@param11,@param12,@param13,@param14,@param15,@param16,@param17,@param18)";
            using (System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(sql, connection))
            {
                cmd.Parameters.Add("@param1", System.Data.SqlDbType.Int).Value = loaithietbi;
                cmd.Parameters.Add("@param2", System.Data.SqlDbType.Int).Value = phongban;
                cmd.Parameters.Add("@param3", System.Data.SqlDbType.DateTime).Value = new DateTime(namnhap, thangnhap, ngaynhap);
                cmd.Parameters.Add("@param4", System.Data.SqlDbType.NVarChar).Value = tenthietbi;
                cmd.Parameters.Add("@param5", System.Data.SqlDbType.Int).Value = nhacungcap;
                cmd.Parameters.Add("@param6", System.Data.SqlDbType.NVarChar).Value = huhong;
                cmd.Parameters.Add("@param7", System.Data.SqlDbType.NVarChar).Value = thoihanbaohanh;
                cmd.Parameters.Add("@param8", System.Data.SqlDbType.NVarChar).Value = nhasanxuat;
                cmd.Parameters.Add("@param9", System.Data.SqlDbType.NVarChar).Value = nuocsanxuat;
                cmd.Parameters.Add("@param10", System.Data.SqlDbType.NVarChar).Value = serial;
                cmd.Parameters.Add("@param11", System.Data.SqlDbType.NVarChar).Value = model;
                cmd.Parameters.Add("@param12", System.Data.SqlDbType.DateTime).Value = new DateTime(namlapdat, thanglapdat, ngaylapdat);
                cmd.Parameters.Add("@param13", System.Data.SqlDbType.DateTime).Value = new DateTime(nammua, thangmua, ngaymua);
                cmd.Parameters.Add("@param14", System.Data.SqlDbType.NVarChar).Value = FileUpload2.FileName;
                cmd.Parameters.Add("@param15", System.Data.SqlDbType.NVarChar).Value = maquanly;
                cmd.Parameters.Add("@param16", System.Data.SqlDbType.Int).Value = thietbicha;
                cmd.Parameters.Add("@param17", System.Data.SqlDbType.NVarChar).Value = vitri;
                cmd.Parameters.Add("@param18", System.Data.SqlDbType.NVarChar).Value = mathietbi;
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.ExecuteNonQuery();
            }
        }        
        #endregion
        #region upload file
        //LabelThongBao.Text = FileUpload2.FileName;
        if(FileUpload2.FileName != "") {
            //folder path to save uploaded file
            string folderPath = Server.MapPath("~/Resourcers/Images/ThietBi/");
            //Check whether Directory (Folder) exists, although we have created, if it si not created this code will check
            if (!Directory.Exists(folderPath))
            {
               //If folder does not exists. Create it.
               Directory.CreateDirectory(folderPath);
            }
            // save file in the specified folder and path
            // could not find a part of the path
            FileUpload2.SaveAs(folderPath + Path.GetFileName(FileUpload2.FileName));    
        }
        #endregion
        lblthietbicha.Text = thietbicha.ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.FileName == "")
        {
            return;
        }
        #region upload file 2
        //LabelThongBao.Text = FileUpload2.FileName;
        string mathietbi;
        mathietbi = "";
        if(Request.Cookies["mathietbi"] != null)
        {
            string cookieValue = Request.Cookies["mathietbi"].Value;
            mathietbi = cookieValue;
        }
        if (FileUpload1.FileName != "")
        {
            //folder path to save uploaded file
            string folderPath = Server.MapPath("~/Resourcers/TaiLieu/");
            //Check whether Directory (Folder) exists, although we have created, if it si not created this code will check
            if (!Directory.Exists(folderPath))
            {
                //If folder does not exists. Create it.
                Directory.CreateDirectory(folderPath);
            }
            // save file in the specified folder and path
            // could not find a part of the path
            FileUpload1.SaveAs(folderPath + Path.GetFileName(FileUpload1.FileName));
            using (System.Data.SqlClient.SqlConnection connection = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["QLThietBiConnectionString"].ConnectionString))
            {
                connection.Open();
                string sql = "INSERT INTO tblthietbitailieu (mathietbi, tentailieu, linktailieu, tenfile, ngaythem) VALUES(@param1, @param2, @param3, @param4, @param5)";
                using (System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(sql, connection))
                {
                    cmd.Parameters.Add("@param1", System.Data.SqlDbType.Int).Value = Int32.Parse(mathietbi);
                    cmd.Parameters.Add("@param2", System.Data.SqlDbType.NVarChar).Value = FileUpload1.FileName;
                    cmd.Parameters.Add("@param3", System.Data.SqlDbType.NVarChar).Value = "~/Resource/TaiLieu/";
                    cmd.Parameters.Add("@param4", System.Data.SqlDbType.NVarChar).Value = FileUpload1.FileName;
                    cmd.Parameters.Add("@param5", System.Data.SqlDbType.DateTime).Value = DateTime.Now;
                    cmd.CommandType = System.Data.CommandType.Text;
                    cmd.ExecuteNonQuery();
                }
            }
        }
        #endregion
    }
}