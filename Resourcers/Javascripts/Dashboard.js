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
        document.getElementById(pst).innerHTML = this.responseText; //sau khi gọi đến trang hiển thị AJAX thì trả về kết quả và hiển thị trên page kết quả sẽ hiện thị tại vị trí pst mà
        if (state == 1 || state == 2 || state == 3) { //Row_Position_Show đã gửi
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
const buttonPressed = (e) => { // nhưng function này chỉ hoạt động khi li được click và nó chỉ nhận diện chữ
if (e.target.classList[0] == "1") {
  Row_Device_Show("open", e.target.id);
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
            document.getElementById(e.target.id).innerHTML = document.getElementById(e.target.id).innerText.slice(0, document.getElementById(e.target.id).innerText.indexOf("\n") + 1);
            document.getElementById(e.target.id).className = "row-tree-tb 1";
            var noidung = document.getElementById(e.target.id).innerHTML;
            document.getElementById(e.target.id).innerHTML = "<span id='" + e.target.id + "' class='plus-icon mtree-p-icon'></span> <span class='mtree-text'><a id='" + e.target.id + "' class='1'>" + noidung + "</a></span>";
            document.getElementById(e.target.id).getElementsByTagName("a")[0].className = 1;
            document.getElementById(e.target.id).getElementsByTagName("span")[0].style.marginRight = 0;
            row = e.target.id;
        }
    }
} else if (e.target.classList[0] == "2") 
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
// var row = 3;
// //var buttons2 = document.getElementsByTagName("li");
// var buttons2 = document.getElementsByClassName("");
// result = document.getElementById("result");
// //function để hiển thị thiết bị con, hay hiển thị cây thư mục nhỏ hơn
// //li là nơi ta click vào thì sẽ thay đổi nội dung trong cây thư mục
// //buttonPressed là function dùng để áp dụng thực hiện
// //khi buttonPressed thực hiện thì cây thư mục bên trái sẽ thay đổi
// //li được click sẽ được đổ html vào với nội dung gồm các con của nó
// //để làm cho hình cảnh kia click vào là hiển thị
// //ta phải thay đổi như sau
// //tìm hình ảnh là định dạng gì img
// //công việc thực hiện tương tự với click tại định dạng này
// //để áp dụng click cho định dạng này ta phải getElementByTagName("li")
// //sau đó trên mỗi tagname vừa tạo được ta thêm chức năng cho các danh sách tag name này
// //đang tìm gì vậy?
// //lấy toàn bộ các nút + và -
// //xử lý ở phần trên này là một function 
// //function này có chức năng là 
// //AJAX nội dung vào cây thư mục theo dữ liệu đã cho trước
// //Các để xác định được đối tượng được chọn
// //đối tượng được chọn là tất cả các li
// // tương tác với đối tượng được chọn bằng e là giá trị nhân của đối tượng được chọn và cũng là đối tượng được tương tác
// //mục đích bây giờ là 
// //hoạt động function với đối tượng hình icon
// //hướng dẫn hoạt động function đối với hình icon
// //chỉ cần click vào icon , hiển thị AJAX đối với cây thư mục đã tạo sẵn
// //tìm các code AJAX
// //tìm các code tương tác
// buttonPressed = (e) => {
//     if (e.target.classList[0] == "1") {
//     Row_Device_Show("open", e.target.id); //code AJAX
// document.getElementById(e.target.id).className =
//   document.getElementById(e.target.id).classList[0] + " 0";
// if (
//   document.getElementById(e.target.id).getElementsByTagName("span")[0]
//     .classList[0] != "none-icon" &&
//   document.getElementById(e.target.id).getElementsByTagName("span")[0]
//     .classList[0] != "none-icon-m"
// )
//     document
//       .getElementById(e.target.id)
//       .getElementsByTagName("span")[0].className =
//       "minus-icon 0 mtree-p-icon";
// document
//   .getElementById(e.target.id)
//   .getElementsByTagName("span")[1].className =
//   document.getElementById(e.target.id).getElementsByTagName("span")[1]
//     .classList[0] + " 0";
// document
//   .getElementById(e.target.id)
//   .getElementsByTagName("a")[0].className = 0;
// row = e.target.id;
// }
// else if (e.target.classList[0] == "0") {
//     if (e.target.classList[0] == "0") {
//         if (document.getElementById(e.target.id).innerText.indexOf("\n") != -1) {
//             Row_Device_Show_Close("open", e.target.id); //code AJAX
//             document.getElementById(e.target.id).innerHTML = document
//               .getElementById(e.target.id)
//               .innerText.slice(
//                 0,
//                 document.getElementById(e.target.id).innerText.indexOf("\n") + 1
//               );
//             document.getElementById(e.target.id).className = "row-tree-tb 1";
//             var noidung = document.getElementById(e.target.id).innerHTML;
//             document.getElementById(e.target.id).innerHTML =
//               "<span id='" +
//               e.target.id +
//               "' class='plus-icon mtree-p-icon'></span> <span class='mtree-text'><a id='" +
//               e.target.id +
//               "' class='1'>" +
//               noidung +
//               "</a></span>";
//             document
//               .getElementById(e.target.id)
//               .getElementsByTagName("a")[0].className = 1;
//             document
//               .getElementById(e.target.id)
//               .getElementsByTagName("span")[0].style.marginRight = 0;
//             row = e.target.id;
//         }
//     }
// } else if (e.target.classList[0] == "2") {
//     if (e.target.classList[0] == "2") {
//         var tinhtrang;
//         tinhtrang = "3";
//         if (e.target.classList == "2 0") { //nếu classList có giá trị là "2 0" thì thực hiện theo kịch bản phía dưới
//             document.getElementById("center-ct").innerHTML = ""; //chuẩn bị dữ liệu cho các hoạt động sau, giá trị trong center-ct rỗng
//             document.getElementById("ccimg").innerHTML = ""; //dữ liệu này là cho giá trị được hiển thị trong ccimg rỗng
//         }
//         if (
//           e.target.getElementsByTagName("span")[0].classList[0] == "plus-icon"
//         ) {
//             tinhtrang = 1; //plus-icon công dụng của dòng này là nếu giá trị classList[0] kia là "plus-icon" thì sẽ thực hiện lệnh tinhtrang = 1, biến tình trạng này dùng để xác định tình trạng cho các lần hoạt động sau
//         }
//         if (
//           e.target.getElementsByTagName("span")[0].classList[0] == "minus-icon"
//         ) {
//             tinhtrang = 2; //minus-icon nếu classList[0] có gí trị là "minus-icon" thì cho tinhtrang = 2 nếu tình trạng bằng 2 thì sẽ hành động theo một kịch bản sau
//         }
//         if (
//           e.target.getElementsByTagName("span")[0].classList[0] == "none-icon"
//         ) {
//             tinhtrang = 3; //nếu classList[0] có gí trị là none-icon thì cho tinhtrang = 3 nếu tình trạng bằng 3 thì sẽ hành động theo một kịch bản sau
//         }
//         Row_Position_Show("open", e.target.id, tinhtrang); //==>hoạt động kịch bản theo giá trị tinhtrang vừa xét phía trên
//         //các tình trạng này xác định hình thức thể hiện của Row_Position_Show
//     }
// }
// };
// for (let button of buttons) {
//   button.addEventListener("click", buttonPressed);
// }
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
  var loaithietbi, phongban, ngaynhap, thangnhap, namnhap, tenthietbi, nhacungcap, huhong, thoihanbaohanh, nhasanxuat, nuocsanxuat, serial, model, ngaylapdat, thanglapdat, namlapdat, ngaymua, thangmua, nammua, maquanly;
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
  const xhttp = new XMLHttpRequest();
  xhttp.onload = function () {
      document.getElementById("kqthemthietbi").innerHTML = "Thêm thành công thiết bị " + (parseInt(mathietbi) + 1) + ".";
      //mathietbilon nhat thay đỏi và tăng thêm 1
      document.getElementById("mathietbilonnhat").innerHTML = parseInt(mathietbi) + 1;
      //cho hiển thị thiết bị vừa tạo lên cây thư mục
  };
  xhttp.open("POST", "Resourcers/AJAX/ThemThietBiMoi.aspx?&mathietbi="+mathietbi+"&loaithietbi="+loaithietbi+"&phongban="+phongban+"&ngaynhap="+ngaynhap+"&thangnhap="+thangnhap+"&namnhap="+namnhap+"&tenthietbi="+tenthietbi+"&nhacungcap="+nhacungcap+"&huhong="+huhong+"&thoihanbaohanh="+thoihanbaohanh+"&nhasanxuat="+nhasanxuat+"&nuocsanxuat="+nuocsanxuat+"&serial="+serial+"&model="+model+"&ngaylapdat="+ngaylapdat+"&thanglapdat="+thanglapdat+"&namlapdat="+namlapdat+"&ngaymua="+ngaymua+"&thangmua="+thangmua+"&nammua="+nammua+"&maquanly="+maquanly+"&thietbicha="+thietbicha);
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

