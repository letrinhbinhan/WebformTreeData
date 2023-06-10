using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_HangMucBaoTri : System.Web.UI.Page
{
    DataUtil data = new DataUtil();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label2.Text = "DataList Choose";
    }
    protected void DataList1_ItemDataBound(object sender, DataListItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item ||
             e.Item.ItemType == ListItemType.AlternatingItem)
        {
            // Retrieve the Label control in the current DataListItem.
            Label BoPhanLabel = (Label)e.Item.FindControl("bophanLabel");
            for (int i = 0; i < data.dsBoPhan().Count; i++)
            {
                if (data.dsBoPhan()[i].Id.ToString() == BoPhanLabel.Text)
                {
                    BoPhanLabel.Text = data.dsBoPhan()[i].Tenbophan;
                }
            }
        }
    }
}