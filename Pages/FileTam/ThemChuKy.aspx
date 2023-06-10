<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ThemChuKy.aspx.cs" Inherits="Pages_FileTam_ThemChuKy" %>

<script runat="server">

    protected void btnThemChuKi_Click(object sender, EventArgs e)
    {
    }
</script>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../../Styles/themchuki.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            height: 22px;
        }
    </style>
    <script type="text/javascript" src="../../Resourcers/fontawesome/733334d21d.js"></script>
    <script type="text/javascript" src="../../Resourcers/Javascripts/themchuki.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
    <h1>Thêm chu kỳ</h1>
    <div>
        <table class="tbl-title-thiết-bị">
            <tr>
                <td class="title-label-tên-thiết-bị">Tên thiết bị:</td>
                <td></td>
                <td class="title-tên-thiết-bị">Mouse 3</td>
            </tr>
            <tr>
                <td class="title-mã-thiết-bị">VSX236</td>
                <td><div class="đường-kẻ-dọc"></div></td>
                <td class="title-ngày-nhập-thiết-bị">26/05/2023</td>
            </tr>
        </table>
    </div>
    <div class="hienthi">
        <asp:Label ID="Label1" runat="server" Text="Chu kỳ:"></asp:Label>
        <asp:Button ID="btnTuan" runat="server" OnClick="Button1_Click" Text="Tuần" Width="100px" />
        <asp:Button ID="btnThang" runat="server" Text="Tháng" Width="100px" />
        <asp:Button ID="btnNam" runat="server" Text="Năm" Width="100px" />
        <table class="tbt-chu-ki-tuan">
            <tr>
                <td onclick="changetooltip(this)">
                    <asp:RadioButton ID="RadioButton1" runat="server" Enabled="False" />&nbsp;Chủ nhật
                    <div id="tooltipinsertchuki" class="tooltip-insert-chuky">
                        <div class="tooltip-header-insert-chuky">
                            <asp:Label ID="Label4" runat="server" Text="Thêm chu kỳ" CssClass="TitleThemChuKi"></asp:Label>
                            <i class="fa-sharp fa-regular fa-circle-xmark btn-exit-popup" onclick="closeTooltipInsertChuKi()"></i>
                        </div>
                        <div class="tooltip-body-insert-chuky">
                            <ul>
                                <li>
                                    <asp:Label ID="Label5" runat="server" Text="Giờ bắt đầu chu kỳ:" CssClass="lblgiobatdauchuki"></asp:Label><asp:TextBox ID="txtgiobatdau" runat="server" CssClass="txtgiobatdau"></asp:TextBox><asp:Label ID="Label6" runat="server" Text="hh:"></asp:Label><asp:TextBox ID="txtphubatdau" runat="server" CssClass="txtphutbatdau"></asp:TextBox><asp:Label ID="Label7" runat="server" Text="mm"></asp:Label>
                                </li>
                                <li>
                                    <asp:Label ID="Label2" runat="server" Text="Ngày bắt đầu chu kỳ:" CssClass="lblngaybatdauchuki"></asp:Label><asp:DropDownList ID="ddlNgayBatDau" runat="server" CssClass="ddlngaybatdau"></asp:DropDownList><asp:DropDownList ID="ddlThangBatDau" runat="server" CssClass="ddlthangbatdau"></asp:DropDownList><asp:DropDownList ID="ddlNamBatDau" runat="server"></asp:DropDownList>
                                </li>
                                <li>
                                    <asp:Label ID="Label8" runat="server" Text="Giờ kết thúc chu kỳ:" CssClass="lblgioketthucchuki"></asp:Label><asp:TextBox ID="txtgioketthuc" runat="server" CssClass="txtgioketthuc"></asp:TextBox><asp:Label ID="Label9" runat="server" Text="hh:"></asp:Label><asp:TextBox ID="txtphutketthuc" runat="server" CssClass="txtphutketthuc"></asp:TextBox><asp:Label ID="Label10" runat="server" Text="mm"></asp:Label>
                                </li>
                                <li>
                                    <asp:Label ID="Label3" runat="server" Text="Ngày kết thúc chu kỳ:" CssClass="lblngayketthucchuki"></asp:Label><asp:DropDownList ID="ddlNgayKetThuc" runat="server" CssClass="ddlngayketthuc"></asp:DropDownList><asp:DropDownList ID="ddlThangKetThuc" runat="server" CssClass="ddlthangketthuc"></asp:DropDownList><asp:DropDownList ID="ddlNamKetThuc" runat="server"></asp:DropDownList>
                                </li>
                                <li>
                                    <asp:Label ID="Label11" runat="server" Text="Loại hình:"></asp:Label><asp:TextBox ID="txtloaihinh" runat="server" CssClass="txtloaihinh"></asp:TextBox>
                                </li>
                                <li>
                                    <asp:Label ID="Label12" runat="server" Text="Mức độ ưu tiên:"></asp:Label>
                                    <asp:RadioButtonList ID="andOrChoice" runat="server" RepeatDirection="Horizontal"
                                        RepeatLayout="Flow" CssClass="radio-muc-do-uu-tien">
                                        <asp:ListItem Text="ít" Value="1" />
                                        <asp:ListItem Text="vừa" Value="2" Selected="True" />
                                        <asp:ListItem Text="nhiều" Value="3"/>
                                    </asp:RadioButtonList>
                                </li>
                                <li>
                                    <asp:Label ID="Label13" runat="server" Text="Người thực hiện:"></asp:Label><asp:Label ID="lblnguoithuchien" runat="server"></asp:Label>
                                    <asp:Label ID="Label14" runat="server" Text="họ tên nhân viên" Enabled="False" ForeColor="#CCCCCC"></asp:Label>
                                </li>
                            </ul>
                            <asp:Button ID="btntcktheotuan" runat="server" Text="Thêm" CssClass="btn-them-chu-ki" OnClick="btnThemChuKi_Click" />                            
                        </div>
                    </div>
                </td>
                <td onclick="changetooltip(this)">
                    <asp:RadioButton ID="RadioButton2" runat="server" Enabled="False" />&nbsp;Thứ hai</td>
                <td onclick="changetooltip(this)">
                    <asp:RadioButton ID="RadioButton3" runat="server" Enabled="False" />&nbsp;Thứ ba</td>
                <td onclick="changetooltip(this)">
                    <asp:RadioButton ID="RadioButton4" runat="server" Enabled="False" />&nbsp;Thứ tư</td>
                <td onclick="changetooltip(this)">
                    <asp:RadioButton ID="RadioButton5" runat="server" Enabled="False" />&nbsp;Thứ năm</td>
                <td onclick="changetooltip(this)">
                    <asp:RadioButton ID="RadioButton6" runat="server" Enabled="False" />&nbsp;Thứ sáu</td>
                <td onclick="changetooltip(this)">
                    <asp:RadioButton ID="RadioButton7" runat="server" Enabled="False" />&nbsp;Thứ bảy</td>
            </tr>
        </table>  
        <asp:Label ID="Label15" runat="server" Text="Ngày nhập dữ liệu:"></asp:Label> 
        <asp:DropDownList ID="ddlNgayNhapLieu" runat="server"></asp:DropDownList>
        <asp:DropDownList ID="ddlThangNhapLieu" runat="server"></asp:DropDownList>
        <asp:DropDownList ID="ddlNamNhapLieu" runat="server"></asp:DropDownList>
        <br />
        <asp:Label ID="Label16" runat="server" Text="Nhân viên nhập liệu:"></asp:Label>
        <asp:TextBox ID="txtNhanVienNL" runat="server" CssClass="txt-nhan-vien-nhap-lieu"></asp:TextBox>
        <div class="them-chu-ki-button">
            <asp:Button ID="btntcktongquat" runat="server" Text="Thêm" OnClick="btnNhapChuKi_Click" />
            <asp:Button ID="btnReset" runat="server" Text="Làm mới" />
        </div>
    </div>
    </div>
</asp:Content>

 