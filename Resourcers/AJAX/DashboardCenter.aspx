<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DashboardCenter.aspx.cs" Inherits="Resourcers_AJAX_DashboardCenter" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">    
</head>
<body>
    <div class="dbctdivtitle">
        <h1 class="center-title">
            <%= TenThietBi %></h1>
        <img src="Resourcers/Images/wrench.png" alt="repair device" class="wrench" onclick="SuaThietBi(this)" id="<%= MaThietBi %>"/>
    </div>
    <div class="top-chm">
        <div class="tchm-thongtinchung" onclick="showThongtinChung()" >Thông tin chung</div> 
        <div class="tchm-chitiet" onclick="showChiTiet()">Chi tiết</div> 
        <div id="btnphutung" class="tchm-phutung"
             onclick="showPhuTung()">Phụ tùng</div> 
        <div class="tchm-baotri" onclick="showBaoTri()">Bảo trì</div> 
        <div class="tchm-tailieuthietbi" onclick="showTaiLieu()">Tài liệu thiết bị</div>
    </div>
    <hr/>
    <div id="panelttc" class="tcgm-noidung-thongtinchung">
        <table class="dctblthongtinchitiet">
			<tr>
				<td>Mã thiết bị:</td>
				<td>
					<input type="text" value="<%= MaThietBi %>" class="dctxtttthietbi"/>
				</td>
			</tr>
			<tr>
				<td>Loại thiết bị:</td>
				<td>
					<input type="text" value="<%= TenLoaiThietBi %>" class="dctxtttthietbi"/>					
				</td>
			</tr>
            <tr>
				<td>Phòng ban:</td>
				<td>
					<input type="text" value="<%= TenPhongBan %>" class="dctxtttthietbi"/>					
				</td>
			</tr>
            <tr>
				<td>Ngày nhập:</td>
				<td>
                    <select id="sltngaynhap" class="dcsltthoigiannt">
                        <option>
                            <% if(NgayNhap.Day.ToString().Length == 1) { %> 
                                <%= "0" + NgayNhap.Day %>
                            <% } else { %>
                                    <%= NgayNhap.Day %>
                            <% } %>
                        </option>
                    </select>
                    <select id="sltthangnhap" class="dcsltthoigiannt">
                        <option>
                            <% if(NgayNhap.Month.ToString().Length == 1) { %> 
                                <%= "0" + NgayNhap.Month %>
                            <% } else { %>
                                    <%= NgayNhap.Month %>
                            <% } %>
                        </option>
                    </select>
                    <select id="sltnamnhap" class="dcsltthoigiannam">
                        <option><%= NgayNhap.Year %></option>
                    </select>
				</td>
			</tr>
            <!-- <tr>
				<td>Tình trạng:</td>
				<td>
					<input type="text" value="<%= TinhTrang %>" class="dctxttinhtrang"/>					
				</td>
			</tr> -->
            <!-- <tr>
				<td>Thông số kỹ thuật:</td>
				<td>					
                    <textarea rows="5" cols="86" class="dctxtthongsokythuat"><%= ThongSoKyThuat %></textarea>					
				</td>
			</tr>             -->
            <tr>
                <td>
                    Tên thiết bị:
                </td>
                <td>
                    <input type="text" value="<%= TenThietBi %>" class="dctxtttthietbi"/>
                </td>
            </tr>
            <!-- <tr>
                <td>
                    Giá thành:
                </td>
                <td>
                    <input type="text" value="<%= GiaThanh %>" />
                </td>
            </tr> -->
            <!-- <tr>
                <td>
                    Ví trí:
                </td>
                <td>
                    <input type="text" value="<%= ViTri %>" />
                </td>
            </tr> -->
            <tr>
                <td class="dclblnhacungcap">
                    Nhà cung cấp:
                </td>
                <td>
                    <input type="text" value="<%= NCC %>" class="dctxtttthietbi"/>
                </td>
            </tr>
            <!-- <tr>
                <td>
                    Phiếu mua hàng:
                </td>
                <td>
                    <input type="text" value="<%= PhieuMuaHang %>" />
                </td>
            </tr> -->
            <tr>
                <td class="dclblhuhong">
                    Hư hỏng:
                </td>
                <td>
                    <input type="text" value="<%= HuHong %>" class="dctxtttthietbi"/>
                </td>
            </tr>
            <!-- <tr>
                <td>
                    Người duyệt:
                </td>
                <td>
                    <input type="text" value="<%= NguoiDuyet %>" />
                </td>
            </tr> -->
            <!-- <tr>
                <td>
                    Ngày duyệt:
                </td>
                <td>                    
                    <select id="sltngayduyet">
                        <option value="<%= NgayDuyet.Day %>"><%= NgayDuyet.Day %></option>
                    </select>
                    <select id="sltthangduyet">
                        <option value="<%= NgayDuyet.Month %>"><%= NgayDuyet.Month %></option>
                    </select>
                    <select id="sltnamduyet">
                        <option value="<%= NgayDuyet.Year %>"><%= NgayDuyet.Year %></option>
                    </select>
                </td>
            </tr> -->
            <tr>
                <td class="dclblthoihanbaohanh" class="dclblthoihanbaohanh">
                    Thời hạn bảo hành:
                </td>
                <td>
                    <input type="text" value="<%= ThoiHanBaoHanh %>" class="dctxtttthietbi"/>
                </td>
            </tr>
            <!-- <tr>
                <td>
                    Thiết bị cha:
                </td>
                <td>
                    <input type="text" value="<%= ThietBiCha %>" />
                </td>
            </tr> -->
            <!-- <tr>
                <td>
                    Mã thiết bị cha:
                </td>
                <td>
                    <input type="text" value="<%= MaThietBiCha %>" class="dctxtmathietbicha"/>
                </td>
            </tr> -->
            <tr>
                <td class="dclblnhasanxuat">
                    Nhà sản xuất:
                </td>
                <td>
                    <input type="text" value="<%= NSX %>" class="dctxtttthietbi"/>
                </td>
            </tr>
            <tr>
                <td class="dclblnuocsanxuat">
                    Nước sản xuất:
                </td>
                <td>
                    <input type="text" value="<%= NuocSX %>" class="dctxtttthietbi"/>
                </td>
            </tr>
            <tr>
                <td class="dclblserial">
                    Serial:
                </td>
                <td>
                    <input type="text" value="<%= Serial %>" class="dctxtttthietbi"/>
                </td>
            </tr>
            <tr>
                <td class="dclblmodel">
                    Model:
                </td>
                <td>
                    <input type="text" value="<%= Model %>" class="dctxtttthietbi"/>
                </td>
            </tr>
            <tr>
                <td class="dclblngaylapdat" class="dclblngaylapdat">
                    Ngày lắp đặt:
                </td>
                <td>                    
                    <select id="sltngaylapdat" class="dcsltthoigiannt">
                        <option value="<%= Ngaylapdat.Day %>">
                            <% if(Ngaylapdat.Day.ToString().Length == 1) {%>
                                <%= "0" + Ngaylapdat.Day %>
                            <% } else { %>
                                <%= Ngaylapdat.Day %>
                            <% } %>                            
                        </option>
                    </select>
                    <select id="sltthanglapdat" class="dcsltthoigiannt">
                        <option value="<%= Ngaylapdat.Month %>">
                            <% if(Ngaylapdat.Month.ToString().Length == 1) {%>
                                <%= "0" + Ngaylapdat.Month %>
                            <% } else { %>
                                <%= Ngaylapdat.Month %>
                            <% } %>
                        </option>
                    </select>
                    <select id="sltnamlapdat" class="dcsltthoigiannam">
                        <option value="<%= Ngaylapdat.Year %>"><%= Ngaylapdat.Year %></option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>
                    Ngày mua:
                </td>
                <td>                    
                    <select id="sltngaymua" class="dcsltthoigiannt">
                        <option value="<%= Ngaymua.Day %>">
                            <% if(Ngaymua.Day.ToString().Length == 1) {%>
                                <%= "0" + Ngaymua.Day %>
                            <% } else { %>
                                <%= Ngaymua.Day %>
                            <% } %>
                        </option>
                    </select>
                    <select id="sltthangmua" class="dcsltthoigiannt">
                        <option value="<%= Ngaymua.Month %>">
                            <% if(Ngaymua.Month.ToString().Length == 1) { %>
                                <%= "0" + Ngaymua.Month %>
                            <% } else { %>
                                <%= Ngaymua.Month %>
                            <% } %>
                        </option>
                    </select>
                    <select id="sltnammua" class="dcsltthoigiannam">
                        <option value="<%= Ngaymua.Year %>"><%= Ngaymua.Year %></option>
                    </select>
                </td>
            </tr>
            <!-- <tr>
                <td>
                    Link image:
                </td>
                <td>
                    <input type="text" value="<%= LinkImage %>" class="dctxtlinkimage"/>
                </td>
            </tr> -->
            <!-- <tr>
                <td>
                    Image Decription:
                </td>
                <td>
                    <input type="text" value="<%= ImageDescription %>" />
                </td>
            </tr> -->
            <!-- <tr>
                <td>
                    Chi tiết bảng giá:
                </td>
                <td>
                    <input type="text" value="<%= ChiTietBangGia %>" />
                </td>
            </tr> -->
            <tr>
                <td>
                    Mã quản lý:
                </td>
                <td>
                    <input type="text" value="<%= MaQuanLy %>" class="dctxtttthietbi"/>
                </td>
            </tr>
            <!-- <tr>
                <td>
                    Phiếu nhập kho:
                </td>
                <td>
                    <input type="text" value="<%= PhieuNhapKho %>" />
                </td>
            </tr> -->
            <!-- <tr>
                <td>
                    Lĩnh vực sử dụng:
                </td>
                <td>
                    <input type="text" value="<%= LinhVucSuDung %>" />
                </td>
            </tr> -->
            <!-- <tr>
                <td>
                    Đơn vị tiền tệ:
                </td>
                <td>
                    <input type="text" value="<%= DonViTienTe %>" />
                </td>
            </tr> -->
        </table>
    </div>
    <div id="panelchitiet" class="tcgm-noidung-chitiet">        
        <p class="dashboardlblphutung">Danh sách chi tiết:</p>
        <a href="/Pages/ThemChiTiet.aspx?mathietbi=<%= mathietbi %>" class="dctbtnthemchitiet">Thêm</a> 
        <table id="dcdanhsachchitiet" class="tbborder <%= chitietvsb %>">
            <tr>
                <th>Xóa</th>
                <th>STT</th>
                <th>Tên chi tiết</th>
                <th>Thông số KT</th>
                <th>ĐVị</th>
                <th>Model</th>
                <th>PartNo</th>
            </tr>
            <% for(int ct = 0; ct < dsChiTietThietBi.Count; ct++) {%>
            <tr id="cttbrow<%= dsChiTietThietBi[ct].Id %>">
                <td><input type="checkbox" onchange="xoachitiet(this)" value="<%= dsChiTietThietBi[ct].Id %>"/></td>
                <td><%= dsChiTietThietBi[ct].Tenchitiet %></td>
                <td><%= dsChiTietThietBi[ct].Thongsokythuat %></td>
                <td><%= dsChiTietThietBi[ct].Donvi %></td>
                <td><%= dsChiTietThietBi[ct].Model %></td>
                <td><%= dsChiTietThietBi[ct].Partno %></td>
            </tr>
            <% } %>
        </table>
    </div>    
    <div id="panelphutung" class="tcgm-noidung-phutung">
        <p class="dashboardlblphutung">Danh sách phụ tùng:</p>        
        <a href="/Pages/ThemPhuTung.aspx?mathietbi=<%= mathietbi %>" class="dctbtnthemphutung">Thêm</a> 
        <table id="dcdanhsachphutung" class="tbborder <%= tblvsb %>">
            <tr>
                <th>
                    STT
                </th>
                <th>
                    Mã phụ tùng
                </th>
                <th>
                    Tên phụ tùng
                </th>
                <th>
                    Ngày nhập
                </th>
                <th>
                    Giá cả
                </th>
                <th>
                    Tình trạng
                </th>
            </tr>
            <% for(int i=0; i < dsphutung.Count; i++){%>               
                <tr id="<%= dsphutung[i].Mapt %>" class="rowphutung" onclick="rowdsphutungclick(this)">
                    <td>
                        <%= (i + 1).ToString() %>
                    </td>
                    <td>
                        <%= dsphutung[i].Mapt%>
                    </td>
                    <td>
                        <%= dsphutung[i].Tenpt %>
                    </td>
                    <td>
                        <%= dsphutung[i].Ngaynhap.ToString("dd-MM-yyyy") %>
                    </td>
                    <td>
                        <%= FormatVND(dsphutung[i].Giaca) %>
                    </td>
                    <td>                        
                        <%= dsphutung[i].Tinhtrang?"Hư hỏng":"Tốt" %>
                    </td>
                </tr>
            <% } %>
                         
        </table>
    </div>
    <div id="panelbaotri" class="tcgm-noidung-baotri">
        <p class="dashboardlbllichbaotri">Lịch bảo trì:</p>        
        <a href="/Pages/ThemBaoTri3.aspx?mathietbi=<%= mathietbi %>" class="dcbtnthemlichbaotri">Thêm</a> 
        <table class="tbborder <%= tbllbt %>">
            <tr>
                <th>
                    Mã bảo trì
                </th>
                <th class="dcbaotrilblmathietbibaotri">
                    Mã thiết bị
                </th>
                <th class="dctblbaotrithoigianbd">
                    Thời gian bắt đầu
                </th>
                <th class="dctblbaotrithoigiankt">
                    Thời gian kết thúc
                </th>
                <th>
                    Ghi chú
                </th>
                <th class="dctblnguoilap">
                    Người lập
                </th>
                <th>
                    Loại hình
                </th>
            </tr> 
            <% for(int l=0; l < dsLBTThietBi.Count; l++){%>               
                <tr id="<%= dsLBTThietBi[l].Matbbt %>" class="rowtbbt" onclick="rowtbbtclick(this)">
                    <td>
                        <%= dsLBTThietBi[l].Matbbt %>
                    </td>
                    <td class="dcbaotrilblmathietbibaotri">
                        <%= dsLBTThietBi[l].Mathietbibt %>
                    </td>
                    <td class="dctblbaotrithoigianbd">
                        <%= dsLBTThietBi[l].Thoigianbatdau.ToString("dd-MM-yyyy") %>
                    </td>
                    <td class="dctblbaotrithoigiankt">
                        <%= dsLBTThietBi[l].Thoigianketthuc.ToString("dd-MM-yyyy") %>
                    </td>
                    <td>
                        <%= dsLBTThietBi[l].Ghichu %>
                    </td>
                    <td class="dctblnguoilap">
                        <%= dsLBTThietBi[l].Nguoilap %>
                    </td>
                    <td>
                        <%= dsLBTThietBi[l].Loaihinh %>
                    </td>
                </tr>
            <% } %>      
        </table>		      
    </div>
    <div id="paneltailieu" class="tcgm-noidung-tailieuthietbi">   
        <p class="dashboardlbltailieuthietbi">Tài liệu thiết bị:</p>     
        <a href="/Pages/ThemTaiLieu.aspx?mathietbi=<%= mathietbi %>" class="dcbtnthemtailieu">Thêm</a>        
        <table class="dctbltailieu">            
            <% for(int tl=0; tl < dsThietBiTaiLieu.Count; tl++){%>               
                <tr>
                    <td colspan="2">
                        
                    </td>
                    <td>                        
                        <p id="<%= dsThietBiTaiLieu[tl].Tenfile %>" class="dstltb" onclick="opentailieu(this)"><%= dsThietBiTaiLieu[tl].Tentailieu %> <%--: <%= dsThietBiTaiLieu[tl].Linktailieu %>--%></p><div class="dstltbbtnxoa" onClick="deletetailieu(this)">Xóa</div>
                    </td>
                </tr>
            <% } %> 
        </table>		
    </div>
</body>
</html>
