<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SuaThietBi.aspx.cs" Inherits="Pages_SuaThietBi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type="text/javascript" src="../Resourcers/Javascripts/jquery-3.7.0.min.js"></script>
    <link href="../Styles/SuaThietBi.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <%--http://localhost:51990/Pages/SuaThietBi.aspx?mathietbi=134&matb=134&tentb=123&loaitb=123&phongban=123&ngaynhap=01-01-2023&tinhtrang=123&thongsokthuat=123&giathanh=123&vitri=123&NCC=123&phieumuahang=123&huhong=123&nguoiduyet=123&ngayduyet=01-01-2023&thoihanbaohanh=123&thietbicha=123&capcaythumuc=123&nhasanxuat=123&nuocsanxuat=123&serial=123&model=123&ngaylapdat=01-01-2023&ngaymua=01-01-2023&linkimage=123&imagedescription=123&chitietbangbaogia=123&maql=123&phieunhapkho=123&linhvucsudung=123&donvitiente=123&lathietbigoc=123--%>
    <% DataUtil data = new DataUtil();
       string RequestID;
       RequestID = Request.QueryString["mathietbi"];
       int idch;
       idch = 0;
       if (Request.QueryString["mathietbi"]!=null)
       {
           idch = Int32.Parse(RequestID); 
       }             
       int matb;
       matb = 0;
       if (Request.QueryString["matb"]!=null)
       {
           matb=Int32.Parse(Request.QueryString["matb"]);    
       }       
       string tentb = Request.QueryString["tentb"];
       int loaitb;
       loaitb = 0;
       if (Request.QueryString["loaitb"] != null)
       {
           loaitb = Int32.Parse(Request.QueryString["loaitb"]);
       }
       int phongban;
       phongban = 0;
       if(Request.QueryString["phongban"]!=null)
       {
           phongban=Int32.Parse(Request.QueryString["phongban"]);
       }
       string ngaynhap = Request.QueryString["ngaynhap"];
       string tinhtrang = Request.QueryString["tinhtrang"];
       string thongsokthuat = Request.QueryString["thongsokthuat"];
       int giathanh;
       giathanh = 0;
       if(Request.QueryString["giathanh"]!=null)
       {
           giathanh=Int32.Parse(Request.QueryString["giathanh"]);
       };
       int vitri;
       vitri = 0;
       if(Request.QueryString["vitri"]!=null)
       {
           vitri=Int32.Parse(Request.QueryString["vitri"]);
       };
       int NCC;
       NCC = 0;
       if(Request.QueryString["NCC"]!=null)
       {
           NCC=Int32.Parse(Request.QueryString["NCC"]);
       };
       string phieumuahang = Request.QueryString["phieumuahang"];
       string huhong = Request.QueryString["huhong"];
       string nguoiduyet = Request.QueryString["nguoiduyet"];
       string ngayduyet = Request.QueryString["ngayduyet"];
       string thoihanbaohanh = Request.QueryString["thoihanbaohanh"];
       int thietbicha;
       thietbicha = 0;
       if(Request.QueryString["thietbicha"]!=null)
       {
           thietbicha=Int32.Parse(Request.QueryString["thietbicha"]);
       };
       int capcaythumuc;
       capcaythumuc = 0;
       if(Request.QueryString["capcaythumuc"]!=null)
       {
            capcaythumuc = Int32.Parse(Request.QueryString["capcaythumuc"]);
       };
       string nhasanxuat = Request.QueryString["nhasanxuat"];
       string nuocsanxuat = Request.QueryString["nuocsanxuat"];
       string serial = Request.QueryString["serial"];
       string model = Request.QueryString["model"];
       string ngaylapdat = Request.QueryString["ngaylapdat"];
       string ngaymua = Request.QueryString["ngaymua"];
       string linkimage = Request.QueryString["linkimage"];
       string imagedescription = Request.QueryString["imagedescription"];
       int chitietbangbaogia;
       chitietbangbaogia = 0;
       if(Request.QueryString["chitietbangbaogia"]!=null)
       {
           chitietbangbaogia=Int32.Parse(Request.QueryString["chitietbangbaogia"]);
       };
       string maql = Request.QueryString["maql"];
       string phieunhapkho = Request.QueryString["phieunhapkho"];
       string linhvucsudung = Request.QueryString["linhvucsudung"];
       string donvitiente = Request.QueryString["donvitiente"];
       bool lathietbigoc;
       if (Request.QueryString["lathietbigoc"] == "true")
           lathietbigoc = true;
       else
           lathietbigoc = false;
       ThietBi tb = new ThietBi();
       for(int i = 0; i < data.dsThietBi().Count; i++){
           if(data.dsThietBi()[i].Matb == idch){
               tb = data.dsThietBi()[i];}}           
       %>
    <div class="form-edit-thietbi">
        <table>
            <tr>
                <td>Mã thiết bị:</td>
                <td>
                    <% if(Request.QueryString["matb"]==null){ %>
                            <input type="text" id="mathietbi" class="edit-thiet-bi-input" value="<%= tb.Matb %>" disabled="disabled"/>
                    <%} else { %>
                        <input type="text" id="mathietbi" class="edit-thiet-bi-input" value="<%= matb %>" disabled="disabled"/>
                    <% } %>
                </td>
            </tr>
            <tr>
                <td>Tên thiết bị</td>
                <td>
                <% if(Request.QueryString["tentb"]==null){ %>
                        <input type="text" id="tenthietbi" class="edit-thiet-bi-input" value="<%= tb.Tentb %>"/>
                    <%} else { %>
                        <input type="text" id="tenthietbi" class="edit-thiet-bi-input" value="<%= tentb %>"/>
                    <% } %>
                </td>
            </tr>
            <tr>
                <td>Loại thiết bị</td>
                <td>
                    <select id="loaithietbi">
                        <% for(int i = 0; i < data.dsLoaiThietBi().Count; i++){ %>
                            <% if(Request.QueryString["loaitb"]!=null){ %>
                                <% if(data.dsLoaiThietBi()[i].Maloaitb == loaitb){ %>
                                    <option value="<%= loaitb %>" selected="selected"><%= data.dsLoaiThietBi()[i].Tenloaitb %></option>                         
                                <% } else {%>
                                    <option value="<%= data.dsLoaiThietBi()[i].Maloaitb %>"><%= data.dsLoaiThietBi()[i].Tenloaitb %></option>
                            <% } %>
                            <%} else { %>
                                <% if(data.dsLoaiThietBi()[i].Maloaitb == tb.Loaitb){ %>
                                    <option value="<%= tb.Loaitb %>" selected="selected"><%= data.dsLoaiThietBi()[i].Tenloaitb %></option>
                                <%} else { %>
                                    <option value="<%= data.dsLoaiThietBi()[i].Maloaitb %>"><%= data.dsLoaiThietBi()[i].Tenloaitb %></option>
                                <% } %>
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
                            <% if(Request.QueryString["phongban"]!=null){ %>
                                <% if (data.dsPhongBan()[i].Idphongban == phongban)
                                   { %>
                                    <option value="<%= phongban %>" selected="selected"><%= data.dsPhongBan()[i].Tenphongban %></option>                         
                                <% } else {%>
                                    <option value="<%= data.dsPhongBan()[i].Idphongban %>"><%= data.dsPhongBan()[i].Tenphongban %></option>
                            <% } %>
                            <%} else { %>
                                <% if (data.dsPhongBan()[i].Idphongban == tb.Phongban) 
                                   { %>
                                    <option value="<%= tb.Phongban %>" selected="selected"><%= data.dsPhongBan()[i].Tenphongban %></option>
                                <%} else { %>
                                    <option value="<%= data.dsPhongBan()[i].Idphongban %>"><%= data.dsPhongBan()[i].Tenphongban %></option>
                                <% } %>
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
                                    <%= data.dsNhaCungCap()[i].Tennhacungcap %>
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
                                <input id="thietbichaid" type="text" value="<%= data.dsThietBi()[i].Matb %>" class="txtthietbichaid"/>
                                <input id="thietbicha" type="text" value="<%= data.dsThietBi()[i].Tentb %>" />
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
                <td><input id="nuocsanxuat" type="text" value="<%= tb.Nuocsanxuat %>" /></td>
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
                    <img src="../Resourcers/Images/ThietBi/<%= tb.Linkimage %>" alt="<%= tb.Imagedescription %>" class="image"/>
                    <div id="<%= tb.Matb %>" class="btn-sua-hinh-anh" onclick="suahinhanh(this)">Sửa</div>
                 </td>
            </tr>
            <tr>
                <td>Image description</td>
                <td><input id="imagedescription" type="text" value="<%= tb.Imagedescription %>" /></td>
            </tr>
            <tr>
                <td>Chi tiết bảng báo giá:</td>
                <td><input id="chitietbangbaogia" type="text" value="<%= tb.Chitietbangbaogia %>" /></td>
            </tr>
            <tr>
                <td>Mã quản lý:</td>
                <td><input id="maquanly" type="text" value="<%= tb.Maql %>" /></td>
            </tr>
            <tr>
                <td>Phiếu nhập kho:</td>
                <td><input id="phieunhapkho" type="text" value="<%= tb.Phieunhapkho %>" /></td>
            </tr>
            <tr>
                <td>Lĩnh vực sử dụng:</td>
                <td><input id="linhvucsudung" type="text" value="<%= tb.Linhvucsudung %>" /></td>
            </tr>
            <tr>
                <td>Đơn vị tiền tệ:</td>
                <td><input id="donvitiente" type="text" value="<%= tb.Donvitiente %>" /></td>
            </tr>
            <tr>
                <td>Là thiết bị gốc:</td>
                <td><input id="lathietbigoc" type="text" value="<%= tb.Lathietbigoc %>" /></td>
            </tr>
            <tr>
                <td>
                    <div class="btnSua">Sửa</div>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

