using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_DanhSachThietBi : System.Web.UI.Page
{
    DataUtil data = new DataUtil();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_DataBound(object sender, EventArgs e)
    {
        
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            for (int i = 0; i < data.dsThietBi().Count; i++)
            {
                if(Int32.Parse(e.Row.Cells[8].Text) == data.dsThietBi()[i].Matb)
                {
                    e.Row.Cells[8].Text = data.dsThietBi()[i].Tentb;
                }
            }
        }
    }
}