//khi thêm vào thì kiểm tra trong cây thư mục đang mở ra nó đang nằm vị trí nào để áp dụng vào cho đúng
//check xem vì sao dấu cộng không bấm được
//có 1 chỗ in ra hình minus và plus icon
//1 là trên vị trí
//1 là trên các thiết bị và thiết bị con
//có hàm nào thực thi thì gọi ra lệnh giống như ở phần trên không thì bỏ vô
//vì sử lỹ dữ liệu khó khăn
//nếu xử lý trên code sẽ cần tìm các class và các trường hợp cảu class khác nhau
//chuyển hướng sang sử dụng hình ảnh nền thay thế
function pmclick(e) {

}
//dưới đây là hiển thị dòng trên cây thư mục bằng hiển thị các thiết bị con
//thông qua AJAX /AJAX/DashboardChildTreeByViTri.aspx
//vào file này xóa đi title
//thay thế toàn bộ hình ảnh bằng hình ảnh đúng trên thẻ a
{/* <li id="133" class="row-tree-tb 0">
<title>
</title>
    <span id="133" class="minus-icon mtree-p-icon 0" onclick="pmclick(this)"></span>
    <span class="mtree-text"><a id="133" class="0" href="#">Bút bi</a></span>
    <li id="134" class="row-tree-tbc">
      <span id="134" class="none-icon mtree-p-icon"></span>
      <span class="mtree-text"><a id="134" class="1" href="#">bút bi 2</a></span>
    </li>
</li> */}