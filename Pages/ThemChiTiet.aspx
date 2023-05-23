<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ThemChiTiet.aspx.cs" Inherits="Pages_ThemChiTiet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="formviewthemchitiet">
    <table class="tblformviewthemchitiet">
        <tr class="rowthem">
            <td class="tctlabel">Tên thiết bị:</td>
            <td><input id="txttenthietbi" type="text" class="tcttenthietbi" value="<%= tenthietbi %>"/> </td>
        </tr>
        <tr class="rowthem">
            <td class="tctlabel">Tên chi tiết:</td>
            <td><input id="txttenchitiet" type="text" class="tcttenchitiet"/> </td>
        </tr>
        <tr class="rowthem">
            <td class="tctlabelthongsokythuat">Thông số kỹ thuật:</td>
            <td><input id="txtthongsokythuat" type="text" class="tctthongsokythuat"/></td>
        </tr>
        <tr class="rowthem">
            <td class="tctlabel">Đơn vị:</td>
            <td><input id="txtdonvi" type="text" class="tctdonvi"/></td>
        </tr>
        <tr class="rowthem">
            <td class="tctlabel">Model:</td>
            <td><input id="txtmodel" type="text" class="tctmodel"/></td>
        </tr>
        <tr class="rowthem">
            <td class="tctlabel">Partno:</td>
            <td><input id="txtpartno" type="text" class="tctpartno"/></td>
        </tr>
        <tr class="rowthem">
            <td class="tctlabel">Ký hiệu:</td>
            <td><input id="txtkyhieu" type="text" class="tctkyhieu"/></td>
        </tr>
        <tr class="tctrowthietbi">
            <td class="tctlabel">Thiết bị:</td>
            <td><input id="txtthietbi" type="text" class="tctthietbi" value="<%= thietbi %>"/></td>
        </tr>
        <tr class="rowthem">
            <td colspan="2">
                <div id="btnthem" class="btnthemchitiet" onclick="them()">Thêm</div>
                <p id="pst" class="tctmessenger"></p>
            </td>
        </tr>
    </table>
    </div>
    <script type="text/javascript">
        function them() {
            var tenchitiet, thongsokythuat, donvi, partno, kyhieu, thietbi;
            tenchitiet = "";
            thongsokythuat = "";
            donvi = "";
            partno = "";
            kyhieu = "";
            thietbi = "";
            tenchitiet = document.getElementById("txttenchitiet").value;            
            thongsokythuat = document.getElementById("txtthongsokythuat").value;
            donvi = document.getElementById("txtdonvi").value;
            partno = document.getElementById("txtpartno").value;
            model = document.getElementById("txtmodel").value;
            kyhieu = document.getElementById("txtkyhieu").value;
            thietbi = document.getElementById("txtthietbi").value;
            const xhttp = new XMLHttpRequest();
            xhttp.onload = function() {
                document.getElementById("pst").innerHTML = this.responseText;
            }
            xhttp.open("GET", "../Resourcers/AJAX/ThemChiTiet.aspx?tenchitiet="+tenchitiet+"&thongsokythuat="+thongsokythuat+"&donvi="+donvi+"&model="+model+"&partno="+partno+"&kyhieu="+kyhieu+"&thietbi="+thietbi+"");
            console.log("/Resourcers/AJAX/ThemChiTiet.aspx?tenchitiet="+tenchitiet+"&thongsokythuat="+thongsokythuat+"&donvi="+donvi+"&model="+partno+"&kyhieu="+kyhieu+"&thietbi="+thietbi+"");
            xhttp.send();
            document.getElementById("txttenchitiet").value = "";            
            document.getElementById("txtthongsokythuat").value = "";
            document.getElementById("txtdonvi").value = "";
            document.getElementById("txtmodel").value = "";
            document.getElementById("txtpartno").value = "";
            document.getElementById("txtkyhieu").value = "";
        }
    </script>
</asp:Content>

