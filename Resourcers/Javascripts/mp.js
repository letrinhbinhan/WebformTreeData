function vetrangchu() {
    window.location.href = "/Dashboard.aspx";
}
function hideleftmenu() {
    document.getElementById("main-left-menu").style.display = "none";
    document.getElementById("ctl00_ContentPlaceHolder1_Image1").style.display = "block";
}
function visibleleftmenu() {
    document.getElementById("main-left-menu").style.display = "block";
    document.getElementById("ctl00_ContentPlaceHolder1_Image1").style.display = "none";
}