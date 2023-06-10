<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="HangMucBaoTri.aspx.cs" Inherits="Pages_HangMucBaoTri" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link type="text/css" href="../Styles/hangmucbaotri.css" rel="stylesheet" />
    <script type="text/javascript" src="../../Resourcers/fontawesome/733334d21d.js"></script>
    <script type="text/javascript" src="../../Resourcers/Javascripts/themchuki.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <% DataUtil data = new DataUtil(); %>
    <div class="container">
        <asp:Label ID="lblTenThietBi" runat="server" Text="Motor 01" CssClass="lbl-ten-thiet-bi"></asp:Label><br />
        <asp:Label ID="Label1" runat="server" Text="Lịch bảo trì:"></asp:Label>
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        <br />        
        <div class="left-panel-baotri">
            <div class="danh-muc-vat-tu">
                <table class="tbl-danh-muc">
                    <tr>
                        <td>vt1</td>
                        <td>đầu me</td>
                    </tr>
                    <tr>
                        <td>vt2</td>
                        <td>ô tô</td>
                    </tr>
                </table>
            </div>            
            <asp:Label ID="Label3" runat="server" Text="DataList"></asp:Label>
            <asp:DataList ID="DataList1" runat="server" CssClass="dtl-lich-bao-tri" DataKeyField="id" DataSourceID="SqlDataSource1" Font-Size="14pt" Width="406px" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" OnItemDataBound="DataList1_ItemDataBound">
                <ItemTemplate>
                    <asp:Label ID="mabaotriLabel" runat="server" Text='<%# Eval("mabaotri") %>' />
                    :
                    <asp:Label ID="tenbaotriLabel" runat="server" Text='<%# Eval("tenbaotri") %>' />
                    &nbsp;-
                    <asp:Label ID="chukiLabel" runat="server" Text='<%# Eval("chuki") %>' />
                    &nbsp;-
                    <asp:Label ID="socongLabel" runat="server" Text='<%# Eval("socong") %>' />
                    &nbsp;-
                    <asp:Label ID="bophanLabel" runat="server" Text='<%# Eval("bophan") %>' />
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLThietBiMayTinhTungPhongBanConnectionString2 %>" SelectCommand="SELECT * FROM [tblLichBaoTri]"></asp:SqlDataSource>            
        </div>
    </div>
</asp:Content>
