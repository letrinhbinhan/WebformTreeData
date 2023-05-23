<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ThemBaoTri3.aspx.cs" Inherits="Pages_ThemBaoTri3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <% DataUtil data = new DataUtil(); %>
<div class="thembaotri3">
    <div id="mathietbi" class="unvisible"><%= mathietbi %></div>
    <div id="nguoilap" class="unvisible"><%= nguoilap %></div>
    <div id="tennguoilap" class="unvisible"><%= tennguoilap %></div>
    <table class="tblthembaotri3">
        <tr>
            <th>

            </th>
            <th>

            </th>
        </tr>
        <tr>
            <td>Mã thiết bị:</td>
            <td>                
                <input id="txtmathietbibt" class="txtthembaotri" type="text" />
            </td>
        </tr>
        <tr>
            <td>Thời gian bắt đầu:</td>
            <td>
                <select id="sltngaybd" class="ddlptthoigian">
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
                <select id="sltthangbd" class="ddlptthoigian">
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
                <select id="sltnambd" class="ddlptthoigian">
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
            <td>Thời gian kết thúc:</td>
            <td>
                <select id="sltngaykt" class="ddlptthoigian">
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
                <select id="sltthangkt" class="ddlptthoigian">
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
                <select id="sltnamkt" class="ddlptthoigian">
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
            <td>Ghi chú:</td>
            <td>
                <!-- <input id="txtghichu" type="text" class="tbt3txtghichu"/> -->
                <textarea id="txtghichu" type="text" class="tbt3ghichu"></textarea>
            </td>
        </tr>
        <tr>
            <td>Người lập:</td>
            <td>                
                <select id="nguoilaplbt" class="tbt3dllnguoinhap">
                    <% for(int i = 0; i < data.dsUsers().Count; i++) {%>
                        <option value="<%= data.dsUsers()[i].Userid.Trim() %>"><%= data.dsUsers()[i].Fullname %></option>
                    <% } %>
                </select>
            </td>
        </tr>
        <tr>
            <td>Loại hình:</td>
            <td>
                <input id="txtloaihinh" type="text" class="tbt3txtloaihinh"/>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <div id="btnthem" class="btnthembaotri3" onclick="them()">Thêm</div>
                <p id="pst" class="tbt3messenger"></p>
            </td>
        </tr>
    </table>
</div>    
    <script type="text/javascript">
        var date = new Date();
        let day = date.getDate();
        let month = date.getMonth();
        let year = date.getFullYear();
        var yposition, nlposition, tennguoinhap;
        yposition = 0;
        nlposition = 0;
        tennguoinhap = "";
        tennguoinhap = document.getElementById("tennguoilap").innerHTML;
        window.onload = (event) => {
            document.getElementById('txtmathietbibt').value = document.getElementById('mathietbi').innerHTML;
            document.getElementById('sltngaybd').getElementsByTagName('option')[day-1].selected = 'selected'; //breq StackOverflow
            document.getElementById('sltthangbd').getElementsByTagName('option')[month].selected = 'selected';            
            yposition = document.getElementById("sltnambd").innerText.split("\n").findIndex((val) => val == year);
            document.getElementById('sltnambd').getElementsByTagName('option')[yposition].selected = 'selected';
            document.getElementById('sltngaykt').getElementsByTagName('option')[day-1].selected = 'selected';
            document.getElementById('sltthangkt').getElementsByTagName('option')[month].selected = 'selected';            
            yposition = document.getElementById("sltnambd").innerText.split("\n").findIndex((val) => val == year);
            document.getElementById('sltnamkt').getElementsByTagName('option')[yposition].selected = 'selected';
            nlposition = document.getElementById("nguoilaplbt").innerText.split("\n").findIndex((val) => val == tennguoinhap);
            document.getElementById('nguoilaplbt').getElementsByTagName('option')[nlposition].selected = 'selected';
        };

        function them() {
            var mathietbibt, nambatdau, thangbatdau, ngaybatdau, namketthuc, thangketthuc, ngayketthuc, ghichu, nguoilap, loaihinh;
            mathietbibt = document.getElementById("txtmathietbibt").value;
            nambatdau = document.getElementById("sltnambd").value;
            thangbatdau = document.getElementById("sltthangbd").value;
            ngaybatdau = document.getElementById("sltngaybd").value;
            namketthuc = document.getElementById("sltnamkt").value;
            thangketthuc = document.getElementById("sltthangkt").value;
            ngayketthuc = document.getElementById("sltngaykt").value;
            ghichu = document.getElementById("txtghichu").value;
            var select = document.getElementById('nguoilaplbt');
            var option = select.options[select.selectedIndex];
            nguoilap = option.text;
            loaihinh = document.getElementById("txtloaihinh").value;
            const xhttp = new XMLHttpRequest();
            xhttp.onload = function() {
                document.getElementById("pst").innerHTML = this.responseText;
            }
            xhttp.open("GET", "../Resourcers/AJAX/ThemBaoTri.aspx?mathietbibt=" + mathietbibt + "&nambatdau=" + nambatdau + "&thangbatdau=" + thangbatdau + "&ngaybatdau="+ngaybatdau+"&namketthuc="+namketthuc+"&thangketthuc="+thangketthuc+"&ngayketthuc="+ngayketthuc+"&ghichu="+ghichu+"&nguoilap="+nguoilap+"&loaihinh="+loaihinh);
            xhttp.send();
            document.getElementById("txtmathietbibt").value = mathietbibt;
            document.getElementById('sltngaybd').getElementsByTagName('option')[day-1].selected = 'selected'; //breq StackOverflow
            document.getElementById('sltthangbd').getElementsByTagName('option')[month].selected = 'selected';            
            yposition = document.getElementById("sltnambd").innerText.split("\n").findIndex((val) => val == year);
            document.getElementById('sltnambd').getElementsByTagName('option')[yposition].selected = 'selected';
            document.getElementById('sltngaykt').getElementsByTagName('option')[day-1].selected = 'selected';
            document.getElementById('sltthangkt').getElementsByTagName('option')[month].selected = 'selected';            
            yposition = document.getElementById("sltnambd").innerText.split("\n").findIndex((val) => val == year);
            document.getElementById('sltnamkt').getElementsByTagName('option')[yposition].selected = 'selected';
            document.getElementById("txtghichu").value = "";
            document.getElementById("txtnguoilap").value = "";
            document.getElementById("txtloaihinh").value = "";
        }
    </script>
</asp:Content>

