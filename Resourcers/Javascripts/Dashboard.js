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
        xhttp3.open("GET", "Resourcers/AJAX/DashboardImage.aspx?ID=" + pst); 
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
        xhttp3.open("GET", "Resourcers/AJAX/DashboardImage.aspx?ID=" + pst); 
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
  document.getElementById(e.target.id).style.removeProperty("padding-left");
  document.getElementById(e.target.id).className = document.getElementById(e.target.id).classList[0] + " 0";
  if (document.getElementById(e.target.id).getElementsByTagName("span")[0].classList[0] != "none-icon" && document.getElementById(e.target.id).getElementsByTagName("span")[0].classList[0] != "none-icon-m")
  {
      document.getElementById(e.target.id).getElementsByTagName("span")[0].className = "minus-icon 0 mtree-p-icon";
  }
  document.getElementById(e.target.id).getElementsByTagName("span")[1].className = document.getElementById(e.target.id).getElementsByTagName("span")[1].classList[0] + " 0";
  document.getElementById(e.target.id).getElementsByTagName("a")[0].className = 0;
  row = e.target.id;
}
else if (e.target.classList[0] == "0")
{
  if (e.target.classList[0] == "0") 
  {
      if (document.getElementById(e.target.id).innerText.indexOf("\n") != -1) 
      {
          Row_Device_Show_Close("open", e.target.id);           
          var noidung;
          noidung = document.getElementById(e.target.id).innerText.trim().split("\n")[0];
          document.getElementById(e.target.id).innerHTML = "<li id='"+e.target.id+"' class='1 row-tree-tb'><span class='1 mtree-text'><a id='"+e.target.id+"' class='1' href='#'> <span id='"+e.target.id+"' class='plus-icon mtree-p-icon'></span>"+noidung+"</a></span></li>";
          document.getElementById(e.target.id).style.paddingLeft = 0;
          row = e.target.id;                    
      }
  }
} else if(e.target.classList[0] == "2") 
      {
        if (e.target.classList[0] == "2") {
            var tinhtrang;
            tinhtrang = "3";
            if (e.target.classList == "2 0") 
            {
                document.getElementById("center-ct").innerHTML = "";
                document.getElementById("ccimg").innerHTML = "";
            }
            if (e.target.getElementsByTagName("span")[0].classList[0] == "plus-icon") 
            {
                tinhtrang = 1;
            }
            if (e.target.getElementsByTagName("span")[0].classList[0] == "minus-icon") 
            {
                tinhtrang = 2;
            }
            if (e.target.getElementsByTagName("span")[0].classList[0] == "none-icon") 
            {
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
  var mathietbi, tenphutung, ngaythaythe, thangthaythe, namthaythe, giaca, tinhtrang, soluong;
  mathietbi = document.getElementById("mathietbi").innerHTML;
  tenphutung = document.getElementById("txttenphutung").value;
  ngaythaythe = document.getElementById("sltngaythaythephutung").value;
  thangthaythe = document.getElementById("sltthangthaythephutung").value;
  namthaythe = document.getElementById("sltnamthaythephutung").value;
  giaca = document.getElementById("txtgiaca").value;
  tinhtrang = document.getElementById("slttinhtrang").value;
  soluong = document.getElementById("txtphutungsoluong").value;
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
    if(ngaythaythe < 10) ngaythaythe = "0"+ngaythaythe;
    if(thangthaythe < 10) thangthaythe = "0"+thangthaythe;
    document.getElementById("dcdanhsachphutung").innerHTML = document.getElementById("dcdanhsachphutung").innerHTML+ "<tr id='pttbrow"+this.responseText+"' class='rowphutung'><td><input type='checkbox' onchange='xoaphutung(this)' value='"+this.responseText+"'/></td><td>"+ document.getElementById("dcdanhsachphutung").getElementsByTagName("tr").length +"</td><td onclick='suaphutungthietbimoi(this)'>"+this.responseText+"</td><td onclick='suaphutungthietbimoi(this)'>"+tenphutung+"</td><td onclick='suaphutungthietbimoi(this)'>"+ngaythaythe+"-"+thangthaythe+"-"+namthaythe+"</td><td onclick='suaphutungthietbimoi(this)'>"+giaca+"</td><td onclick='suaphutungthietbimoi(this)'>"+tinhtrang+"</td><td onclick='suaphutungthietbimoi(this)'>"+soluong+"</td><td class='tdphutung d-none'><button type='button' class='btn-sua-phu-tung-thiet-bi btn btn-primary' onclick='luusuaphutungmoi(this)'>Lưu</button></td></tr>";
    document.getElementById("dcdanhsachphutung").classList.remove("unvisible")
  };
  xhttp.open("GET", "Resourcers/AJAX/ThemPhuTung.aspx?tenphutung="+tenphutung+"&ngaythaythe="+ngaythaythe+"&thangthaythe="+thangthaythe+"&namthaythe="+namthaythe+"&giaca="+giaca+"&tinhtrang="+tinhtrang+"&mathietbi="+mathietbi+"&soluong="+soluong);
  xhttp.send();
}
var trangthaisuaphutung;
trangthaisuaphutung = false;
function suaphutungthietbi(obj){
    var tinhtrangtrue, tinhtrangfalse;
    if(trangthaisuaphutung==false){
        obj.parentNode.childNodes[17].classList.remove("d-none");
        obj.parentNode.childNodes[7].innerHTML = "<input type='text' value='" + obj.parentNode.childNodes[7].innerHTML + "' class='rowchitietedit'/>";
        obj.parentNode.childNodes[9].innerHTML = "<input type='text' value='" + obj.parentNode.childNodes[9].innerHTML + "' class='rowchitietedit'/>";
        obj.parentNode.childNodes[11].innerHTML = "<input type='text' value='" + obj.parentNode.childNodes[11].innerHTML + "' class='rowchitietedit'/>";
        obj.parentNode.childNodes[13].innerHTML = "<input type='text' value='" + obj.parentNode.childNodes[13].innerHTML + "' class='rowchitietedit'/>";
        obj.parentNode.childNodes[15].innerHTML = "<input type='text' value='" + obj.parentNode.childNodes[15].innerHTML + "' class='rowchitietedit'/>";
        tinhtrangtrue="";
        tinhtrangfalse="";
        if(obj.parentNode.childNodes[13].childNodes[0].value=="Tốt")
        {
            tinhtrangtrue = "selected='selected'";
            tinhtrangfalse = "";
        }
        else if(obj.parentNode.childNodes[13].childNodes[0].value=="Hư hỏng")
        {
            tinhtrangtrue = "";
            tinhtrangfalse = "selected='selected'";
        }
        obj.parentNode.childNodes[13].innerHTML = "<select id='slttinhtrangtable'><option value='true'"+tinhtrangtrue+">Tốt</option><option value='false'"+tinhtrangfalse+">Hư hỏng</option></select>";
        trangthaisuaphutung = true;
    }
}
function suaphutungthietbimoi(obj){  
  var tinhtrangtrue, tinhtrangfalse;
    if(trangthaisuaphutung==false){
        obj.parentNode.childNodes[8].classList.remove("d-none");
        obj.parentNode.childNodes[3].innerHTML = "<input type='text' value='" + obj.parentNode.childNodes[3].innerHTML + "' class='rowchitietedit'/>";
        obj.parentNode.childNodes[4].innerHTML = "<input type='text' value='" + obj.parentNode.childNodes[4].innerHTML + "' class='rowchitietedit'/>";        
        obj.parentNode.childNodes[5].innerHTML = "<input type='text' value='" + obj.parentNode.childNodes[5].innerHTML + "' class='rowchitietedit'/>";          
        obj.parentNode.childNodes[7].innerHTML = "<input type='text' value='" + obj.parentNode.childNodes[7].innerHTML + "' class='rowchitietedit'/>";                         
        tinhtrangtrue="";
        tinhtrangfalse="";
        if(obj.parentNode.childNodes[6].innerHTML =="Tốt")
        {
			      tinhtrangtrue = "selected='selected'";
            tinhtrangfalse = "";            
        }
        else if(obj.parentNode.childNodes[6].innerHTML=="Hư hỏng")
        {              
			  tinhtrangfalse = "selected='selected'";
			  tinhtrangtrue = "";
        }
        obj.parentNode.childNodes[6].innerHTML = "<select id='slttinhtrangtable'><option value='true' "+tinhtrangtrue+">Tốt</option><option value='false' "+tinhtrangfalse+">Hư hỏng</option></select>";
        trangthaisuaphutung = true;
    }
}
function luusuaphutung(obj) {
    var mathietbi, maphutung, tenphutung, ngaythaythe, giaca, tinhtrang, tinhtrangsaukhiluu;
    mathietbi = document.getElementById("txtmathietbi").value;    
    maphutung = obj.parentNode.parentNode.id.substr(7);
    tenphutung = obj.parentNode.parentNode.childNodes[7].childNodes[0].value;
    ngaythaythe = obj.parentNode.parentNode.childNodes[9].childNodes[0].value;
    giaca = obj.parentNode.parentNode.childNodes[11].childNodes[0].value;
    tinhtrang = obj.parentNode.parentNode.childNodes[13].childNodes[0].value;
    soluong = obj.parentNode.parentNode.childNodes[15].childNodes[0].value;
    obj.parentNode.parentNode.childNodes[7].innerHTML = obj.parentNode.parentNode.childNodes[7].childNodes[0].value;
    obj.parentNode.parentNode.childNodes[9].innerHTML = obj.parentNode.parentNode.childNodes[9].childNodes[0].value;
    obj.parentNode.parentNode.childNodes[11].innerHTML = obj.parentNode.parentNode.childNodes[11].childNodes[0].value;    
    if(tinhtrang==true){
      obj.parentNode.parentNode.childNodes[13].innerHTML = "Tốt";
    } else if(tinhtrang==false){
      obj.parentNode.parentNode.childNodes[13].innerHTML = "Hư hỏng";
    }    
    obj.parentNode.parentNode.childNodes[15].innerHTML = obj.parentNode.parentNode.childNodes[15].childNodes[0].value;
    if(obj.parentNode.parentNode.childNodes[13].childNodes[0].value == "true") {
      tinhtrangsaukhiluu = "Tốt";
    } else if(obj.parentNode.parentNode.childNodes[13].childNodes[0].value == "false") {
      tinhtrangsaukhiluu = "Hư hỏng";
    }
    obj.parentNode.parentNode.childNodes[13].innerHTML = tinhtrangsaukhiluu;
    obj.parentNode.classList.add("d-none");
    trangthaisuaphutung = false;
    const xhttp = new XMLHttpRequest();
    xhttp.onload = function () {
    };
    xhttp.open("GET", "/Resourcers/AJAX/SuaPhuTungThietBi.aspx?maphutung="+maphutung+"&tenphutung="+tenphutung+"&ngaythaythe="+ngaythaythe+"&giaca="+giaca+"&tinhtrang="+tinhtrang+"&mathietbi="+mathietbi+"&soluong="+soluong);
    xhttp.send();
}
function luusuaphutungmoi(obj) {
    var mathietbi, maphutung, tenphutung, ngaythaythe, giaca, tinhtrang, tinhtranghienthi, soluong;
    mathietbi = document.getElementById("mathietbi").innerHTML;
    maphutung = obj.parentNode.parentNode.id.substr(7);    
    tenphutung = obj.parentNode.parentNode.childNodes[4].childNodes[0].value;
    ngaythaythe = obj.parentNode.parentNode.childNodes[4].childNodes[0].value;
    giaca = obj.parentNode.parentNode.childNodes[5].childNodes[0].value;
    tinhtrang = obj.parentNode.parentNode.childNodes[6].childNodes[0].value;
    soluong = obj.parentNode.parentNode.childNodes[7].childNodes[0].value;
    obj.parentNode.parentNode.childNodes[3].innerHTML = obj.parentNode.parentNode.childNodes[3].childNodes[0].value;
    obj.parentNode.parentNode.childNodes[4].innerHTML = obj.parentNode.parentNode.childNodes[4].childNodes[0].value;
    obj.parentNode.parentNode.childNodes[5].innerHTML = obj.parentNode.parentNode.childNodes[5].childNodes[0].value;	
    obj.parentNode.parentNode.childNodes[7].innerHTML = obj.parentNode.parentNode.childNodes[7].childNodes[0].value;
    if(obj.parentNode.parentNode.childNodes[6].childNodes[0].value == "true") {
      tinhtranghienthi = "Tốt";
    } else if(obj.parentNode.parentNode.childNodes[6].childNodes[0].value == "false"){
      tinhtranghienthi = "Hư hỏng";
    }
    obj.parentNode.parentNode.childNodes[6].innerHTML = tinhtranghienthi;
    obj.parentNode.classList.add("d-none");
    trangthaisuaphutung = false;
    const xhttp = new XMLHttpRequest();
    xhttp.onload = function () {
    };
    xhttp.open("GET", "/Resourcers/AJAX/SuaPhuTungThietBi.aspx?maphutung="+maphutung+"&tenphutung="+tenphutung+"&ngaythaythe="+ngaythaythe+"&giaca="+giaca+"&tinhtrang="+tinhtrang+"&mathietbi="+mathietbi+"&soluong="+soluong);
    xhttp.send();    
}
function ThemThietBi(){
  var loaithietbi, phongban, ngaynhap, thangnhap, namnhap, tenthietbi, nhacungcap, huhong, thoihanbaohanh, nhasanxuat, nuocsanxuat, serial, model, ngaylapdat, thanglapdat, namlapdat, ngaymua, thangmua, nammua, maquanly, vitri, mathietbivuathem;
  loaithietbi = document.getElementById("sltmodelthemthietbi").value;
  phongban = document.getElementById("sltmodelphongban").value;
  ngaynhap = document.getElementById("sltttbngaynhap").value;
  thangnhap = document.getElementById("sltttbthangnhap").value;
  namnhap = document.getElementById("sltttbnamnhap").value;
  tenthietbi = document.getElementById("txtttbtenthietbi").value;
  nhacungcap = document.getElementById("sltttbnhacungcap").value;
  huhong = document.getElementById("txtttbhuhong").value;
  thoihanbaohanh = document.getElementById("txtttbthoihanbaohanh").value;
  nhasanxuat = document.getElementById("txtttbnhasanxuat").value;
  nuocsanxuat = document.getElementById("txtttbnuocsanxuat").value;
  serial = document.getElementById("txtttbserial").value;
  model = document.getElementById("txtttbmodel").value;
  ngaylapdat = document.getElementById("sltttbngaylapdat").value;
  thanglapdat = document.getElementById("sltttbthanglapdat").value;
  namlapdat = document.getElementById("sltttbnamlapdat").value;
  ngaymua = document.getElementById("sltttbngaymua").value;
  thangmua = document.getElementById("sltttbthangmua").value;
  nammua = document.getElementById("sltttbnammua").value;
  maquanly = document.getElementById("txtttbmaquanly").value;
  mathietbi = document.getElementById("mathietbilonnhat").innerHTML;
  thietbicha = document.getElementById("sltthietbicha").value;
  vitri = document.getElementById("sltvitri").value;
  const xhttp = new XMLHttpRequest();
  xhttp.onload = function () {
      mathietbivuathem = this.responseText;
      document.getElementById("kqthemthietbi").innerHTML = "Thêm thành công thiết bị " + (parseInt(mathietbi) + 1) + ".";
      //mathietbilon nhat thay đỏi và tăng thêm 1
      document.getElementById("mathietbilonnhat").innerHTML = parseInt(mathietbi) + 1;
      //cho hiển thị thiết bị vừa tạo lên cây thư mục
      //khi không có thiết bị cha thì cho nó hiển thị vào thẻ vị trí đang mở
      //thietbicha == null
      //row-tree-tb khi mà thẻ vị trí mở
      //row-tree-tb row-tree-none-icon khi mà thẻ vị trí đóng
      //"<li id='"+id+"' class='row-tree-tb'><span class='mtree-text'><a id='"+id+"' class='1' href='#'> <span id='"+id+"' class='none-icon mtree-p-icon'></span> 111</a></span></li>"
      //if(thietbicha=="null")
      //document.getElementById("vt")
      //cho vào form thêm vị trí
      //thêm vào xong thì xét nếu vị trí rỗng là không cần hiển thị
      //vị trí không rỗng và cha rỗng thì thêm và gốc vị trí
      //vị trí rkhoong rỗng và cha không rỗng thì thêm vào gốc cha
      if(vitri!="NULL"){
        if(thietbicha=="NULL"){
          if(document.getElementById("vt"+vitri).classList[1]=="row-tree-none-icon"){ //theem vao vi tri rong dau +
            document.getElementById("vt"+vitri).innerHTML = "<span id='"+vitri+"' class=plus-icon mtree-p-icon vitri-icon-new></span>" + document.getElementById("vt"+vitri).innerHTML;
            //cho vị trí làm cha thiết bị            
            const xhttp = new XMLHttpRequest();
            xhttp.onload = function () {              
              document.getElementById("vt"+vitri).innerHTML = "<li id='vt"+mathietbivuathem+"' class='row-tree-tb row-tree-none-icon'><span class='mtree-text'><a id='"+mathietbivuathem+"' class='2 0' href='#'><span id='"+mathietbivuathem+"' class='plus-icon mtree-p-icon'></span><img src='/Resourcers/Images/ngoi-nha.ico' alt='ngoinhaicon' class='position-row-icon-nc'>"+tenvitri+"</a></span></li>";
            };
            xhttp.open("POST", "Resourcers/AJAX/LamChaThietBi.aspx?mavitri="+vitri);
            xhttp.send();
            /*
            <li id="vt1" class="row-tree-tb row-tree-none-icon">
               <img src="/Resourcers/Images/ngoi-nha.ico" alt="ngoinhaicon" class="position-row-icon-nc">
               <span class="mtree-text">
                  <a id="1" class="2 0" href="#">P.Hóa Nghiệm</a>
               </span>
            </li>      
            <li id='"+id+"' class='row-tree-tb row-tree-none-icon'>
               <span class='mtree-text'>
                  <a id='"+id+"' class="2 0" href="#">
                  <span id='"+id+"' class='plus-icon mtree-p-icon'>                     
                  </span>
                  <img src='/Resourcers/Images/ngoi-nha.ico' alt='ngoinhaicon' class='position-row-icon-nc'>
                  "+tenvitri+"
                  </a>
               </span>
            </li>           
            <li id="vt3" class="row-tree-tb">
               <span class="mtree-text">
                  <a id="3" class="2" href="#"> 
                     <span id="3" class="plus-icon mtree-p-icon">                     
                     </span>
                     <img src="/Resourcers/Images/ngoi-nha.ico" alt="ngoinhaicon" class="position-row-icon">
                     Lò Hơi
                  </a>
                </span>
            </li>
            */
            //cho thêm nội dung sau vào vị trí vị trí mà thiết bị vừa thêm
            //<span id="3" class="plus-icon mtree-p-icon"></span>
            //kiểm tara nội dung thêm có hiển thị đúng với ý mình muốn không
            //<li id='vt"+id+"' class='row-tree-tb row-tree-none-icon'><span class='mtree-text'><a id='"+id+"' class="2 0" href="#"><span id='"+id+"' class='plus-icon mtree-p-icon'></span><img src='/Resourcers/Images/ngoi-nha.ico' alt='ngoinhaicon' class='position-row-icon-nc'>"+tenvitri+"</a></span></li>          
          } else if(document.getElementById("vt"+vitri).classList[1]=="row-tree-tb" && document.getElementById("vt"+vitri).childNodes[0].childNodes[0].childNodes[0].childNodes[0].childNodes[0].classList[0] == "minus-icon"){
            document.getElementById("vt"+vitri).childNodes[0].childNodes[0].innerHTML = document.getElementById("vt3").childNodes[0].childNodes[0].innerHTML + "<li id='"+mathietbivuathem+"' class='row-tree-tb'><span class='mtree-text'><a id='"+mathietbivuathem+"' class='1' href='#'> <span id='"+mathietbivuathem+"' class='none-icon mtree-p-icon'></span>"+tenthietbi+"</a></span></li>";            
          }//them vao vi tri thiet bi mo          
        } else if(thietbicha!="NULL") {
          if(document.getElementById(thietbicha).childNodes[0].classList[1]=="div-minus-icon"){
            document.getElementById(thietbicha).innerHTML = document.getElementById(thietbicha).innerHTML + "<li id='"+mathietbivuathem+"' class='row-tree-tbc 0'><span id='"+mathietbivuathem+"' class='none-icon mtree-p-icon'></span><span class='mtree-text'><a id='"+mathietbivuathem+"' class='1' href='#'>"+tenthietbi+"</a></span></li>";
          }
        }
      }
  };
  xhttp.open("POST", "Resourcers/AJAX/ThemThietBiMoi.aspx?&mathietbi="+mathietbi+"&loaithietbi="+loaithietbi+"&phongban="+phongban+"&ngaynhap="+ngaynhap+"&thangnhap="+thangnhap+"&namnhap="+namnhap+"&tenthietbi="+tenthietbi+"&nhacungcap="+nhacungcap+"&huhong="+huhong+"&thoihanbaohanh="+thoihanbaohanh+"&nhasanxuat="+nhasanxuat+"&nuocsanxuat="+nuocsanxuat+"&serial="+serial+"&model="+model+"&ngaylapdat="+ngaylapdat+"&thanglapdat="+thanglapdat+"&namlapdat="+namlapdat+"&ngaymua="+ngaymua+"&thangmua="+thangmua+"&nammua="+nammua+"&maquanly="+maquanly+"&thietbicha="+thietbicha+"&vitri="+vitri);
  //?loaithietbi=1&phongban=1&ngaynhap=1&thangnhap=1&namnhap=2023&tenthietbi=123&nhacungcap=1&huhong=false&thoihanbaohanh=123&nhasanxuat=Dell&nuocsanxuat=China&serial=123&model=123&ngaylapdat=1&thanglapdat=1&namlapdat=2023&ngaymua=1&thangmua=1&nammua=2023&maquanly=1&mathietbi=245&thietbicha=NULL&vitri=NULL
  //?loaithietbi=1&phongban=1&ngaynhap=3&thangnhap=6&namnhap=2023&tenthietbi=123&nhacungcap=1&huhong=     &thoihanbaohanh=   &nhasanxuat=    &nuocsanxuat=     &serial=   &model=   &ngaylapdat=3&thanglapdat=6&namlapdat=2023&ngaymua=3&thangmua=6&nammua=2023&maquanly= &mathietbi=246&thietbicha=NULL&vitri=NULL
  xhttp.send();
}
function xoaphutung(obj){
  var id;
  id = obj.value;
  const xhttp = new XMLHttpRequest();
  xhttp.onload = function () {
    obj.parentNode.parentNode.remove();
  };
  xhttp.open("POST", "Resourcers/AJAX/XoaPhuTung.aspx?id="+id);
  xhttp.send();
}
function LamMoiFormThemPhuTung(){
  document.getElementById("txttenphutung").value = "";
  document.getElementById("sltngaythaythephutung").value = Date.now().getDay();
  document.getElementById("sltthangthaythephutung").value = Date.now().getMonth();
  document.getElementById("slttnamthaythephutung").value = Date.now().getYear();  
  document.getElementById("txtgiaca").value = "";  
  document.getElementById("slttinhtrang").value = "true";
}
function LamMoiFormThemThietBi(){
  var currentdate = new Date();
  document.getElementById("sltmodelthemthietbi").value = 1;
  document.getElementById("sltmodelphongban").value = 1;
  document.getElementById("sltttbngaynhap").value = currentdate.getDate();
  document.getElementById("sltttbthangnhap").value = currentdate.getMonth() + 1;
  document.getElementById("sltttbnamnhap").value = currentdate.getFullYear();  
  document.getElementById("txtttbtenthietbi").value = "";
  document.getElementById("sltttbnhacungcap").value = 1;
  document.getElementById("txtttbhuhong").value = "";
  document.getElementById("txtttbthoihanbaohanh").value = "";
  document.getElementById("txtttbnhasanxuat").value = "";
  document.getElementById("txtttbnuocsanxuat").value = "";
  document.getElementById("txtttbserial").value = "";
  document.getElementById("txtttbmodel").value = "";
  document.getElementById("sltttbngaylapdat").value = currentdate.getDate();
  document.getElementById("sltttbthanglapdat").value = currentdate.getMonth();
  document.getElementById("sltttbnamlapdat").value = currentdate.getFullYear();
  document.getElementById("sltttbngaymua").value = currentdate.getDate();
  document.getElementById("sltttbthangmua").value = currentdate.getMonth() + 1;
  document.getElementById("sltttbnammua").value = currentdate.getFullYear();
  document.getElementById("txtttbmaquanly").value = "";
  document.getElementById("sltthietbicha").value = 0;
  document.getElementById("sltvitri").value = 0;
}
function XoaThietBi(){
  var id;
  id = document.getElementById("mathietbi").innerHTML;
  const xhttp = new XMLHttpRequest();
  xhttp.onload = function () {
    document.getElementById("center-ct").innerHTML = ""; 
    document.getElementById("ccimg").innerHTML = ""; 
    document.getElementById(id).remove();
  };
  xhttp.open("POST", "Resourcers/AJAX/XoaThietBi.aspx?mathietbi="+id);
  xhttp.send();
}
//nếu như thiết bị không cọn thiết bị cha thì tìm đến position nào của nó thêm nó vào
//hiển thị
//nếu như thiết bị có thiết bị cha ta thêm nó vào thiết bị cha của nó
//document.getElementById("đặc trưng cho một thiết bị")
//document.getElementById("đặc trưng cho một vị trí")
//vị trí cũng có id và thiết bị con cũng có id
//thay đổi id vị trí thành vt+id
//id vị trí xuất hiện khi hiển thị đầu tiên
//hiển thị mở
//hiển thị đóng
//hoặc là đang mở 
//hoặc là đang đóng
//nếu đang đóng thì không phải làm gì
//nếu đang mở thì phải thêm vào danh sách thiết bị đang hiển thị trên màn hình
function selectvitri(obj) {
  var mathietbicha;
  mathietbicha = obj.value;
  const xhttp = new XMLHttpRequest();
  xhttp.onload = function () {
    document.getElementById("sltvitri").value = parseInt(this.responseText);
  };
  xhttp.open("POST", "Resourcers/AJAX/TimViTriUngVoiThietBiCha.aspx?mathietbicha="+mathietbicha);
  xhttp.send();
  //tim vi tri ung voi thiet bi cha vua chon
  //chon vi tri tren frm nhap thiet bi
}