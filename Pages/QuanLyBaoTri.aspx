<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="QuanLyBaoTri.aspx.cs" Inherits="Pages_QuanLyBaoTri" Title="Quản lý bảo trì" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="height:50px;width:100px;"></div>
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
        AutoGenerateColumns="False" DataKeyNames="matbbt" 
        DataSourceID="SqlDataSource2" OnRowDataBound="GridView1_RowDataBound1" AutoGenerateSelectButton="True" AllowPaging="True" EnableModelValidation="True" OnRowDeleting="GridView1_RowDeleting">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="matbbt" HeaderText="Mã" InsertVisible="False" 
                ReadOnly="True" SortExpression="matbbt" />
            <asp:BoundField DataField="mathietbibt" HeaderText="Thiết bị" 
                SortExpression="mathietbibt" />
            <asp:BoundField DataField="thoigianbatdau" HeaderText="Thời gian bắt đầu" 
                SortExpression="thoigianbatdau" />
            <asp:BoundField DataField="thoigianketthuc" HeaderText="Thời gian kết th&#250;c" 
                SortExpression="thoigianketthuc" />
            <asp:BoundField DataField="ghichu" HeaderText="Ghi ch&#250;" 
                SortExpression="ghichu" />
            <asp:BoundField DataField="nguoilap" HeaderText="Người lập" 
                SortExpression="nguoilap" />
            <asp:BoundField DataField="loaihinh" HeaderText="Loại h&#236;nh" 
                SortExpression="loaihinh" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:QLThietBiConnectionString %>" 
        SelectCommand="SELECT * FROM [tblTBBT]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [tblTBBT] WHERE [matbbt] = @original_matbbt AND (([mathietbibt] = @original_mathietbibt) OR ([mathietbibt] IS NULL AND @original_mathietbibt IS NULL)) AND (([thoigianbatdau] = @original_thoigianbatdau) OR ([thoigianbatdau] IS NULL AND @original_thoigianbatdau IS NULL)) AND (([thoigianketthuc] = @original_thoigianketthuc) OR ([thoigianketthuc] IS NULL AND @original_thoigianketthuc IS NULL)) AND (([ghichu] = @original_ghichu) OR ([ghichu] IS NULL AND @original_ghichu IS NULL)) AND (([nguoilap] = @original_nguoilap) OR ([nguoilap] IS NULL AND @original_nguoilap IS NULL)) AND (([loaihinh] = @original_loaihinh) OR ([loaihinh] IS NULL AND @original_loaihinh IS NULL))" InsertCommand="INSERT INTO [tblTBBT] ([mathietbibt], [thoigianbatdau], [thoigianketthuc], [ghichu], [nguoilap], [loaihinh]) VALUES (@mathietbibt, @thoigianbatdau, @thoigianketthuc, @ghichu, @nguoilap, @loaihinh)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [tblTBBT] SET [mathietbibt] = @mathietbibt, [thoigianbatdau] = @thoigianbatdau, [thoigianketthuc] = @thoigianketthuc, [ghichu] = @ghichu, [nguoilap] = @nguoilap, [loaihinh] = @loaihinh WHERE [matbbt] = @original_matbbt AND (([mathietbibt] = @original_mathietbibt) OR ([mathietbibt] IS NULL AND @original_mathietbibt IS NULL)) AND (([thoigianbatdau] = @original_thoigianbatdau) OR ([thoigianbatdau] IS NULL AND @original_thoigianbatdau IS NULL)) AND (([thoigianketthuc] = @original_thoigianketthuc) OR ([thoigianketthuc] IS NULL AND @original_thoigianketthuc IS NULL)) AND (([ghichu] = @original_ghichu) OR ([ghichu] IS NULL AND @original_ghichu IS NULL)) AND (([nguoilap] = @original_nguoilap) OR ([nguoilap] IS NULL AND @original_nguoilap IS NULL)) AND (([loaihinh] = @original_loaihinh) OR ([loaihinh] IS NULL AND @original_loaihinh IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_matbbt" Type="Int32" />
            <asp:Parameter Name="original_mathietbibt" Type="Int32" />
            <asp:Parameter Name="original_thoigianbatdau" Type="DateTime" />
            <asp:Parameter Name="original_thoigianketthuc" Type="DateTime" />
            <asp:Parameter Name="original_ghichu" Type="String" />
            <asp:Parameter Name="original_nguoilap" Type="String" />
            <asp:Parameter Name="original_loaihinh" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="mathietbibt" Type="Int32" />
            <asp:Parameter Name="thoigianbatdau" Type="DateTime" />
            <asp:Parameter Name="thoigianketthuc" Type="DateTime" />
            <asp:Parameter Name="ghichu" Type="String" />
            <asp:Parameter Name="nguoilap" Type="String" />
            <asp:Parameter Name="loaihinh" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="mathietbibt" Type="Int32" />
            <asp:Parameter Name="thoigianbatdau" Type="DateTime" />
            <asp:Parameter Name="thoigianketthuc" Type="DateTime" />
            <asp:Parameter Name="ghichu" Type="String" />
            <asp:Parameter Name="nguoilap" Type="String" />
            <asp:Parameter Name="loaihinh" Type="String" />
            <asp:Parameter Name="original_matbbt" Type="Int32" />
            <asp:Parameter Name="original_mathietbibt" Type="Int32" />
            <asp:Parameter Name="original_thoigianbatdau" Type="DateTime" />
            <asp:Parameter Name="original_thoigianketthuc" Type="DateTime" />
            <asp:Parameter Name="original_ghichu" Type="String" />
            <asp:Parameter Name="original_nguoilap" Type="String" />
            <asp:Parameter Name="original_loaihinh" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </asp:Content>

