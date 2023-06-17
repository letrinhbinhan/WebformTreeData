<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="BaoTri.aspx.cs" Inherits="Pages_BaoTri" Title="Bảo trì" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="main-content">
    <div class="center-content-qltb">
        <div class="center-tree">
            <%= showGocCayThuMuc() %>
              </div>
        </div>
        <div class="center-contain">
            <div id="center-ct" class="center-contain-form">

            </div>
        </div>
        <div id="ccimg" class="ccimg">

        </div>
    </div>
<script charset="utf-8" type="text/javascript">
    //show
    function Show(str,pst,state) {
        const xhttp = new XMLHttpRequest();
        xhttp.onload = function() {
            document.getElementById(pst).innerHTML =
            this.responseText;
            const xhttp2 = new XMLHttpRequest();
            xhttp2.onload = function() {
                document.getElementById("center-ct").innerHTML =
                this.responseText;
            }
            xhttp2.open("GET", "../Resourcers/AJAX/BaoTriCenter.aspx?ID=" + pst);
            xhttp2.send();
            const xhttp3 = new XMLHttpRequest();
            xhttp3.onload = function() {
                document.getElementById("ccimg").innerHTML =
                this.responseText;
            }
            xhttp3.open("GET", "../Resourcers/AJAX/DashboardImage.aspx?ID=" + pst);
            xhttp3.send();
        }
        xhttp.open("GET", "../Resourcers/AJAX/DashboardChildTree.aspx?ID=" + pst);
        xhttp.send();
    }

    var row = 3;

    //bắt các li đang có áp sự kiện cho nó
    const buttons = document.getElementsByTagName("li");
    const result = document.getElementById("result");
    const buttonPressed = e => {
    //class 1 thì thẻ đang đóng
        if(e.target.classList[0] == "1")
        {
            Show("open",e.target.id);
            document.getElementById(e.target.id).className = document.getElementById(e.target.id).classList[0] + " 0";
            if(document.getElementById(e.target.id).getElementsByTagName("span")[0].classList[0] != "none-icon" && document.getElementById(e.target.id).getElementsByTagName("span")[0].classList[0] != "none-icon-m")
                document.getElementById(e.target.id).getElementsByTagName("span")[0].className = "minus-icon 0 mtree-p-icon";
            document.getElementById(e.target.id).getElementsByTagName("span")[1].className = document.getElementById(e.target.id).getElementsByTagName("span")[1].classList[0] + " 0";
            document.getElementById(e.target.id).getElementsByTagName("a")[0].className = 0;
            row = e.target.id;

        }
        //class 0 thì thẻ mở
        else
            if(e.target.classList[0] == "0")
            {
                if(document.getElementById(e.target.id).innerText.indexOf("\n") != -1)
                    {
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
    for (let button of buttons) {
        button.addEventListener("click", buttonPressed);
    }
function xoaclick(e){
        //AJAX
        const xhttp = new XMLHttpRequest();
        xhttp.onload = function() {
            document.getElementById("tr"+e).innerHTML =
            "";
        }
        xhttp.open("GET", "../Resourcers/AJAX/Xoathoigianbaotri.aspx?ID=" + e); //xóa
        xhttp.send();
}
</script>

</asp:Content>

