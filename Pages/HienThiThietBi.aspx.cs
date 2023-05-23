using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class Pages_HienThiThietBi : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
	{
		if (e.Row.RowType == DataControlRowType.DataRow)
		{
			System.Data.DataRowView drv = e.Row.DataItem as System.Data.DataRowView;
			e.Row.Attributes.Add("ondblclick", String.Format("window.location='foo.aspx?subject={0}'", drv["Subject"]));
		}
	}
}