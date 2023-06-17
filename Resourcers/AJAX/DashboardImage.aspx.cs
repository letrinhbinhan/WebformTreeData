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

public partial class Resourcers_AJAX_DashboardImage : System.Web.UI.Page
{
    DataUtil data = new DataUtil();
    public string LinkImage = "";
    public string AltImage = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        string RequestID = Request.QueryString["ID"];
        int idch = Convert.ToInt32(RequestID);
        for (int i = 0; i < data.dsThietBi().Count; i++)
        {
            if (data.dsThietBi()[i].Matb == idch)
            {
                LinkImage = data.dsThietBi()[i].Linkimage;
                AltImage = data.dsThietBi()[i].Imagedescription;
            }
        }
        if (LinkImage == "null" || LinkImage == "" || checkExtensionImage(LinkImage) == false)
            LinkImage = "empty.png";
    }
    bool checkExtensionImage(string filename)
    {
        string phrase = filename;
        string[] words = phrase.Split('.');
        if (words[words.Length-1] == "png" || words[words.Length-1] == "jpeg" || words[words.Length-1] == "jpg")
        {
            return true;
        }
        else {
            return false;
        }
    }
}