<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DashboardCenter.aspx.cs"
    Inherits="Resourcers_AJAX_DashboardCenter" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server"></head>
<body>
    <% DataUtil data = new DataUtil();%>
  <div id="mathietbi" class="d-none"><%= MaThietBi %></div>  
    <div class="dbctdivtitle">
        <h1 class="center-title"><%= TenThietBi %></h1>        
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
    <hr />
	<div id="panelttc" class="tcgm-noidung-thongtinchung">
        <div class="container mt-3">
            <div class="dc-btn-nav">
                <button type="button" class="btn btn-primary" onclick="SuaThietBi()">
                    Sửa
                </button>
                <button type="button" class="btn btn-primary dc-btn-xoa-thiet-bi" onclick="XoaThietBi()">
                    Xóa
                </button>
            </div>
        </div>    
        <table class="dctblthongtinchitiet">
            <tr>
                <td>Mã thiết bị:</td>
                <td>
                    <input
                        id="txtmathietbi"
                        type="text"
                        value="<%= MaThietBi %>"
                        class="dctxtttthietbi"
                        disabled="disabled" />
                </td>
            </tr>
            <tr>
                <td>Loại thiết bị:</td>
                <td>
                    <select id="sltloaithietbi">
                        <% for (int i = 0; i < data.dsLoaiThietBi().Count; i++)
                           { %>
                        <%if (data.dsLoaiThietBi()[i].Maloaitb == MaLoaiThietBi)
                          { %>
                        <option value="<%= data.dsLoaiThietBi()[i].Maloaitb %>" selected="selected"><%= data.dsLoaiThietBi()[i].Tenloaitb %></option>
                        <% }
                          else
                          { %>
                        <option value="<%= data.dsLoaiThietBi()[i].Maloaitb %>"><%= data.dsLoaiThietBi()[i].Tenloaitb %></option>
                        <% } %>
                        <% } %>
                    </select>
                </td>
            </tr>
            <tr>
                <td>Phòng ban:</td>
                <td>
                    <select id="sltphongban">
                        <% for (int i = 0; i < data.dsPhongBan().Count; i++)
                           { %>
                        <% if (data.dsPhongBan()[i].Idphongban == MaPhongBan)
                           { %>
                        <option value="<%= data.dsPhongBan()[i].Idphongban %>" selected="selected"><%= data.dsPhongBan()[i].Tenphongban %></option>
                        <%}
                           else
                           { %>
                        <option value="<%= data.dsPhongBan()[i].Idphongban %>"><%= data.dsPhongBan()[i].Tenphongban %></option>
                        <%} %>
                        <%} %>
                    </select>
                </td>
            </tr>
            <tr>
                <td>Ngày nhập:</td>
                <td>
                    <select id="sltngaynhap" class="dcsltthoigiannt">
                        <% for (int i = 0; i < 31; i++)
                           { %>
                        <% if (NgayNhap.Day == i + 1)
                           { %>
                            <% if(i+1<10) { %>
                            <option value="<%= i+1 %>" selected="selected">0<%= i+1 %></option>
                            <% } else { %>
                                <option value="<%= i+1 %>" selected="selected"><%= i+1 %></option>
                            <%} %>
                        <% } else { %>
                            <% if(i+1<10){%>
                                <option value="<%= i+1 %>">0<%= i + 1 %></option>
                            <% } else { %>
                                <option value="<%= i+1 %>"><%= i + 1 %></option>
                            <% } %>
                        <% } %>
                        <% } %>
                    </select>
                    <select id="sltthangnhap" class="dcsltthoigiannt">
                        <% for (int i = 0; i < 12; i++)
                           { %>
                        <% if (NgayNhap.Month == i + 1)
                           { %>
                        <%if(i+1<10){ %>
                        <option value="<%= i+1 %>" selected="selected">0<%= i+1 %></option>
                        <%} else { %>
                        <option value="<%= i+1 %>" selected="selected"><%= i+1 %></option>
                        <%} %>
                        <% } else { %>
                            <% if(i+1<10){ %>
                                <option value="<%= i+1 %>">0<%= i + 1 %></option>
                            <%} else { %>
                                <option value="<%= i+1 %>"><%= i + 1 %></option>
                            <%} %>
                            <% } %>
                        <% } %>
                    </select>
                    <select id="sltnamnhap" class="dcsltthoigiannam">
                        <% int nam; %>
                        <% nam = 1995; %>
                        <% for (int i = 0; i < 60; i++)
                           { %>
                        <% if (NgayNhap.Year == nam + i)
                           { %>
                        <option value="<%= NgayNhap.Year %>" selected="selected"><%= NgayNhap.Year %></option>
                        <% } else { %>
                        <option value="<%= nam+i %>"><%= nam+i %></option>
                        <% } %>
                        <% } %>
                    </select>
                </td>
            </tr>
            <tr>
                <td>Tên thiết bị:</td>
                <td>
                    <input
                        id="tenthietbi"
                        type="text"
                        value="<%= TenThietBi %>"
                        class="dctxtttthietbi" />
                </td>
            </tr>
            <tr>
                <td class="dclblnhacungcap">Nhà cung cấp:</td>
                <td>
                    <select id="sltnhacungcap">
                        <% for (int i = 0; i < data.dsNhaCungCap().Count; i++)
                           { %>
                        <% if (data.dsNhaCungCap()[i].Id1.ToString() == MaNhaCungCap)
                           { %>
                        <option value="<%= data.dsNhaCungCap()[i].Id1 %>" selected="selected"><%= data.dsNhaCungCap()[i].Tennhacungcap %></option>
                        <% }
                           else
                           { %>
                        <option value="<%= data.dsNhaCungCap()[i].Id1 %>"><%= data.dsNhaCungCap()[i].Tennhacungcap %></option>
                        <% } %>
                        <% } %>
                    </select>
                </td>
            </tr>
            <tr>
                <td class="dclblhuhong">Hư hỏng:</td>
                <td>
                    <input id="txthuhong" type="text" value="<%= HuHong %>" class="dctxtttthietbi" />
                </td>
            </tr>
            <tr>
                <td class="dclblthoihanbaohanh" class="dclblthoihanbaohanh">Thời hạn bảo hành:
                </td>
                <td>
                    <input
                        id="txtthoihanbaohanh"
                        type="text"
                        value="<%= ThoiHanBaoHanh %>"
                        class="dctxtttthietbi" />
                </td>
            </tr>
            <tr>
                <td class="dclblnhasanxuat">Nhà sản xuất:</td>
                <td>
                    <input id="txtnhasanxuat" type="text" value="<%= NSX %>" class="dctxtttthietbi" />
                </td>
            </tr>
            <tr>
                <td class="dclblnuocsanxuat">Nước sản xuất:</td>
                <td>
                    <input id="txtnuocsanxuat" type="text" value="<%= NuocSX %>" class="dctxtttthietbi" />
                </td>
            </tr>
            <tr>
                <td class="dclblserial">Serial:</td>
                <td>
                    <input id="txtserial" type="text" value="<%= Serial %>" class="dctxtttthietbi" />
                </td>
            </tr>
            <tr>
                <td class="dclblmodel">Model:</td>
                <td>
                    <input id="txtmodel" type="text" value="<%= Model %>" class="dctxtttthietbi" />
                </td>
            </tr>
            <tr>
                <td class="dclblngaylapdat">Ngày lắp đặt:</td>
                <td>
                    <select id="sltngaylapdat" class="dcsltthoigiannt">
                        <% for (int i = 0; i < 31; i++)
                           { %>
                        <% if (NgayLapDat.Day == i + 1)
                           { %>
                        <% if(i+1<10){ %>
                        <option value="<%= i+1 %>" selected="selected">0<%= i+1 %></option>
                        <%} else { %>
                        <option value="<%= i+1 %>" selected="selected"><%= i+1 %></option>
                        <%} %>
                        <% }
                           else
                           { %>
                        <% if(i+1<10){ %>
                        <option value="<%= i+1 %>">0<%= i + 1 %></option>
                        <%} else { %>
                        <option value="<%= i+1 %>"><%= i + 1 %></option>
                        <% } %>
                        <% } %>
                        <% } %>
                    </select>
                    <select id="sltthanglapdat" class="dcsltthoigiannt">
                        <% for (int i = 0; i < 12; i++)
                           { %>
                        <% if (NgayLapDat.Month == i + 1)
                           { %>
                        <% if(i+1<10){ %>
                        <option value="<%= i+1 %>" selected="selected">0<%= i+1 %></option>
                        <%} else { %>
                        <option value="<%= i+1 %>" selected="selected"><%= i+1 %></option>
                        <%} %>
                        <% }
                           else
                           { %>
                        <% if(i+1<10){ %>
                            <option value="<%= i+1 %>">0<%= i + 1 %></option>
                        <%} else { %>
                            <option value="<%= i+1 %>"><%= i + 1 %></option>
                        <%} %>
                        <% } %>
                        <% } %>
                    </select>
                    <select id="sltnamlapdat" class="dcsltthoigiannam">
                        <% nam = 1995; %>
                        <% for (int i = 0; i < 60; i++)
                           { %>
                        <% if (NgayLapDat.Year == nam + i)
                           { %>
                        <option value="<%= NgayLapDat.Year %>" selected="selected"><%= NgayLapDat.Year %></option>
                        <% }
                           else
                           { %>
                        <option value="<%= nam+i %>"><%= nam+i %></option>
                        <% } %>
                        <% } %>
                    </select>
                </td>
            </tr>
            <tr>
                <td>Ngày mua:</td>
                <td>
                    <select id="sltngaymua" class="dcsltthoigiannt">
                        <% for (int i = 0; i < 31; i++)
                           { %>
                        <% if (NgayMua.Day == i + 1)
                           { %>
                        <%if(i+1<10){ %>
                        <option value="<%= i+1 %>" selected="selected">0<%= i+1 %></option>
                        <%} else { %>
                        <option value="<%= i+1 %>" selected="selected"><%= i+1 %></option>
                        <%} %>
                        <% }
                           else
                           { %>
                        <% if(i+1<10){ %>
                        <option value="<%= i+1 %>">0<%= i + 1 %></option>
                        <%} else { %>
                        <option value="<%= i+1 %>"><%= i + 1 %></option>
                        <%} %>
                        <% } %>
                        <% } %>
                    </select>
                    <select id="sltthangmua" class="dcsltthoigiannt">
                        <% for (int i = 0; i < 12; i++)
                           { %>
                        <% if (NgayMua.Month == i + 1)
                           { %>
                        <% if(i+1<10){ %>
                        <option value="<%= i+1 %>" selected="selected">0<%= i+1 %></option>
                        <%} else { %>
                        <option value="<%= i+1 %>" selected="selected"><%= i+1 %></option>
                        <%} %>
                        <% }
                           else
                           { %>
                        <% if(i+1<10){ %>
                        <option value="<%= i+1 %>">0<%= i + 1 %></option>
                        <%} else { %>
                        <option value="<%= i+1 %>"><%= i + 1 %></option>
                        <%} %>
                        <% } %>
                        <% } %>
                    </select>
                    <select id="sltnammua" class="dcsltthoigiannam">
                        <% nam = 1995; %>
                        <% for (int i = 0; i < 60; i++)
                           { %>
                        <% if (NgayMua.Year == nam + i)
                           { %>
                        <option value="<%= NgayMua.Year %>" selected="selected"><%= NgayMua.Year %></option>
                        <% }
                           else
                           { %>
                        <option value="<%= nam+i %>"><%= nam+i %></option>
                        <% } %>
                        <% } %>
                    </select>
                </td>
            </tr>
            <tr>
                <td>Mã quản lý:</td>
                <td>
                    <input id="txtmaquanly" type="text" value="<%= MaQuanLy %>" class="dctxtttthietbi" />
                </td>
            </tr>
        </table>
    </div>
    <div id="panelchitiet" class="tcgm-noidung-chitiet">
            <div class="container mt-3">
                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#myModal">
                    Thêm chi tiết
                </button>
            </div>
            <!-- The Modal -->
            <div class="modal" id="myModal">
                <div class="modal-dialog">
                    <div class="modal-content modal-them-chi-tiet">
                        <!-- Modal Header -->
                        <div class="modal-header">
                            <h4 class="modal-title">Thêm chi tiết</h4>
                            <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                        </div>
                        <!-- Modal body -->
                        <div class="modal-body">
                            <table>
                                <tr>
                                    <td>
                                        <label>Tên chi tiết:</label><input id="txttenchitiet" type="text" class="txt-ten-chi-tiet" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <label>Thông số kỹ thuật:</label><input id="txtthongsokythuat" type="text" class="txt-thong-so-ky-thuat" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <label class="lbldonvi">Đơn vị:</label><input id="txtdonvi" type="text" class="txt-don-vi" />
                                        <label class="lblmodel">Model:</label><input id="txtctmodel" type="text" class="txt-model" />
                                        <label class="lblpartno">Part No:</label><input id="txtpartno" type="text" class="txt-partno" />
                                    </td>
                                </tr>                                
                                <tr>
                                    <td>
                                        <label id="kqthemchitiet"></label>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <!-- Modal footer -->
                        <div class="modal-footer">
                            <button type="button" class="btn btn-dark" onclick="ThemChiTiet()">Thêm</button>
                            <button type="button" class="btn btn-dark" onclick="LamMoiFormThemChiTiet()">Làm mới</button>
                            <button type="button" class="btn btn-dark" data-bs-dismiss="modal">Thoát</button>
                        </div>
                    </div>
                </div>
            </div>
        <div class="dashboardlblphutung" id="testClick">Danh sách chi tiết:</div>
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
            <% for (int ct = 0; ct < dsChiTietThietBi.Count; ct++)
               {%>
            <tr id="cttbrow<%= dsChiTietThietBi[ct].Id %>" class="tbl-row-chitiet">
                <td class="tdchitiet" onclick="suachitietthietbi()">
                    <input
                        type="checkbox"
                        onchange="xoachitiet(this)"
                        value="<%= dsChiTietThietBi[ct].Id %>" />
                </td>
                <td class="tdchitiet" onclick="suachitietthietbi(this)"><%= ct + 1 %></td>
                <td class="tdchitiet" onclick="suachitietthietbi(this)"><%= dsChiTietThietBi[ct].Tenchitiet %></td>
                <td class="tdchitiet" onclick="suachitietthietbi(this)"><%= dsChiTietThietBi[ct].Thongsokythuat %></td>
                <td class="tdchitiet" onclick="suachitietthietbi(this)"><%= dsChiTietThietBi[ct].Donvi %></td>
                <td class="tdchitiet" onclick="suachitietthietbi(this)"><%= dsChiTietThietBi[ct].Model %></td>
                <td class="tdchitiet" onclick="suachitietthietbi(this)"><%= dsChiTietThietBi[ct].Partno %></td>
                <td class="tdchitiet d-none"><button type="button" class="btn-sua-chi-tiet-thiet-bi btn btn-primary" onclick="luusuachitiet(this)">
                    Lưu
                </button></td>
            </tr>
            <% } %>
        </table>
    </div>
    <div id="panelphutung" class="tcgm-noidung-phutung">
      <div class="container mt-3">
          <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#themPhuTungModal">
              Thêm phụ tùng
          </button>
      </div>
      <!-- The Modal -->
      <div class="modal" id="themPhuTungModal">
          <div class="modal-dialog">
              <div class="modal-content modal-them-phu-tung">
                  <!-- Modal Header -->
                  <div class="modal-header">
                      <h4 class="modal-title">Thêm phụ tùng</h4>
                      <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                  </div>
                  <!-- Modal body -->
                  <div class="modal-body">
                      <table class="tbl-table-them-phu-tung">                         
                          <tr>
                              <td>
                                  <label>Tên phụ tùng:</label>
                              </td>
                              <td>
                                <input id="txttenphutung" type="text" class="txt-ten-phu-tung dc-them-phu-tung-input-modal" />
                              </td>
                          </tr>
                          <tr>
                              <td>
                                  <label>Ngày thay thế:</label>
                              </td>
                              <td>
                                <select id="sltngaythaythephutung">
                                  <% for(int i = 0; i < 31; i++){%>
                                      <% if(i+1 == DateTime.Now.Day) {%>
                                            <% if(i+1<10){%>
                                                <option value="<%= i+1 %>" selected="selected">0<%= i+1 %></option>
                                            <%} else {%>
                                                <option value="<%= i+1 %>" selected="selected"><%= i+1 %></option>
                                            <%}%>
                                          
                                      <%} else {%>
                                            <% if(i+1 < 10){%>
                                                <option value="<%= i+1 %>">0<%= i+1 %></option>
                                            <%} else {%>
                                                <option value="<%= i+1 %>"><%= i+1 %></option>
                                            <%}%>                                        
                                        <%} %>
                                  <%} %>
                                </select>
                                <select id="sltthangthaythephutung">
                                  <% for(int i = 0; i < 12; i++) {%>
                                      <% if(i+1 == DateTime.Now.Month){%>
                                            <% if(i+1 <10){%>
                                                <option value="<%= i+1 %>" selected="selected">0<%= i+1 %></option>
                                            <%} else {%>
                                                <option value="<%= i+1 %>" selected="selected"><%= i+1 %></option>
                                            <%}%>                                          
                                      <%} else {%>
                                            <% if(i+1 <10){ %>
                                                <option value="<%= i+1 %>">0<%= i+1 %></option>
                                            <%} else {%>
                                                <option value="<%= i+1 %>"><%= i+1 %></option>
                                            <%}%>                                          
                                      <%} %>
                                  <%} %>
                                </select>
                                <select id="sltnamthaythephutung">
                                  <% nam = 1995; %>
                                  <% for(int i = 0; i < 60; i++) {%>
                                        <% if(nam+i == DateTime.Now.Year){%>
                                            <option value="<%= nam+i %>" selected="selected"><%= nam+i %></option>
                                        <%} else {%>
                                            <option value="<%= nam+i %>"><%= nam+i %></option>
                                        <%} %>
                                  <%} %>
                              </td>
                          </tr>
                          <tr>
                            <td>
                              <label>Giá cả:</label>
                            </td>
                            <td>
                              <input id="txtgiaca" type="text" class="txt-gia-ca dc-them-phu-tung-input-gia-ca-modal" />
                            </td>
                          </tr>
                          <tr>
                            <td>
                              <label>Tình trạng:</label>
                            </td>
                            <td>
                              <select id="slttinhtrang">
                                <option value="true" selected="selected">Tốt</option>
                                <option value="false">Hư hỏng</option>
                              </select>
                            </td>
                          </tr>
                          <tr>
                            <td>Số lượng:</td>
                            <td><input id="txtphutungsoluong" type="text" value="" class="txt-mpt-so-luong"/></td>
                          </tr>
                          <tr>
                              <td colspan="2">
                                  <label id="kqthemphutung"></label>
                              </td>
                          </tr>
                      </table>
                  </div>
                  <!-- Modal footer -->
                  <div class="modal-footer">
                      <button type="button" class="btn btn-dark" onclick="ThemPhuTung()">Thêm</button>
                      <button type="button" class="btn btn-dark" onclick="LamMoiFormThemPhuTung()">Làm mới</button>
                      <button type="button" class="btn btn-dark" data-bs-dismiss="modal">Thoát</button>
                  </div>
              </div>
          </div>
      </div>
        <p class="dashboardlblphutung">Danh sách phụ tùng:</p>        
        <table id="dcdanhsachphutung" class="tbborder <%= tblvsb %>">
            <tr>
                <th>Xóa</th>
                <th>STT</th>
                <th>Mã phụ tùng</th>
                <th>Tên phụ tùng</th>
                <th>Ngày thay thế</th>
                <th>Giá cả</th>
                <th>Tình trạng</th>
                <th>Số lượng</th>
                <th></th>
            </tr>
            <% for (int i = 0; i < dsphutung.Count; i++)
               {%>
            <tr
                id="pttbrow<%= dsphutung[i].Mapt %>"
                class="rowphutung">
                <td><input type="checkbox" onchange="xoaphutung(this)" value="<%= dsphutung[i].Mapt %>"/></td>
                <td><%= (i + 1).ToString() %></td>
                <td onclick='suaphutungthietbi(this)'><%= dsphutung[i].Mapt%></td>
                <td onclick='suaphutungthietbi(this)'><%= dsphutung[i].Tenpt %></td>
                <td onclick='suaphutungthietbi(this)'><%= dsphutung[i].Ngaythaythe.ToString("dd-MM-yyyy") %></td>
                <td onclick='suaphutungthietbi(this)'><%= FormatVND(dsphutung[i].Giaca) %></td>
                <td onclick='suaphutungthietbi(this)'><%= dsphutung[i].Tinhtrang?"Tốt":"Hư hỏng" %></td>
                <td onclick='suaphutungthietbi(this)'><%= dsphutung[i].Soluong %></td>
                <td class="tdphutung d-none"><button type="button" class="btn-sua-phu-tung-thiet-bi btn btn-primary" onclick="luusuaphutung(this)">
                    Lưu
                </button></td>
            </tr>
            <% } %>
        </table>
    </div>
    <div id="panelbaotri" class="tcgm-noidung-baotri">
        <div class="container mt-3">
            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#themBaoTriModal">
                Thêm bảo trì
            </button>
        </div>        
        <p class="dashboardlbllichbaotri">Lịch bảo trì:</p>        
    </div>
    <div id="paneltailieu" class="tcgm-noidung-tailieuthietbi">
        <br /><br />
        <p class="dashboardlbltailieuthietbi">Tài liệu thiết bị:</p>
        
        
        <!-- <a
            href="/Pages/ThemTaiLieu.aspx?mathietbi=<= mathietbi >"
            class="dcbtnthemtailieu">Thêm</a> -->
        <table class="dctbltailieu">
            <% for (int tl = 0; tl < dsThietBiTaiLieu.Count; tl++)
               {%>
            <tr>
                <td colspan="2"></td>
                <td>
                    <p
                        id="<%= dsThietBiTaiLieu[tl].Mathietbitailieu %>"
                        class="dstltb"
                        onclick="opentailieu(this)">
                        <%= dsThietBiTaiLieu[tl].Tentailieu %> <%--: <%=
              dsThietBiTaiLieu[tl].Linktailieu %>--%>
                    </p>
                    <a href="../Resourcers/TaiLieu/<%=dsThietBiTaiLieu[tl].Tentailieu%>" download class="tai-lieu-download">Tải xuống</a>
                    <!--<div class="dstltbbtnxoa" onclick="deletetailieu(this)">Xóa</div>  -->
                    <button id="btn-model-tai-lieu" type="button" class="btn btn-primary dstltbbtnxoa" onclick="deletetailieu(this)">
                        Xóa
                    </button>
                </td>
            </tr>
            <% } %>
        </table>
    </div>
</body>
</html>