<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Trang chính</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<% DataUtil data = new DataUtil(); %>
<% int nam; %>
<div id="mathietbilonnhat" class="d-none"><%= MaThietBiLonNhat %></div>
<div class="main-content">
    <div class="center-content-qltb">
        <div id="tree-data" class="center-tree">
            <div class="dc-btn-nav">
                <asp:Label ID="lblthietbicha" runat="server" CssClass="d-none"></asp:Label>
                <div id="mathietbi" class="d-none">0</div>
                <button id="addthietbi" class="btn btn-primary button-add bg-primary text-light" type="button" data-bs-toggle="modal" data-bs-target="#themThietBiModal" onclick="modelthemthietbi()">+</button>
            </div>
            <div class="modal" id="themThietBiModal">
                <div class="modal-dialog them-thiet-bi-model">
                    <div class="modal-content modal-them-thiet-bi">
                        <!-- Modal Header -->
                        <div class="modal-header">
                            <h4 class="modal-title">Thêm thiết bị</h4>
                            <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                        </div>
                        <!-- Modal body -->
                        <div class="modal-body">
                            <table class="dc-tbl-model-them-thiet-bi">
                                <tr><td><label>Loại thiết bị:</label></td><td><asp:DropDownList ID="ddlloaithietbi" runat="server" DataSourceID="SqlDataSource1" DataTextField="tenloaitb" DataValueField="maloaitb"></asp:DropDownList><asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLThietBiMayTinhTungPhongBanConnectionString2 %>" SelectCommand="SELECT * FROM [tblloaithietbi]"></asp:SqlDataSource></td></tr>
                                <tr><td><label>Phòng ban:</label></td><td><asp:DropDownList ID="ddlphongban" runat="server" DataSourceID="SqlDataSource6" DataTextField="tenphongban" DataValueField="idphongban"></asp:DropDownList><asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:QLThietBiMayTinhTungPhongBanConnectionString2 %>" SelectCommand="SELECT * FROM [tblphongban]"></asp:SqlDataSource></td></tr>
                                <tr><td><label>Ngày nhập:</label></td><td><asp:DropDownList ID="ddlngaynhap" runat="server"></asp:DropDownList><asp:DropDownList ID="ddlthangnhap" runat="server"></asp:DropDownList><asp:DropDownList ID="ddlnamnhap" runat="server"></asp:DropDownList></td></tr>
                                <tr><td><label>Tên thiết bị:</label></td><td><asp:TextBox ID="txttenthietbi" runat="server" Width="300px"></asp:TextBox></td></tr>
                                <tr><td><label>Nhà cung cấp:</label></td><td><asp:DropDownList ID="ddlnhacungcap" runat="server" DataSourceID="SqlDataSource3" DataTextField="tennhacungcap" DataValueField="Id"></asp:DropDownList><asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:QLThietBiMayTinhTungPhongBanConnectionString2 %>" SelectCommand="SELECT [Id], [tennhacungcap] FROM [tblnhacungcap]"></asp:SqlDataSource></td></tr>
                                <tr><td><label>Hư hỏng:</label></td><td><asp:TextBox ID="txthuhong" runat="server" Width="100px"></asp:TextBox><br /></td></tr>
                                <tr><td><label>Thời hạn bảo hành:</label></td><td><asp:TextBox ID="txtthoihanbaohanh" runat="server" Width="200px"></asp:TextBox></td></tr>
                                <tr><td><label>Nhà sản xuất:</label></td><td><asp:TextBox ID="txtnhasanxuat" runat="server" Width="390px"></asp:TextBox></td></tr>
                                <tr><td><label>Nước sản xuất:</label></td><td><asp:TextBox ID="txtnuocsanxuat" runat="server" Width="390px"></asp:TextBox></td></tr>
                                <tr><td><label>Serial:</label></td><td><asp:TextBox ID="txtserial" runat="server" Width="131px"></asp:TextBox></td></tr>
                                <tr><td><label>Model:</label></td><td><asp:TextBox ID="txtmodel" runat="server" Width="131px"></asp:TextBox></td></tr>
                                <tr><td><label>Ngày lắp đặt:</label></td><td><asp:DropDownList ID="ddlngaylapdat" runat="server"></asp:DropDownList><asp:DropDownList ID="ddlthanglapdat" runat="server"></asp:DropDownList><asp:DropDownList ID="ddlnamlapdat" runat="server"></asp:DropDownList></td></tr>
                                <tr><td><label>Ngày mua:</label></td><td><asp:DropDownList ID="ddlngaymua" runat="server"></asp:DropDownList><asp:DropDownList ID="ddlthangmua" runat="server"></asp:DropDownList><asp:DropDownList ID="ddlnammua" runat="server"></asp:DropDownList></td></tr>
                                <tr><td><label>Mã quản lý:</label></td><td><asp:TextBox ID="txtmaquanly" runat="server"></asp:TextBox></td></tr>
                                <tr><td> Là con của:</td><td><asp:DropDownList ID="ddlthietbicha" class="ddl-thiet-bi-cha" runat="server" DataSourceID="SqlDataSource4" DataTextField="tentb" DataValueField="matb"  AutoPostBack="false" onChange="javascript:ddlThietBiChaClick()"></asp:DropDownList><asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:QLThietBiMayTinhTungPhongBanConnectionString2 %>" SelectCommand="SELECT [matb], [tentb] FROM [tblthietbi]"></asp:SqlDataSource></td></tr>
                                <tr><td>Vị trí:</td><td><asp:DropDownList ID="ddlvitri" runat="server" DataSourceID="SqlDataSource5" DataTextField="tenvitri" DataValueField="Id" CssClass="ddlvitri"></asp:DropDownList><asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:QLThietBiMayTinhTungPhongBanConnectionString2 %>" SelectCommand="SELECT * FROM [tblvitri]"></asp:SqlDataSource></td></tr>
                                <tr><td><asp:FileUpload ID="FileUpload2" runat="server" /></td></tr>
                                <tr><td colspan="2"><label id="kqthemthietbi"></label></td></tr>
                            </table>
                        </div>
                        <!-- Modal footer -->
                        <!-- OnClientClick trong webform -->
                        <%--<script type="text/javascript">
                            myClosure = function () {
                                var canyousee = "here I'm ";
                                return (function () {
                                    return { canyouseeIt: function () { return confirm(canyousee) } };
                                });
                            }
                        </script>--%>
                        <%--OnClientClick="(myClosure())().canyouseeIt()"--%>
                        <!-- Modal footer -->
                        <div class="modal-footer">
                            <asp:Button ID="btnThemThietBi" runat="server" Text="Thêm" OnClick="btnThemThietBi_Click" class="btn btn-dark"/>
                            <asp:Button ID="btnKhoiTao" runat="server" Text="Làm mới" class="btn btn-dark"/>
                            <button type="button" class="btn btn-dark" data-bs-dismiss="modal">Thoát</button>
                        </div>
                    </div>
                </div>
            </div>
            <%= showGocCayThuMucViTri() %>
        </div>
    </div>
    <div class="center-contain">
        <div id="modeltailieuthietbi" class="model-them-tltb">
            <div class="container mt-0">
                <button id="btn-model-tai-lieu" type="button" class="btn btn-primary btn-modal-tai-lieu" data-bs-toggle="modal" data-bs-target="#themTaiLieuModal">Thêm</button>
            </div>
                <!-- The Modal -->
            <div class="modal" id="themTaiLieuModal">
                <div class="modal-dialog">
                    <div class="modal-content modal-them-chi-tiet">
                        <!-- Modal Header -->
                        <div class="modal-header">
                            <h4 class="modal-title">Thêm tài liệu</h4>
                            <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                        </div>
                        <!-- Modal body -->
                        <div class="modal-body">
                            <table><tr><td><asp:FileUpload ID="FileUpload1" runat="server" /></td></tr><tr><td><label id="kqthemtailieu"></label></td></tr></table>
                        </div>
                        <!-- Modal footer -->
                        <div class="modal-footer">
                            <asp:Button ID="Button1" runat="server" Text="Thêm" class="btn btn-dark" OnClick="Button1_Click"/>
                            <button type="button" class="btn btn-dark" data-bs-dismiss="modal">Thoát</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <asp:Image ID="Image1" runat="server" onclick="visibleleftmenu()" class="icon-pin icon-pin-open" ImageUrl="~/Resourcers/Images/thumbtacks.png"/>
        <div id="center-ct" class="center-contain-form"></div>
    </div>
    <div id="ccimg" class="ccimg">
        <%--hinh anh--%>
    </div>
</div>
<script type="text/javascript" src="Resourcers/Javascripts/dashboard.js"></script>
</asp:Content>
