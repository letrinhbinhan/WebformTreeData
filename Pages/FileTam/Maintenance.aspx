<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Maintenance.aspx.cs" Inherits="Pages_FileTam_Maintenance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link type="text/css" href="../../Resourcers/bootstrap-5.3.0-alpha3-dist/css/bootstrap.min.css" rel="stylesheet" />
    <script type="text/javascript" src="../../Resourcers/bootstrap-5.3.0-alpha3-dist/js/bootstrap.min.js"></script>
    <script src="../../Resourcers/Javascripts/jquery-3.7.0.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="mathietbi" class="d-none">133</div>
    <div class="dbctdivtitle">
        <h1 class="center-title">Bút bi</h1>        
        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
    </div>
    <div class="top-chm">
        <div class="tchm-thongtinchung" onclick="showThongtinChung()">
            Thông tin chung
        </div>
        <div class="tchm-chitiet" onclick="showChiTiet()">Chi tiết</div>
        <div id="btnphutung" class="tchm-phutung" onclick="showPhuTung()">
            Phụ tùng
        </div>
        <div class="tchm-baotri" onclick="showBaoTri()">Bảo trì</div>
        <div class="tchm-tailieuthietbi" onclick="showTaiLieu()">
            Tài liệu thiết bị
        </div>
    </div>
    <hr>
    <div class="container mt-3">
        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#themBaoTri">
            Thêm phụ tùng
        </button>        
        <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
    </div>
    <!-- The Modal -->
    <div class="modal" id="themBaoTri">
        <div class="modal-dialog">
            <div class="modal-content modal-them-phu-tung">
                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title">Thêm bảo trì</h4>
                    <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                </div>
                <!-- Modal body -->
                <div class="modal-body">
                        <table class="tbl-table-them-phu-tung">     
                            <tr>
                                <td>
                                    <asp:Label ID="Label1" runat="server" Text="Mã hạng mục"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtmahangmuc" runat="server"></asp:TextBox>
                                </td>
                            </tr>         
                            <tr>
                                <td>
                                    <asp:Label ID="Label2" runat="server" Text="Tên hạng mục"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txttenhangmuc" runat="server"></asp:TextBox>
                                </td>
                            </tr>  
                            <tr>
                                <td>
                                    <asp:Label ID="Label3" runat="server" Text="Số công thực hiện"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtsocongthuchien" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label4" runat="server" Text="Chu kỳ thực hiện"></asp:Label>
                                </td>
                                <td>
                                    <asp:Button ID="btnThemChuKy" runat="server" Text="Thêm chu kỳ" OnClick="btnThemChuKy_Click" />
                                </td>
                            </tr>
                        </table>
                    </div>
                    <!-- Modal footer -->
                    <div class="modal-footer">
                        <%--<button type="button" class="btn btn-dark" onclick="ThemBaoTri()">Thêm</button>
                        <button type="button" class="btn btn-dark" onclick="LamMoiThemBaoTri()">Làm mới</button>
                        <button type="button" class="btn btn-dark" data-bs-dismiss="modal">Thoát</button>--%>
                        <asp:Button ID="btnThem" runat="server" Text="Thêm" OnClick="btnThem_Click1" />
                    </div>
            </div>
        </div>
    </div>
</asp:Content>

