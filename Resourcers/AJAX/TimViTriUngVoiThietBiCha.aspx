<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TimViTriUngVoiThietBiCha.aspx.cs" Inherits="Resourcers_AJAX_TimViTriUngVoiThietBiCha" %>
<% 
    DataUtil data = new DataUtil();
    string mathietbicha, mavitrithietbicha;
    mathietbicha = Request.QueryString["mathietbicha"];
    mavitrithietbicha = "";
    for (int i = 0; i < data.dsThietBi().Count; i++)
    {
        if (data.dsThietBi()[i].Matb == Int32.Parse(mathietbicha))
        {
            mavitrithietbicha = data.dsThietBi()[i].Vitri.ToString();
        }
    }    
    %>
<%= mavitrithietbicha %>
