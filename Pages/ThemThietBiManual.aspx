<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ThemThietBiManual.aspx.cs" Inherits="Pages_ThemThietBiManual" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 class="themthietbititle themthietbititlemanual">Theâm thieát bò</h1>
    <table class="tblthemthietbi">
        <tr class="rowan">
            <td>Mã thiết bị:</td>
            <td><input id="txtmathietbi" name="mathietbi" type="text" value="<%= mathietbimoi %>"/></td>
        </tr>
        <tr>
            <td>
                <label>Tên thiết bị:</label></td>
            <td>
                <input id="txttenthietbi" name="tenthietbi" type="text" onkeypress="ValidatorTenThietBi()" onfocus="FocusTenThietBi()"/>
                <span id="vldtenthietbi"></span>
            </td>
        </tr>
        <tr>
            <td>
                <label>Loại thiết bị:</label></td>
            <td>
                <select id="sltloaithietbi">
                    <% for (int i = 0; i < data.dsLoaiThietBi().Count; i++)
                       {%>
                    <option value="<%= data.dsLoaiThietBi()[i].Maloaitb  %>"><%= data.dsLoaiThietBi()[i].Tenloaitb %></option>
                    <% } %>
                </select>
            </td>
        </tr>
        <tr>
            <td>
                <label>Phòng ban:</label></td>
            <td>
                <select id="sltphongban">
                    <% for (int i = 0; i < data.dsPhongBan().Count; i++)
                       {%>
                    <option value="<%= data.dsPhongBan()[i].Maphongban  %>"><%= data.dsPhongBan()[i].Tenphongban %></option>
                    <% } %>
                </select>
            </td>
        </tr>
        <tr>
            <td>
                <label>Ngày nhập:</label></td>
            <td>
                <select name="ngaynhap" id="sltngaynhap" class="ngaythang">
                    <% for (int i = 0; i < 31; i++)
                       {%>
                    <option value="<%= i + 1  %>"><%= i + 1 %></option>
                    <% } %>
                </select>
                <select name="thangnhap" id="sltthangnhap" class="ngaythang">
                    <% for (int j = 0; j < 12; j++)
                       {%>
                    <option value="<%= j + 1 %>"><%= j + 1 %></option>
                    <% } %>
                </select>
                <select name="namnhap" id="sltnamnhap" class="ngaythang">
                    <% for (int z = 1989; z < 2035; z++)
                       {%>
                    <option value="<%= z + 1 %>"><%= z + 1 %></option>
                    <% } %>
                </select>
        </td>
        </tr>
        <tr>
            <td><label>Tình trạng:</label></td>
            <td><input type="text" id="txttinhtrang" name="tinhtrang"  onkeypress="ValidatorTinhTrang()" onfocus="FocusTinhTrang()" /></td>
        </tr>
        <tr>
            <td><label>Thông số kỹ thuật:</label></td>
            <td><input type="text" id="txtthongsokythuat" name="thongsokythuat" onkeypress="ValidatorThongSoKyThuat()" onfocus="FocusThongSoKyThuat()" /></td>
        </tr>
        <tr>
            <td><label>Giá thành:</label></td>
            <td><input type="text" id="txtgiathanh" name="giathanh" onkeypress="ValidatorGiaThanh()" onfocus="FocusGiaThanh()" /></td>
        </tr>
        <tr>
            <td><label>Vị trí:</label></td>
            <td><input type="text" id="txtvitri" name="vitri" onkeypress="ValidatorViTri()" onfocus="FocusViTri()" /></td>
        </tr>
        <tr>
            <td><label>Lĩnh vực:</label></td>
            <td><input type="text" id="txtlinhvuc" name="linhvuc" onkeypress="ValidatorLinhVuc()" onfocus="FocusLinhVuc()" /></td>
        </tr>
        <tr>
            <td><label>Nhà cung cấp:</label></td>
            <td><input type="text" id="txtnhacungcap" name="nhacungcap" onkeypress="ValidatorNhaCungCap()" onfocus="FocusNhaCungCap()" /></td>
        </tr>
        <tr>
            <td><label>Phiếu mua hàng:</label></td>
            <td><input type="text" id="txtphieumuahang" name="phieumuahang" onkeypress="ValidatorPhieuMuaHang()" onfocus="FocusPhieuMuaHang()" /></td>
        </tr>
        <tr>
            <td><label>Phiếu nhập kho:</label></td>
            <td><input type="text" id="txtphieunhapkho" name="phieunhapkho" onkeypress="ValidatorPhieuNhapKho()" onfocus="FocusPhieuNhapKho()" /></td>
        </tr>
        <tr>
            <td><label>Thiết bị cha:</label></td>
            <td>
                <select id="sltthietbicha" class="ngaythang">
                    <option value="0"></option>
                    <%--thiết bị cha--%>
                    <% for (int nld = 0; nld < data.dsThietBi().Count ; nld++)
                       {%>               
                            <option value="<%= data.dsThietBi()[nld].Matb %>"><%= data.dsThietBi()[nld].Tentb %></option>
                        <% } %>
                </select>
            </td>
        </tr>
        <tr>
            <td><label>Nhà sản xuất:</label></td>
            <td><input type="text" id="txtnhasanxuat" name="nhasanxuat" onkeypress="ValidatorNhaSanXuat()" onfocus="FocusNhaSanXuat()"/></td>
        </tr>
        <tr>
            <td><label>Nước sản xuất:</label></td>
            <td><input type="text" id="txtnuocsanxuat" name="nuocsanxuat" onkeypress="ValidatorNuocSanXuat()" onfocus="FocusNuocSanXuat()"/></td>
        </tr>
        <tr>
            <td><label>Serial:</label></td>
            <td><input type="text" id="txtserial" name="serial" onkeypress="ValidatorSerial()" onfocus="FocusSerial()"/></td>
        </tr>
        <tr>
            <td><label>Model:</label></td>
            <td><input type="text" id="txtmodel" name="model" onkeypress="ValidatorModel()" onfocus="FocusModel()"/></td>
        </tr>
        <tr>
            <td><label>Ngày lắp đặt:</label></td>
            <td>
                <select id="sltngaylapdat" class="ngaythang">
                    <% for (int nld = 0; nld < 31; nld++)
                       {%>               
                            <option value="<%= nld + 1 %>"><%= nld + 1 %></option>
                        <% } %>
                </select>
                <select id="sltthanglapdat" class="ngaythang">
                    <% for (int tld = 0; tld < 31; tld++)
                       {%>               
                            <option value="<%= tld + 1 %>"><%= tld + 1 %></option>
                        <% } %>
                </select>
                <select id="sltnamlapdat" class="ngaythang">
                    <% for (int nld = 1989; nld < 2035; nld++)
                       {%>               
                            <option value="<%= nld + 1 %>"><%= nld + 1 %></option>
                        <% } %>
                </select>
            </td>
        </tr>
        <tr>
            <td><label>Ngày mua:</label></td>
            <td>
                <select id="sltngaymua" class="ngaythang">
                    <% for (int nma = 0; nma < 31; nma++)
                       {%>               
                            <option value="<%= nma + 1 %>"><%= nma + 1 %></option>
                        <% } %>
                </select>
                <select id="sltthangmua" class="ngaythang">
                    <% for (int tma = 0; tma < 12; tma++)
                       {%>               
                            <option value="<%= tma + 1 %>"><%= tma + 1 %></option>
                        <% } %>
                </select>
                <select id="sltnammua" class="ngaythang">
                    <% for (int nma = 1989; nma < 2035; nma++)
                       {%>               
                            <option value="<%= nma + 1 %>"><%= nma + 1 %></option>
                        <% } %>
                </select>
            </td>
        </tr>
        <tr>
            <td><label>Hình ảnh:</label></td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Tải ảnh lên" Width="90px" />
            </td>
        </tr>
        <tr class="rowan">
            <td><label>Tên hình ảnh:</label></td>
            <td>
                <input id="txttenhinhanh" type="text" value="<%= tenhinhanh %>"/>
            </td>
        </tr>
        <tr>
            <td><label>Mô tả cho hình ảnh:</label></td>
            <td><input type="text" id="txtmotahinhanh" name="motahinhanh" class="txtmotahinhanh" onkeypress="ValidatorMoTaHinhAnh()" onfocus="FocusMoTaHinhAnh()"/></td>
        </tr>
        <tr>
            <td><button id="btnthemthietbi" class="btnthemthietbimanual" onclick="themthietbimoi()">Thêm</button></td>
            <td></td>
        </tr>
    </table>
    <script type="text/javascript" language="javascript" src="../Resourcers/Javascripts/ThemThietBiManual.js" charset="utf-8"></script>
 </asp:Content>