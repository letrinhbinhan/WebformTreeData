using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_SuaBaoTri : System.Web.UI.Page
{
    DataUtil data = new DataUtil();
	public string mathietbibaotri;
    public string mathietbi;    
    public bool tontaiTBBT;
    public int ngaybd;
    public int thangbd;
    public int nambd;
    public int ngayketthuc;
    public int thangketthuc;
    public int namketthuc;
    public string ghichu;
    public string nguoilap;
    public string loaihinh;
    protected void Page_Load(object sender, EventArgs e)
    {
        mathietbi = "";
        mathietbibaotri = "";
        tontaiTBBT = false;
        ghichu = "";
        nguoilap = "";
        loaihinh = "";

        mathietbibaotri = Request.QueryString["matbbt"];
        for (int i = 0; i < data.dsTBBT().Count; i++)
        {
            if (data.dsTBBT()[i].Matbbt.ToString() == mathietbibaotri)
                {
                    tontaiTBBT = true;
                    mathietbi = data.dsTBBT()[i].Mathietbibt.ToString();
                    ngaybd = data.dsTBBT()[i].Thoigianbatdau.Day;
                    thangbd = data.dsTBBT()[i].Thoigianbatdau.Month;
                    nambd = data.dsTBBT()[i].thoigianbatdau.Year;
                    ngayketthuc = data.dsTBBT()[i].Thoigianketthuc.Day;
                    thangketthuc = data.dsTBBT()[i].Thoigianketthuc.Month;
                    namketthuc = data.dsTBBT()[i].Thoigianketthuc.Year;
                    ghichu = data.dsTBBT()[i].Ghichu;
                    nguoilap = data.dsTBBT()[i].Nguoilap;
                    loaihinh = data.dsTBBT()[i].Loaihinh;
                }
        }
    }
}