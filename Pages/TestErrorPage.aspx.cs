using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_TestErrorPage : System.Web.UI.Page
{
    public string thongtin;
    protected void Page_Load(object sender, EventArgs e)
    {
        string RequestID = Request.QueryString["mathetbi"];
        int idch = Int32.Parse(RequestID);
        thongtin = idch.ToString();
    }
}