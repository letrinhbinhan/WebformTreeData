//vị trí nhận dữ liệu tại cửa sổ tag html
// function selectselect(param){
//     console.log(document.getElementById(param).value);
// }
// function getDiv(param) {
//     document.getElementById(param).innerHTML = "abc";
// }
//vị trí nhận dữ liệu tại cửa sổ thực thi lệnh
//getDiv("div1");
//thực hiện lấy vị trí tại cửa sổ html
function validatemaql() {
    if(document.getElementById("ctl00_ContentPlaceHolder1_FormView1_maqlTextBox").value.length > 10)
    {
        document.getElementById("validatemaql").innerHTML = "Nhập quá số kí tự.";
    }
    else
        {
            document.getElementById("validatemaql").innerHTML = "";
        }
}

function validatetenthietbi() {
    if(document.getElementById("ctl00_ContentPlaceHolder1_FormView1_tentbTextBox").value.length <1)
    {
        document.getElementById("validatetenthietbi").innerHTML = "Không được để trống tên thiết bị.";
    }
    else
        {
            document.getElementById("validatetenthietbi").innerHTML = "";
        }
}

function validatethongsokythuat() {
    if(document.getElementById("ctl00_ContentPlaceHolder1_FormView1_ThongSoKyThuatTextArea").value.length <1)
    {
        document.getElementById("validatethongsokythuat").innerHTML = "Không được để trống thông số kỹ thuật.";
    }
    else
        {
            document.getElementById("validatethongsokythuat").innerHTML = "";
        }
}
function validatengaynhap() {
    var ngay, thang, nam;
    ngay = document.getElementById("ctl00_ContentPlaceHolder1_FormView1_ddlNgay1").value;
    thang = document.getElementById("ctl00_ContentPlaceHolder1_FormView1_ddlThang1").value;
    nam = document.getElementById("ctl00_ContentPlaceHolder1_FormView1_ddlNam1").value;
    document.getElementById("validatengaynhap").innerHTML = "";
    if((ngay == 31 && thang == 2) || (ngay == 31 && thang == 4) || (ngay == 31 && thang == 6)|| (ngay == 31 && thang == 9)|| (ngay == 31 && thang == 11))
        {    
            document.getElementById("validatengaynhap").innerHTML = "Trường ngày bị nhập sai.";
        }
        else 
            document.getElementById("validatengaynhap").innerHTML = "";
    if(thang == 2)
    {
        if(!checkNamNhuan(nam))
        {
            if(ngay>28)
            {
                document.getElementById("validatengaynhap").innerHTML = "Không phải năm nhuận trường ngày bị nhập sai.";
            }
            else
            {
                document.getElementById("validatengaynhap").innerHTML = "";
            }
        }
        else 
        {
            if(ngay>29)
            {
                document.getElementById("validatengaynhap").innerHTML = "Năm nhuận trường ngày bị nhập sai.";
            }
            else
            {
                document.getElementById("validatengaynhap").innerHTML = "";
            }
        }
    }
}
function validatengaylapdat() {
    var ngay, thang, nam;
    ngay = document.getElementById("ctl00_ContentPlaceHolder1_FormView1_ddlNgay2").value;
    thang = document.getElementById("ctl00_ContentPlaceHolder1_FormView1_ddlThang2").value;
    nam = document.getElementById("ctl00_ContentPlaceHolder1_FormView1_ddlNam2").value;
    document.getElementById("validatengaylapdat").innerHTML = "";
    if((ngay == 31 && thang == 2) || (ngay == 31 && thang == 4) || (ngay == 31 && thang == 6)|| (ngay == 31 && thang == 9)|| (ngay == 31 && thang == 11))
        {    
            document.getElementById("validatengaylapdat").innerHTML = "Trường ngày bị nhập sai.";
        }
        else 
            document.getElementById("validatengaylapdat").innerHTML = "";
    if(thang == 2)
    {
        if(!checkNamNhuan(nam))
        {
            if(ngay>28)
            {
                document.getElementById("validatengaylapdat").innerHTML = "Không phải năm nhuận trường ngày bị nhập sai.";
            }
            else
            {
                document.getElementById("validatengaylapdat").innerHTML = "";
            }
        }
        else 
        {
            if(ngay>29)
            {
                document.getElementById("validatengaylapdat").innerHTML = "Năm nhuận trường ngày bị nhập sai.";
            }
            else
            {
                document.getElementById("validatengaylapdat").innerHTML = "";
            }
        }
    }
}
function validatengaymua() {
    var ngay, thang, nam;
    ngay = document.getElementById("ctl00_ContentPlaceHolder1_FormView1_ddlNgay3").value;
    thang = document.getElementById("ctl00_ContentPlaceHolder1_FormView1_ddlThang3").value;
    nam = document.getElementById("ctl00_ContentPlaceHolder1_FormView1_ddlNam3").value;
    document.getElementById("validatengaymua").innerHTML = "";
    if((ngay == 31 && thang == 2) || (ngay == 31 && thang == 4) || (ngay == 31 && thang == 6)|| (ngay == 31 && thang == 9)|| (ngay == 31 && thang == 11))
        {    
            document.getElementById("validatengaymua").innerHTML = "Trường ngày bị nhập sai.";
        }
        else 
            document.getElementById("validatengaylapdat").innerHTML = "";
    if(thang == 2)
    {
        if(!checkNamNhuan(nam))
        {
            if(ngay>28)
            {
                document.getElementById("validatengaymua").innerHTML = "Không phải năm nhuận trường ngày bị nhập sai.";
            }
            else
            {
                document.getElementById("validatengaymua").innerHTML = "";
            }
        }
        else 
        {
            if(ngay>29)
            {
                document.getElementById("validatengaymua").innerHTML = "Năm nhuận trường ngày bị nhập sai.";
            }
            else
            {
                document.getElementById("validatengaymua").innerHTML = "";
            }
        }
    }
}
//ctl00_ContentPlaceHolder1_FormView1_ddlNgay1
//ctl00_ContentPlaceHolder1_FormView1_ddlThang1
//ctl00_ContentPlaceHolder1_FormView1_ddlNam1
//validatengaynhap
//cho dù truyền string hoặc không string thì value của ddl nhận về đều không lấy được tại sự kiện onchange trên select
// function validatedatetime(param1,param2,param3,param4) {
//     var ngay, thang, nam;
//     ngay = document.getElementById(param1).value;
//     thang = document.getElementById(param2).value;
//     nam = document.getElementById(param3).value;
//     document.getElementById(param4).innerHTML = "";
//     if((ngay == 31 && thang == 2) || (ngay == 31 && thang == 4) || (ngay == 31 && thang == 6)|| (ngay == 31 && thang == 9)|| (ngay == 31 && thang == 11))
//         {    
//             document.getElementById(param4).innerHTML = "Trường ngày bị nhập sai.";
//         }
//         else 
//             document.getElementById(param4).innerHTML = "";
//     if(thang == 2)
//     {
//         if(!checkNamNhuan(nam))
//         {
//             if(ngay>28)
//             {
//                 document.getElementById(param4).innerHTML = "Không phải năm nhuận trường ngày bị nhập sai.";
//             }
//             else
//             {
//                 document.getElementById(param4).innerHTML = "";
//             }
//         }
//         else 
//         {
//             if(ngay>29)
//             {
//                 document.getElementById(param4).innerHTML = "Năm nhuận trường ngày bị nhập sai.";
//             }
//             else
//             {
//                 document.getElementById(param4).innerHTML = "";
//             }
//         }
//     }
// }
// function validatedatetime2(param1,param2,param3,param4) {
//     var ngay, thang, nam;
//     ngay = document.getElementById("ctl00_ContentPlaceHolder1_FormView1_ddlNgay1").value;
//     thang = document.getElementById(param2).value;
//     nam = document.getElementById(param3).value;
//     document.getElementById(param4).innerHTML = "";
//     if((ngay == 31 && thang == 2) || (ngay == 31 && thang == 4) || (ngay == 31 && thang == 6)|| (ngay == 31 && thang == 9)|| (ngay == 31 && thang == 11))
//         {    
//             document.getElementById(param4).innerHTML = "Trường ngày bị nhập sai.";
//         }
//         else 
//             document.getElementById(param4).innerHTML = "";
//     if(thang == 2)
//     {
//         if(!checkNamNhuan(nam))
//         {
//             if(ngay>28)
//             {
//                 document.getElementById(param4).innerHTML = "Không phải năm nhuận trường ngày bị nhập sai.";
//             }
//             else
//             {
//                 document.getElementById(param4).innerHTML = "";
//             }
//         }
//         else 
//         {
//             if(ngay>29)
//             {
//                 document.getElementById(param4).innerHTML = "Năm nhuận trường ngày bị nhập sai.";
//             }
//             else
//             {
//                 document.getElementById(param4).innerHTML = "";
//             }
//         }
//     }
// }
// function validatedatetime3(ctl00_ContentPlaceHolder1_FormView1_ddlNgay1,param2,param3,param4) {
//     var ngay, thang, nam;
//     ngay = document.getElementById(param1).value;
//     thang = document.getElementById(param2).value;
//     nam = document.getElementById(param3).value;
//     document.getElementById(param4).innerHTML = "";
//     if((ngay == 31 && thang == 2) || (ngay == 31 && thang == 4) || (ngay == 31 && thang == 6)|| (ngay == 31 && thang == 9)|| (ngay == 31 && thang == 11))
//         {    
//             document.getElementById(param4).innerHTML = "Trường ngày bị nhập sai.";
//         }
//         else 
//             document.getElementById(param4).innerHTML = "";
//     if(thang == 2)
//     {
//         if(!checkNamNhuan(nam))
//         {
//             if(ngay>28)
//             {
//                 document.getElementById(param4).innerHTML = "Không phải năm nhuận trường ngày bị nhập sai.";
//             }
//             else
//             {
//                 document.getElementById(param4).innerHTML = "";
//             }
//         }
//         else 
//         {
//             if(ngay>29)
//             {
//                 document.getElementById(param4).innerHTML = "Năm nhuận trường ngày bị nhập sai.";
//             }
//             else
//             {
//                 document.getElementById(param4).innerHTML = "";
//             }
//         }
//     }
// }
// function validatedatetime4(param1,param2,param3,param4) {
//     param1 = "ctl00_ContentPlaceHolder1_FormView1_ddlNgay1";
//     var ngay, thang, nam;
//     ngay = document.getElementById(param1).value;
//     thang = document.getElementById(param2).value;
//     nam = document.getElementById(param3).value;
//     document.getElementById(param4).innerHTML = "";
//     if((ngay == 31 && thang == 2) || (ngay == 31 && thang == 4) || (ngay == 31 && thang == 6)|| (ngay == 31 && thang == 9)|| (ngay == 31 && thang == 11))
//         {    
//             document.getElementById(param4).innerHTML = "Trường ngày bị nhập sai.";
//         }
//         else 
//             document.getElementById(param4).innerHTML = "";
//     if(thang == 2)
//     {
//         if(!checkNamNhuan(nam))
//         {
//             if(ngay>28)
//             {
//                 document.getElementById(param4).innerHTML = "Không phải năm nhuận trường ngày bị nhập sai.";
//             }
//             else
//             {
//                 document.getElementById(param4).innerHTML = "";
//             }
//         }
//         else 
//         {
//             if(ngay>29)
//             {
//                 document.getElementById(param4).innerHTML = "Năm nhuận trường ngày bị nhập sai.";
//             }
//             else
//             {
//                 document.getElementById(param4).innerHTML = "";
//             }
//         }
//     }
// }
function checkNamNhuan(year) {
    if ((year % 4===0 &&year%100 !==0 && year % 400 !==0)||(year%100===0 && year % 400===0)) 
    {
        return true;
    } 
    else 
    {
        return false;
    }
}

