<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ChiTietThietBi.aspx.cs" Inherits="Pages_ChiTietThietBi" Title="Thiết bị" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Chi tiết thiết bị</h1>
    <div class="thongtintbmh">
        <div class="hinhanhtinhtrangtb">
            <div class="cttbhinhanh">
                <p class="cttbimgtinhtrangp"><img class="cttbimgtinhtrang" src="../Resourcers/Images/ThietBi/TinhTrang/<%= tinhtrangimage %>" alt="tinhtrangthietbi" width="50" /></p>
                <img src="../Resourcers/Images/ThietBi/<%= linkimage %>" alt="hinhanhthietbi" width="500" height="500"/>
                <div class="ttmhthoigian"><p>Thời gian mua vào: <%= ngaymua %></p></div>                
            </div>
        </div>
        <div class="thongtinmuahangtb">
            <div><h1>Thông tin mua hàng</h1></div>
            <div class="ttmhmamathang"><p>Mã mặt hàng: <%= mathietbi %></p></div> 
            <div class="ttmhtenmathang"><p>Tên mặt hàng: <%= tenthietbi %></p></div>
            <div class="cttbttmhtskt"><p>Thông số kỹ thuật:</p><textarea rows="10" cols="103"><%= thongsokythuat%></textarea></div>
            <div class="ttmhncc"><p>Nhà cung cấp: <%= nhacungcap %></p></div>
            <div class="ttmhmncc"><p>Mã nhà cung cấp: <%= manhacungcap %></p></div>
            <div class="ttmhemail"><p>Email NCC: <%= emailncc %></p></div>
            <div class="ttmhthongtinbaohanh"><p>Thông tin bảo hành: <%= thoigianbaohanh %></p></div>
            <h2>Mua gần nhất:</h2>
            <div><p>Chào giá:</p>
                <table class="ttmhchaogia">
                    <tr>
                        <td></td>
                        <td>Chào giá lần đầu</td>
                        <td>Chào giá lần cuối</td>
                        <td>Thuế</td>
                        <td>Tổng tiền</td>
                    </tr>
                    <tr>
                        <td class="tblmucgia">
                            Mức giá
                        </td>
                        <td><%= chaogialandau %></td>
                        <td><%= chaogialancuoi %></td>
                        <td><%= loaithueVAT %></td>
                        <td><%= tongtien %></td>
                    </tr>
                    <tr>
                        <td colspan="5"><%= danhgiaketquachaogia %></td>
                    </tr>
                </table>
            </div>
            <div><p>Người thực hiện: <%= nguoithuchienchaogia %></p></div>
        </div>
    </div>
    <div class="cttbtenvamatb">
        <p class="cttblblthietbi">Thiết bị: <%= tenthietbi %></p>
        <p class="cttblblmathietbi">Mã thiết bị: <%= mathietbi %></p>
    </div>       
    <div class="noidungchitiet">
        <div class="ttmhkgclh">
            <div class="btnthongtins button" onclick="showThongTin()">Thông tin</div>
            <div class="btnmuahangs button" onclick="showMuaHang()">Mua hàng</div>
            <div class="btnkhos button" onclick="showKho()">Kho</div>
            <div class="btnghichus button" onclick="showGhiChu()">Ghi chú</div>
            <div class="btnlienhes button" onclick="showLienHe()">Liên hệ</div>
            <div class="noidungan">
                <div id="ndathongtin" class="cttbctthongtin">
                    <p>Serial: <%= serial %></p>
                    <p>Model: <%= model %></p>
                    <p>Loại thiết bị: <%= loaithietbi %></p>
                    <p>Phòng ban: <%= phongban %></p>
                    <p>Ngày nhập: <%= ngaynhap %></p>
                    <p>Thông số kỹ thuật: <%= thongsokythuat %></p>
                    <p>Vị trí: <%= vitri %></p>
                    <p>Lĩnh vực: <%= linhvuc %></p>
                </div>
                <div id="ndamuahang" class="cttttbmuahang">
                    <p>Ngày lập: <%= ngaylap %></p>
                    <p>Ngày mua: <%= ngaymua %></p>
                    <p>Phiếu mua hàng: <%= phieumuahang %></p>
                    <p>Nhà sản xuất: <%= nhasanxuat %></p>
                    <p>Nước sản xuất: <%= nuocsanxuat %></p>
                    <p>Nhà cung cấp: <%= nhacungcap %></p>
                    <p>Giá thành: <%= giathanh %></p>
                    <p>Thời gian bảo hành: <%= thoigianbaohanh %></p>
                    <p>Tình trạng thanh toán: <%= tinhtrangthanhtoan%></p>
                    <p>Người duyệt: <%= nguoiduyet %></p>
                    <p>Ngày duyệt: <%= ngayduyet %></p>
                </div>
                <div id="ndaghichu" class="cttttbkho">
                    
                </div>
                <div id="ndakho" class="cttttbkho">
                    <p>Nhập kho: <%= nhapkho %></p>
                </div>
                <div id="ndalienhe" class="ctttttlienhe">
                    <p>Link image: <%= linkimage %></p>
                    <p>Image description: <%= imagedescription %></p>
                    <p>Hư hỏng: <%= huhong %></p>
                    <p>Cây thư mục: <%= capcaythumuc %></p>
                    <p>Thiết bị cha: <%= thietbicha %></p>
                </div>
        </div>   
        </div>             
    </div>        
    <script type="text/javascript">
        function showThongTin(){
            document.getElementById("ndamuahang").style.display = "none";
            document.getElementById("ndathongtin").style.display = "block";
            document.getElementById("ndaghichu").style.display = "none";
            document.getElementById("ndakho").style.display = "none";
            document.getElementById("ndalienhe").style.display = "none";
        }
        function showMuaHang() {
            document.getElementById("ndamuahang").style.display = "block";
            document.getElementById("ndathongtin").style.display = "none";
            document.getElementById("ndaghichu").style.display = "none";
            document.getElementById("ndakho").style.display = "none";
            document.getElementById("ndalienhe").style.display = "none";
        }
        function showGhiChu() {
            document.getElementById("ndamuahang").style.display = "none";
            document.getElementById("ndathongtin").style.display = "none";
            document.getElementById("ndaghichu").style.display = "block";
            document.getElementById("ndakho").style.display = "none";
            document.getElementById("ndalienhe").style.display = "none";
        }
        function showKho() {
            document.getElementById("ndamuahang").style.display = "none";
            document.getElementById("ndathongtin").style.display = "none";
            document.getElementById("ndaghichu").style.display = "none";
            document.getElementById("ndakho").style.display = "block";
            document.getElementById("ndalienhe").style.display = "none";
        }
        function showLienHe() {
            document.getElementById("ndamuahang").style.display = "none";
            document.getElementById("ndathongtin").style.display = "none";
            document.getElementById("ndaghichu").style.display = "none";
            document.getElementById("ndakho").style.display = "none";
            document.getElementById("ndalienhe").style.display = "block";
        }
        
        document.getElementById("ndathongtin").addEventListener("click", showThongtin);
        document.getElementById("ndamuahang").addEventListener("click", showMuahang);
        document.getElementById("ndakho").addEventListener("click", showKho);
        document.getElementById("ndalienhe").addEventListener("click", showLienhe);
    </script>
</asp:Content>

