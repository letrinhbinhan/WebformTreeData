<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DanhSachThietBi.aspx.cs" Inherits="Pages_DanhSachThietBi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="hienthithietbi">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="matb" DataSourceID="SqlDataSource1" EnableModelValidation="True" OnDataBound="GridView1_DataBound" OnRowDataBound="GridView1_RowDataBound">
        <Columns>
            <asp:BoundField DataField="matb" HeaderText="Mã thiết bị" ReadOnly="True" SortExpression="matb" />
            <asp:BoundField DataField="tentb" HeaderText="Tên thiết bị" SortExpression="tentb" />
            <asp:BoundField DataField="phongban" HeaderText="Phòng ban" SortExpression="phongban" />
            <asp:BoundField DataField="ngaynhap" HeaderText="Ngày nhập" SortExpression="ngaynhap" />
            <asp:BoundField DataField="thongsokythuat" HeaderText="Thông số kỹ thuật" SortExpression="thongsokythuat" />
            <asp:BoundField DataField="giathanh" HeaderText="Gía" SortExpression="giathanh" />
            <asp:BoundField DataField="phieumuahang" HeaderText="Phiếu mua hàng" SortExpression="phieumuahang" />
            <asp:BoundField DataField="thoihanbaohanh" HeaderText="Thời gian bảo hành" SortExpression="thoihanbaohanh" />
            <asp:BoundField DataField="thietbicha" HeaderText="Thiết bị cha" SortExpression="thietbicha" />
            <asp:BoundField DataField="serial" HeaderText="Serial" SortExpression="serial" />
            <asp:BoundField DataField="model" HeaderText="Model" SortExpression="model" />
            <asp:BoundField DataField="linkimage" HeaderText="Link image" SortExpression="linkimage" />
            <asp:BoundField DataField="imagedescription" HeaderText="Image Description" SortExpression="imagedescription" />
            <asp:BoundField DataField="chitietbangbaogia" HeaderText="Chi tiết bảng báo giá" SortExpression="chitietbangbaogia" />
            <asp:BoundField DataField="maql" HeaderText="Mã hệ thống" SortExpression="maql" />
        </Columns>
    </asp:GridView>
        <asp:HyperLink ID="HyperLink1" runat="server">HyperLink</asp:HyperLink>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLThietBiMayTinhTungPhongBanConnectionString2 %>" SelectCommand="SELECT * FROM [tblthietbi]"></asp:SqlDataSource>
    </div>
</asp:Content>

