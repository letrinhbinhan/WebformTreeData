<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="temp.aspx.cs" Inherits="Pages_temp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <%--Request.QueryString check null--%>
    <% string RequestID = Request.QueryString["mathietbi"]; %>
    <% if(Request.QueryString["mathietbi"]==null){ %>
    <%= "QueryString['mathietbi'] is null" %>
    <% } else { %>
    <%= "QueryString['mathietbi'] is not null" %>
    <% } %>
       "&matb=134&tentb=123&loaitb=123&phongban=123&ngaynhap=123&tinhtrang=123&thongsokthuat=123&giathanh=123&vitri=123&NCC=123&phieumuahang=123&huhong=123&nguoiduyet=123&ngayduyet=123&thoihanbaohanh=123&thietbicha=123&capcaythumuc=123&nhasanxuat=123&nuocsanxuat=123&serial=123&model=123&ngaylapdat=123&ngaymua=123&linkimage=123&imagedescription=123&chitietbangbaogia=123&maql=123&phieunhapkho=123&linhvucsudung=123&donvitiente=123&lathietbigoc=123"
</asp:Content>

<%--Request.QueryString[] null khi không có khai báo GET ở thanh trình duyệt--%>
<%--Request.QueryString[] rỗng khi không có giá trị ở thanh trình duyệt--%>

<%--Thiết bị phải được bảo trì bão dưỡng định kỳ.--%>
<%--Khai báo các thông số cơ bản trước sau đó mới đặt lịch bảo trì cho nó.--%>

<%--&mathietbi= 123&loaithietbi=3&phongban=3&ngaynhap=2023-10-10&tenthietbi=mouse&nhacungcap=1&tinhtrang=tot&thoihanbaohanh=2023-10-05&nhasanxuat=Dell&nuocsanxuat=China&serial=12345&model=12345&ngaylapdat=2023-05-05&ngaymua=2023-10-05&maquanly=VSX201--%>