function CurrencyFormat() {
    var priceinput, priceinputnew;
    priceinputnew = "";
    priceinput = document.getElementById("ctl00_ContentPlaceHolder1_FormView1_giathanhTextBox").value;
    priceinput = xoadaucham(priceinput);
    if(priceinput.length > 3) {
        //priceinput = priceinput
        //100.000.000
        var i,c;
        i = priceinput.length;
        c = 1;
        while (i--) {
            if(c==4)
            {
                priceinputnew = priceinputnew.split('')
                priceinputnew.splice(0, 0, ".")
                priceinputnew = priceinputnew.join('')
                i = i + 1;
                c = 0;
            }
            else 
            {
                priceinputnew = priceinputnew.split('')
                priceinputnew.splice(0, 0, priceinput[i])
                priceinputnew = priceinputnew.join('')
            }
            c = c + 1;
            if(i < 0) 
            {
                break;
            }
        }
    }
    console.log(priceinputnew)
}

function xoadaucham(text) {
    var newtext;
    newtext = "";
    for(var i = 0; i<text.length;i++) {        
        if(text[i] != ".") {
            newtext = newtext + text[i];
        }
    }
    return newtext;
}

// let str = "abcdef";
// let position = 3;
// let sub = "123";
// let result = str.split('');
// result.splice(position, 0, sub);
// result = result.join('')
// console.log(result)//> abc123def