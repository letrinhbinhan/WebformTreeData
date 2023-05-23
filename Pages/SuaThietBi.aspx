<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SuaThietBi.aspx.cs" Inherits="Pages_SuaThietBi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
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
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="matb" DataSourceID="SqlDataSource2" DefaultMode="Edit" EnableModelValidation="True" OnItemInserting="FormView1_ItemInserting" OnPreRender="FormView1_PreRender" Width="700px" OnInit="FormView1_Init">
        <EditItemTemplate>
            <table>
                <tr>
                    <td>Mã thiết bị:</td>
                    <td><asp:Label ID="matbLabel1" runat="server" Text='<%# Eval("matb") %>' /></td>
                </tr>
                <tr>
                    <td>Tên thiết bị:</td>
                    <td><asp:TextBox ID="tentbTextBox" runat="server" Text='<%# Bind("tentb") %>' /></td>
                </tr>
                <tr>
                    <td>Loại thiết bị:</td>
                    <td><asp:TextBox ID="loaitbTextBox" runat="server" Text='<%# Bind("loaitb") %>' /></td>
                </tr>
                <tr>
                    <td>Phòng ban:</td>
                    <td>
                        <asp:DropDownList ID="DropDownList7" runat="server" DataSourceID="SqlDataSource1" DataTextField="tenphongban" DataValueField="idphongban" SelectedValue='<%# Bind("phongban") %>'>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:QLThietBiMayTinhTungPhongBanConnectionString2 %>" DeleteCommand="DELETE FROM [tblphongban] WHERE [idphongban] = @original_idphongban AND (([maphongban] = @original_maphongban) OR ([maphongban] IS NULL AND @original_maphongban IS NULL)) AND (([tenphongban] = @original_tenphongban) OR ([tenphongban] IS NULL AND @original_tenphongban IS NULL)) AND (([ttcaythumuc] = @original_ttcaythumuc) OR ([ttcaythumuc] IS NULL AND @original_ttcaythumuc IS NULL))" InsertCommand="INSERT INTO [tblphongban] ([idphongban], [maphongban], [tenphongban], [ttcaythumuc]) VALUES (@idphongban, @maphongban, @tenphongban, @ttcaythumuc)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tblphongban]" UpdateCommand="UPDATE [tblphongban] SET [maphongban] = @maphongban, [tenphongban] = @tenphongban, [ttcaythumuc] = @ttcaythumuc WHERE [idphongban] = @original_idphongban AND (([maphongban] = @original_maphongban) OR ([maphongban] IS NULL AND @original_maphongban IS NULL)) AND (([tenphongban] = @original_tenphongban) OR ([tenphongban] IS NULL AND @original_tenphongban IS NULL)) AND (([ttcaythumuc] = @original_ttcaythumuc) OR ([ttcaythumuc] IS NULL AND @original_ttcaythumuc IS NULL))">
                            <DeleteParameters>
                                <asp:Parameter Name="original_idphongban" Type="Int32" />
                                <asp:Parameter Name="original_maphongban" Type="String" />
                                <asp:Parameter Name="original_tenphongban" Type="String" />
                                <asp:Parameter Name="original_ttcaythumuc" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="idphongban" Type="Int32" />
                                <asp:Parameter Name="maphongban" Type="String" />
                                <asp:Parameter Name="tenphongban" Type="String" />
                                <asp:Parameter Name="ttcaythumuc" Type="Int32" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="maphongban" Type="String" />
                                <asp:Parameter Name="tenphongban" Type="String" />
                                <asp:Parameter Name="ttcaythumuc" Type="Int32" />
                                <asp:Parameter Name="original_idphongban" Type="Int32" />
                                <asp:Parameter Name="original_maphongban" Type="String" />
                                <asp:Parameter Name="original_tenphongban" Type="String" />
                                <asp:Parameter Name="original_ttcaythumuc" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td>Ngày nhập:</td>
                    <td>
                        <asp:DropDownList ID="ddlNgay1" runat="server">
                        </asp:DropDownList>
                        <asp:DropDownList ID="ddlThang1" runat="server">
                        </asp:DropDownList>
                        <asp:DropDownList ID="ddlNam1" runat="server">
                        </asp:DropDownList>
                    </td>
            </tr>
            <tr>
                <td>Tình trạng:</td>
                <td><asp:TextBox ID="tinhtrangTextBox" runat="server" Text='<%# Bind("tinhtrang") %>' /></td>
            </tr>
            <tr>
                <td>Thông số kỹ thuật:</td>
                <td><asp:TextBox ID="thongsokythuatTextBox" runat="server" Text='<%# Bind("thongsokythuat") %>' /></td>
            </tr>
            <tr>
                <td>Giá thành:</td>
                <td><asp:TextBox ID="giathanhTextBox" runat="server" Text='<%# Bind("giathanh") %>' /></td>
            </tr>
            <tr>
                <td>Vị trí:</td>
                <td><asp:TextBox ID="vitriTextBox" runat="server" Text='<%# Bind("vitri") %>' /></td>
            </tr>
            <tr>
                <td>Nhà cung cấp:</td>
                <td><asp:TextBox ID="NCCTextBox" runat="server" Text='<%# Bind("NCC") %>' /></td>
            </tr>
            <tr>
                <td>Phiếu mua hàng:</td>
                <td><asp:TextBox ID="phieumuahangTextBox" runat="server" Text='<%# Bind("phieumuahang") %>' /></td>
            </tr>
            <tr>
                <td>Hư hỏng:</td>
                <td><asp:TextBox ID="huhongTextBox" runat="server" Text='<%# Bind("huhong") %>' /></td>
            </tr>
            <tr>
                <td>Người duyệt:</td>
                <td><asp:TextBox ID="nguoiduyetTextBox" runat="server" Text='<%# Bind("nguoiduyet") %>' /></td>
            </tr>
            <tr>
                <td>Ngày duyệt:</td>
                <td>
                    <asp:DropDownList ID="ddlNgay2" runat="server">
                    </asp:DropDownList>
                    <asp:DropDownList ID="ddlThang2" runat="server">
                    </asp:DropDownList>
                    <asp:DropDownList ID="ddlNam2" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>Thời hạn bảo hành:</td>
                <td><asp:TextBox ID="thoihanbaohanhTextBox" runat="server" Text='<%# Bind("thoihanbaohanh") %>' /></td>
            </tr>
            <tr>
                <td>Thiết bị cha:</td>
                <td><asp:TextBox ID="thietbichaTextBox" runat="server" Text='<%# Bind("thietbicha") %>' /></td>
            </tr>
            <tr>
                <td>Nhà sản xuất:</td>
                <td><asp:TextBox ID="nhasanxuatTextBox" runat="server" Text='<%# Bind("nhasanxuat") %>' /></td>
            </tr>
            <tr>
                <td>Nước sản xuất:</td>
                <td><asp:TextBox ID="nuocsanxuatTextBox" runat="server" Text='<%# Bind("nuocsanxuat") %>' /></td>
            </tr>
            <tr>
                <td>Serial:</td>
                <td><asp:TextBox ID="serialTextBox" runat="server" Text='<%# Bind("serial") %>' /></td>
            </tr>
            <tr>
                <td>Model:</td>
                <td><asp:TextBox ID="modelTextBox" runat="server" Text='<%# Bind("model") %>' /></td>
            </tr>
            <tr>
                <td>Ngày lắp đặt:</td>
                <td>
                    <asp:DropDownList ID="ddlNgay3" runat="server">
                    </asp:DropDownList>
                    <asp:DropDownList ID="ddlThang3" runat="server">
                    </asp:DropDownList>
                    <asp:DropDownList ID="ddlNam3" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>Ngày mua:</td>
                <td>
                    <asp:DropDownList ID="ddlNgay4" runat="server">
                    </asp:DropDownList>
                    <asp:DropDownList ID="ddlThang4" runat="server">
                    </asp:DropDownList>
                    <asp:DropDownList ID="ddlNam4" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>Hình ảnh thiết bị:</td>            
                <td><asp:FileUpload ID="FileUpload2" runat="server" /></td>
            </tr>
            <tr>
                <td>Mô tả hình ảnh thiết bị:</td>
                <td><asp:TextBox ID="imagedescriptionTextBox" runat="server" Text='<%# Bind("imagedescription") %>' /></td>
            </tr>
            <tr>
                <td>Chi tiết bảng báo giá:</td>
                <td><asp:TextBox ID="chitietbangbaogiaTextBox" runat="server" Text='<%# Bind("chitietbangbaogia") %>' /></td>
            </tr>
            <tr>
                <td>Mã quản lý:</td>
                <td><asp:TextBox ID="maqlTextBox" runat="server" Text='<%# Bind("maql") %>' /></td>
            </tr>
            <tr>
                <td>Phiếu nhập kho:</td>
                <td><asp:TextBox ID="phieunhapkhoTextBox" runat="server" Text='<%# Bind("phieunhapkho") %>' /></td>
            </tr>
            <tr>
                <td>Lĩnh vực sử dụng:</td>
                <td><asp:TextBox ID="linhvucsudungTextBox" runat="server" Text='<%# Bind("linhvucsudung") %>' /></td>
            </tr>
            <tr>
                <td>
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </td>
            </tr>          
            </table>
        </EditItemTemplate>
        <InsertItemTemplate>
            <div class="formviewthem">
                <div class="rowthem">
                    <div class="themdivlabel ttb2lblmaquanly">Mã quản lý:</div>
                    <div>
                        <asp:TextBox ID="maqlTextBox" runat="server" Text='<%# Bind("maql") %>' CssClass="ttb2txtmaquanly" onkeyup="validatemaql()" onfocusout="validatemaql()"/>
                        <p id="validatemaql" class="validatelabel"></p>
                    </div>
                </div>
                <div class="rowthem rowttb2tenthietbi">
                    <div class="themdivlabel">Tên thiết bị:</div>
                    <div class="ttb2textbox ttb2lbltenthietbi">
                        <asp:TextBox ID="tentbTextBox" runat="server" Text='<%# Bind("tentb") %>' CssClass="ttb2txttenthietbi" onkeyup="validatetenthietbi()" onfocusout="validatetenthietbi()"/>
                        <p id="validatetenthietbi" class="validatelabel"></p>
                    </div>
                    <div class="themdivlabel ttb2lblgiathanh">Giá thành:</div>
                    <div class="ttb2divtxtgiathanh"><asp:TextBox ID="giathanhTextBox" runat="server" Text='<%# Bind("giathanh") %>' CssClass="ttb2textbox ttb2txtgiathanh"/>
                    </div>
                </div> 
                <div class="rowthem">
                    <div class="themdivlabel">Ngày nhập:</div>
                    <div class="ttb2divngaynhap">
                        <asp:DropDownList ID="ddlNgay1" runat="server" CssClass="ddlptthoigian" onchange="validatengaynhap()"></asp:DropDownList>
                        <asp:DropDownList ID="ddlThang1" runat="server" CssClass="ddlptthoigian" onchange="validatengaynhap()"></asp:DropDownList>
                        <asp:DropDownList ID="ddlNam1" runat="server" CssClass="ddlptthoigian" onchange="validatengaynhap()"></asp:DropDownList>
                        &nbsp;<asp:Calendar ID="Calendar1" runat="server" SelectedDate='<%# Bind("ngaynhap") %>' CssClass="unvisible"></asp:Calendar>
                        <p id="validatengaynhap" class="validatelabel"></p>
                    </div>
                </div>
                <div>
                    <div>Thông số kỹ thuật:</div>
                    <div>
                        <textarea id="ThongSoKyThuatTextArea" runat="server" cols="100" onkeyup="validatethongsokythuat()" onfocusout="validatethongsokythuat()"></textarea>
                        <p id="validatethongsokythuat" class="validatelabel"></p>
                    </div>                    
                </div>
                <div class="rowthem">
                    <div class="themdivlabel ttb2divphongban">Phòng ban:</div>
                    <div>
                    <asp:DropDownList ID="DropDownList5" runat="server" CssClass="ttb2ddltenphongban" DataSourceID="SqlDataSource1" DataTextField="tenphongban" DataValueField="idphongban" SelectedValue='<%# Bind("phongban") %>'>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLThietBiMayTinhTungPhongBanConnectionString2 %>" SelectCommand="SELECT * FROM [tblphongban]"></asp:SqlDataSource>
                    </div>
                </div> 
                <div class="rowthem">
                    <div class="themdivlabel ttb2divserial">Serial:</div>
                    <div><asp:TextBox ID="serialTextBox" runat="server" Text='<%# Bind("serial") %>' CssClass="ttb2txtserial"/></div>
                </div>
                <div class="rowthem">
                    <div class="themdivlabel ttb2divmodal">Modal:</div>
                    <div><asp:TextBox ID="modelTextBox" runat="server" Text='<%# Bind("model") %>' CssClass="ttb2txtmodal"/></div>
                </div>
                <div class="rowthem">
                    <div class="themdivlabel ttb2dllngaylapdat">Ngày lắp đặt:</div>
                    <div class="ttb2divngaynhap">
                        <asp:DropDownList ID="ddlNgay2" runat="server" CssClass="ddlptthoigian" onchange="validatengaylapdat()"></asp:DropDownList>
                        <asp:DropDownList ID="ddlThang2" runat="server" CssClass="ddlptthoigian" onchange="validatengaylapdat()"></asp:DropDownList>
                        <asp:DropDownList ID="ddlNam2" runat="server" CssClass="ddlptthoigian" onchange="validatengaylapdat()"></asp:DropDownList>
                        &nbsp;<asp:Calendar ID="Calendar2" runat="server" SelectedDate='<%# Bind("ngaylapdat") %>' CssClass="unvisible"></asp:Calendar>
                        <p id="validatengaylapdat" class="validatelabel"></p>
                    </div>
                </div>
                <div class="rowthem">
                    <div class="themdivlabel ttb2ddlngaymua">Ngày mua:</div>
                    <div class="ttb2divngaynhap">
                        <asp:DropDownList ID="ddlNgay3" runat="server" CssClass="ddlptthoigian" onchange="validatengaymua()"></asp:DropDownList>
                        <asp:DropDownList ID="ddlThang3" runat="server" CssClass="ddlptthoigian" onchange="validatengaymua()"></asp:DropDownList>
                        <asp:DropDownList ID="ddlNam3" runat="server" CssClass="ddlptthoigian" onchange="validatengaymua()"></asp:DropDownList>
                        &nbsp;<asp:Calendar ID="Calendar3" runat="server" SelectedDate='<%# Bind("ngaymua") %>' CssClass="unvisible"></asp:Calendar>
                        <p id="validatengaymua" class="validatelabel"></p>
                    </div>
                </div>
                <div class="rowthem">
                    <div class="themdivlabel ttb2lblnhasanxuat">Nhà sản xuất:</div>
                    <div>
                        <asp:TextBox ID="nhasanxuatTextBox" runat="server" Text='<%# Bind("nhasanxuat") %>'/>
                    </div>
                </div>
                <div class="rowthem">
                    <div class="themdivlabel ttb2lblnuocsanxuat">Nước sản xuất:</div>
                    <div>
                        <asp:TextBox ID="nuocsanxuatTextBox" runat="server" Text='<%# Bind("nuocsanxuat") %>' CssClass="ttb2txtnuocsanxuat"/>
                    </div>
                </div>
                <div class="rowthem">
                    <div class="themdivlabel ttb2divnhacungcap">Nhà cung cấp:</div>
                    <div>
                        <asp:DropDownList ID="DropDownList6" runat="server" DataSourceID="SqlDataSource5" DataTextField="tennhacungcap" DataValueField="Id" SelectedValue='<%# Bind("NCC") %>' CssClass="ttb2ddlnhacungcap">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:QLThietBiMayTinhTungPhongBanConnectionString2 %>" SelectCommand="SELECT [Id], [tennhacungcap] FROM [tblnhacungcap]"></asp:SqlDataSource>
                    </div>
                </div>
                <div class="rowthem">
                    <div class="themdivlabel ttb2divnhacungcap">Loại thiết bị:</div>
                    <div><asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="tenloaitb" DataValueField="maloaitb" SelectedValue='<%# Bind("loaitb") %>' CssClass="ttb2ddlloaithietbi">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:QLThietBiMayTinhTungPhongBanConnectionString2 %>" SelectCommand="SELECT * FROM [tblloaithietbi]"></asp:SqlDataSource>
                    </div>
                </div>
                <div class="rowthem">
                    <div  class="themdivlabel ttb2lblthietbicha">Thiết bị cha:</div>
                    <div>
                        <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource3" DataTextField="tentb" DataValueField="matb" SelectedValue='<%# Bind("thietbicha") %>' CssClass="ttb2ddlthietbicha">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:QLThietBiMayTinhTungPhongBanConnectionString2 %>" SelectCommand="SELECT [matb], [tentb] FROM [tblthietbi]"></asp:SqlDataSource>
                    </div>
                </div>
                <div class="rowthem">
                    <div class="themdivlabel ttb2lblthoihanbaohanh">Thời hạn bảo hành:</div>
                    <div><asp:TextBox ID="thoihanbaohanhTextBox" runat="server" Text='<%# Bind("thoihanbaohanh") %>' CssClass="ttb2txtthoihanbaohanh"/></div>
                </div>
                <div class="rowthem">
                    <div class="themdivlabel ttb2lbluploadimage">Tải ảnh lên:</div>
                    <div>
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="unvisible" Text='<%# Bind("linkimage") %>'></asp:TextBox>
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </div>
                </div>
                <div class="rowthem">
                    <div class="themdivlabel ttb2lblghichuhinhanh">Ghi chú hình ảnh:</div>
                    <div><asp:TextBox ID="imagedescriptionTextBox" runat="server" Text='<%# Bind("imagedescription") %>' CssClass="ttb2txtghichuhinhanh"/></div>
                </div>
            </div>
            <div class="unvisible">Mã:
            <asp:TextBox ID="matbTextBox" runat="server" Text='<%# Bind("matb") %>' /></div>
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" CssClass="ttb2linkInsert" />
&nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" CssClass="ttb2linkcancel" />
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
            <div class="unvisible">capcaythumuc:
            <asp:Label ID="capcaythumucLabel" runat="server" Text='<%# Bind("capcaythumuc") %>' /></div>
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
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:QLThietBiMayTinhTungPhongBanConnectionString2 %>" DeleteCommand="DELETE FROM [tblthietbi] WHERE [matb] = @original_matb AND (([tentb] = @original_tentb) OR ([tentb] IS NULL AND @original_tentb IS NULL)) AND (([loaitb] = @original_loaitb) OR ([loaitb] IS NULL AND @original_loaitb IS NULL)) AND (([phongban] = @original_phongban) OR ([phongban] IS NULL AND @original_phongban IS NULL)) AND (([ngaynhap] = @original_ngaynhap) OR ([ngaynhap] IS NULL AND @original_ngaynhap IS NULL)) AND (([tinhtrang] = @original_tinhtrang) OR ([tinhtrang] IS NULL AND @original_tinhtrang IS NULL)) AND (([thongsokythuat] = @original_thongsokythuat) OR ([thongsokythuat] IS NULL AND @original_thongsokythuat IS NULL)) AND (([giathanh] = @original_giathanh) OR ([giathanh] IS NULL AND @original_giathanh IS NULL)) AND (([vitri] = @original_vitri) OR ([vitri] IS NULL AND @original_vitri IS NULL)) AND (([NCC] = @original_NCC) OR ([NCC] IS NULL AND @original_NCC IS NULL)) AND (([phieumuahang] = @original_phieumuahang) OR ([phieumuahang] IS NULL AND @original_phieumuahang IS NULL)) AND (([huhong] = @original_huhong) OR ([huhong] IS NULL AND @original_huhong IS NULL)) AND (([nguoiduyet] = @original_nguoiduyet) OR ([nguoiduyet] IS NULL AND @original_nguoiduyet IS NULL)) AND (([ngayduyet] = @original_ngayduyet) OR ([ngayduyet] IS NULL AND @original_ngayduyet IS NULL)) AND (([thoihanbaohanh] = @original_thoihanbaohanh) OR ([thoihanbaohanh] IS NULL AND @original_thoihanbaohanh IS NULL)) AND (([thietbicha] = @original_thietbicha) OR ([thietbicha] IS NULL AND @original_thietbicha IS NULL)) AND (([capcaythumuc] = @original_capcaythumuc) OR ([capcaythumuc] IS NULL AND @original_capcaythumuc IS NULL)) AND (([nhasanxuat] = @original_nhasanxuat) OR ([nhasanxuat] IS NULL AND @original_nhasanxuat IS NULL)) AND (([nuocsanxuat] = @original_nuocsanxuat) OR ([nuocsanxuat] IS NULL AND @original_nuocsanxuat IS NULL)) AND (([serial] = @original_serial) OR ([serial] IS NULL AND @original_serial IS NULL)) AND (([model] = @original_model) OR ([model] IS NULL AND @original_model IS NULL)) AND (([ngaylapdat] = @original_ngaylapdat) OR ([ngaylapdat] IS NULL AND @original_ngaylapdat IS NULL)) AND (([ngaymua] = @original_ngaymua) OR ([ngaymua] IS NULL AND @original_ngaymua IS NULL)) AND (([linkimage] = @original_linkimage) OR ([linkimage] IS NULL AND @original_linkimage IS NULL)) AND (([imagedescription] = @original_imagedescription) OR ([imagedescription] IS NULL AND @original_imagedescription IS NULL)) AND (([chitietbangbaogia] = @original_chitietbangbaogia) OR ([chitietbangbaogia] IS NULL AND @original_chitietbangbaogia IS NULL)) AND (([maql] = @original_maql) OR ([maql] IS NULL AND @original_maql IS NULL)) AND (([phieunhapkho] = @original_phieunhapkho) OR ([phieunhapkho] IS NULL AND @original_phieunhapkho IS NULL)) AND (([linhvucsudung] = @original_linhvucsudung) OR ([linhvucsudung] IS NULL AND @original_linhvucsudung IS NULL))" InsertCommand="INSERT INTO [tblthietbi] ([matb], [tentb], [loaitb], [phongban], [ngaynhap], [tinhtrang], [thongsokythuat], [giathanh], [vitri], [NCC], [phieumuahang], [huhong], [nguoiduyet], [ngayduyet], [thoihanbaohanh], [thietbicha], [capcaythumuc], [nhasanxuat], [nuocsanxuat], [serial], [model], [ngaylapdat], [ngaymua], [linkimage], [imagedescription], [chitietbangbaogia], [maql], [phieunhapkho], [linhvucsudung]) VALUES (@matb, @tentb, @loaitb, @phongban, @ngaynhap, @tinhtrang, @thongsokythuat, @giathanh, @vitri, @NCC, @phieumuahang, @huhong, @nguoiduyet, @ngayduyet, @thoihanbaohanh, @thietbicha, @capcaythumuc, @nhasanxuat, @nuocsanxuat, @serial, @model, @ngaylapdat, @ngaymua, @linkimage, @imagedescription, @chitietbangbaogia, @maql, @phieunhapkho, @linhvucsudung)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tblthietbi]" UpdateCommand="UPDATE [tblthietbi] SET [tentb] = @tentb, [loaitb] = @loaitb, [phongban] = @phongban, [ngaynhap] = @ngaynhap, [tinhtrang] = @tinhtrang, [thongsokythuat] = @thongsokythuat, [giathanh] = @giathanh, [vitri] = @vitri, [NCC] = @NCC, [phieumuahang] = @phieumuahang, [huhong] = @huhong, [nguoiduyet] = @nguoiduyet, [ngayduyet] = @ngayduyet, [thoihanbaohanh] = @thoihanbaohanh, [thietbicha] = @thietbicha, [capcaythumuc] = @capcaythumuc, [nhasanxuat] = @nhasanxuat, [nuocsanxuat] = @nuocsanxuat, [serial] = @serial, [model] = @model, [ngaylapdat] = @ngaylapdat, [ngaymua] = @ngaymua, [linkimage] = @linkimage, [imagedescription] = @imagedescription, [chitietbangbaogia] = @chitietbangbaogia, [maql] = @maql, [phieunhapkho] = @phieunhapkho, [linhvucsudung] = @linhvucsudung WHERE [matb] = @original_matb AND (([tentb] = @original_tentb) OR ([tentb] IS NULL AND @original_tentb IS NULL)) AND (([loaitb] = @original_loaitb) OR ([loaitb] IS NULL AND @original_loaitb IS NULL)) AND (([phongban] = @original_phongban) OR ([phongban] IS NULL AND @original_phongban IS NULL)) AND (([ngaynhap] = @original_ngaynhap) OR ([ngaynhap] IS NULL AND @original_ngaynhap IS NULL)) AND (([tinhtrang] = @original_tinhtrang) OR ([tinhtrang] IS NULL AND @original_tinhtrang IS NULL)) AND (([thongsokythuat] = @original_thongsokythuat) OR ([thongsokythuat] IS NULL AND @original_thongsokythuat IS NULL)) AND (([giathanh] = @original_giathanh) OR ([giathanh] IS NULL AND @original_giathanh IS NULL)) AND (([vitri] = @original_vitri) OR ([vitri] IS NULL AND @original_vitri IS NULL)) AND (([NCC] = @original_NCC) OR ([NCC] IS NULL AND @original_NCC IS NULL)) AND (([phieumuahang] = @original_phieumuahang) OR ([phieumuahang] IS NULL AND @original_phieumuahang IS NULL)) AND (([huhong] = @original_huhong) OR ([huhong] IS NULL AND @original_huhong IS NULL)) AND (([nguoiduyet] = @original_nguoiduyet) OR ([nguoiduyet] IS NULL AND @original_nguoiduyet IS NULL)) AND (([ngayduyet] = @original_ngayduyet) OR ([ngayduyet] IS NULL AND @original_ngayduyet IS NULL)) AND (([thoihanbaohanh] = @original_thoihanbaohanh) OR ([thoihanbaohanh] IS NULL AND @original_thoihanbaohanh IS NULL)) AND (([thietbicha] = @original_thietbicha) OR ([thietbicha] IS NULL AND @original_thietbicha IS NULL)) AND (([capcaythumuc] = @original_capcaythumuc) OR ([capcaythumuc] IS NULL AND @original_capcaythumuc IS NULL)) AND (([nhasanxuat] = @original_nhasanxuat) OR ([nhasanxuat] IS NULL AND @original_nhasanxuat IS NULL)) AND (([nuocsanxuat] = @original_nuocsanxuat) OR ([nuocsanxuat] IS NULL AND @original_nuocsanxuat IS NULL)) AND (([serial] = @original_serial) OR ([serial] IS NULL AND @original_serial IS NULL)) AND (([model] = @original_model) OR ([model] IS NULL AND @original_model IS NULL)) AND (([ngaylapdat] = @original_ngaylapdat) OR ([ngaylapdat] IS NULL AND @original_ngaylapdat IS NULL)) AND (([ngaymua] = @original_ngaymua) OR ([ngaymua] IS NULL AND @original_ngaymua IS NULL)) AND (([linkimage] = @original_linkimage) OR ([linkimage] IS NULL AND @original_linkimage IS NULL)) AND (([imagedescription] = @original_imagedescription) OR ([imagedescription] IS NULL AND @original_imagedescription IS NULL)) AND (([chitietbangbaogia] = @original_chitietbangbaogia) OR ([chitietbangbaogia] IS NULL AND @original_chitietbangbaogia IS NULL)) AND (([maql] = @original_maql) OR ([maql] IS NULL AND @original_maql IS NULL)) AND (([phieunhapkho] = @original_phieunhapkho) OR ([phieunhapkho] IS NULL AND @original_phieunhapkho IS NULL)) AND (([linhvucsudung] = @original_linhvucsudung) OR ([linhvucsudung] IS NULL AND @original_linhvucsudung IS NULL))">
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
    <script type="text/javascript" src="../Resourcers/Javascripts/ThemThietBi2Validate.js"></script>
</asp:Content>

