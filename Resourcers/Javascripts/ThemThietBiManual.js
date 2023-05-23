var txttenthietbionfocus, txttinhtrangonfocus, txtthongsokythuatonfocus, txtgiathanhonfocus, txtvitrionfocus, txtlinhvuconfocus, txtphieunhapkhoonfocus, txtnhasanxuatonfocus, txtmodelonfocus, txtmotahinhanhonfocus;
var inputdangtruycap;
txttenthietbionfocus = "";
txttinhtrangonfocus = "";
txtthongsokythuatonfocus = "";
txtgiathanhonfocus = "";
txtvitrionfocus = "";
txtlinhvuconfocus = "";
txtphieunhapkhoonfocus = "";
txtnhasanxuatonfocus = "";
txtmodelonfocus = "";
txtmotahinhanhonfocus = "";
inputdangtruycap = "Không có input nào";
function ValidatorTenThietBi() {
    inputdangtruycap = "txttenthietbi";
    checkValidated(inputdangtruycap);
    //if (document.getElementById("txttenthietbi").value.length > 150)
    //    document.getElementById("vldtenthietbi").innerHTML = "* Tên thiết bị quá dài";
}
function FocusTenThietBi() {
    inputdangtruycap = "txttenthietbi";
    console.log("input đang được truy cập: " + inputdangtruycap);
    txttenthietbionfocus = true;
}
function ValidatorTinhTrang() {
    inputdangtruycap = "txttinhtrang";
    checkValidated(inputdangtruycap);
    //if (document.getElementById("txttenthietbi").value.length > 150)
    //    document.getElementById("vldtenthietbi").innerHTML = "* Tên thiết bị quá dài";
}
function FocusTinhTrang() {
    checkValidated(inputdangtruycap);
    inputdangtruycap = "txttinhtrang";
    console.log("input đang được truy cập: " + inputdangtruycap);
    txttinhtrangonfocus = true;
}
function ValidatorThongSoKyThuat() {
    inputdangtruycap = "txtthongsokythuat";
    checkValidated(inputdangtruycap);
    //if (document.getElementById("txttenthietbi").value.length > 150)
    //    document.getElementById("vldtenthietbi").innerHTML = "* Tên thiết bị quá dài";
}
function FocusThongSoKyThuat() {
    inputdangtruycap = "txtthongsokythuat";
    console.log("input đang được truy cập: " + inputdangtruycap);
    txtthongsokythuatonfocus = true;
}
function ValidatorGiaThanh() {
    inputdangtruycap = "txtgiathanh";
    checkValidated(inputdangtruycap);
    //if (document.getElementById("txttenthietbi").value.length > 150)
    //    document.getElementById("vldtenthietbi").innerHTML = "* Tên thiết bị quá dài";
}
function FocusGiaThanh() {
    inputdangtruycap = "txtgiathanh";
    console.log("input đang được truy cập: " + inputdangtruycap);
    txtgiathanhonfocus = true;
}
function ValidatorViTri() {
    inputdangtruycap = "txtvitri";
    checkValidated(inputdangtruycap);
    //if (document.getElementById("txttenthietbi").value.length > 150)
    //    document.getElementById("vldtenthietbi").innerHTML = "* Tên thiết bị quá dài";
}
function FocusViTri() {
    inputdangtruycap = "txtvitri";
    console.log("input đang được truy cập: " + inputdangtruycap);
    txtvitrionfocus = true;
}
function ValidatorLinhVuc() {
    inputdangtruycap = "txtlinhvuc";
    checkValidated(inputdangtruycap);
    //if (document.getElementById("txttenthietbi").value.length > 150)
    //    document.getElementById("vldtenthietbi").innerHTML = "* Tên thiết bị quá dài";
}
function FocusLinhVuc() {
    inputdangtruycap = "txtlinhvuc";
    console.log("input đang được truy cập: " + inputdangtruycap);
    txtlinhvuconfocus = true;
}
function ValidatorNhaCungCap() {
    inputdangtruycap = "txtnhacungcap";
    checkValidated(inputdangtruycap);
    //if (document.getElementById("txttenthietbi").value.length > 150)
    //    document.getElementById("vldtenthietbi").innerHTML = "* Tên thiết bị quá dài";
}
function FocusNhaCungCap() {
    inputdangtruycap = "txtnhacungcap";
    console.log("input đang được truy cập: " + inputdangtruycap);
    txtnhacungcaponfocus = true;
}
function ValidatorPhieuMuaHang() {
    inputdangtruycap = "txtphieumuahang";
    checkValidated(inputdangtruycap);
    //if (document.getElementById("txttenthietbi").value.length > 150)
    //    document.getElementById("vldtenthietbi").innerHTML = "* Tên thiết bị quá dài";
}
function FocusPhieuMuaHang() {
    inputdangtruycap = "txtphieumuahang";
    console.log("input đang được truy cập: " + inputdangtruycap);
    txtphieumuahangonfocus = true;
}
function ValidatorPhieuNhapKho() {
    inputdangtruycap = "txtphieunhapkho";
    checkValidated(inputdangtruycap);
    //if (document.getElementById("txttenthietbi").value.length > 150)
    //    document.getElementById("vldtenthietbi").innerHTML = "* Tên thiết bị quá dài";
}
function FocusPhieuNhapKho() {
    inputdangtruycap = "txtphieunhapkho";
    console.log("input đang được truy cập: " + inputdangtruycap);
    txtphieunhapkhoonfocus = true;
}
function ValidatorNhaSanXuat() {
    inputdangtruycap = "txtnhasanxuat";
    checkValidated(inputdangtruycap);
    //if (document.getElementById("txttenthietbi").value.length > 150)
    //    document.getElementById("vldtenthietbi").innerHTML = "* Tên thiết bị quá dài";
}
function FocusNhaSanXuat() {
    inputdangtruycap = "txtnhasanxuat";
    console.log("input đang được truy cập: " + inputdangtruycap);
    txtnhasanxuatonfocus = true;
}
function ValidatorNuocSanXuat() {
    inputdangtruycap = "txtnuocsanxuat";
    checkValidated(inputdangtruycap);
    //if (document.getElementById("txttenthietbi").value.length > 150)
    //    document.getElementById("vldtenthietbi").innerHTML = "* Tên thiết bị quá dài";
}
function FocusNuocSanXuat() {
    inputdangtruycap = "txtnuocsanxuat";
    console.log("input đang được truy cập: " + inputdangtruycap);
    txtnuocxuatonfocus = true;
}
function ValidatorSerial() {
    inputdangtruycap = "txtserial";
    checkValidated(inputdangtruycap);
    //if (document.getElementById("txttenthietbi").value.length > 150)
    //    document.getElementById("vldtenthietbi").innerHTML = "* Tên thiết bị quá dài";
}
function FocusSerial() {
    inputdangtruycap = "txtseria";
    console.log("input đang được truy cập: " + inputdangtruycap);
    txtseriaonfocus = true;
}
function ValidatorModel() {
    inputdangtruycap = "txtmodel";
    checkValidated(inputdangtruycap);
    //if (document.getElementById("txttenthietbi").value.length > 150)
    //    document.getElementById("vldtenthietbi").innerHTML = "* Tên thiết bị quá dài";
}
function FocusModel() {
    inputdangtruycap = "txtmodel";
    console.log("input đang được truy cập: " + inputdangtruycap);
    txtmodelonfocus = true;
}
function ValidatorMoTaHinhAnh() {
    inputdangtruycap = "txtmotahinhanh";
    checkValidated(inputdangtruycap);
    //if (document.getElementById("txttenthietbi").value.length > 150)
    //    document.getElementById("vldtenthietbi").innerHTML = "* Tên thiết bị quá dài";
}
function FocusMoTaHinhAnh() {
    inputdangtruycap = "txtmotahinhanh";
    console.log("input đang được truy cập: " + inputdangtruycap);
    txtmotahinhanhonfocus = true;
}
function checkValidated() {
    console.log("nội dung input vừa nhập: " + document.getElementById(inputdangtruycap).value);
    if (inputdangtruycap == "txttenthietbi") {
        if (document.getElementById(inputdangtruycap).value.length > 150)
            document.getElementById("vldtenthietbi").innerHTML = "Tên thiết bị không được nhập quá 150 ký tự.";
    }
    if(inputdangtruycap == "txttinhtrang") {
        if(document.getElementById(inputdangtruycap).value.length > 150)
            document.getElementById("vldTinhTrang").innerHTML = "* Tình trạng không được nhập quá 150 ký tự."
    }
    if(inputdangtruycap == "txtgiathanh") {
        if(!CheckNumger(document.getElementById(inputdangtruycap).value)){
            document.getElementById("vldGiaThanh").innerHTML = "* Chỉ được nhập chữ số."
        }
    }
    if(inputdangtruycap == "txtvitri") {
        if (!CheckNumber(document.getElementById(inputdangtruycap).value))
            document.getElementById("vldvitri").innerHTML = "* Chỉ được nhập chữ số."
    }
    if(inputdangtruycap == "txtlinhvuc"){
        if(!CheckNumber(document.getElementById(inputdangtruycap).value.length > 150))
            document.getElementById("vldlinhvuc").innerHTML = "* Lĩnh vực không được nhập quá 150 ký tự."
    }
    if(inputdangtruycap == "txtnhacungcap") {
        if(document.getElementById("txtnhacungcap").value.length > 8){
            document.getElementById("vldnhacungcap").innerHTML = "* Tên nhà cung cấp không được nhập quá 8 kí tự."
        }
    }
    if(inputdangtruycap == "txtphieumuahang") {
        if(document.getElementById("txtphieumuahang").value.length > 29){
            document.getElementById("vldphieumuahang").innerHTML = "* Tên phiếu mua hàng không được nhập quá 29 kí tự."
        }
    }
    if(inputdangtruycap == "txtphieunhapkho") {
        if(document.getElementById("txtphieunhapkho").value.length > 12){
            document.getElementById("vldphieunhapkho").innerHTML = "* Tên phiếu nhập kho không được nhập quá 12 kí tự."
        }
    }
    if(inputdangtruycap == "txtnhasanxuat") {
        if(document.getElementById("txtnhasanxuat").value.length > 150){
            document.getElementById("vldnhasanxuat").innerHTML = "* Nhà sản xuất không được nhập quá 150 kí tự."
        }
    }
    if(inputdangtruycap == "txtnuocsanxuat") {
        if(document.getElementById("txtnuocsanxuat").value.length > 180){
            document.getElementById("vldnuocsanxuat").innerHTML = "* Tên nước sản xuất không được nhập quá 180 kí tự."
        }
    }
    if(inputdangtruycap == "txtserial") {
        if(document.getElementById("txtserial").value.length > 20){
            document.getElementById("vldserial").innerHTML = "* Serial không được nhập quá 20 kí tự."
        }
    }
    if(inputdangtruycap == "txtmodel") {
        if(document.getElementById("txtmodel").value.length > 20){
            document.getElementById("vldmodel").innerHTML = "* Model không được nhập quá 20 kí tự."
        }
    }
    if(inputdangtruycap == "txtmotahinhanh") {
        if(document.getElementById("txtmotahinhanh").value.length > 50){
            document.getElementById("vldmodel").innerHTML = "* Mô tả hình ảnh không được nhập quá 50 kí tự."
        }
    }
}

