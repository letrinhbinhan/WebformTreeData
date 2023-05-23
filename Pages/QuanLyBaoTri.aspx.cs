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
using System.Globalization;

public partial class Pages_QuanLyBaoTri : System.Web.UI.Page
{
    DataUtil data = new DataUtil();
    string value = "";
    CultureInfo provider = new CultureInfo("vi-VN");
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void GridView1_RowDataBound1(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            ThietBi found = data.dsThietBi().Find(delegate(ThietBi tbd)
            {
                return tbd.Matb == Convert.ToInt32(e.Row.Cells[3].Text);
            });
            // Display the product name in italics.
            e.Row.Cells[3].Text = "<i>" + found.Tentb + "</i>";

            //Display the maintaint start day to dd-MM-yyyy            
            if (e.Row.Cells[4].Text.Length > 8)
            {
                value = e.Row.Cells[4].Text;
                e.Row.Cells[4].Text = DateTime.Parse(value, provider, DateTimeStyles.NoCurrentDateDefault).ToString("dd-MM-yyyy");
            }
            else
            {
                e.Row.Cells[4].Text = e.Row.Cells[4].Text;
            }
            //Display the maintaint end day to dd-MM-yyyy
            if (e.Row.Cells[5].Text.Length > 8)
            {
                value = e.Row.Cells[5].Text;
                e.Row.Cells[5].Text = DateTime.Parse(value, provider, DateTimeStyles.NoCurrentDateDefault).ToString("dd-MM-yyyy");
            }
            else
            {
                e.Row.Cells[5].Text = e.Row.Cells[5].Text;
            }
        }
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

    }
}
