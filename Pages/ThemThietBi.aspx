<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true"
    CodeFile="ThemThietBi.aspx.cs" Inherits="ThemThietBi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h1 class="themthietbititle">
        Theâm thieát bò</h1>
    <asp:Label ID="Label1" runat="server"></asp:Label>

    <%--<asp:TextBox ID="txtEmail" runat="server" Width="150px"></asp:TextBox>
    <br />
    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="150px"></asp:TextBox>
    <br />
    <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" Width="150px"></asp:TextBox>
    <br />
    <asp:TextBox ID="txtFirstName" runat="server" Width="100px"></asp:TextBox>
    <asp:TextBox ID="txtMiddleName" runat="server" Width="100px"></asp:TextBox><asp:TextBox
        ID="txtLastName" runat="server" Width="100px"></asp:TextBox>
    <br />
    <asp:DropDownList ID="DropDownList1" runat="server">
        <asp:ListItem>January</asp:ListItem>
        <asp:ListItem>February</asp:ListItem>
        <asp:ListItem>March</asp:ListItem>
    </asp:DropDownList>
    <asp:DropDownList ID="DropDownList2" runat="server">
        <asp:ListItem Value="-">--</asp:ListItem>
        <asp:ListItem>1</asp:ListItem>
        <asp:ListItem>2</asp:ListItem>
        <asp:ListItem>3</asp:ListItem>
    </asp:DropDownList>
    <asp:TextBox ID="txtYear" runat="server" Width="30px"></asp:TextBox>
    <asp:DropDownList ID="DropDownList3" runat="server">
        <asp:ListItem Value="-">Select One</asp:ListItem>
        <asp:ListItem>Male</asp:ListItem>
        <asp:ListItem>Female</asp:ListItem>
    </asp:DropDownList>
    <font style="font-size: 12px; line-height: 1.22em">
        <br />
        <asp:TextBox ID="txtPhoneNumber" runat="server"></asp:TextBox>
        <br />
    </font>
    <asp:TextBox ID="txtStreet" runat="server"></asp:TextBox>
    <br />
    <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
    <br />
    <asp:TextBox ID="txtProvince" runat="server"></asp:TextBox>
    <br />
    <asp:DropDownList ID="Country" runat="server">
        <asp:ListItem Value="GB">United Kingdom</asp:ListItem>
        <asp:ListItem Value="US">United States</asp:ListItem>
        <asp:ListItem Value="VN">Viet Nam</asp:ListItem>
    </asp:DropDownList>
    <br />
    <asp:TextBox ID="txtPostalCode" runat="server"></asp:TextBox>
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
    <asp:Label ID="Label1" runat="server" Text="1"></asp:Label>--%>
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="matb" DataSourceID="SqlDataSource1" EnableModelValidation="True">
        <EditItemTemplate>
            matb:
            <asp:Label ID="matbLabel1" runat="server" Text='<%# Eval("matb") %>' />
            <br />
            tentb:
            <asp:TextBox ID="tentbTextBox" runat="server" Text='<%# Bind("tentb") %>' />
            <br />
            loaitb:
            <asp:TextBox ID="loaitbTextBox" runat="server" Text='<%# Bind("loaitb") %>' />
            <br />
            phongban:
            <asp:TextBox ID="phongbanTextBox" runat="server" Text='<%# Bind("phongban") %>' />
            <br />
            ngaynhap:
            <asp:TextBox ID="ngaynhapTextBox" runat="server" Text='<%# Bind("ngaynhap") %>' />
            <br />
            tinhtrang:
            <asp:TextBox ID="tinhtrangTextBox" runat="server" Text='<%# Bind("tinhtrang") %>' />
            <br />
            thongsokythuat:
            <asp:TextBox ID="thongsokythuatTextBox" runat="server" Text='<%# Bind("thongsokythuat") %>' />
            <br />
            giathanh:
            <asp:TextBox ID="giathanhTextBox" runat="server" Text='<%# Bind("giathanh") %>' />
            <br />
            vitri:
            <asp:TextBox ID="vitriTextBox" runat="server" Text='<%# Bind("vitri") %>' />
            <br />
            NCC:
            <asp:TextBox ID="NCCTextBox" runat="server" Text='<%# Bind("NCC") %>' />
            <br />
            phieumuahang:
            <asp:TextBox ID="phieumuahangTextBox" runat="server" Text='<%# Bind("phieumuahang") %>' />
            <br />
            huhong:
            <asp:TextBox ID="huhongTextBox" runat="server" Text='<%# Bind("huhong") %>' />
            <br />
            nguoiduyet:
            <asp:TextBox ID="nguoiduyetTextBox" runat="server" Text='<%# Bind("nguoiduyet") %>' />
            <br />
            ngayduyet:
            <asp:TextBox ID="ngayduyetTextBox" runat="server" Text='<%# Bind("ngayduyet") %>' />
            <br />
            thoihanbaohanh:
            <asp:TextBox ID="thoihanbaohanhTextBox" runat="server" Text='<%# Bind("thoihanbaohanh") %>' />
            <br />
            thietbicha:
            <asp:TextBox ID="thietbichaTextBox" runat="server" Text='<%# Bind("thietbicha") %>' />
            <br />
            capcaythumuc:
            <asp:TextBox ID="capcaythumucTextBox" runat="server" Text='<%# Bind("capcaythumuc") %>' />
            <br />
            nhasanxuat:
            <asp:TextBox ID="nhasanxuatTextBox" runat="server" Text='<%# Bind("nhasanxuat") %>' />
            <br />
            nuocsanxuat:
            <asp:TextBox ID="nuocsanxuatTextBox" runat="server" Text='<%# Bind("nuocsanxuat") %>' />
            <br />
            serial:
            <asp:TextBox ID="serialTextBox" runat="server" Text='<%# Bind("serial") %>' />
            <br />
            model:
            <asp:TextBox ID="modelTextBox" runat="server" Text='<%# Bind("model") %>' />
            <br />
            ngaylapdat:
            <asp:TextBox ID="ngaylapdatTextBox" runat="server" Text='<%# Bind("ngaylapdat") %>' />
            <br />
            ngaymua:
            <asp:TextBox ID="ngaymuaTextBox" runat="server" Text='<%# Bind("ngaymua") %>' />
            <br />
            linkimage:
            <asp:TextBox ID="linkimageTextBox" runat="server" Text='<%# Bind("linkimage") %>' />
            <br />
            imagedescription:
            <asp:TextBox ID="imagedescriptionTextBox" runat="server" Text='<%# Bind("imagedescription") %>' />
            <br />
            chitietbangbaogia:
            <asp:TextBox ID="chitietbangbaogiaTextBox" runat="server" Text='<%# Bind("chitietbangbaogia") %>' />
            <br />
            maql:
            <asp:TextBox ID="maqlTextBox" runat="server" Text='<%# Bind("maql") %>' />
            <br />
            phieunhapkho:
            <asp:TextBox ID="phieunhapkhoTextBox" runat="server" Text='<%# Bind("phieunhapkho") %>' />
            <br />
            linhvucsudung:
            <asp:TextBox ID="linhvucsudungTextBox" runat="server" Text='<%# Bind("linhvucsudung") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            Mã Thiết bị:
            <asp:TextBox ID="matbTextBox" runat="server" Text='<%# Bind("matb") %>' />
            <br />
            Tên thiết bị:
            <asp:TextBox ID="tentbTextBox" runat="server" Text='<%# Bind("tentb") %>' />
            <br />
            Loại thiết bị:
            <asp:TextBox ID="loaitbTextBox" runat="server" Text='<%# Bind("loaitb") %>' />
            <br />
            Phòng ban:
            <asp:TextBox ID="phongbanTextBox" runat="server" Text='<%# Bind("phongban") %>' />
            <br />
            Ngày nhập:
            <asp:Calendar ID="Calendar1" runat="server" SelectedDate='<%# Bind("ngaynhap") %>'></asp:Calendar>
            <br />
            Tình trạng:
            <asp:TextBox ID="tinhtrangTextBox" runat="server" Text='<%# Bind("tinhtrang") %>' />
            <br />
            Thông số kỹ thuật:
            <asp:TextBox ID="thongsokythuatTextBox" runat="server" Text='<%# Bind("thongsokythuat") %>' />
            <br />
            Giá thành:
            <asp:TextBox ID="giathanhTextBox" runat="server" Text='<%# Bind("giathanh") %>' />
            <br />
            Vị trí:
            <asp:TextBox ID="vitriTextBox" runat="server" Text='<%# Bind("vitri") %>' />
            <br />
            Nhà cung cấp:
            <asp:TextBox ID="NCCTextBox" runat="server" Text='<%# Bind("NCC") %>' />
            <br />
            Phiếu mua hàng:
            <asp:TextBox ID="phieumuahangTextBox" runat="server" Text='<%# Bind("phieumuahang") %>' />
            <br />
            Hư hỏng:
            <asp:TextBox ID="huhongTextBox" runat="server" Text='<%# Bind("huhong") %>' />
            <br />
            Người duyệt:
            <asp:TextBox ID="nguoiduyetTextBox" runat="server" Text='<%# Bind("nguoiduyet") %>' />
            <br />
            Ngày duyệt:
            <asp:Calendar ID="Calendar2" runat="server" SelectedDate='<%# Bind("ngayduyet") %>'></asp:Calendar>
            <br />
            Thời gian bảo hành:
            <asp:TextBox ID="thoihanbaohanhTextBox" runat="server" Text='<%# Bind("thoihanbaohanh") %>' />
            <br />
            Thiết bị cha:
            <asp:TextBox ID="thietbichaTextBox" runat="server" Text='<%# Bind("thietbicha") %>' />
            <br />
            Cấp cây thư mục:
            <asp:TextBox ID="capcaythumucTextBox" runat="server" Text='<%# Bind("capcaythumuc") %>' />
            <br />
            Nhà sản xuất:
            <asp:TextBox ID="nhasanxuatTextBox" runat="server" Text='<%# Bind("nhasanxuat") %>' />
            <br />
            Nước sản xuất:
            <asp:TextBox ID="nuocsanxuatTextBox" runat="server" Text='<%# Bind("nuocsanxuat") %>' />
            <br />
            Serial:
            <asp:TextBox ID="serialTextBox" runat="server" Text='<%# Bind("serial") %>' />
            <br />
            Model:
            <asp:TextBox ID="modelTextBox" runat="server" Text='<%# Bind("model") %>' />
            <br />
            Ngày lắp đặt:
            <asp:Calendar ID="Calendar3" runat="server"></asp:Calendar>
            <br />
            Ngày mua:
            <asp:Calendar ID="Calendar4" runat="server" SelectedDate='<%# Bind("ngaymua") %>'></asp:Calendar>
            <br />
            Linkimage:
            <asp:TextBox ID="linkimageTextBox" runat="server" Text='<%# Bind("linkimage") %>' />
            <br />
            Image Description:
            <asp:TextBox ID="imagedescriptionTextBox" runat="server" Text='<%# Bind("imagedescription") %>' />
            <br />
            Chi tiết bảng báo giá:
            <asp:TextBox ID="chitietbangbaogiaTextBox" runat="server" Text='<%# Bind("chitietbangbaogia") %>' />
            <br />
            Mã quản lý:
            <asp:TextBox ID="maqlTextBox" runat="server" Text='<%# Bind("maql") %>' />
            <br />
            Phiếu nhập kho:
            <asp:TextBox ID="phieunhapkhoTextBox" runat="server" Text='<%# Bind("phieunhapkho") %>' />
            <br />
            Lĩnh vực sử dụng:&nbsp;<asp:TextBox ID="linhvucsudungTextBox" runat="server" Text='<%# Bind("linhvucsudung") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            matb:
            <asp:Label ID="matbLabel" runat="server" Text='<%# Eval("matb") %>' />
            <br />
            tentb:
            <asp:Label ID="tentbLabel" runat="server" Text='<%# Bind("tentb") %>' />
            <br />
            loaitb:
            <asp:Label ID="loaitbLabel" runat="server" Text='<%# Bind("loaitb") %>' />
            <br />
            phongban:
            <asp:Label ID="phongbanLabel" runat="server" Text='<%# Bind("phongban") %>' />
            <br />
            ngaynhap:
            <asp:Label ID="ngaynhapLabel" runat="server" Text='<%# Bind("ngaynhap") %>' />
            <br />
            tinhtrang:
            <asp:Label ID="tinhtrangLabel" runat="server" Text='<%# Bind("tinhtrang") %>' />
            <br />
            thongsokythuat:
            <asp:Label ID="thongsokythuatLabel" runat="server" Text='<%# Bind("thongsokythuat") %>' />
            <br />
            giathanh:
            <asp:Label ID="giathanhLabel" runat="server" Text='<%# Bind("giathanh") %>' />
            <br />
            vitri:
            <asp:Label ID="vitriLabel" runat="server" Text='<%# Bind("vitri") %>' />
            <br />
            NCC:
            <asp:Label ID="NCCLabel" runat="server" Text='<%# Bind("NCC") %>' />
            <br />
            phieumuahang:
            <asp:Label ID="phieumuahangLabel" runat="server" Text='<%# Bind("phieumuahang") %>' />
            <br />
            huhong:
            <asp:Label ID="huhongLabel" runat="server" Text='<%# Bind("huhong") %>' />
            <br />
            nguoiduyet:
            <asp:Label ID="nguoiduyetLabel" runat="server" Text='<%# Bind("nguoiduyet") %>' />
            <br />
            ngayduyet:
            <asp:Label ID="ngayduyetLabel" runat="server" Text='<%# Bind("ngayduyet") %>' />
            <br />
            thoihanbaohanh:
            <asp:Label ID="thoihanbaohanhLabel" runat="server" Text='<%# Bind("thoihanbaohanh") %>' />
            <br />
            thietbicha:
            <asp:Label ID="thietbichaLabel" runat="server" Text='<%# Bind("thietbicha") %>' />
            <br />
            capcaythumuc:
            <asp:Label ID="capcaythumucLabel" runat="server" Text='<%# Bind("capcaythumuc") %>' />
            <br />
            nhasanxuat:
            <asp:Label ID="nhasanxuatLabel" runat="server" Text='<%# Bind("nhasanxuat") %>' />
            <br />
            nuocsanxuat:
            <asp:Label ID="nuocsanxuatLabel" runat="server" Text='<%# Bind("nuocsanxuat") %>' />
            <br />
            serial:
            <asp:Label ID="serialLabel" runat="server" Text='<%# Bind("serial") %>' />
            <br />
            model:
            <asp:Label ID="modelLabel" runat="server" Text='<%# Bind("model") %>' />
            <br />
            ngaylapdat:
            <asp:Label ID="ngaylapdatLabel" runat="server" Text='<%# Bind("ngaylapdat") %>' />
            <br />
            ngaymua:
            <asp:Label ID="ngaymuaLabel" runat="server" Text='<%# Bind("ngaymua") %>' />
            <br />
            linkimage:
            <asp:Label ID="linkimageLabel" runat="server" Text='<%# Bind("linkimage") %>' />
            <br />
            imagedescription:
            <asp:Label ID="imagedescriptionLabel" runat="server" Text='<%# Bind("imagedescription") %>' />
            <br />
            chitietbangbaogia:
            <asp:Label ID="chitietbangbaogiaLabel" runat="server" Text='<%# Bind("chitietbangbaogia") %>' />
            <br />
            maql:
            <asp:Label ID="maqlLabel" runat="server" Text='<%# Bind("maql") %>' />
            <br />
            phieunhapkho:
            <asp:Label ID="phieunhapkhoLabel" runat="server" Text='<%# Bind("phieunhapkho") %>' />
            <br />
            linhvucsudung:
            <asp:Label ID="linhvucsudungLabel" runat="server" Text='<%# Bind("linhvucsudung") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:QLThietBiMayTinhTungPhongBanConnectionString2 %>" DeleteCommand="DELETE FROM [tblthietbi] WHERE [matb] = @original_matb AND (([tentb] = @original_tentb) OR ([tentb] IS NULL AND @original_tentb IS NULL)) AND (([loaitb] = @original_loaitb) OR ([loaitb] IS NULL AND @original_loaitb IS NULL)) AND (([phongban] = @original_phongban) OR ([phongban] IS NULL AND @original_phongban IS NULL)) AND (([ngaynhap] = @original_ngaynhap) OR ([ngaynhap] IS NULL AND @original_ngaynhap IS NULL)) AND (([tinhtrang] = @original_tinhtrang) OR ([tinhtrang] IS NULL AND @original_tinhtrang IS NULL)) AND (([thongsokythuat] = @original_thongsokythuat) OR ([thongsokythuat] IS NULL AND @original_thongsokythuat IS NULL)) AND (([giathanh] = @original_giathanh) OR ([giathanh] IS NULL AND @original_giathanh IS NULL)) AND (([vitri] = @original_vitri) OR ([vitri] IS NULL AND @original_vitri IS NULL)) AND (([NCC] = @original_NCC) OR ([NCC] IS NULL AND @original_NCC IS NULL)) AND (([phieumuahang] = @original_phieumuahang) OR ([phieumuahang] IS NULL AND @original_phieumuahang IS NULL)) AND (([huhong] = @original_huhong) OR ([huhong] IS NULL AND @original_huhong IS NULL)) AND (([nguoiduyet] = @original_nguoiduyet) OR ([nguoiduyet] IS NULL AND @original_nguoiduyet IS NULL)) AND (([ngayduyet] = @original_ngayduyet) OR ([ngayduyet] IS NULL AND @original_ngayduyet IS NULL)) AND (([thoihanbaohanh] = @original_thoihanbaohanh) OR ([thoihanbaohanh] IS NULL AND @original_thoihanbaohanh IS NULL)) AND (([thietbicha] = @original_thietbicha) OR ([thietbicha] IS NULL AND @original_thietbicha IS NULL)) AND (([capcaythumuc] = @original_capcaythumuc) OR ([capcaythumuc] IS NULL AND @original_capcaythumuc IS NULL)) AND (([nhasanxuat] = @original_nhasanxuat) OR ([nhasanxuat] IS NULL AND @original_nhasanxuat IS NULL)) AND (([nuocsanxuat] = @original_nuocsanxuat) OR ([nuocsanxuat] IS NULL AND @original_nuocsanxuat IS NULL)) AND (([serial] = @original_serial) OR ([serial] IS NULL AND @original_serial IS NULL)) AND (([model] = @original_model) OR ([model] IS NULL AND @original_model IS NULL)) AND (([ngaylapdat] = @original_ngaylapdat) OR ([ngaylapdat] IS NULL AND @original_ngaylapdat IS NULL)) AND (([ngaymua] = @original_ngaymua) OR ([ngaymua] IS NULL AND @original_ngaymua IS NULL)) AND (([linkimage] = @original_linkimage) OR ([linkimage] IS NULL AND @original_linkimage IS NULL)) AND (([imagedescription] = @original_imagedescription) OR ([imagedescription] IS NULL AND @original_imagedescription IS NULL)) AND (([chitietbangbaogia] = @original_chitietbangbaogia) OR ([chitietbangbaogia] IS NULL AND @original_chitietbangbaogia IS NULL)) AND (([maql] = @original_maql) OR ([maql] IS NULL AND @original_maql IS NULL)) AND (([phieunhapkho] = @original_phieunhapkho) OR ([phieunhapkho] IS NULL AND @original_phieunhapkho IS NULL)) AND (([linhvucsudung] = @original_linhvucsudung) OR ([linhvucsudung] IS NULL AND @original_linhvucsudung IS NULL))" InsertCommand="INSERT INTO [tblthietbi] ([matb], [tentb], [loaitb], [phongban], [ngaynhap], [tinhtrang], [thongsokythuat], [giathanh], [vitri], [NCC], [phieumuahang], [huhong], [nguoiduyet], [ngayduyet], [thoihanbaohanh], [thietbicha], [capcaythumuc], [nhasanxuat], [nuocsanxuat], [serial], [model], [ngaylapdat], [ngaymua], [linkimage], [imagedescription], [chitietbangbaogia], [maql], [phieunhapkho], [linhvucsudung]) VALUES (@matb, @tentb, @loaitb, @phongban, @ngaynhap, @tinhtrang, @thongsokythuat, @giathanh, @vitri, @NCC, @phieumuahang, @huhong, @nguoiduyet, @ngayduyet, @thoihanbaohanh, @thietbicha, @capcaythumuc, @nhasanxuat, @nuocsanxuat, @serial, @model, @ngaylapdat, @ngaymua, @linkimage, @imagedescription, @chitietbangbaogia, @maql, @phieunhapkho, @linhvucsudung)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tblthietbi]" UpdateCommand="UPDATE [tblthietbi] SET [tentb] = @tentb, [loaitb] = @loaitb, [phongban] = @phongban, [ngaynhap] = @ngaynhap, [tinhtrang] = @tinhtrang, [thongsokythuat] = @thongsokythuat, [giathanh] = @giathanh, [vitri] = @vitri, [NCC] = @NCC, [phieumuahang] = @phieumuahang, [huhong] = @huhong, [nguoiduyet] = @nguoiduyet, [ngayduyet] = @ngayduyet, [thoihanbaohanh] = @thoihanbaohanh, [thietbicha] = @thietbicha, [capcaythumuc] = @capcaythumuc, [nhasanxuat] = @nhasanxuat, [nuocsanxuat] = @nuocsanxuat, [serial] = @serial, [model] = @model, [ngaylapdat] = @ngaylapdat, [ngaymua] = @ngaymua, [linkimage] = @linkimage, [imagedescription] = @imagedescription, [chitietbangbaogia] = @chitietbangbaogia, [maql] = @maql, [phieunhapkho] = @phieunhapkho, [linhvucsudung] = @linhvucsudung WHERE [matb] = @original_matb AND (([tentb] = @original_tentb) OR ([tentb] IS NULL AND @original_tentb IS NULL)) AND (([loaitb] = @original_loaitb) OR ([loaitb] IS NULL AND @original_loaitb IS NULL)) AND (([phongban] = @original_phongban) OR ([phongban] IS NULL AND @original_phongban IS NULL)) AND (([ngaynhap] = @original_ngaynhap) OR ([ngaynhap] IS NULL AND @original_ngaynhap IS NULL)) AND (([tinhtrang] = @original_tinhtrang) OR ([tinhtrang] IS NULL AND @original_tinhtrang IS NULL)) AND (([thongsokythuat] = @original_thongsokythuat) OR ([thongsokythuat] IS NULL AND @original_thongsokythuat IS NULL)) AND (([giathanh] = @original_giathanh) OR ([giathanh] IS NULL AND @original_giathanh IS NULL)) AND (([vitri] = @original_vitri) OR ([vitri] IS NULL AND @original_vitri IS NULL)) AND (([NCC] = @original_NCC) OR ([NCC] IS NULL AND @original_NCC IS NULL)) AND (([phieumuahang] = @original_phieumuahang) OR ([phieumuahang] IS NULL AND @original_phieumuahang IS NULL)) AND (([huhong] = @original_huhong) OR ([huhong] IS NULL AND @original_huhong IS NULL)) AND (([nguoiduyet] = @original_nguoiduyet) OR ([nguoiduyet] IS NULL AND @original_nguoiduyet IS NULL)) AND (([ngayduyet] = @original_ngayduyet) OR ([ngayduyet] IS NULL AND @original_ngayduyet IS NULL)) AND (([thoihanbaohanh] = @original_thoihanbaohanh) OR ([thoihanbaohanh] IS NULL AND @original_thoihanbaohanh IS NULL)) AND (([thietbicha] = @original_thietbicha) OR ([thietbicha] IS NULL AND @original_thietbicha IS NULL)) AND (([capcaythumuc] = @original_capcaythumuc) OR ([capcaythumuc] IS NULL AND @original_capcaythumuc IS NULL)) AND (([nhasanxuat] = @original_nhasanxuat) OR ([nhasanxuat] IS NULL AND @original_nhasanxuat IS NULL)) AND (([nuocsanxuat] = @original_nuocsanxuat) OR ([nuocsanxuat] IS NULL AND @original_nuocsanxuat IS NULL)) AND (([serial] = @original_serial) OR ([serial] IS NULL AND @original_serial IS NULL)) AND (([model] = @original_model) OR ([model] IS NULL AND @original_model IS NULL)) AND (([ngaylapdat] = @original_ngaylapdat) OR ([ngaylapdat] IS NULL AND @original_ngaylapdat IS NULL)) AND (([ngaymua] = @original_ngaymua) OR ([ngaymua] IS NULL AND @original_ngaymua IS NULL)) AND (([linkimage] = @original_linkimage) OR ([linkimage] IS NULL AND @original_linkimage IS NULL)) AND (([imagedescription] = @original_imagedescription) OR ([imagedescription] IS NULL AND @original_imagedescription IS NULL)) AND (([chitietbangbaogia] = @original_chitietbangbaogia) OR ([chitietbangbaogia] IS NULL AND @original_chitietbangbaogia IS NULL)) AND (([maql] = @original_maql) OR ([maql] IS NULL AND @original_maql IS NULL)) AND (([phieunhapkho] = @original_phieunhapkho) OR ([phieunhapkho] IS NULL AND @original_phieunhapkho IS NULL)) AND (([linhvucsudung] = @original_linhvucsudung) OR ([linhvucsudung] IS NULL AND @original_linhvucsudung IS NULL))">
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
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Dashboard.aspx" class="ttblnkquayve">Quay về</asp:HyperLink>
</asp:Content>
