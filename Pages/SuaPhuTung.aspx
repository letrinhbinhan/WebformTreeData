<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SuaPhuTung.aspx.cs" Inherits="Pages_SuaPhuTung" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <% DataUtil data = new DataUtil(); %>
<div id="ngaynhap" class="unvisible"><%= NgayNhap.Day.ToString() %></div>    
<div id="thangnhap" class="unvisible"><%= NgayNhap.Month.ToString() %></div>
<div id="namnhap" class="unvisible"><%= NgayNhap.Year.ToString() %></div>
<div id="thietbi" class="unvisible"><%= ThietBi %></div>
<div>
<table class="tblsuabaotri">
    <tr class="visible">
        <td>
        Mã phụ tùng:
        </td>
        <td>
            <input id="txtmaphutung" value="<%= idch %>" />
        </td>
    </tr>
        <tr>
            <td>
            Tên phụ tùng:
            </td>
            <td>
                <input id="txttenphutung" value="<%= TenPhuTung %>"/>
            </td>
        </tr>
        <tr>
            <td>Ngày nhập:</td>
            <td>
                <select id="sltngaynhap" class="ddlptthoigian">
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                    <option value="6">6</option>
                    <option value="7">7</option>
                    <option value="8">8</option>
                    <option value="9">9</option>
                    <option value="10">10</option>
                    <option value="11">11</option>
                    <option value="12">12</option>
                    <option value="13">13</option>
                    <option value="14">14</option>
                    <option value="15">15</option>
                    <option value="16">16</option>
                    <option value="17">17</option>
                    <option value="18">18</option>
                    <option value="19">19</option>
                    <option value="20">20</option>
                    <option value="22">22</option>
                    <option value="23">23</option>
                    <option value="24">24</option>
                    <option value="25">25</option>
                    <option value="26">26</option>
                    <option value="27">27</option>
                    <option value="28">28</option>
                    <option value="29">29</option>
                    <option value="30">30</option>
                    <option value="31">31</option>
                </select>
                <select id="sltthangnhap" class="ddlptthoigian">
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                    <option value="6">6</option>
                    <option value="7">7</option>
                    <option value="8">8</option>
                    <option value="9">9</option>
                    <option value="10">10</option>
                    <option value="11">11</option>
                    <option value="12">12</option>
                </select>
                <select id="sltnamnhap" class="ddlptthoigian">
                    <option value="2017">2017</option>
                    <option value="2018">2018</option>
                    <option value="2019">2019</option>
                    <option value="2020">2020</option>
                    <option value="2021">2021</option>
                    <option value="2022">2022</option>
                    <option value="2023">2023</option>
                    <option value="2024">2024</option>
                    <option value="2025">2025</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>
                Giá cả:
            </td>
            <td>
                <input id="txtgiaca" value="<%= GiaCa %>"" />
            </td>
        </tr>
        <tr>
            <td>
                Tình trạng:
            </td>
            <td>
                <input id="txttinhtrang" value="<%= TinhTrang %>"/>
            </td>
        </tr>
        <tr>
            <td>
                Thiết bị:
            </td>
            <td>                
                <select id="sltthietbi">                    
                    <% for(int i = 0; i < data.dsThietBi().Count; i++) { %>
                        <option value="<%= data.dsThietBi()[i].Matb %>"><%= data.dsThietBi()[i].Tentb %></option>
                    <% } %>
                </select>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <div id="sptbtnsua" class="sptbtnsua" onclick="sua()">Sửa</div>
                <p id="sptlblthongbao"></p>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <%= thongbao %>
            </td>
        </tr>
    </table>
</div>

    <script type="text/javascript">
    var yposition, year, tb, tbposition;
        window.onload = (event) => {
            var ngay = document.getElementById("ngaynhap").innerHTML;
            document.getElementById('sltngaynhap').getElementsByTagName('option')[ngay-1].selected = 'selected'; //breq StackOverflow
            var thang = document.getElementById("thangnhap").innerHTML;
            document.getElementById('sltthangnhap').getElementsByTagName('option')[thang-1].selected = 'selected';            
            year = document.getElementById("namnhap").innerHTML;
            yposition = document.getElementById("sltnamnhap").innerText.split("\n").findIndex((val) => val == year);
            document.getElementById('sltnamnhap').getElementsByTagName('option')[yposition].selected = 'selected';
            tb = document.getElementById("thietbi").innerHTML;
            tbposition = document.getElementById("sltthietbi").innerText.split("\n").findIndex((val) => val == tb);
            document.getElementById('sltthietbi').getElementsByTagName('option')[tbposition].selected = 'selected';            
        };
    function sua() {
        var maphutung = document.getElementById("txtmaphutung").value;
        var tenphutung = document.getElementById("txttenphutung").value;
        var thangnhap = document.getElementById("sltthangnhap").value;
        var namnhap = document.getElementById("sltnamnhap").value;
        var ngaynhap = document.getElementById("sltngaynhap").value;
        var giaca = document.getElementById("txtgiaca").value.replace(" đ","").replace(".","");
        var tinhtrang = document.getElementById("txttinhtrang").value;
        if(tinhtrang=="Hư hỏng")
            tinhtrang = false;
        else
            tinhtrang = true;
        var thietbi = document.getElementById("sltthietbi").value;
        const xhttp = new XMLHttpRequest();
        xhttp.onload = function() {
            document.getElementById("sptlblthongbao").innerHTML =
            this.responseText;            
        }
        xhttp.open("GET", "/Resourcers/AJAX/SuaPhuTung.aspx?maphutung="+maphutung+"&tenphutung="+tenphutung+"&thangnhap="+thangnhap+"&namnhap="+namnhap+"&ngaynhap="+ngaynhap+"&giaca="+giaca+"&tinhtrang="+tinhtrang+"&thietbi="+thietbi+" ");        
        xhttp.send();
    }
    </script>
</asp:Content>