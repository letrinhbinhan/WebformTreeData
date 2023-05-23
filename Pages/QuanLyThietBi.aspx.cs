using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_QuanLyThietBi : System.Web.UI.Page
{
    DataUtil data = new DataUtil();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridViewQuanLyThietBi_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        //Checking the RowType of the Row  
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            for (int i = 0; i < data.dsPhongBan().Count; i++)
            {
                if (e.Row.Cells[4].Text == data.dsPhongBan()[i].Idphongban.ToString())
                {
                    e.Row.Cells[4].Text = data.dsPhongBan()[i].Tenphongban;
                    break;
                }
            }
            for (int j = 0; j < data.dsViTri().Count; j++)
            {
                if (e.Row.Cells[9].Text == data.dsViTri()[j].Id1.ToString())
                {
                    e.Row.Cells[9].Text = data.dsViTri()[j].Tenvitri;
                }
                break;
            }
            for (int z = 0; z < data.dsThietBi().Count; z++)
            {
                if (e.Row.Cells[16].Text == data.dsThietBi()[z].Matb.ToString())
                {
                    e.Row.Cells[16].Text = data.dsThietBi()[z].Tentb;
                    break;
                }
            }
        }  
    }
}