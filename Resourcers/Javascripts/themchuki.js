function closeTooltipInsertChuKi() {
    document.getElementById("tooltipinsertchuki").style.display = "none";
}
function changetooltip(obj) {
    var x, y;
    x = obj.offsetLeft;
    y = obj.offsetTop;
    document.getElementById("tooltipinsertchuki").style.left = x;
    document.getElementById("tooltipinsertchuki").style.top = y;
    console.log(x);
    console.log(y);    
}
