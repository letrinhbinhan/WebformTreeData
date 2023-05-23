<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SuaBaoTri.aspx.cs" Inherits="Pages_SuaBaoTri" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <% DataUtil data = new DataUtil(); %>
    <div id="mathietbibaotri" class="unvisible" ><%= mathietbibaotri %></div>
    <div id="mathietbi" class="unvisible" ><%= mathietbi %></div>
    <div id="ngaybatdau" class="unvisible" ><%= ngaybd %></div>
    <div id="thangbatdau" class="unvisible" ><%= thangbd %></div>
    <div id="nambatdau" class="unvisible" ><%= nambd %></div>
    <div id="ngayketthuc" class="unvisible" ><%= ngayketthuc %></div>
    <div id="thangketthuc" class="unvisible" ><%= thangketthuc %></div>
    <div id="namketthuc" class="unvisible" ><%= namketthuc %></div>
    <div id="nguoilaplich" class="unvisible" ><%= nguoilap %></div>
    <div class="thembaotri3">
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
                <input id="txtmathietbibt" class="txtthembaotri" type="text" value="<%= mathietbi %>"/>
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
                <select id="sltngayketthuc" class="ddlptthoigian">
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
                <select id="sltthangketthuc" class="ddlptthoigian">
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
                <select id="sltnamketthuc" class="ddlptthoigian">
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
                <input id="txtghichu" type="text" class="tbt3txtghichu" value="<%= ghichu %>"/>
            </td>
        </tr>
        <tr>
            <td>Người lập:</td>
            <td>                
                <select id="nguoilaplbt">
                    <% for(int i = 0; i < data.dsUsers().Count; i++) {%>
                        <option value="<%= data.dsUsers()[i].Userid %>"><%= data.dsUsers()[i].Fullname %></option>
                    <% } %>
                </select>
            </td>
        </tr>
        <tr>
            <td>Loại hình:</td>
            <td>
                <input id="txtloaihinh" type="text" class="tbt3txtloaihinh" value="<%= loaihinh %>"/>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <div id="btnthem" class="btnthembaotri3" onclick="sua()">Sửa</div>
                <p id="pst" class="tbt3messenger"></p>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <% if(tontaiTBBT == true) { %>
                    <span>Tồn tại thiết bị bảo trì.</span>
                <% } else { %>
                    <span>Không tồn tại thiết bị bảo trì.</span>
                <% } %>
            </td>
        </tr>
    </table>

</div>
<script type="text/javascript">    
    var nbdposition, tbdposition, nambatdau, nambdposition, ngayketthucposition, thangketthucposition, namketthuc, namketthucposition, nguoilap, nguoilapposition;
    nbdposition = "";
    tbdposition = "";
    nambatdau = "";
    nambdposition = "";
    ngayketthucposition = "";
    thangketthucposition = "";
    namketthuc = "";
    namketthucposition = "";
    nguoilap = "";
    nguoilapposition = "";
    window.onload = (event) => {
        nbdposition = document.getElementById('ngaybatdau').innerHTML;
        document.getElementById('sltngaybd').getElementsByTagName('option')[nbdposition-1].selected = 'selected'; //breq StackOverflow
        tbdposition = document.getElementById('thangbatdau').innerHTML;
        document.getElementById('sltthangbd').getElementsByTagName('option')[tbdposition-1].selected = 'selected';
        nambatdau = document.getElementById('nambatdau').innerHTML;
        nambdposition = document.getElementById('sltnambd').innerText.split("\n").findIndex((val) => val == nambatdau);
        document.getElementById('sltnambd').getElementsByTagName('option')[nambdposition].selected = 'selected';
        ngayketthucposition = document.getElementById('ngayketthuc').innerHTML;
        document.getElementById('sltngayketthuc').getElementsByTagName('option')[ngayketthucposition-1].selected = 'selected';
        thangketthucposition = document.getElementById('thangketthuc').innerHTML;
        document.getElementById('sltthangketthuc').getElementsByTagName('option')[thangketthucposition-1].selected = 'selected';
        namketthuc = document.getElementById('namketthuc').innerHTML;
        namketthucposition = document.getElementById('sltnamketthuc').innerText.split("\n").findIndex((val) => val == namketthuc);
        document.getElementById('sltnamketthuc').getElementsByTagName('option')[namketthucposition].selected = 'selected';        
        nguoilap = document.getElementById('nguoilaplich').innerHTML;
        nguoilapposition = document.getElementById('nguoilaplbt').innerText.split("\n").findIndex((val) => val == nguoilap);
        document.getElementById('nguoilaplbt').getElementsByTagName('option')[nguoilapposition].selected = 'selected';        
    };
    function sua() {
        var matbbt, mathietbibt, nambatdau, thangbatdau, ngaybatdau, namketthuc, thangketthuc, ngayketthuc, ghichu, nguoilap, loaihinh;        
		matbbt = document.getElementById("mathietbibaotri").innerHTML; // if .value matbbt = "undefined"
        mathietbibt = document.getElementById("txtmathietbibt").value;
        nambatdau = document.getElementById("sltnambd").value;
        thangbatdau = document.getElementById("sltthangbd").value;
        ngaybatdau = document.getElementById("sltngaybd").value;
        namketthuc = document.getElementById("sltnamketthuc").value;
        thangketthuc = document.getElementById("sltthangketthuc").value;
        ngayketthuc = document.getElementById("sltngayketthuc").value;
        ghichu = document.getElementById("txtghichu").value;
        var select = document.getElementById('nguoilaplbt');
        var option = select.options[select.selectedIndex];
        nguoilap = option.text;
        loaihinh = document.getElementById("txtloaihinh").value;
		console.log("../Resourcers/AJAX/SuaBaoTri.aspx?matbbt="+matbbt+"mathietbibaotri=" + mathietbibt + "&nambatdau=" + nambatdau + "&thangbatdau=" + thangbatdau + "&ngaybatdau="+ngaybatdau+"&namketthuc="+namketthuc+"&thangketthuc="+thangketthuc+"&ngayketthuc="+ngayketthuc+"&ghichu="+ghichu+"&nguoilap="+nguoilap+"&loaihinh="+loaihinh);
        const xhttp = new XMLHttpRequest();
        xhttp.onload = function() {
			document.getElementById("pst").innerHTML = this.responseText;            
        }
        xhttp.open("GET", "../Resourcers/AJAX/SuaBaoTri.aspx?matbbt="+matbbt+"&mathietbibaotri=" + mathietbibt + "&nambatdau=" + nambatdau + "&thangbatdau=" + thangbatdau + "&ngaybatdau="+ngaybatdau+"&namketthuc="+namketthuc+"&thangketthuc="+thangketthuc+"&ngayketthuc="+ngayketthuc+"&ghichu="+ghichu+"&nguoilap="+nguoilap+"&loaihinh="+loaihinh);        
		//http://localhost:51990/Resourcers/AJAX/SuaBaoTri.aspx?matbbt=29&mathietbibaotri=2&ngaybatdau=8&thangbatdau=5&nambatdau=2023&ngayketthuc=&thangketthuc=&namketthuc=&ghichu=&nguoilap=&loaihinh=
		xhttp.send();
    }
</script>
</asp:Content>

