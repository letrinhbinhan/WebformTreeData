<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    Hello this is test git commit.
    <div class="main-content">    
    <div class="center-content-qltb">
        <div class="center-tree">
            <button id="addthietbi" class="button-add" type="button">+</button>
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
<script charset="utf-8" type="text/javascript">
    function RedirectToThemThietBi2() {
        location.replace("./Pages/ThemThietBi2.aspx");
    }
    document.getElementById("addthietbi").addEventListener("click", RedirectToThemThietBi2);
    function showThongtinChung(){
        document.getElementById("panelchitiet").style.display = "none";
        document.getElementById("panelphutung").style.display = "none";
        document.getElementById("panelttc").style.display = "block";
        document.getElementById("panelbaotri").style.display = "none";
        document.getElementById("paneltailieu").style.display = "none";
    }
    function showChiTiet(){
        document.getElementById("panelchitiet").style.display = "block";
        document.getElementById("panelphutung").style.display = "none";
        document.getElementById("panelttc").style.display = "none";
        document.getElementById("panelbaotri").style.display = "none";
        document.getElementById("paneltailieu").style.display = "none";
    }
    function showPhuTung(){
        document.getElementById("panelchitiet").style.display = "none";
        document.getElementById("panelphutung").style.display = "block";
        document.getElementById("panelttc").style.display = "none";
        document.getElementById("panelbaotri").style.display = "none";
        document.getElementById("paneltailieu").style.display = "none";
    }
    function showBaoTri(){
        document.getElementById("panelchitiet").style.display = "none";
        document.getElementById("panelphutung").style.display = "none";
        document.getElementById("panelttc").style.display = "none";
        document.getElementById("panelbaotri").style.display = "block";
        document.getElementById("paneltailieu").style.display = "none";
    }
    function showTaiLieu(){
        document.getElementById("panelchitiet").style.display = "none";
        document.getElementById("panelphutung").style.display = "none";
        document.getElementById("panelttc").style.display = "none";
        document.getElementById("panelbaotri").style.display = "none";
        document.getElementById("paneltailieu").style.display = "block";
    }
    function Row_Device_Show(str, pst, state) {
        const xhttp = new XMLHttpRequest();
        xhttp.onload = function() {
            document.getElementById(pst).innerHTML =
            this.responseText;
            const xhttp2 = new XMLHttpRequest();
            xhttp2.onload = function() {
                document.getElementById("center-ct").innerHTML =
                this.responseText;
            }
            xhttp2.open("GET", "Resourcers/AJAX/DashboardCenter.aspx?ID=" + pst);
            xhttp2.send();
            const xhttp3 = new XMLHttpRequest();
            xhttp3.onload = function() {
                document.getElementById("ccimg").innerHTML =
                this.responseText;
            }
            xhttp3.open("GET", "Resourcers/AJAX/DashboardImage.aspx?ID=" + pst); // in ra hình
            xhttp3.send();
        }
        xhttp.open("GET", "Resourcers/AJAX/DashboardChildTree.aspx?ID=" + pst);
        xhttp.send();
    }
    function Row_Device_Show_Close(str, pst, state) {
        const xhttp = new XMLHttpRequest();
        xhttp.onload = function() {
            const xhttp2 = new XMLHttpRequest();
            xhttp2.onload = function() {
                document.getElementById("center-ct").innerHTML =
                this.responseText;
            }
            xhttp2.open("GET", "Resourcers/AJAX/DashboardCenter.aspx?ID=" + pst);
            xhttp2.send();
            const xhttp3 = new XMLHttpRequest();
            xhttp3.onload = function() {
                document.getElementById("ccimg").innerHTML =
                this.responseText;
            }
            xhttp3.open("GET", "Resourcers/AJAX/DashboardImage.aspx?ID=" + pst); // in ra hình
            xhttp3.send();
        }
        xhttp.open("GET", "Resourcers/AJAX/DashboardChildTree.aspx?ID=" + pst);
        xhttp.send();
    }

    function Row_Position_Show(str, pst, state) {
        const xhttp = new XMLHttpRequest();
        xhttp.onload = function() {
            document.getElementById(pst).innerHTML =
            this.responseText;
            if(state==1||state==2||state==3){				
                document.getElementById("center-ct").innerHTML = "";
                document.getElementById("ccimg").innerHTML = "";
            }
        }
        xhttp.open("GET", "Resourcers/AJAX/DashboardChildTreeByViTri.aspx?mavitri=" + pst+"&tinhtrang="+state);
        xhttp.send();
    }
    var row = 3;
    const buttons = document.getElementsByTagName("li");
    const result = document.getElementById("result");
    const buttonPressed = e => {
        if(e.target.classList[0] == "1")
        {
            Row_Device_Show("open",e.target.id);    
            document.getElementById(e.target.id).className = document.getElementById(e.target.id).classList[0] + " 0";
            if(document.getElementById(e.target.id).getElementsByTagName("span")[0].classList[0] != "none-icon" && document.getElementById(e.target.id).getElementsByTagName("span")[0].classList[0] != "none-icon-m")
                document.getElementById(e.target.id).getElementsByTagName("span")[0].className = "minus-icon 0 mtree-p-icon";
            document.getElementById(e.target.id).getElementsByTagName("span")[1].className = document.getElementById(e.target.id).getElementsByTagName("span")[1].classList[0] + " 0";
            document.getElementById(e.target.id).getElementsByTagName("a")[0].className = 0;                 
            row = e.target.id;            
        }
        //class 0 thì thẻ mở
        else if(e.target.classList[0] == "0")
        {
            if(e.target.classList[0] == "0")
            { 
                if(document.getElementById(e.target.id).innerText.indexOf("\n") != -1)
                    {
                        Row_Device_Show_Close("open",e.target.id);
                        document.getElementById(e.target.id).innerHTML = document.getElementById(e.target.id).innerText.slice(0,document.getElementById(e.target.id).innerText.indexOf("\n")+1);
                        document.getElementById(e.target.id).className = "row-tree-tb 1";
                        var noidung = document.getElementById(e.target.id).innerHTML;
                        document.getElementById(e.target.id).innerHTML = "<span id='"+e.target.id+"' class='plus-icon mtree-p-icon'></span> <span class='mtree-text'><a id='"+ e.target.id+ "' class='1'>"+noidung+"</a></span>";
                        document.getElementById(e.target.id).getElementsByTagName("a")[0].className = 1;
                        document.getElementById(e.target.id).getElementsByTagName("span")[0].style.marginRight = 0;                           
                        row = e.target.id;
                    }
            }
		}
		else if(e.target.classList[0] == "2")
            {				
                if(e.target.classList[0] == "2")
                {					
                    var tinhtrang;
                    tinhtrang = "3";				
					if(e.target.classList == "2 0")
					{
						document.getElementById("center-ct").innerHTML = "";
						document.getElementById("ccimg").innerHTML = "";
					}
					if(e.target.getElementsByTagName("span")[0].classList[0] == "plus-icon")
                    {
                        tinhtrang = 1;						
                    }                    
                    if(e.target.getElementsByTagName("span")[0].classList[0] == "minus-icon")
                    {
                        tinhtrang = 2;
                    }
                    if(e.target.getElementsByTagName("span")[0].classList[0] == "none-icon")
                    {
                        tinhtrang = 3;
                    }									
                    Row_Position_Show("open",e.target.id,tinhtrang);                    

                }
            }
        }
    for (let button of buttons) {            
        button.addEventListener("click", buttonPressed);
    }
    
    function UploadTaiLieu(str,pst,state) {
        const xhttp = new XMLHttpRequest();
        xhttp.onload = function() {
            document.getElementById(pst).innerHTML =
            this.responseText;
        }
        xhttp.open("POST", "Resourcers/AJAX/UploadFileTaiLieu.aspx");
        xhttp.send();
    }
    // }
    function rowtbbtclick(obj) {
        var id = obj.id;
		window.location="/Pages/SuaBaoTri.aspx?matbbt="+id;
    }
    function rowdsphutungclick(obj) {
        var id = obj.id;
		window.location="/Pages/SuaPhuTung.aspx?maphutung="+id;
    }
    function opentailieu(obj) {
        var tentailieu = obj.id;
        document.getElementById("ccimg").innerHTML = "<embed src='/Resourcers/TaiLieu/"+tentailieu+"' width='800px' height='2100px' />";
    }
    function xoachitiet(obj) {
        var id = obj.value;
        console.log("xóa chi tiết" + id);
        const xhttp = new XMLHttpRequest();
        xhttp.onload = function() {
            // this.responseText;
            document.getElementById("cttbrow"+id).innerHTML = "";
        }
        xhttp.open("POST", "Resourcers/AJAX/XoaChiTiet.aspx?machitiet="+id);
        xhttp.send();
    }
    function deletetailieu(obj) {
        var id = obj.parentNode.getElementsByTagName("p")[0].id;
        const xhttp = new XMLHttpRequest();
        xhttp.onload = function() {
            var soluongdstltb = document.getElementsByClassName("dstltb").length;            
            for(var i = 0; i < soluongdstltb; i++){
                if(document.getElementsByClassName("dstltb")[i].id == id) {
                    document.getElementsByClassName("dstltb")[i].parentNode.parentNode.remove();                    
                }
            }
        }
        xhttp.open("POST", "Resourcers/AJAX/XoaTaiLieu.aspx?matailieu="+id);
        xhttp.send();
    }
    function SuaThietBi(obj) {
        var id = obj.id;
        window.location.href = "/Pages/SuaThietBi.aspx?mathietbi=" + id; //Ryan McGeary
    }
</script>
</asp:Content>