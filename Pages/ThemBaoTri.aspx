<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ThemBaoTri.aspx.cs" Inherits="Pages_ThemBaoTri" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="matbbt" DataSourceID="SqlDataSource1" DefaultMode="Insert" EnableModelValidation="True" OnPreRender="FormView1_PreRender" Width="432px" OnItemInserting="FormView1_ItemInserting">
        <EditItemTemplate>
            matbbt:
            <asp:Label ID="matbbtLabel1" runat="server" Text='<%# Eval("matbbt") %>' />
            <br />
            mathietbibt:
            <asp:TextBox ID="mathietbibtTextBox" runat="server" Text='<%# Bind("mathietbibt") %>' />
            <br />
            thoigianbatdau:
            <asp:TextBox ID="thoigianbatdauTextBox" runat="server" Text='<%# Bind("thoigianbatdau") %>' />
            <br />
            thoigianketthuc:
            <asp:TextBox ID="thoigianketthucTextBox" runat="server" Text='<%# Bind("thoigianketthuc") %>' />
            <br />
            ghichu:
            <asp:TextBox ID="ghichuTextBox" runat="server" Text='<%# Bind("ghichu") %>' />
            <br />
            nguoilap:
            <asp:TextBox ID="nguoilapTextBox" runat="server" Text='<%# Bind("nguoilap") %>' />
            <br />
            loaihinh:
            <asp:TextBox ID="loaihinhTextBox" runat="server" Text='<%# Bind("loaihinh") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            <div class="formviewthem">
            <div class="rowthem">
                <div class="themdivlabel">Mã thiết bị:</div>
                    <div>
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="tentb" DataValueField="matb" SelectedValue='<%# Bind("mathietbibt") %>' CssClass="tbtddltentb">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLThietBiMayTinhTungPhongBanConnectionString2 %>" SelectCommand="SELECT [matb], [tentb] FROM [tblthietbi]"></asp:SqlDataSource>
                    </div>
                </div>
            <div class="rowthem heightngaythangnam">
                <div class="themdivlabel tbtlblthoigian">Thời gian bắt đầu:</div>
                    <div>
                        <asp:DropDownList ID="ddlNgay" runat="server" CssClass="ddlptthoigian">
                        </asp:DropDownList>
                        <asp:DropDownList ID="ddlThang" runat="server" CssClass="ddlptthoigian">
                        </asp:DropDownList>
                        <asp:DropDownList ID="ddlNam" runat="server" CssClass="ddlptthoigian">
                        </asp:DropDownList>
                        <asp:Calendar ID="Calendar1" runat="server" SelectedDate='<%# Bind("thoigianbatdau") %>' CssClass="visible"></asp:Calendar>
                    </div>
                </div>
            <div class="rowthem heightngaythangnam">
                <div class="themdivlabel tbtlblthoigian">Thời gian kết thúc:</div>
                        <div>
                            <asp:DropDownList ID="ddlNgay2" runat="server" CssClass="ddlptthoigian">
                            </asp:DropDownList>
                            <asp:DropDownList ID="ddlThang2" runat="server" CssClass="ddlptthoigian">
                            </asp:DropDownList>
                            <asp:DropDownList ID="ddlNam2" runat="server" CssClass="ddlptthoigian">
                            </asp:DropDownList>
                            <asp:Calendar ID="Calendar2" runat="server" SelectedDate='<%# Bind("thoigianketthuc") %>' CssClass="visible"></asp:Calendar>
                        </div>
            </div>
            <div class="rowthem">
                <div class="themdivlabel">Ghi chú:</div>
                        <div>
                            <asp:TextBox ID="ghichuTextBox" runat="server" Text='<%# Bind("ghichu") %>' CssClass="tbttxtghichu"/>
                        </div>
            </div>
            <div class="rowthem">
                <div class="themdivlabel">Người lập:</div>
                        <div>
                            <asp:TextBox ID="nguoilapTextBox" runat="server" Text='<%# Bind("nguoilap") %>' CssClass="tbttxtnguoilap"/>
                        </div>
            </div>
            <div class="rowthem">
                <div class="themdivlabel">Loại hình:</div>
                <div>
                    <asp:TextBox ID="loaihinhTextBox" runat="server" Text='<%# Bind("loaihinh") %>' CssClass="tbttxtloaihinh"/>
                </div>
            </div>
            <div class="rowthem">
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </div>
        </div>
            
        </InsertItemTemplate>
        <ItemTemplate>
            matbbt:
            <asp:Label ID="matbbtLabel" runat="server" Text='<%# Eval("matbbt") %>' />
            <br />
            mathietbibt:
            <asp:Label ID="mathietbibtLabel" runat="server" Text='<%# Bind("mathietbibt") %>' />
            <br />
            thoigianbatdau:
            <asp:Label ID="thoigianbatdauLabel" runat="server" Text='<%# Bind("thoigianbatdau") %>' />
            <br />
            thoigianketthuc:
            <asp:Label ID="thoigianketthucLabel" runat="server" Text='<%# Bind("thoigianketthuc") %>' />
            <br />
            ghichu:
            <asp:Label ID="ghichuLabel" runat="server" Text='<%# Bind("ghichu") %>' />
            <br />
            nguoilap:
            <asp:Label ID="nguoilapLabel" runat="server" Text='<%# Bind("nguoilap") %>' />
            <br />
            loaihinh:
            <asp:Label ID="loaihinhLabel" runat="server" Text='<%# Bind("loaihinh") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:QLThietBiMayTinhTungPhongBanConnectionString2 %>" DeleteCommand="DELETE FROM [tblTBBT] WHERE [matbbt] = @original_matbbt AND (([mathietbibt] = @original_mathietbibt) OR ([mathietbibt] IS NULL AND @original_mathietbibt IS NULL)) AND (([thoigianbatdau] = @original_thoigianbatdau) OR ([thoigianbatdau] IS NULL AND @original_thoigianbatdau IS NULL)) AND (([thoigianketthuc] = @original_thoigianketthuc) OR ([thoigianketthuc] IS NULL AND @original_thoigianketthuc IS NULL)) AND (([ghichu] = @original_ghichu) OR ([ghichu] IS NULL AND @original_ghichu IS NULL)) AND (([nguoilap] = @original_nguoilap) OR ([nguoilap] IS NULL AND @original_nguoilap IS NULL)) AND (([loaihinh] = @original_loaihinh) OR ([loaihinh] IS NULL AND @original_loaihinh IS NULL))" InsertCommand="INSERT INTO [tblTBBT] ([mathietbibt], [thoigianbatdau], [thoigianketthuc], [ghichu], [nguoilap], [loaihinh]) VALUES (@mathietbibt, @thoigianbatdau, @thoigianketthuc, @ghichu, @nguoilap, @loaihinh)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tblTBBT]" UpdateCommand="UPDATE [tblTBBT] SET [mathietbibt] = @mathietbibt, [thoigianbatdau] = @thoigianbatdau, [thoigianketthuc] = @thoigianketthuc, [ghichu] = @ghichu, [nguoilap] = @nguoilap, [loaihinh] = @loaihinh WHERE [matbbt] = @original_matbbt AND (([mathietbibt] = @original_mathietbibt) OR ([mathietbibt] IS NULL AND @original_mathietbibt IS NULL)) AND (([thoigianbatdau] = @original_thoigianbatdau) OR ([thoigianbatdau] IS NULL AND @original_thoigianbatdau IS NULL)) AND (([thoigianketthuc] = @original_thoigianketthuc) OR ([thoigianketthuc] IS NULL AND @original_thoigianketthuc IS NULL)) AND (([ghichu] = @original_ghichu) OR ([ghichu] IS NULL AND @original_ghichu IS NULL)) AND (([nguoilap] = @original_nguoilap) OR ([nguoilap] IS NULL AND @original_nguoilap IS NULL)) AND (([loaihinh] = @original_loaihinh) OR ([loaihinh] IS NULL AND @original_loaihinh IS NULL))">
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

