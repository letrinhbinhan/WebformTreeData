using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_SuaPhuTung : System.Web.UI.Page
{
    DataUtil data = new DataUtil();
    public int idch;
    public string TenPhuTung;
    public DateTime NgayNhap;
    public string GiaCa;
    public string TinhTrang;
    string MaThietBi;
    public string ThietBi;
    public string thongbao;
    protected void Page_Load(object sender, EventArgs e)
    {        
        bool tontai;
        tontai = false;
        thongbao = "";
        string RequestID = Request.QueryString["maphutung"];
        idch = Convert.ToInt32(RequestID);
        if(Request.QueryString["maphutung"] == null || Request.QueryString["maphutung"] == "")
        {
            thongbao = "Không tồn tại phụ tùng này.";
            Response.Redirect("/Dashboard.aspx");
        }        
        for(int i = 0; i < data.dsPhuTung().Count;i++){
            if(idch == data.dsPhuTung()[i].Mapt)
            {                
                TenPhuTung = data.dsPhuTung()[i].Tenpt;
                NgayNhap = data.dsPhuTung()[i].Ngaythaythe;
                GiaCa = FormatVND(data.dsPhuTung()[i].Giaca);
                TinhTrang = data.dsPhuTung()[i].Tinhtrang?"Tốt":"Hư hỏng";
                MaThietBi = data.dsPhuTung()[i].Thietbi.ToString();                         
                thongbao = "Tồn tại phụ tùng này.";
            }
        }        
        for(int i = 0 ; i< data.dsThietBi().Count;i++){
            if(MaThietBi == null) {
                thongbao = "Không tồn tại phụ tùng này.";
                Response.Redirect("/Dashboard.aspx");
            }
            if(data.dsThietBi()[i].Matb == Int32.Parse(MaThietBi))
            {
                ThietBi = data.dsThietBi()[i].Tentb;
            }
        }
    }
    public string FormatVND(int x) {
        char[] gia;
        List<string> giamoi = new List<string>();
        List<string> stringreturn = new List<string>();
        string formatcrrency;
        formatcrrency = "";
        string sentence = x.ToString();
        char[] charArr = sentence.ToCharArray();
        gia = charArr;
        int i = charArr.Length - 1;
        int c = 0;
        while (i > -1)
        {
            if (c == 3)
            {
                giamoi.Add(".");
                c = 0;
                i++;
            }
            else
            {
                giamoi.Add(gia[i].ToString());
                c++;
            }
            i--;
        }

        i = giamoi.Count - 1;
        while (i > -1)
        {
            stringreturn.Add(giamoi[i].ToString());
            i--;
        }
        for (int e = 0; e < stringreturn.Count;e++ )
        {
            formatcrrency = formatcrrency + stringreturn[e];
        }
            
        return formatcrrency + " đ";
    }
}