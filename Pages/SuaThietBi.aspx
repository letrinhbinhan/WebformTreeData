<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SuaThietBi.aspx.cs" Inherits="Pages_SuaThietBi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="../Resourcers/Javascripts/jquery-3.7.0.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <% DataUtil data = new DataUtil(); 
       string RequestID = Request.QueryString["mathietbi"];
       int idch = Int32.Parse(RequestID);
       ThietBi tb = new ThietBi();
       for(int i = 0; i < data.dsThietBi().Count; i++){
           if(data.dsThietBi()[i].Matb == idch){
               tb = data.dsThietBi()[i];}}           
       %>
    <div class="form-edit-thietbi">
        <table>
            <tr>
                <td>Mã thiết bị:</td>
                <td><input type="text" id="mathietbi" class="edit-thiet-bi-input" value="<%= tb.Matb %>" disabled="disabled"/></td>
            </tr>
            <tr>
                <td>Tên thiết bị</td>
                <td><input type="text" id="tenthietbi" class="edit-thiet-bi-input" value="<%= tb.Tentb %>"/></td>
            </tr>
            <tr>
                <td>Loại thiết bị</td>
                <td>
                    <select id="loaithietbi">
                        <% for(int i = 0; i < data.dsLoaiThietBi().Count; i++){ %>
                            <% if(data.dsLoaiThietBi()[i].Maloaitb == tb.Loaitb){ %>
                            <option value="<%= data.dsLoaiThietBi()[i].Maloaitb %>" selected="selected">
                                <%= data.dsLoaiThietBi()[i].Tenloaitb %>
                            </option>
                            <% } else { %>
                            <option value="<%= data.dsLoaiThietBi()[i].Maloaitb %>">
                                <%= data.dsLoaiThietBi()[i].Tenloaitb %>
                            </option>
                            <% } %>
                        <% } %>                              
                    </select>
                </td>
            </tr>
            <tr>
                <td>Phòng ban:</td>
                <td>
                    <select id="phongban">
                        <% for(int i = 0; i < data.dsPhongBan().Count; i++){ %>
                            <% if(data.dsPhongBan()[i].Idphongban == tb.Phongban){ %>
                                <option value="<%= data.dsPhongBan()[i].Idphongban %>" selected="selected">
                                    <%= data.dsPhongBan()[i].Tenphongban %>
                                </option>
                            <% } else { %>
                                <option value="<%= data.dsPhongBan()[i].Idphongban %>">
                                    <%= data.dsPhongBan()[i].Tenphongban %>
                                </option>
                            <% } %>
                        <% } %>
                    </select>
                </td>
            </tr>
            <tr>
                <td>Ngày nhập:</td>
                <td>
                    <select id="ngaynhap">
                        <% for(int i = 0; i < 31; i++){%>
                            <% if(tb.Ngaynhap.Day==i+1){ %>
                                <option value="<%= i+1 %>" selected="selected">
                                    <%= i+1 %>
                                </option>
                            <% } else { %>
                                <option value="<%= i+1 %>">
                                    <%= i+1 %>
                                </option>
                            <% } %>
                        <% } %>
                    </select>
                    <select id="thangnhap">
                        <% for(int i = 0; i < 12; i++){%>
                            <% if(tb.Ngaynhap.Month==i+1){ %>
                                <option value="<%= i+1 %>" selected="selected">
                                    <%= i+1 %>
                                </option>
                            <% } else { %>
                                <option value="<%= i+1 %>">
                                    <%= i+1 %>
                                </option>
                            <% } %>
                        <% } %>
                    </select>
                    <select id="namnhap">
                        <% int nam; %>
                        <% nam = 1998; %>
                        <% for(int i = 0; i < 61; i++){%>
                            <% if(tb.Ngaynhap.Year==(nam+i)){ %>
                                <option value="<%= nam + i %>" selected="selected">
                                    <%= nam + i %>
                                </option>
                            <% } else { %>
                                <option value="<%= nam + i %>">
                                    <%= nam + i %>
                                </option>
                            <% } %>
                        <% } %>
                    </select>
                </td>
            </tr>
            <tr>
                <td>Tình trạng:</td>
                <td><input id="tinhtrang" type="text" value="<%= tb.Tinhtrang %>"/> </td>
            </tr>
            <tr>
                <td>Thông số kỹ thuật:</td>
                <td><input id="thongsokythuat" type="text" value="<%= tb.Thongsokthuat %>" /></td>
            </tr>
            <tr>
                <td>Giá thành:</td>
                <td><input id="giathanh" type="text" value="<%= tb.Giathanh %>" /></td>
            </tr>
            <tr>
                <td>Vi trí:</td>
                <td>
                    <select id="vitri">
                        <% for(int i = 0; i < data.dsViTri().Count; i++){ %>
                            <% if(data.dsViTri()[i].Id1 == tb.Vitri){ %>
                                <option value="<%= data.dsViTri()[i].Id1 %>">
                                    <%= data.dsViTri()[i].Tenvitri %>
                                </option>
                            <% } else { %>
                                <option value="<%=data.dsViTri()[i].Id1 %>">
                                    <%= data.dsViTri()[i].Tenvitri %>
                                </option>
                            <% } %>
                        <% } %>
                    </select>
                </td>
            </tr>
            <tr>
                <td>Nhà cung cấp:</td>
                <td>
                    <select id="nhacungcap">
                        <% for(int i = 0; i < data.dsNhaCungCap().Count; i++){ %>
                            <% if(data.dsNhaCungCap()[i].Id1.ToString()==tb.NCC1){ %>
                                <option value="<%= data.dsNhaCungCap()[i].Id1 %>">
                                    <%= data.dsNhaCungCap()[i].Tennhacungcap %>
                                </option>
                            <% } else { %>
                                <option value="<%= data.dsNhaCungCap()[i].Id1 %>">

                                </option>
                            <% } %>
                        <% } %>
                    </select>
                </td>
            </tr>
            <tr>
                <td>Phiếu mua hàng:</td>
                <td>
                    <select id="phieumuahang">
                        <% for(int i = 0; i < data.dsPhieuMuaHang().Count; i++){ %>
                            <% if(data.dsPhieuMuaHang()[i].Id1.ToString()==tb.Phieumuahang){ %>
                                <option value="<%= data.dsPhieuMuaHang()[i].Id1 %>">
                                    <%= data.dsPhieuMuaHang()[i].Tenphieumuahang %>
                                </option>
                            <%} else { %>
                                <option value="<%= data.dsPhieuMuaHang()[i].Id1 %>">
                                    <%= data.dsPhieuMuaHang()[i].Tenphieumuahang %>
                                </option>
                            <% } %>
                        <% } %>
                    </select>
                </td>
            </tr>
            <tr>
                <td>Hư hỏng:</td>
                <td><input id="huhong" type="text" value="<%= tb.Huhong %>" /></td>
            </tr>
            <tr>
                <td>Người duyệt:</td>
                <td><input id="nguoiduyet" type="text" value="<%= tb.Nguoiduyet %>" /></td>
            </tr>
            <tr>
                <td>Ngày duyệt:</td>
                <td>
                    <select id="ngayduyet">
                        <% for(int i = 0; i < 31; i++){%>
                            <% if(tb.Ngayduyet.Day==i+1){ %>
                                <option value="<%= i+1 %>" selected="selected">
                                    <%= i+1 %>
                                </option>
                            <% } else { %>
                                <option value="<%= i+1 %>">
                                    <%= i+1 %>
                                </option>
                            <% } %>
                        <% } %>
                    </select>
                    <select id="thangduyet">
                        <% for(int i = 0; i < 12; i++){%>
                            <% if(tb.Ngayduyet.Month==i+1){ %>
                                <option value="<%= i+1 %>" selected="selected">
                                    <%= i+1 %>
                                </option>
                            <% } else { %>
                                <option value="<%= i+1 %>">
                                    <%= i+1 %>
                                </option>
                            <% } %>
                        <% } %>
                    </select>
                    <select id="namduyet">
                        <% nam = 1998; %>
                        <% for(int i = 0; i < 61; i++){%>
                            <% if(tb.Ngayduyet.Year==(nam+i)){ %>
                                <option value="<%= nam + i %>" selected="selected">
                                    <%= nam + i %>
                                </option>
                            <% } else { %>
                                <option value="<%= nam + i %>">
                                    <%= nam + i %>
                                </option>
                            <% } %>
                        <% } %>
                    </select>
                </td>
            </tr>
            <tr>
                <td>Thời hạn bảo hành:</td>
                <td><input id="thoihanbaohanh" type="text" value="<%= tb.Thoihanbaohanh %>" /></td>
            </tr>
            <tr>
                <td>Thiết bị cha:</td>
                <td>
                    <% if(tb.Thietbicha != 0) { %>
                        <% for(int i = 0; i < data.dsThietBi().Count; i++){ %>
                            <% if(data.dsThietBi()[i].Matb == tb.Thietbicha){ %>
                                <input id="thietbicha" type="text" value="<%= data.dsThietBi()[i].Tentb %>" />
                            <% } else { %>
                                    <input id="thietbicha" type="text" value="không tìm thấy thiết bị cha" />
                            <% } %>
                        <% } %>
                    <% } else { %>
                        <input id="thietbicha" type="text" value="" />
                    <% } %>
                </td>
            </tr>
            <tr>
                <td>Cây thư mục:</td>
                <td><input id="caythumuc" type="text" value="<%= tb.Capcaythumuc %>" /></td>
            </tr>
            <tr>
                <td>Nhà sản xuất:</td>
                <td><input id="nhasanxuat" type="text" value="<%= tb.Nhasanxuat %>" /></td>
            </tr>
            <tr>
                <td>Nước sản xuất:</td>
                <td><input id="nuocsanxuat" type="text" value="<% tb.Nuocsanxuat %>" /></td>
            </tr>
            <tr>
                <td>Serial:</td>
                <td><input id="serial" type="text" value="<%= tb.Serial %>" /></td>
            </tr>
            <tr>
                <td>Model:</td>
                <td><input id="model" type="text" value="<%= tb.Model %>" /></td>
            </tr>
            <tr>
                <td>Ngày lắp đặt:</td>
                <td>
                    <select id="ngaylapdat">
                        <% for(int i = 0; i < 31; i++){%>
                            <% if(tb.Ngaylapdat.Day==i+1){ %>
                                <option value="<%= i+1 %>" selected="selected">
                                    <%= i+1 %>
                                </option>
                            <% } else { %>
                                <option value="<%= i+1 %>">
                                    <%= i+1 %>
                                </option>
                            <% } %>
                        <% } %>
                    </select>
                    <select id="thanglapdat">
                        <% for(int i = 0; i < 12; i++){%>
                            <% if(tb.Ngaylapdat.Month==i+1){ %>
                                <option value="<%= i+1 %>" selected="selected">
                                    <%= i+1 %>
                                </option>
                            <% } else { %>
                                <option value="<%= i+1 %>">
                                    <%= i+1 %>
                                </option>
                            <% } %>
                        <% } %>
                    </select>
                    <select id="namlapdat">
                        <% nam = 1998; %>
                        <% for(int i = 0; i < 61; i++){%>
                            <% if(tb.Ngaylapdat.Year==(nam+i)){ %>
                                <option value="<%= nam + i %>" selected="selected">
                                    <%= nam + i %>
                                </option>
                            <% } else { %>
                                <option value="<%= nam + i %>">
                                    <%= nam + i %>
                                </option>
                            <% } %>
                        <% } %>
                    </select>
                </td>
            </tr>
            <tr>
                <td>Ngày mua:</td>
                <td>
                    <select id="ngaymua">
                        <% for(int i = 0; i < 31; i++){%>
                            <% if(tb.Ngaymua.Day==i+1){ %>
                                <option value="<%= i+1 %>" selected="selected">
                                    <%= i+1 %>
                                </option>
                            <% } else { %>
                                <option value="<%= i+1 %>">
                                    <%= i+1 %>
                                </option>
                            <% } %>
                        <% } %>
                    </select>
                    <select id="thangmua">
                        <% for(int i = 0; i < 12; i++){%>
                            <% if(tb.Ngaymua.Month==i+1){ %>
                                <option value="<%= i+1 %>" selected="selected">
                                    <%= i+1 %>
                                </option>
                            <% } else { %>
                                <option value="<%= i+1 %>">
                                    <%= i+1 %>
                                </option>
                            <% } %>
                        <% } %>
                    </select>
                    <select id="nammua">
                        <% nam = 1998; %>
                        <% for(int i = 0; i < 61; i++){%>
                            <% if(tb.Ngaymua.Year==(nam+i)){ %>
                                <option value="<%= nam + i %>" selected="selected">
                                    <%= nam + i %>
                                </option>
                            <% } else { %>
                                <option value="<%= nam + i %>">
                                    <%= nam + i %>
                                </option>
                            <% } %>
                        <% } %>
                    </select>
                </td>
            </tr>
            <tr>
                <td>Link image:</td>
                <td>
                <iframe name="hidden-iframe" style="display: none;">
                    <form name="myUploadForm" method="post" action="/scripts/upload.do" enctype="multipart/form-data" id="fileUpload">
                        <table width="100%" border="0">
                            <tr>
                                <td>
                                    <input type="file" name="xlsFile" size="60" value="test.xls"/>
                                    <input type="button" value="Upload File" name="upload_xls"/>
                                </td>
                            </tr>
                        </table>
                    </form>
                </iframe>
                 </td>
            </tr>
        </table>
    </div>
</asp:Content>

