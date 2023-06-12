<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ThemThietBiThanhCong.aspx.cs" Inherits="Pages_ThemThietBiThanhCong" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="themthietbithanhcong">
        <h1 class="themthietbititle titlethanhcong">Theâm thieát bò</h1>
        <p>Đã thêm thành công thiết bị <%= tenthietbi %> <%= mathietbi %>. Vui lòng quay lại để thêm thiết bị mới <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Pages/ThemThietBiManual.aspx" CssClass="hplquayve">quay về</asp:HyperLink>.</p>
        <hr />
        <p class="bottomdecription">Cảm ơn bạn đã sử dụng dịch vụ của Quản lý thiết bị dạng cây thư mục 1.0 2023.</p>
    </div>
</asp:Content>