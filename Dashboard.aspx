﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">    
    <title>Trang chính</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <% DataUtil data = new DataUtil(); %>
    <div id="mathietbilonnhat" class="d-none"><%= MaThietBiLonNhat %></div>
    <div class="main-content">
    <div class="center-content-qltb">
        <div class="center-tree">            
            <div class="dc-btn-nav">
                <button id="addthietbi" class="button-add" type="button" type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#themThietBiModal">+</button>
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
                                <tr>
                                    <td>
                                        <label>Loại thiết bị:</label>
                                    </td>
                                    <td>                                
                                        <select id="sltmodelthemthietbi">     
                                        <% for(int i=0; i < data.dsLoaiThietBi().Count; i++){%>
                                            <option value="<%= data.dsLoaiThietBi()[i].Maloaitb%>"><%= data.dsLoaiThietBi()[i].Tenloaitb %></option>
                                        <%}%>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <label>Phòng ban:</label>
                                    </td>
                                    <td>                                
                                        <select id="sltmodelphongban">
                                        <% for(int i=0; i < data.dsPhongBan().Count; i++){%>
                                            <option value="<%= data.dsPhongBan()[i].Idphongban%>"><%= data.dsPhongBan()[i].Tenphongban %></option>
                                        <%}%>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                  <td>
                                    <label>Ngày nhập:</label></td><td>
                                    <select id="sltttbngaynhap">
                                        <% for(int i = 0; i < 31; i++){%>
                                            <%if(i+1==DateTime.Now.Day){%>
                                                <% if(i+1<10){%>
                                                    <option value="<%= i+1 %>" selected="selected">0<%= i+1 %></option>
                                                <%} else {%>
                                                    <option value="<%= i+1 %>" selected="selected"><%= i+1 %></option>
                                                <%}%>                                        
                                            <%} else {%>
                                                    <% if(i+1<10){%>
                                                        <option value="<%= i+1 %>">0<%= i+1 %></option>
                                                    <%} else {%>
                                                        <option value="<%= i+1 %>"><%= i+1 %></option>
                                                    <%}%>
                                            <%}%>
                                        <%}%>
                                    </select>
                                    <select id="sltttbthangnhap">
                                        <% for (int i = 0; i < 12; i++) { %>
                                            <% if (DateTime.Now.Month == i + 1) { %>
                                                <% if(i+1 <10){%>
                                                <option value="<%= i+1 %>" selected="selected">0<%= i+1 %></option>
                                                <%} else {%>
                                                    <option value="<%= i+1 %>" selected="selected"><%= i+1 %></option>
                                                <%}%>
                                            <% } else { %>
                                                <% if(i+1<10){%>
                                                    <option value="<%= i+1 %>">0<%= i + 1 %></option>
                                                <%} else {%>
                                                    <option value="<%= i+1 %>"><%= i + 1 %></option>
                                                <%}%>
                                                
                                            <% } %>
                                        <% } %>
                                    </select>
                                    <select id="sltttbnamnhap">
                                        <% int nam; %>
                                        <% nam = 1995; %>
                                        <% for (int i = 0; i < 60; i++) { %>
                                                <% if (DateTime.Now.Year == nam + i){ %>                                            
                                                    <option value="<%= nam + i %>" selected="selected"><%= nam + i %></option>
                                                <% } else { %>
                                                    <option value="<%= nam+i %>"><%= nam+i %></option>
                                                <% } %>
                                        <% } %>
                                    </select>
                                    </td>                            
                                </tr>
                                <tr>
                                    <td>
                                        <label>Tên thiết bị:</label></td><td><input id="txtttbtenthietbi" type="text" class="txt-ttb-ten-thiet-bi" /></td>
                                </tr>
                                <tr>
                                    <td>
                                        <label>Nhà cung cấp:</label></td>
                                        <td>
                                            <select id="sltttbnhacungcap">
                                                <% for(int i=0; i < data.dsNhaCungCap().Count; i++){%>
                                                    <option value="<%= data.dsNhaCungCap()[i].Id1 %>"><%= data.dsNhaCungCap()[i].Tennhacungcap %></option>
                                                <%}%>
                                            </select>
                                        </td>
                                </tr>
                                <tr>
                                    <td>
                                        <label>Hư hỏng:</label></td><td><input id="txtttbhuhong" type="text" class="txt-ttb-hu-hong" /></td>
                                </tr>
                                <tr>
                                    <td>
                                        <label>Thời hạn bảo hành:</label></td><td><input id="txtttbthoihanbaohanh" type="text" class="txt-ttb-thoi-han-bao-hanh" /></td>
                                </tr>
                                <tr>
                                    <td>
                                        <label>Nhà sản xuất:</label></td><td><input id="txtttbnhasanxuat" type="text" class="txt-ttb-nha-san-xuat" /></td>
                                </tr>
                                <tr>
                                    <td>
                                        <label>Nước sản xuất:</label></td><td><input id="txtttbnuocsanxuat" type="text" class="txt-ttb-nuoc-san-xuat" /></td>
                                </tr>
                                <tr>
                                    <td>
                                        <label>Serial:</label></td><td><input id="txtttbserial" type="text" class="txt-ttb-serial" /></td>
                                </tr>
                                <tr>
                                    <td>
                                        <label>Model:</label></td><td><input id="txtttbmodel" type="text" class="txt-ttb-model" /></td>
                                </tr>
                                <tr>
                                    <td>
                                        <label>Ngày lắp đặt:</label></td><td>
                                        <select id="sltttbngaylapdat">
                                            <% for(int i = 0; i < 31; i++){%>
                                                <%if(i+1==DateTime.Now.Day){%>
                                                    <% if(i+1<10){%>
                                                        <option value="<%= i+1 %>" selected="selected">0<%= i+1 %></option>
                                                    <%} else {%>
                                                        <option value="<%= i+1 %>" selected="selected"><%= i+1 %></option>
                                                        <%}%>
                                                <%} else {%>
                                                        <% if(i+1<10){%>
                                                            <option value="<%= i+1 %>">0<%= i+1 %></option>
                                                        <%} else {%>
                                                            <option value="<%= i+1 %>"><%= i+1 %></option>
                                                        <%}%>
                                                <%}%>
                                            <%}%>
                                        </select>
                                        <select id="sltttbthanglapdat">
                                            <% for (int i = 0; i < 12; i++){ %>
                                                <% if (DateTime.Now.Month == i + 1) { %>
                                                    <% if(i+1<10){ %>
                                                        <option value="<%= i+1 %>" selected="selected">0<%= i+1 %></option>
                                                    <%} else {%>
                                                        <option value="<%= i+1 %>" selected="selected"><%= i+1 %></option>
                                                    <%}%>
                                            <% } else { %>
                                                    <% if(i+1 <10){%>
                                                        <option value="<%= i+1 %>">0<%= i + 1 %></option>
                                                    <%} else {%>                                                
                                                            <option value="<%= i+1 %>"><%= i + 1 %></option>
                                                    <%}%>                                                
                                            <% } %>
                                            <% } %>
                                        </select>
                                        <select id="sltttbnamlapdat">
                                            <% nam = 1995; %>
                                            <% for (int i = 0; i < 60; i++) { %>
                                                <% if (DateTime.Now.Year == nam + i) { %>
                                                    <option value="<%= nam + i %>" selected="selected"><%= nam + i %></option>
                                                <% } else { %>
                                                    <option value="<%= nam+i %>"><%= nam+i %></option>
                                                <% } %>
                                            <% } %>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <label>Ngày mua:</label></td><td>
                                        <select id="sltttbngaymua">
                                            <% for(int i = 0; i < 31; i++){%>
                                                <%if(i+1==DateTime.Now.Day){%>
                                                    <% if(i+1<10){%>
                                                        <option value="<%= i+1 %>" selected="selected">0<%= i+1 %></option>
                                                    <%} else {%>
                                                        <option value="<%= i+1 %>" selected="selected"><%= i+1 %></option>
                                                    <%}%>
                                                    
                                                <%} else {%>
                                                    <% if(i+1<10){%>
                                                        <option value="<%= i+1 %>">0<%= i+1 %></option>
                                                        <%} else {%>
                                                            <option value="<%= i+1 %>"><%= i+1 %></option>
                                                        <%}%>                                                
                                                <%}%>
                                            <%}%>
                                        </select>
                                        <select id="sltttbthangmua">
                                            <% for (int i = 0; i < 12; i++)
                                                { %>
                                                <% if (DateTime.Now.Month == i + 1)
                                                { %>
                                                    <% if(i+1<10){%>
                                                        <option value="<%= i+1 %>" selected="selected">0<%= i+1 %></option>
                                                    <%} else {%>
                                                        <option value="<%= i+1 %>" selected="selected"><%= i+1 %></option>
                                                    <%}%>                                    
                                            <% }
                                                else
                                                { %>
                                                    <% if(i+1<10){%>
                                                        <option value="<%= i+1 %>">0<%= i + 1 %></option>
                                                    <%} else {%>
                                                        <option value="<%= i+1 %>"><%= i + 1 %></option>
                                                    <%}%>                                    
                                            <% } %>
                                            <% } %>
                                        </select>
                                        <select id="sltttbnammua">
                                            <% nam = 1995; %>
                                            <% for (int i = 0; i < 60; i++)
                                                { %>
                                            <% if (DateTime.Now.Year == nam + i)
                                            { %>
                                                <option value="<%= nam + i %>" selected="selected"><%= nam + i %></option>
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
                                  <td>
                                    <label>Mã quản lý:</label></td><td><input id="txtttbmaquanly" type="text" class="txt-ttb-ma-quan-ly" />
                                  </td>
                                </tr>
                                <tr>
                                    <td>
                                        Là con của:
                                    </td>
                                    <td>
                                      <select id="sltthietbicha" onchange="selectvitri(this)" class="db-model-sltthietbicha">
                                            <option value="NULL"></option>
                                        <% for(int i = 0; i < data.dsThietBi().Count; i++){%>
                                            <option value="<%= data.dsThietBi()[i].Matb %>"><%= data.dsThietBi()[i].Tentb %></option>
                                        <%}%>
                                      </select>
                                    </td>
                                  </tr>
                                <tr>
                                <td>
                                    Vị trí:
                                </td>
                                <td>
                                    <select id="sltvitri" class="db-model-sltvitri">
                                        <option value="NULL"></option>
                                    <% for(int i = 0; i < data.dsViTri().Count; i++){%>
                                        <option value="<%= data.dsViTri()[i].Id1 %>"><%= data.dsViTri()[i].Tenvitri %></option>
                                    <%}%>
                                    </select>
                                </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <label id="kqthemthietbi"></label>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <!-- Modal footer -->
                        <div class="modal-footer">
                            <button type="button" class="btn btn-dark" onclick="ThemThietBi()">Thêm</button>
                            <button type="button" class="btn btn-dark" onclick="LamMoiFormThemThietBi()">Làm mới</button>
                            <button type="button" class="btn btn-dark" data-bs-dismiss="modal">Thoát</button>
                        </div>
                    </div>
                </div>
            </div>
            <%= showGocCayThuMucViTri() %>
        </div>
        </div>
        <div class="center-contain">            
            <asp:Image ID="Image1" runat="server" onclick="visibleleftmenu()" class="icon-pin icon-pin-open" ImageUrl="~/Resourcers/Images/thumbtacks.png"/>
            <div id="center-ct" class="center-contain-form">
                
            </div>
        </div>
        <div id="ccimg" class="ccimg">
            
        </div>
    </div>
    <script type="text/javascript" src="Resourcers/Javascripts/dashboard.js"></script>
</asp:Content>