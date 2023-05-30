function RedirectToThemThietBi2() {
    location.replace("./Pages/ThemThietBi2.aspx");
}
document
  .getElementById("addthietbi")
  .addEventListener("click", RedirectToThemThietBi2);
function showThongtinChung() {
    document.getElementById("panelchitiet").style.display = "none";
    document.getElementById("panelphutung").style.display = "none";
    document.getElementById("panelttc").style.display = "block";
    document.getElementById("panelbaotri").style.display = "none";
    document.getElementById("paneltailieu").style.display = "none";
}
function showChiTiet() {
    document.getElementById("panelchitiet").style.display = "block";
    document.getElementById("panelphutung").style.display = "none";
    document.getElementById("panelttc").style.display = "none";
    document.getElementById("panelbaotri").style.display = "none";
    document.getElementById("paneltailieu").style.display = "none";
}
function showPhuTung() {
    document.getElementById("panelchitiet").style.display = "none";
    document.getElementById("panelphutung").style.display = "block";
    document.getElementById("panelttc").style.display = "none";
    document.getElementById("panelbaotri").style.display = "none";
    document.getElementById("paneltailieu").style.display = "none";
}
function showBaoTri() {
    document.getElementById("panelchitiet").style.display = "none";
    document.getElementById("panelphutung").style.display = "none";
    document.getElementById("panelttc").style.display = "none";
    document.getElementById("panelbaotri").style.display = "block";
    document.getElementById("paneltailieu").style.display = "none";
}
function showTaiLieu() {
    document.getElementById("panelchitiet").style.display = "none";
    document.getElementById("panelphutung").style.display = "none";
    document.getElementById("panelttc").style.display = "none";
    document.getElementById("panelbaotri").style.display = "none";
    document.getElementById("paneltailieu").style.display = "block";
}
function SuaThietBi() {
    var mathietbi, loaithietbi, phongban, ngaynhap, thangnhap, namnhap, tenthietbi, nhacungcap, tinhtrang, thoihanbaohanh, nhasanxuat, nuocsanxuat, serial, model, ngaylapdat, thanglapdat, namlapdat, ngaymua, thangmua, nammua, maquanly;
    mathietbi = document.getElementById("txtmathietbi").value;
    loaithietbi = document.getElementById("sltloaithietbi").value;
    phongban = document.getElementById("sltphongban").value;
    ngaynhap = document.getElementById("sltngaynhap").value;
    thangnhap = document.getElementById("sltthangnhap").value;
    namnhap = document.getElementById("sltnamnhap").value;
    tenthietbi = document.getElementById("tenthietbi").value;
    nhacungcap = document.getElementById("sltnhacungcap").value;
    huhong = document.getElementById("txthuhong").value;
    thoihanbaohanh = document.getElementById("txtthoihanbaohanh").value;
    nhasanxuat = document.getElementById("txtnhasanxuat").value;
    nuocsanxuat  = document.getElementById("txtnuocsanxuat").value;
    serial  = document.getElementById("txtserial").value;
    model = document.getElementById("txtmodel").value;
    ngaylapdat = document.getElementById("sltngaylapdat").value;
    thanglapdat = document.getElementById("sltthanglapdat").value;
    namlapdat = document.getElementById("sltnamlapdat").value;
    ngaymua = document.getElementById("sltngaymua").value;
    thangmua = document.getElementById("sltthangmua").value;
    nammua = document.getElementById("sltnammua").value;
    maquanly = document.getElementById("txtmaquanly").value;
    const xhttp = new XMLHttpRequest();
    xhttp.onload = function () {
    };
    xhttp.open("GET", "Resourcers/AJAX/SuaThietBiDashboard.aspx?mathietbi="+ mathietbi +"&loaithietbi="+loaithietbi+"&phongban="+phongban+"&ngaynhap="+ngaynhap+"&thangnhap="+thangnhap+"&namnhap="+namnhap+"&tenthietbi="+tenthietbi+"&nhacungcap="+nhacungcap+"&huhong="+huhong+"&thoihanbaohanh="+thoihanbaohanh+"&nhasanxuat="+nhasanxuat+"&nuocsanxuat="+nuocsanxuat+"&serial="+serial+"&model="+model+"&ngaylapdat="+ngaylapdat+"&thanglapdat="+thanglapdat+"&namlapdat="+namlapdat+"&ngaymua="+ngaymua+"&thangmua="+thangmua+"&nammua="+nammua+"&maquanly="+maquanly+"");
    xhttp.send();
}
function Row_Device_Show(str, pst, state) {
    const xhttp = new XMLHttpRequest();
    xhttp.onload = function () {
        document.getElementById(pst).innerHTML = this.responseText;
        const xhttp2 = new XMLHttpRequest();
        xhttp2.onload = function () {
            document.getElementById("center-ct").innerHTML = this.responseText;
        };
        xhttp2.open("GET", "Resourcers/AJAX/DashboardCenter.aspx?ID=" + pst);
        xhttp2.send();
        const xhttp3 = new XMLHttpRequest();
        xhttp3.onload = function () {
            document.getElementById("ccimg").innerHTML = this.responseText;
        };
        xhttp3.open("GET", "Resourcers/AJAX/DashboardImage.aspx?ID=" + pst); // in ra hình
        xhttp3.send();
    };
    xhttp.open("GET", "Resourcers/AJAX/DashboardChildTree.aspx?ID=" + pst);
    xhttp.send();
}
function Row_Device_Show_Close(str, pst, state) {
    const xhttp = new XMLHttpRequest();
    xhttp.onload = function () {
        const xhttp2 = new XMLHttpRequest();
        xhttp2.onload = function () {
            document.getElementById("center-ct").innerHTML = this.responseText;
        };
        xhttp2.open("GET", "Resourcers/AJAX/DashboardCenter.aspx?ID=" + pst);
        xhttp2.send();
        const xhttp3 = new XMLHttpRequest();
        xhttp3.onload = function () {
            document.getElementById("ccimg").innerHTML = this.responseText;
        };
        xhttp3.open("GET", "Resourcers/AJAX/DashboardImage.aspx?ID=" + pst); // in ra hình
        xhttp3.send();
    };
    xhttp.open("GET", "Resourcers/AJAX/DashboardChildTree.aspx?ID=" + pst);
    xhttp.send();
}
function Row_Position_Show(str, pst, state) {
    const xhttp = new XMLHttpRequest();
    xhttp.onload = function () {
        document.getElementById(pst).innerHTML = this.responseText;
        if (state == 1 || state == 2 || state == 3) {
            document.getElementById("center-ct").innerHTML = "";
            document.getElementById("ccimg").innerHTML = "";
        }
    };
    xhttp.open(
      "GET",
      "Resourcers/AJAX/DashboardChildTreeByViTri.aspx?mavitri=" +
        pst +
        "&tinhtrang=" +
        state
    );
    xhttp.send();
}
var row = 3;
const buttons = document.getElementsByTagName("li");
const result = document.getElementById("result");
const buttonPressed = (e) => {
    if (e.target.classList[0] == "1") {
    Row_Device_Show("open", e.target.id);
document.getElementById(e.target.id).className =
  document.getElementById(e.target.id).classList[0] + " 0";
if (
  document.getElementById(e.target.id).getElementsByTagName("span")[0]
    .classList[0] != "none-icon" &&
  document.getElementById(e.target.id).getElementsByTagName("span")[0]
    .classList[0] != "none-icon-m"
)
    document
      .getElementById(e.target.id)
      .getElementsByTagName("span")[0].className =
      "minus-icon 0 mtree-p-icon";
document
  .getElementById(e.target.id)
  .getElementsByTagName("span")[1].className =
  document.getElementById(e.target.id).getElementsByTagName("span")[1]
    .classList[0] + " 0";
document
  .getElementById(e.target.id)
  .getElementsByTagName("a")[0].className = 0;
row = e.target.id;
}
else if (e.target.classList[0] == "0") {
    if (e.target.classList[0] == "0") {
        if (document.getElementById(e.target.id).innerText.indexOf("\n") != -1) {
            Row_Device_Show_Close("open", e.target.id);
            document.getElementById(e.target.id).innerHTML = document
              .getElementById(e.target.id)
              .innerText.slice(
                0,
                document.getElementById(e.target.id).innerText.indexOf("\n") + 1
              );
            document.getElementById(e.target.id).className = "row-tree-tb 1";
            var noidung = document.getElementById(e.target.id).innerHTML;
            document.getElementById(e.target.id).innerHTML =
              "<span id='" +
              e.target.id +
              "' class='plus-icon mtree-p-icon'></span> <span class='mtree-text'><a id='" +
              e.target.id +
              "' class='1'>" +
              noidung +
              "</a></span>";
            document
              .getElementById(e.target.id)
              .getElementsByTagName("a")[0].className = 1;
            document
              .getElementById(e.target.id)
              .getElementsByTagName("span")[0].style.marginRight = 0;
            row = e.target.id;
        }
    }
} else if (e.target.classList[0] == "2") {
    if (e.target.classList[0] == "2") {
        var tinhtrang;
        tinhtrang = "3";
        if (e.target.classList == "2 0") {
            document.getElementById("center-ct").innerHTML = "";
            document.getElementById("ccimg").innerHTML = "";
        }
        if (
          e.target.getElementsByTagName("span")[0].classList[0] == "plus-icon"
        ) {
            tinhtrang = 1;
        }
        if (
          e.target.getElementsByTagName("span")[0].classList[0] == "minus-icon"
        ) {
            tinhtrang = 2;
        }
        if (
          e.target.getElementsByTagName("span")[0].classList[0] == "none-icon"
        ) {
            tinhtrang = 3;
        }
        Row_Position_Show("open", e.target.id, tinhtrang);
    }
}
};
for (let button of buttons) {
  button.addEventListener("click", buttonPressed);
}
function UploadTaiLieu(str, pst, state) {
  const xhttp = new XMLHttpRequest();
  xhttp.onload = function () {
    document.getElementById(pst).innerHTML = this.responseText;
};
  xhttp.open("POST", "Resourcers/AJAX/UploadFileTaiLieu.aspx");
  xhttp.send();
}
function rowtbbtclick(obj) {
  var id = obj.id;
  window.location = "/Pages/SuaBaoTri.aspx?matbbt=" + id;
}
function opentailieu(obj) {
    var tentailieu = obj.id;
    document.getElementById("ccimg").innerHTML =
      "<embed src='/Resourcers/TaiLieu/" +
      tentailieu +
      "' width='800px' height='2100px' />";
}
function xoachitiet(obj) {
    var id = obj.value;
    const xhttp = new XMLHttpRequest();
    xhttp.onload = function () {
        document.getElementById("cttbrow" + id).innerHTML = "";
    };
    xhttp.open("POST", "Resourcers/AJAX/XoaChiTiet.aspx?machitiet=" + id);
    xhttp.send();
}
function deletetailieu(obj) {
    var id = obj.parentNode.getElementsByTagName("p")[0].id;
    const xhttp = new XMLHttpRequest();
    xhttp.onload = function () {
        var soluongdstltb = document.getElementsByClassName("dstltb").length;
        for (var i = 0; i < soluongdstltb; i++) {
            if (document.getElementsByClassName("dstltb")[i].id == id) {
                document
                  .getElementsByClassName("dstltb")
                  [i].parentNode.parentNode.remove();
            }
        }
    };
    xhttp.open("POST", "Resourcers/AJAX/XoaTaiLieu.aspx?matailieu=" + id);
    xhttp.send();
}
function ThemChiTiet() {
    var thietbi, tenchitiet, thongsokythuat, donvi, model, partno;
    thietbi = document.getElementById("mathietbi").innerHTML;
    tenchitiet= document.getElementById("txttenchitiet").value;
    thongsokythuat = document.getElementById("txtthongsokythuat").value;
    donvi = document.getElementById("txtdonvi").value;
    model = document.getElementById("txtctmodel").value;
    partno = document.getElementById("txtpartno").value;
    const xhttp = new XMLHttpRequest();
    xhttp.onload = function () {
        document.getElementById("kqthemchitiet").innerHTML = "Thêm thành công chi tiết " + tenchitiet + ".";
        document.getElementById("dcdanhsachchitiet").innerHTML = document.getElementById("dcdanhsachchitiet").innerHTML+ "<tr id='cttbrow"+this.responseText+"' class='tbl-row-chitiet'><td class='tdchitiet' onclick='suachitietthietbimoi(this)''><input type='checkbox' onchange='xoachitiet(this)' value='"+this.responseText+"' /></td><td class='tdchitiet'>" + document.getElementById("dcdanhsachchitiet").getElementsByTagName("tr").length +"</td><td class='tdchitiet' onclick='suachitietthietbimoi(this)'>"+tenchitiet+"</td><td class='tdchitiet' onclick='suachitietthietbimoi(this)'>"+thongsokythuat+"</td><td class='tdchitiet' onclick='suachitietthietbimoi(this)'>"+donvi+"</td><td class='tdchitiet' onclick='suachitietthietbimoi(this)'>"+model+"</td><td class='tdchitiet' onclick='suachitietthietbimoi(this)'>"+partno+"</td><td class='tdchitiet d-none'><button type='button' class='btn-sua-chi-tiet-thiet-bi btn btn-primary' onclick='luusuachitietmoi(this)'>Lưu</button></td></tr>";
    };
    xhttp.open("POST", "Resourcers/AJAX/ThemChiTiet.aspx?&tenchitiet="+tenchitiet+"&thongsokythuat="+thongsokythuat+"&donvi="+donvi+"&model="+model+"&partno="+partno+"&thietbi="+thietbi);
    xhttp.send();
}
function LamMoiFormThemChiTiet() {
    document.getElementById("txttenchitiet").value = "";
    document.getElementById("txtthongsokythuat").value = "";
    document.getElementById("txtdonvi").value = "";
    document.getElementById("txtctmodel").value = "";
    document.getElementById("txtpartno").value = "";
    document.getElementById("kqthemchitiet").innerHTML = "";
}
var trangthaisuachitiet, machitietdangsua;
trangthaisuachitiet = false;
function suachitietthietbi(obj){
    if(trangthaisuachitiet==false){
        obj.parentNode.childNodes[15].classList.remove("d-none");
        obj.parentNode.childNodes[5].innerHTML = "<input type='text' value='"+obj.parentNode.childNodes[5].innerHTML+"' class='rowchitietedit'/>";
        obj.parentNode.childNodes[7].innerHTML = "<input type='text' value='"+obj.parentNode.childNodes[7].innerHTML+"' class='rowchitietedit'/>";
        obj.parentNode.childNodes[9].innerHTML = "<input type='text' value='"+obj.parentNode.childNodes[9].innerHTML+"' class='rowchitietedit'/>";
        obj.parentNode.childNodes[11].innerHTML = "<input type='text' value='"+obj.parentNode.childNodes[11].innerHTML+"' class='rowchitietedit'/>";
        obj.parentNode.childNodes[13].innerHTML = "<input type='text' value='"+obj.parentNode.childNodes[13].innerHTML+"' class='rowchitietedit'/>";
        trangthaisuachitiet = true;
    }
}
function suachitietthietbimoi(obj){
  if(trangthaisuachitiet==false){
    obj.parentNode.childNodes[2].innerHTML = "<input type='text' value='"+obj.parentNode.childNodes[2].innerHTML+"' class='rowchitietedit'/>";
    obj.parentNode.childNodes[3].innerHTML = "<input type='text' value='"+obj.parentNode.childNodes[3].innerHTML+"' class='rowchitietedit'/>";
    obj.parentNode.childNodes[4].innerHTML = "<input type='text' value='"+obj.parentNode.childNodes[4].innerHTML+"' class='rowchitietedit'/>";
    obj.parentNode.childNodes[5].innerHTML = "<input type='text' value='"+obj.parentNode.childNodes[5].innerHTML+"' class='rowchitietedit'/>";
    obj.parentNode.childNodes[6].innerHTML = "<input type='text' value='"+obj.parentNode.childNodes[6].innerHTML+"' class='rowchitietedit'/>";
    obj.parentNode.childNodes[7].classList.remove("d-none");
    trangthaisuachitiet = true;
  }
}
function luusuachitiet2(obj) {
    var mathietbi, machitiet, tenchitiet, thongsokythuat, donvi, model, partno;
    mathietbi = document.getElementById("txtmathietbi").value;
    machitiet = obj.parentNode.parentNode.id.substr(7);
    tenchitiet = obj.parentNode.parentNode.childNodes[5].childNodes[0].value;
    thongsokythuat = obj.parentNode.parentNode.childNodes[7].childNodes[0].value;
    donvi = obj.parentNode.parentNode.childNodes[9].childNodes[0].value;
    model = obj.parentNode.parentNode.childNodes[11].childNodes[0].value;
    partno = obj.parentNode.parentNode.childNodes[13].childNodes[0].value;
    const xhttp = new XMLHttpRequest();
    xhttp.onload = function () {
    };
    xhttp.open("GET", "Resourcers/AJAX/SuaChiTietThietBi.aspx?mathietbi="+ mathietbi +"&machitiet="+machitiet+"&tenchitiet="+tenchitiet+"&thongsokythuat="+thongsokythuat+"&donvi="+donvi+"&model="+model+"&partno="+partno);
    xhttp.send();
    obj.parentNode.parentNode.childNodes[15].classList.add("d-none");
    obj.parentNode.parentNode
    trangthaisuachitiet = false;
}
function luusuachitiet(obj) {
    var mathietbi, machitiet, tenchitiet, thongsokythuat, donvi, model, partno;
    mathietbi = document.getElementById("txtmathietbi").value;
    machitiet = obj.parentNode.parentNode.id.substr(7);
    tenchitiet = obj.parentNode.parentNode.childNodes[5].childNodes[0].value;
    thongsokythuat = obj.parentNode.parentNode.childNodes[7].childNodes[0].value;
    donvi = obj.parentNode.parentNode.childNodes[9].childNodes[0].value;
    model = obj.parentNode.parentNode.childNodes[11].childNodes[0].value;
    partno = obj.parentNode.parentNode.childNodes[13].childNodes[0].value;
    obj.parentNode.parentNode.childNodes[5].innerHTML = obj.parentNode.parentNode.childNodes[5].childNodes[0].value;
    obj.parentNode.parentNode.childNodes[7].innerHTML = obj.parentNode.parentNode.childNodes[7].childNodes[0].value;
    obj.parentNode.parentNode.childNodes[9].innerHTML = obj.parentNode.parentNode.childNodes[9].childNodes[0].value;
    obj.parentNode.parentNode.childNodes[11].innerHTML = obj.parentNode.parentNode.childNodes[11].childNodes[0].value;
    obj.parentNode.parentNode.childNodes[13].innerHTML = obj.parentNode.parentNode.childNodes[13].childNodes[0].value;
    obj.parentNode.classList.add("d-none");
    trangthaisuachitiet = false;
    const xhttp = new XMLHttpRequest();
    xhttp.onload = function () {
    };
    xhttp.open("GET", "Resourcers/AJAX/SuaChiTietThietBi.aspx?mathietbi="+ mathietbi +"&machitiet="+machitiet+"&tenchitiet="+tenchitiet+"&thongsokythuat="+thongsokythuat+"&donvi="+donvi+"&model="+model+"&partno="+partno);
    xhttp.send();
}
function luusuachitietmoi(obj) {
    var mathietbi, machitiet, tenchitiet, thongsokythuat, donvi, model, partno;
    mathietbi = document.getElementById("txtmathietbi").value;
    machitiet = obj.parentNode.parentNode.id.substr(7);
    tenchitiet = obj.parentNode.parentNode.childNodes[2].childNodes[0].value;
    thongsokythuat = obj.parentNode.parentNode.childNodes[3].childNodes[0].value;
    donvi = obj.parentNode.parentNode.childNodes[4].childNodes[0].value;
    model = obj.parentNode.parentNode.childNodes[5].childNodes[0].value;
    partno = obj.parentNode.parentNode.childNodes[6].childNodes[0].value;
    obj.parentNode.parentNode.childNodes[2].innerHTML = obj.parentNode.parentNode.childNodes[2].childNodes[0].value;
    obj.parentNode.parentNode.childNodes[3].innerHTML = obj.parentNode.parentNode.childNodes[3].childNodes[0].value;
    obj.parentNode.parentNode.childNodes[4].innerHTML = obj.parentNode.parentNode.childNodes[4].childNodes[0].value;
    obj.parentNode.parentNode.childNodes[5].innerHTML = obj.parentNode.parentNode.childNodes[5].childNodes[0].value;
    obj.parentNode.parentNode.childNodes[6].innerHTML = obj.parentNode.parentNode.childNodes[6].childNodes[0].value;
    obj.parentNode.classList.add("d-none");
    trangthaisuachitiet = false;
    const xhttp = new XMLHttpRequest();
    xhttp.onload = function () {
    };
    xhttp.open("GET", "Resourcers/AJAX/SuaChiTietThietBi.aspx?mathietbi="+ mathietbi +"&machitiet="+machitiet+"&tenchitiet="+tenchitiet+"&thongsokythuat="+thongsokythuat+"&donvi="+donvi+"&model="+model+"&partno="+partno);
    xhttp.send();
}
function ThemPhuTung() {
  var mathietbi, tenphutung, ngaynhap, thangnhap, namnhap, giaca, tinhtrang, tinhtrangtrue, tinhtrangfalse;
  mathietbi = document.getElementById("mathietbi").innerHTML;
  tenphutung = document.getElementById("txttenphutung").value;
  ngaynhap = document.getElementById("sltngaynhapphutung").value;
  thangnhap = document.getElementById("sltthangnhapphutung").value;
  namnhap = document.getElementById("sltnamnhapphutung").value;
  giaca = document.getElementById("txtgiaca").value;
  tinhtrang = document.getElementById("slttinhtrang").value;
  const xhttp = new XMLHttpRequest();
  xhttp.onload = function () {
    document.getElementById("kqthemphutung").innerHTML = "Thêm thành công phụ tùng " + tenphutung + ".";
    if(tinhtrang == "true")
    {
      tinhtrang = "Tốt";
    }
    else {
      tinhtrang = "Hư hỏng";
    }
    document.getElementById("dcdanhsachphutung").innerHTML = document.getElementById("dcdanhsachphutung").innerHTML+ "<tr id='pttbrow"+this.responseText+"' class='rowphutung' onclick='rowdsphutungclick(this)''><td>"+ (document.getElementById("dcdanhsachphutung").getElementsByTagName("tr").length - 1) +"</td><td onclick='suaphutungthietbimoi()'>"+this.responseText+"</td><td onclick='suaphutungthietbimoi()'>"+tenphutung+"</td><td onclick='suaphutungthietbimoi()'>"+ngaynhap+"-"+thangnhap+"-"+namnhap+"</td><td onclick='suaphutungthietbimoi()'>"+giaca+"</td><td onclick='suaphutungthietbimoi()'>"+tinhtrang+"</td></tr>";
  };
  xhttp.open("GET", "Resourcers/AJAX/ThemPhuTung.aspx?tenphutung="+tenphutung+"&ngaynhap="+ngaynhap+"&thangnhap="+thangnhap+"&namnhap="+namnhap+"&giaca="+giaca+"&tinhtrang="+tinhtrang+"&mathietbi="+mathietbi);
  xhttp.send();
}
var trangthaisuaphutung;
trangthaisuaphutung = false;
function suaphutungthietbi(obj){
  var tinhtrang, tinhtrangtrue, tinhtrangfalse;
    if(trangthaisuaphutung==false){
        obj.parentNode.childNodes[13].classList.remove("d-none");
        obj.parentNode.childNodes[5].innerHTML = "<input type='text' value='" + obj.parentNode.childNodes[5].innerHTML + "' class='rowchitietedit'/>";
        obj.parentNode.childNodes[7].innerHTML = "<input type='text' value='" + obj.parentNode.childNodes[7].innerHTML + "' class='rowchitietedit'/>";
        obj.parentNode.childNodes[9].innerHTML = "<input type='text' value='" + obj.parentNode.childNodes[9].innerHTML + "' class='rowchitietedit'/>";
        obj.parentNode.childNodes[11].innerHTML = "<input type='text' value='" + obj.parentNode.childNodes[11].innerHTML + "' class='rowchitietedit'/>";
        tinhtrangtrue="";
        tinhtrangfalse="";
        if(obj.parentNode.childNodes[11].childNodes[0].value=="Tốt")
        {
            tinhtrangtrue = "selected='selected'";
            tinhtrangfalse = "";
        }
        else if(obj.parentNode.childNodes[11].childNodes[0].value=="Hư hỏng")
        {
            tinhtrangtrue = "";
            tinhtrangfalse = "selected='selected'";
        }
        obj.parentNode.childNodes[11].innerHTML = "<select id='slttinhtrangtable'><option value='true'"+tinhtrangtrue+">Tốt</option><option value='false'"+tinhtrangfalse+">Hư hỏng</option></select>";
        trangthaisuaphutung = true;
    }
}
function suaphutungthietbimoi(obj){
  var tinhtrang, tinhtrangtrue, tinhtrangfalse;
    if(trangthaisuaphutung==false){
        obj.parentNode.childNodes[6].classList.remove("d-none");
        obj.parentNode.childNodes[2].innerHTML = "<input type='text' value='" + obj.parentNode.childNodes[5].innerHTML + "' class='rowchitietedit'/>";
        obj.parentNode.childNodes[3].innerHTML = "<input type='text' value='" + obj.parentNode.childNodes[7].innerHTML + "' class='rowchitietedit'/>";
        obj.parentNode.childNodes[4].innerHTML = "<input type='text' value='" + obj.parentNode.childNodes[9].innerHTML + "' class='rowchitietedit'/>";
        obj.parentNode.childNodes[5].innerHTML = "<input type='text' value='" + obj.parentNode.childNodes[11].innerHTML + "' class='rowchitietedit'/>";
        tinhtrangtrue="";
        tinhtrangfalse="";
        if(obj.parentNode.childNodes[5].innerHTML=="Tốt")
        {
            tinhtrangfalse = "selected='selected'";
            tinhtrangtrue = "";
        }
        else if(obj.parentNode.childNodes[5].innerHTML=="Hư hỏng")
        {
              tinhtrangtrue = "selected='selected'";
              tinhtrangfalse = "";
        }
        obj.parentNode.childNodes[5].innerHTML = "<select id='slttinhtrangtable'><option value='true'"+tinhtrangtrue+">Tốt</option><option value='false'"+tinhtrangfalse+">Hư hỏng</option></select>";
        trangthaisuaphutung = true;
    }
}
function luusuaphutung(obj) {
    var mathietbi, maphutung, tenphutung, ngaynhap, giaca, tinhtrang, tinhtrangsaukhiluu;
    mathietbi = document.getElementById("txtmathietbi").value;
    maphutung = obj.parentNode.parentNode.id.substr(7);
    tenphutung = obj.parentNode.parentNode.childNodes[5].childNodes[0].value;
    ngaynhap = obj.parentNode.parentNode.childNodes[7].childNodes[0].value;
    giaca = obj.parentNode.parentNode.childNodes[9].childNodes[0].value;
    tinhtrang = obj.parentNode.parentNode.childNodes[11].childNodes[0].value;
    obj.parentNode.parentNode.childNodes[5].innerHTML = obj.parentNode.parentNode.childNodes[5].childNodes[0].value;
    obj.parentNode.parentNode.childNodes[7].innerHTML = obj.parentNode.parentNode.childNodes[7].childNodes[0].value;
    obj.parentNode.parentNode.childNodes[9].innerHTML = obj.parentNode.parentNode.childNodes[9].childNodes[0].value;
    if(obj.parentNode.parentNode.childNodes[11].childNodes[0].value == "true") {
      tinhtrangsaukhiluu = "Tốt";
    } else if(obj.parentNode.parentNode.childNodes[11].childNodes[0].value == "false") {
      tinhtrangsaukhiluu = "Hư hỏng";
    }
    obj.parentNode.parentNode.childNodes[11].innerHTML = tinhtrangsaukhiluu;
    obj.parentNode.classList.add("d-none");
    trangthaisuaphutung = false;
    const xhttp = new XMLHttpRequest();
    xhttp.onload = function () {
    };
    xhttp.open("GET", "/Resourcers/AJAX/SuaPhuTungThietBi.aspx?maphutung="+maphutung+"&tenphutung="+tenphutung+"&ngaynhap="+ngaynhap+"&giaca="+giaca+"&tinhtrang="+tinhtrang+"&mathietbi="+mathietbi);
    xhttp.send();
}
function luusuaphutungmoi(obj) {
    var mathietbi, maphutung, tenphutung, ngaynhap, giaca, tinhtrang;
    mathietbi = document.getElementById("txtmathietbi").value;
    maphutung = obj.parentNode.parentNode.id.substr(7);
    tenphutung = obj.parentNode.parentNode.childNodes[3].childNodes[0].value;
    ngaynhap = obj.parentNode.parentNode.childNodes[4].childNodes[0].value;
    giaca = obj.parentNode.parentNode.childNodes[5].childNodes[0].value;
    tinhtrang = obj.parentNode.parentNode.childNodes[6].childNodes[0].value;
    obj.parentNode.parentNode.childNodes[3].innerHTML = obj.parentNode.parentNode.childNodes[5].childNodes[0].value;
    obj.parentNode.parentNode.childNodes[4].innerHTML = obj.parentNode.parentNode.childNodes[7].childNodes[0].value;
    obj.parentNode.parentNode.childNodes[5].innerHTML = obj.parentNode.parentNode.childNodes[9].childNodes[0].value;
    obj.parentNode.parentNode.childNodes[6].innerHTML = obj.parentNode.parentNode.childNodes[11].childNodes[0].value;
    obj.parentNode.classList.add("d-none");
    trangthaisuaphutung = false;
    const xhttp = new XMLHttpRequest();
    xhttp.onload = function () {
    };
    xhttp.open("GET", "/Resourcers/AJAX/SuaPhuTungThietBi.aspx?maphutung="+maphutung+"&tenphutung="+tenphutung+"&ngaynhap="+ngaynhap+"&giaca="+giaca+"&tinhtrang="+tinhtrang+"&mathietbi="+mathietbi);
    xhttp.send();
}
