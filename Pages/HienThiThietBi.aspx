<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="HienThiThietBi.aspx.cs" Inherits="Pages_HienThiThietBi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="width: 100px; height:50px;"></div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="matb" DataSourceID="SqlDataSource1" 
        AutoGenerateSelectButton="True" 
        onselectedindexchanging="GridView1_SelectedIndexChanging">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" />
            <asp:BoundField DataField="matb" HeaderText="Mã thiết bị" ReadOnly="True" 
                SortExpression="matb" />
            <asp:BoundField DataField="tentb" HeaderText="Tên" SortExpression="tentb" />
            <asp:BoundField DataField="loaitb" HeaderText="Loại" 
                SortExpression="loaitb" />
            <asp:BoundField DataField="phongban" HeaderText="Phòng ban" 
                SortExpression="phongban" />
            <asp:BoundField DataField="ngaynhap" HeaderText="Ngày nhập" 
                SortExpression="ngaynhap" />
            <asp:BoundField DataField="tinhtrang" HeaderText="Tình trạng" 
                SortExpression="tinhtrang" />
            <asp:BoundField DataField="thongsokythuat" HeaderText="Thông số kỹ thuật" 
                SortExpression="thongsokythuat" />
            <asp:BoundField DataField="giathanh" HeaderText="Giá thành" 
                SortExpression="giathanh" />
            <asp:BoundField DataField="vitri" HeaderText="Vị trí" SortExpression="vitri" />
            <asp:BoundField DataField="linhvuc" HeaderText="Lĩnh vực" 
                SortExpression="linhvuc" />
            <asp:BoundField DataField="NCC" HeaderText="Nhà cung cấp" SortExpression="NCC" />
            <asp:BoundField DataField="phieumuahang" HeaderText="Phiếu mua hàng" 
                SortExpression="phieumuahang" />
            <asp:BoundField DataField="nhapkho" HeaderText="Nhập kho" 
                SortExpression="nhapkho" />
            <asp:BoundField DataField="huhong" HeaderText="Hư hỏng" 
                SortExpression="huhong" />
            <asp:BoundField DataField="nguoiduyet" HeaderText="Người duyệt" 
                SortExpression="nguoiduyet" />
            <asp:BoundField DataField="ngayduyet" HeaderText="Ngày duyệt" 
                SortExpression="ngayduyet" />
            <asp:BoundField DataField="thoihanbaohanh" HeaderText="Bảo hành thiết bị" 
                SortExpression="thoihanbaohanh" />
            <asp:BoundField DataField="tinhtrangthanhtoan" HeaderText="Tình trạng thanh toán" 
                SortExpression="tinhtrangthanhtoan" />
            <asp:BoundField DataField="thietbicha" HeaderText="Thiết bị cha" 
                SortExpression="thietbicha" />
            <asp:BoundField DataField="capcaythumuc" HeaderText="Cây thư mục" 
                SortExpression="capcaythumuc" />
            <asp:BoundField DataField="nhasanxuat" HeaderText="Nhà sản xuất" 
                SortExpression="nhasanxuat" />
            <asp:BoundField DataField="nuocsanxuat" HeaderText="Nước sản xuất" 
                SortExpression="nuocsanxuat" />
            <asp:BoundField DataField="serial" HeaderText="Serial" 
                SortExpression="serial" />
            <asp:BoundField DataField="model" HeaderText="Model" SortExpression="model" />
            <asp:BoundField DataField="ngaylapdat" HeaderText="Ngày lắp đặt" 
                SortExpression="ngaylapdat" />
            <asp:BoundField DataField="ngaymua" HeaderText="Ngày mua" 
                SortExpression="ngaymua" />
            <asp:BoundField DataField="linkimage" HeaderText="Ảnh" 
                SortExpression="linkimage" />
            <asp:BoundField DataField="imagedescription" HeaderText="Ghi chú" 
                SortExpression="imagedescription" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:QLThietBiConnectionString %>" 
        DeleteCommand="DELETE FROM [tblthietbi] WHERE [matb] = @matb" 
        InsertCommand="INSERT INTO [tblthietbi] ([matb], [tentb], [loaitb], [phongban], [ngaynhap], [tinhtrang], [thongsokythuat], [giathanh], [vitri], [linhvuc], [NCC], [phieumuahang], [nhapkho], [huhong], [nguoiduyet], [ngayduyet], [thoihanbaohanh], [tinhtrangthanhtoan], [thietbicha], [capcaythumuc], [nhasanxuat], [nuocsanxuat], [serial], [model], [ngaylapdat], [ngaymua], [linkimage], [imagedescription]) VALUES (@matb, @tentb, @loaitb, @phongban, @ngaynhap, @tinhtrang, @thongsokythuat, @giathanh, @vitri, @linhvuc, @NCC, @phieumuahang, @nhapkho, @huhong, @nguoiduyet, @ngayduyet, @thoihanbaohanh, @tinhtrangthanhtoan, @thietbicha, @capcaythumuc, @nhasanxuat, @nuocsanxuat, @serial, @model, @ngaylapdat, @ngaymua, @linkimage, @imagedescription)" 
        SelectCommand="SELECT * FROM [tblthietbi]" 
        UpdateCommand="UPDATE [tblthietbi] SET [tentb] = @tentb, [loaitb] = @loaitb, [phongban] = @phongban, [ngaynhap] = @ngaynhap, [tinhtrang] = @tinhtrang, [thongsokythuat] = @thongsokythuat, [giathanh] = @giathanh, [vitri] = @vitri, [linhvuc] = @linhvuc, [NCC] = @NCC, [phieumuahang] = @phieumuahang, [nhapkho] = @nhapkho, [huhong] = @huhong, [nguoiduyet] = @nguoiduyet, [ngayduyet] = @ngayduyet, [thoihanbaohanh] = @thoihanbaohanh, [tinhtrangthanhtoan] = @tinhtrangthanhtoan, [thietbicha] = @thietbicha, [capcaythumuc] = @capcaythumuc, [nhasanxuat] = @nhasanxuat, [nuocsanxuat] = @nuocsanxuat, [serial] = @serial, [model] = @model, [ngaylapdat] = @ngaylapdat, [ngaymua] = @ngaymua, [linkimage] = @linkimage, [imagedescription] = @imagedescription WHERE [matb] = @matb">
        <DeleteParameters>
            <asp:Parameter Name="matb" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="matb" Type="Int32" />
            <asp:Parameter Name="tentb" Type="String" />
            <asp:Parameter Name="loaitb" Type="Int32" />
            <asp:Parameter Name="phongban" Type="Int32" />
            <asp:Parameter DbType="Date" Name="ngaynhap" />
            <asp:Parameter Name="tinhtrang" Type="String" />
            <asp:Parameter Name="thongsokythuat" Type="String" />
            <asp:Parameter Name="giathanh" Type="Double" />
            <asp:Parameter Name="vitri" Type="Int32" />
            <asp:Parameter Name="linhvuc" Type="Int32" />
            <asp:Parameter Name="NCC" Type="String" />
            <asp:Parameter Name="phieumuahang" Type="String" />
            <asp:Parameter Name="nhapkho" Type="String" />
            <asp:Parameter Name="huhong" Type="String" />
            <asp:Parameter Name="nguoiduyet" Type="String" />
            <asp:Parameter DbType="Date" Name="ngayduyet" />
            <asp:Parameter Name="thoihanbaohanh" Type="String" />
            <asp:Parameter Name="tinhtrangthanhtoan" Type="String" />
            <asp:Parameter Name="thietbicha" Type="Int32" />
            <asp:Parameter Name="capcaythumuc" Type="Int32" />
            <asp:Parameter Name="nhasanxuat" Type="String" />
            <asp:Parameter Name="nuocsanxuat" Type="String" />
            <asp:Parameter Name="serial" Type="String" />
            <asp:Parameter Name="model" Type="String" />
            <asp:Parameter Name="ngaylapdat" Type="DateTime" />
            <asp:Parameter Name="ngaymua" Type="DateTime" />
            <asp:Parameter Name="linkimage" Type="String" />
            <asp:Parameter Name="imagedescription" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="tentb" Type="String" />
            <asp:Parameter Name="loaitb" Type="Int32" />
            <asp:Parameter Name="phongban" Type="Int32" />
            <asp:Parameter DbType="Date" Name="ngaynhap" />
            <asp:Parameter Name="tinhtrang" Type="String" />
            <asp:Parameter Name="thongsokythuat" Type="String" />
            <asp:Parameter Name="giathanh" Type="Double" />
            <asp:Parameter Name="vitri" Type="Int32" />
            <asp:Parameter Name="linhvuc" Type="Int32" />
            <asp:Parameter Name="NCC" Type="String" />
            <asp:Parameter Name="phieumuahang" Type="String" />
            <asp:Parameter Name="nhapkho" Type="String" />
            <asp:Parameter Name="huhong" Type="String" />
            <asp:Parameter Name="nguoiduyet" Type="String" />
            <asp:Parameter DbType="Date" Name="ngayduyet" />
            <asp:Parameter Name="thoihanbaohanh" Type="String" />
            <asp:Parameter Name="tinhtrangthanhtoan" Type="String" />
            <asp:Parameter Name="thietbicha" Type="Int32" />
            <asp:Parameter Name="capcaythumuc" Type="Int32" />
            <asp:Parameter Name="nhasanxuat" Type="String" />
            <asp:Parameter Name="nuocsanxuat" Type="String" />
            <asp:Parameter Name="serial" Type="String" />
            <asp:Parameter Name="model" Type="String" />
            <asp:Parameter Name="ngaylapdat" Type="DateTime" />
            <asp:Parameter Name="ngaymua" Type="DateTime" />
            <asp:Parameter Name="linkimage" Type="String" />
            <asp:Parameter Name="imagedescription" Type="String" />
            <asp:Parameter Name="matb" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