function CheckNumber(text) {
    hash = text;
    const reg = new RegExp('^[0-9]+$');
    console.log(reg.test(hash));
}

function themthietbimoi() {
    var mathietbi = document.getElementById("txtmathietbi").value;
    var tenthietbi = document.getElementById("txttenthietbi").value;
    let ltb = document.getElementById("sltloaithietbi");
    let giaTriLTB = ltb.options[e.selectedIndex].value;
    let pb = document.getElementById("sltphongban");
    let giaTriPB = pb.options[e.selectedIndex].value;
    let nn = document.getElementById("sltngaynhap");
    let giaTriNN = nn.options[e.selectedIndex].value;
    let tn = document.getElementById("sltthangnhap");
    let giaTriTN = tn.options[e.selectedIndex].value;
    let namn = document.getElementById("sltnamnhap");
    let giaTriNamN = namn.options[e.selectedIndex].value;
    var tinhtrang =  document.getElementById("txttinhtrang").value;
    var hongsokythuat =  document.getElementById("txtthongsokythuat").value;
    var giathanh =  document.getElementById("txtgiathanh").value;
    var vitri =  document.getElementById("txtvitri").value;
    var linhvuc =  document.getElementById("txtlinhvuc").value;
    var nhacungcap =  document.getElementById("txtnhacungcap").value;
    var phieumuahang =  document.getElementById("txtphieumuahang").value;
    var phieunhapkho =  document.getElementById("txtphieunhapkho").value;
    let thietbicha = document.getElementById("sltthietbicha");
    var nhasanxuat =  document.getElementById("txtnhasanxuat").value;
    var nuocsanxuat =  document.getElementById("txtnuocsanxuat").value;
    var serial =  document.getElementById("txtserial").value;
    var model =  document.getElementById("txtmodel").value;
    let nld = document.getElementById("sltngaylapdat");
    let giaTriNLD = nld.options[e.selectedIndex].value;
    let tld = document.getElementById("sltthanglapdat");
    let giaTriTLD = tld.options[e.selectedIndex].value;
    let namld = document.getElementById("sltnamlapdat");
    let giaTriNamLD = namld.options[e.selectedIndex].value;
    let nm = document.getElementById("sltngaymua");
    let giaTriNM = nm.options[e.selectedIndex].value;
    let tm = document.getElementById("sltthangmua");
    let giaTriTM = tm.options[e.selectedIndex].value;
    let namm = document.getElementById("sltnammua");
    let giaTriNamM = namm.options[e.selectedIndex].value;
    var tenhinhanh = document.getElementById("txttenhinhanh").value;
    var motahinhanh = document.getElementById("txtmotahinhanh").value;

    AddDevices(mathietbi,tenthietbi,giaTriLTB,giaTriPB,giaTriNN,giaTriTN,giaTriNamN,tinhtrang,thongsokythuat,giathanh,vitri,linhvuc,nhacungcap,phieumuahang,phieunhapkho,thietbicha,giaTriTBC,nhasanxuat,nuocsanxuat,serial,model,giaTriNLD,giaTriTLD,giaTriNamLD,giaTriNM,giaTriTM,giaTriNamM,tenhinhanh,motahinhanh);

}

function AddDevices(mathietbi,tenthietbi,giaTriLTB,giaTriPB,giaTriNN,giaTriTN,giaTriNamN,tinhtrang,thongsokythuat,giathanh,vitri,linhvuc,nhacungcap,phieumuahang,phieunhapkho,thietbicha,giaTriTBC,nhasanxuat,nuocsanxuat,serial,model,giaTriNLD,giaTriTLD,giaTriNamLD,giaTriNM,giaTriTM,giaTriNamM,tenhinhanh,motahinhanh){
    const xhttp = new XMLHttpRequest();
    xhttp.onload = function() {
        document.getElementById(pst).innerHTML =
        this.responseText;        
    }
    xhttp.open("GET", "Resourcers/AJAX/DashboardChildTree.aspx?ID=" + pst);
    xhttp.send();
}
//khi làm việc tại phòng IT sẽ có cảm giác đang trong tình trạng chỉ huy
//khi đi về từ phòng kinh tế sẽ có cảm giác họ đang chỉ dẫn