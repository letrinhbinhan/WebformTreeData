<%@ Page Language="C#" AutoEventWireup="true" CodeFile="QuanLyThietBi.aspx.cs" Inherits="Pages_QuanLyThietBi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Quản lý thiết bị</title>
    <link href="../Styles/qlthietbi.css" rel="stylesheet" />    
</head>
<body>
    <div class="top-header">
        <img id="ctl00_Image5" class="logo-header" src="../Resourcers/Images/logo-vietsugar.png" style="border-width:0px;">
        <div class="header-menu"><h1>QUẢN LÝ THIẾT BỊ - BẢO TRÌ</h1></div>        
    </div>
    <form runat="server">    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="matb" DataSourceID="SqlDataSource1" EnableModelValidation="True" OnRowDataBound="GridView1_RowDataBound" CssClass="QuanLyThietBiGridView" AllowPaging="True" AllowSorting="True">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="matb" HeaderText="Mã thiết bị" ReadOnly="True" SortExpression="matb" />
                <asp:BoundField DataField="tentb" HeaderText="Tên thiết bị" SortExpression="tentb" />
                <asp:BoundField DataField="loaitb" HeaderText="Loại thiết bị" SortExpression="loaitb" />
                <asp:BoundField DataField="phongban" HeaderText="Phòng ban" SortExpression="phongban" />
                <asp:BoundField DataField="ngaynhap" HeaderText="Ngày nhập" SortExpression="ngaynhap" />
                <asp:BoundField DataField="tinhtrang" HeaderText="Tình trạng" SortExpression="tinhtrang" />
                <asp:BoundField DataField="thongsokythuat" HeaderText="Thông số kỹ thuật" SortExpression="thongsokythuat" />
                <asp:BoundField DataField="giathanh" HeaderText="Giá thành" SortExpression="giathanh" />
                <asp:BoundField DataField="vitri" HeaderText="Vị trí" SortExpression="vitri" />
                <asp:BoundField DataField="NCC" HeaderText="Nhà cung cấp" SortExpression="NCC" />
                <asp:BoundField DataField="phieumuahang" HeaderText="Phiếu mua hàng" SortExpression="phieumuahang" />
                <asp:BoundField DataField="huhong" HeaderText="Hư hỏng" SortExpression="huhong" />
                <asp:BoundField DataField="nguoiduyet" HeaderText="Người duyệt" SortExpression="nguoiduyet" />
                <asp:BoundField DataField="ngayduyet" HeaderText="Ngày duyệt" SortExpression="ngayduyet" />
                <asp:BoundField DataField="thoihanbaohanh" HeaderText="Thời hạn bảo hành" SortExpression="thoihanbaohanh" />
                <asp:BoundField DataField="thietbicha" HeaderText="Thiết bị cha" SortExpression="thietbicha" />
                <asp:BoundField DataField="capcaythumuc" HeaderText="Cấp cây thư mục" SortExpression="capcaythumuc" />
                <asp:BoundField DataField="nhasanxuat" HeaderText="Nhà sản xuất" SortExpression="nhasanxuat" />
                <asp:BoundField DataField="nuocsanxuat" HeaderText="Nước sản xuất" SortExpression="nuocsanxuat" />
                <asp:BoundField DataField="serial" HeaderText="Serial" SortExpression="serial" />
                <asp:BoundField DataField="model" HeaderText="Model" SortExpression="model" />
                <asp:BoundField DataField="ngaylapdat" HeaderText="Ngày lắp đặt" SortExpression="ngaylapdat" />
                <asp:BoundField DataField="ngaymua" HeaderText="Ngày mua" SortExpression="ngaymua" />
                <asp:BoundField DataField="linkimage" HeaderText="Link image" SortExpression="linkimage" />
                <asp:BoundField DataField="imagedescription" HeaderText="Image Description" SortExpression="imagedescription" />
                <asp:BoundField DataField="chitietbangbaogia" HeaderText="Chi tiết bảng báo giá" SortExpression="chitietbangbaogia" />
                <asp:BoundField DataField="maql" HeaderText="Mã quản lý" SortExpression="maql" />
                <asp:BoundField DataField="phieunhapkho" HeaderText="Phiếu nhập kho" SortExpression="phieunhapkho" />
                <asp:BoundField DataField="linhvucsudung" HeaderText="Lĩnh vực sử dụng" SortExpression="linhvucsudung" />
                <asp:BoundField DataField="donvitiente" HeaderText="Đơn vị tiến tệ" SortExpression="donvitiente" />
                <asp:CheckBoxField DataField="lathietbigoc" HeaderText="Là thiết bị gốc" SortExpression="lathietbigoc" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:QLThietBiMayTinhTungPhongBanConnectionString2 %>" DeleteCommand="DELETE FROM [tblthietbi] WHERE [matb] = @original_matb AND (([tentb] = @original_tentb) OR ([tentb] IS NULL AND @original_tentb IS NULL)) AND (([loaitb] = @original_loaitb) OR ([loaitb] IS NULL AND @original_loaitb IS NULL)) AND (([phongban] = @original_phongban) OR ([phongban] IS NULL AND @original_phongban IS NULL)) AND (([ngaynhap] = @original_ngaynhap) OR ([ngaynhap] IS NULL AND @original_ngaynhap IS NULL)) AND (([tinhtrang] = @original_tinhtrang) OR ([tinhtrang] IS NULL AND @original_tinhtrang IS NULL)) AND (([thongsokythuat] = @original_thongsokythuat) OR ([thongsokythuat] IS NULL AND @original_thongsokythuat IS NULL)) AND (([giathanh] = @original_giathanh) OR ([giathanh] IS NULL AND @original_giathanh IS NULL)) AND (([vitri] = @original_vitri) OR ([vitri] IS NULL AND @original_vitri IS NULL)) AND (([NCC] = @original_NCC) OR ([NCC] IS NULL AND @original_NCC IS NULL)) AND (([phieumuahang] = @original_phieumuahang) OR ([phieumuahang] IS NULL AND @original_phieumuahang IS NULL)) AND (([huhong] = @original_huhong) OR ([huhong] IS NULL AND @original_huhong IS NULL)) AND (([nguoiduyet] = @original_nguoiduyet) OR ([nguoiduyet] IS NULL AND @original_nguoiduyet IS NULL)) AND (([ngayduyet] = @original_ngayduyet) OR ([ngayduyet] IS NULL AND @original_ngayduyet IS NULL)) AND (([thoihanbaohanh] = @original_thoihanbaohanh) OR ([thoihanbaohanh] IS NULL AND @original_thoihanbaohanh IS NULL)) AND (([thietbicha] = @original_thietbicha) OR ([thietbicha] IS NULL AND @original_thietbicha IS NULL)) AND (([capcaythumuc] = @original_capcaythumuc) OR ([capcaythumuc] IS NULL AND @original_capcaythumuc IS NULL)) AND (([nhasanxuat] = @original_nhasanxuat) OR ([nhasanxuat] IS NULL AND @original_nhasanxuat IS NULL)) AND (([nuocsanxuat] = @original_nuocsanxuat) OR ([nuocsanxuat] IS NULL AND @original_nuocsanxuat IS NULL)) AND (([serial] = @original_serial) OR ([serial] IS NULL AND @original_serial IS NULL)) AND (([model] = @original_model) OR ([model] IS NULL AND @original_model IS NULL)) AND (([ngaylapdat] = @original_ngaylapdat) OR ([ngaylapdat] IS NULL AND @original_ngaylapdat IS NULL)) AND (([ngaymua] = @original_ngaymua) OR ([ngaymua] IS NULL AND @original_ngaymua IS NULL)) AND (([linkimage] = @original_linkimage) OR ([linkimage] IS NULL AND @original_linkimage IS NULL)) AND (([imagedescription] = @original_imagedescription) OR ([imagedescription] IS NULL AND @original_imagedescription IS NULL)) AND (([chitietbangbaogia] = @original_chitietbangbaogia) OR ([chitietbangbaogia] IS NULL AND @original_chitietbangbaogia IS NULL)) AND (([maql] = @original_maql) OR ([maql] IS NULL AND @original_maql IS NULL)) AND (([phieunhapkho] = @original_phieunhapkho) OR ([phieunhapkho] IS NULL AND @original_phieunhapkho IS NULL)) AND (([linhvucsudung] = @original_linhvucsudung) OR ([linhvucsudung] IS NULL AND @original_linhvucsudung IS NULL)) AND (([donvitiente] = @original_donvitiente) OR ([donvitiente] IS NULL AND @original_donvitiente IS NULL)) AND (([lathietbigoc] = @original_lathietbigoc) OR ([lathietbigoc] IS NULL AND @original_lathietbigoc IS NULL))" InsertCommand="INSERT INTO [tblthietbi] ([matb], [tentb], [loaitb], [phongban], [ngaynhap], [tinhtrang], [thongsokythuat], [giathanh], [vitri], [NCC], [phieumuahang], [huhong], [nguoiduyet], [ngayduyet], [thoihanbaohanh], [thietbicha], [capcaythumuc], [nhasanxuat], [nuocsanxuat], [serial], [model], [ngaylapdat], [ngaymua], [linkimage], [imagedescription], [chitietbangbaogia], [maql], [phieunhapkho], [linhvucsudung], [donvitiente], [lathietbigoc]) VALUES (@matb, @tentb, @loaitb, @phongban, @ngaynhap, @tinhtrang, @thongsokythuat, @giathanh, @vitri, @NCC, @phieumuahang, @huhong, @nguoiduyet, @ngayduyet, @thoihanbaohanh, @thietbicha, @capcaythumuc, @nhasanxuat, @nuocsanxuat, @serial, @model, @ngaylapdat, @ngaymua, @linkimage, @imagedescription, @chitietbangbaogia, @maql, @phieunhapkho, @linhvucsudung, @donvitiente, @lathietbigoc)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tblthietbi]" UpdateCommand="UPDATE [tblthietbi] SET [tentb] = @tentb, [loaitb] = @loaitb, [phongban] = @phongban, [ngaynhap] = @ngaynhap, [tinhtrang] = @tinhtrang, [thongsokythuat] = @thongsokythuat, [giathanh] = @giathanh, [vitri] = @vitri, [NCC] = @NCC, [phieumuahang] = @phieumuahang, [huhong] = @huhong, [nguoiduyet] = @nguoiduyet, [ngayduyet] = @ngayduyet, [thoihanbaohanh] = @thoihanbaohanh, [thietbicha] = @thietbicha, [capcaythumuc] = @capcaythumuc, [nhasanxuat] = @nhasanxuat, [nuocsanxuat] = @nuocsanxuat, [serial] = @serial, [model] = @model, [ngaylapdat] = @ngaylapdat, [ngaymua] = @ngaymua, [linkimage] = @linkimage, [imagedescription] = @imagedescription, [chitietbangbaogia] = @chitietbangbaogia, [maql] = @maql, [phieunhapkho] = @phieunhapkho, [linhvucsudung] = @linhvucsudung, [donvitiente] = @donvitiente, [lathietbigoc] = @lathietbigoc WHERE [matb] = @original_matb AND (([tentb] = @original_tentb) OR ([tentb] IS NULL AND @original_tentb IS NULL)) AND (([loaitb] = @original_loaitb) OR ([loaitb] IS NULL AND @original_loaitb IS NULL)) AND (([phongban] = @original_phongban) OR ([phongban] IS NULL AND @original_phongban IS NULL)) AND (([ngaynhap] = @original_ngaynhap) OR ([ngaynhap] IS NULL AND @original_ngaynhap IS NULL)) AND (([tinhtrang] = @original_tinhtrang) OR ([tinhtrang] IS NULL AND @original_tinhtrang IS NULL)) AND (([thongsokythuat] = @original_thongsokythuat) OR ([thongsokythuat] IS NULL AND @original_thongsokythuat IS NULL)) AND (([giathanh] = @original_giathanh) OR ([giathanh] IS NULL AND @original_giathanh IS NULL)) AND (([vitri] = @original_vitri) OR ([vitri] IS NULL AND @original_vitri IS NULL)) AND (([NCC] = @original_NCC) OR ([NCC] IS NULL AND @original_NCC IS NULL)) AND (([phieumuahang] = @original_phieumuahang) OR ([phieumuahang] IS NULL AND @original_phieumuahang IS NULL)) AND (([huhong] = @original_huhong) OR ([huhong] IS NULL AND @original_huhong IS NULL)) AND (([nguoiduyet] = @original_nguoiduyet) OR ([nguoiduyet] IS NULL AND @original_nguoiduyet IS NULL)) AND (([ngayduyet] = @original_ngayduyet) OR ([ngayduyet] IS NULL AND @original_ngayduyet IS NULL)) AND (([thoihanbaohanh] = @original_thoihanbaohanh) OR ([thoihanbaohanh] IS NULL AND @original_thoihanbaohanh IS NULL)) AND (([thietbicha] = @original_thietbicha) OR ([thietbicha] IS NULL AND @original_thietbicha IS NULL)) AND (([capcaythumuc] = @original_capcaythumuc) OR ([capcaythumuc] IS NULL AND @original_capcaythumuc IS NULL)) AND (([nhasanxuat] = @original_nhasanxuat) OR ([nhasanxuat] IS NULL AND @original_nhasanxuat IS NULL)) AND (([nuocsanxuat] = @original_nuocsanxuat) OR ([nuocsanxuat] IS NULL AND @original_nuocsanxuat IS NULL)) AND (([serial] = @original_serial) OR ([serial] IS NULL AND @original_serial IS NULL)) AND (([model] = @original_model) OR ([model] IS NULL AND @original_model IS NULL)) AND (([ngaylapdat] = @original_ngaylapdat) OR ([ngaylapdat] IS NULL AND @original_ngaylapdat IS NULL)) AND (([ngaymua] = @original_ngaymua) OR ([ngaymua] IS NULL AND @original_ngaymua IS NULL)) AND (([linkimage] = @original_linkimage) OR ([linkimage] IS NULL AND @original_linkimage IS NULL)) AND (([imagedescription] = @original_imagedescription) OR ([imagedescription] IS NULL AND @original_imagedescription IS NULL)) AND (([chitietbangbaogia] = @original_chitietbangbaogia) OR ([chitietbangbaogia] IS NULL AND @original_chitietbangbaogia IS NULL)) AND (([maql] = @original_maql) OR ([maql] IS NULL AND @original_maql IS NULL)) AND (([phieunhapkho] = @original_phieunhapkho) OR ([phieunhapkho] IS NULL AND @original_phieunhapkho IS NULL)) AND (([linhvucsudung] = @original_linhvucsudung) OR ([linhvucsudung] IS NULL AND @original_linhvucsudung IS NULL)) AND (([donvitiente] = @original_donvitiente) OR ([donvitiente] IS NULL AND @original_donvitiente IS NULL)) AND (([lathietbigoc] = @original_lathietbigoc) OR ([lathietbigoc] IS NULL AND @original_lathietbigoc IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_matb" Type="Int32" />
                <asp:Parameter Name="original_tentb" Type="String" />
                <asp:Parameter Name="original_loaitb" Type="Int32" />
                <asp:Parameter Name="original_phongban" Type="Int32" />
                <asp:Parameter DbType="Date" Name="original_ngaynhap" />
                <asp:Parameter Name="original_tinhtrang" Type="String" />
                <asp:Parameter Name="original_thongsokythuat" Type="String" />
                <asp:Parameter Name="original_giathanh" Type="Double" />
                <asp:Parameter Name="original_vitri" Type="Int32" />
                <asp:Parameter Name="original_NCC" Type="String" />
                <asp:Parameter Name="original_phieumuahang" Type="String" />
                <asp:Parameter Name="original_huhong" Type="String" />
                <asp:Parameter Name="original_nguoiduyet" Type="String" />
                <asp:Parameter DbType="Date" Name="original_ngayduyet" />
                <asp:Parameter Name="original_thoihanbaohanh" Type="String" />
                <asp:Parameter Name="original_thietbicha" Type="Int32" />
                <asp:Parameter Name="original_capcaythumuc" Type="Int32" />
                <asp:Parameter Name="original_nhasanxuat" Type="String" />
                <asp:Parameter Name="original_nuocsanxuat" Type="String" />
                <asp:Parameter Name="original_serial" Type="String" />
                <asp:Parameter Name="original_model" Type="String" />
                <asp:Parameter Name="original_ngaylapdat" Type="DateTime" />
                <asp:Parameter Name="original_ngaymua" Type="DateTime" />
                <asp:Parameter Name="original_linkimage" Type="String" />
                <asp:Parameter Name="original_imagedescription" Type="String" />
                <asp:Parameter Name="original_chitietbangbaogia" Type="Int32" />
                <asp:Parameter Name="original_maql" Type="String" />
                <asp:Parameter Name="original_phieunhapkho" Type="String" />
                <asp:Parameter Name="original_linhvucsudung" Type="String" />
                <asp:Parameter Name="original_donvitiente" Type="String" />
                <asp:Parameter Name="original_lathietbigoc" Type="Boolean" />
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
                <asp:Parameter Name="NCC" Type="String" />
                <asp:Parameter Name="phieumuahang" Type="String" />
                <asp:Parameter Name="huhong" Type="String" />
                <asp:Parameter Name="nguoiduyet" Type="String" />
                <asp:Parameter DbType="Date" Name="ngayduyet" />
                <asp:Parameter Name="thoihanbaohanh" Type="String" />
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
                <asp:Parameter Name="chitietbangbaogia" Type="Int32" />
                <asp:Parameter Name="maql" Type="String" />
                <asp:Parameter Name="phieunhapkho" Type="String" />
                <asp:Parameter Name="linhvucsudung" Type="String" />
                <asp:Parameter Name="donvitiente" Type="String" />
                <asp:Parameter Name="lathietbigoc" Type="Boolean" />
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
                <asp:Parameter Name="NCC" Type="String" />
                <asp:Parameter Name="phieumuahang" Type="String" />
                <asp:Parameter Name="huhong" Type="String" />
                <asp:Parameter Name="nguoiduyet" Type="String" />
                <asp:Parameter DbType="Date" Name="ngayduyet" />
                <asp:Parameter Name="thoihanbaohanh" Type="String" />
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
                <asp:Parameter Name="chitietbangbaogia" Type="Int32" />
                <asp:Parameter Name="maql" Type="String" />
                <asp:Parameter Name="phieunhapkho" Type="String" />
                <asp:Parameter Name="linhvucsudung" Type="String" />
                <asp:Parameter Name="donvitiente" Type="String" />
                <asp:Parameter Name="lathietbigoc" Type="Boolean" />
                <asp:Parameter Name="original_matb" Type="Int32" />
                <asp:Parameter Name="original_tentb" Type="String" />
                <asp:Parameter Name="original_loaitb" Type="Int32" />
                <asp:Parameter Name="original_phongban" Type="Int32" />
                <asp:Parameter DbType="Date" Name="original_ngaynhap" />
                <asp:Parameter Name="original_tinhtrang" Type="String" />
                <asp:Parameter Name="original_thongsokythuat" Type="String" />
                <asp:Parameter Name="original_giathanh" Type="Double" />
                <asp:Parameter Name="original_vitri" Type="Int32" />
                <asp:Parameter Name="original_NCC" Type="String" />
                <asp:Parameter Name="original_phieumuahang" Type="String" />
                <asp:Parameter Name="original_huhong" Type="String" />
                <asp:Parameter Name="original_nguoiduyet" Type="String" />
                <asp:Parameter DbType="Date" Name="original_ngayduyet" />
                <asp:Parameter Name="original_thoihanbaohanh" Type="String" />
                <asp:Parameter Name="original_thietbicha" Type="Int32" />
                <asp:Parameter Name="original_capcaythumuc" Type="Int32" />
                <asp:Parameter Name="original_nhasanxuat" Type="String" />
                <asp:Parameter Name="original_nuocsanxuat" Type="String" />
                <asp:Parameter Name="original_serial" Type="String" />
                <asp:Parameter Name="original_model" Type="String" />
                <asp:Parameter Name="original_ngaylapdat" Type="DateTime" />
                <asp:Parameter Name="original_ngaymua" Type="DateTime" />
                <asp:Parameter Name="original_linkimage" Type="String" />
                <asp:Parameter Name="original_imagedescription" Type="String" />
                <asp:Parameter Name="original_chitietbangbaogia" Type="Int32" />
                <asp:Parameter Name="original_maql" Type="String" />
                <asp:Parameter Name="original_phieunhapkho" Type="String" />
                <asp:Parameter Name="original_linhvucsudung" Type="String" />
                <asp:Parameter Name="original_donvitiente" Type="String" />
                <asp:Parameter Name="original_lathietbigoc" Type="Boolean" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Dashboard.aspx">Quay về</asp:HyperLink>
    </form>
</body>
</html>
