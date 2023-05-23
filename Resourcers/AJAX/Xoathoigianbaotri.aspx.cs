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
using System.Data.SqlClient;

public partial class Resourcers_AJAX_Xoathoigianbaotri : System.Web.UI.Page
{
    DataUtil data = new DataUtil();
    protected void Page_Load(object sender, EventArgs e)
    {
        string RequestID = Request.QueryString["ID"];
        try
        {
            deleteRow("tblTBBT", "matbbt", RequestID);
        }
        catch
        {
            return;
        }
    }
    public static void deleteRow(string table, string columnName, string IDNumber)
    {
        try
        {
            using (SqlConnection con = new SqlConnection(@"Data Source=AN-PC;Initial Catalog=QLThietBiMayTinhTungPhongBan;User ID=binhan;Password=12345678"))
            {
                con.Open();
                using (SqlCommand command = new SqlCommand("DELETE FROM " + table + " WHERE " + columnName + " = '" + IDNumber + "'", con))
                {
                    command.ExecuteNonQuery();
                }
                con.Close();
            }
        }
        catch {

        }
    }     
}
