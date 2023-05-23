<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Oops.aspx.cs" Inherits="Pages_ErrorPages_Oops" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div>
    <h1 class="errorpage-title">Page Not Found</h1>
    <p class="childerrorpage">The page you requested could not be found.</p>
    <p class="childerrorpage2">Perhaps you would like to visit one of these pages?</p>
    <ul class="erblinkhomepage">
        <li><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Dashboard.aspx">Quản lý thiết bị</asp:HyperLink></li><li><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Pages/ThemThietBi.aspx">Thêm thiết bị</asp:HyperLink></li>
    </ul>
    <div class="oopsfooter">ASP.NET application designed by <span>Scott Mitchell</span>. Website design by <span>John Zaitseff</span>, and available at <span>OpenDesign.org</span>.</div>
    <div class="oopsfooterlogo"><asp:Image ID="Image2" runat="server" CssClass="ASPlogobottom2" ImageUrl="~/Resourcers/Images/PoweredByASP.NET.png" /></div>
    <div class="oopsfooterbackground"></div>
</div>
</asp:Content>

