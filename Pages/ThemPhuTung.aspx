<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ThemPhuTung.aspx.cs" Inherits="Pages_ThemPhuTung" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="mapt" DataSourceID="SqlDataSource1" DefaultMode="Insert" EnableModelValidation="True" OnItemInserting="FormView1_ItemInserting">
        <EditItemTemplate>
            mapt:
            <asp:Label ID="maptLabel1" runat="server" Text='<%# Eval("mapt") %>' />
            <br />
            tenpt:
            <asp:TextBox ID="tenptTextBox" runat="server" Text='<%# Bind("tenpt") %>' />
            <br />
            ngaynhap:
            <asp:TextBox ID="ngaynhapTextBox" runat="server" Text='<%# Bind("ngaynhap") %>' />
            <br />
            giaca:
            <asp:TextBox ID="giacaTextBox" runat="server" Text='<%# Bind("giaca") %>' />
            <br />
            tinhtrang:
            <asp:CheckBox ID="tinhtrangCheckBox" runat="server" Checked='<%# Bind("tinhtrang") %>' />
            <br />
            thietbi:
            <asp:TextBox ID="thietbiTextBox" runat="server" Text='<%# Bind("thietbi") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            <div class="formviewthem">
                <div class="rowthem">
                    <div class="themdivlabel tptlbl">Tên phụ tùng:&nbsp;</div>
                    <div><asp:TextBox ID="tenptTextBox" runat="server" Text='<%# Bind("tenpt") %>' CssClass="tpttxttenpt"/></div>
                </div>
                <div class="rowthem">
                    <div class="themdivlabel tptlbl">Ngày nhập:</div>
                    <div>
                        <asp:DropDownList ID="ddlNgay" runat="server" CssClass="ddlptthoigian">
                        </asp:DropDownList>
                        <asp:DropDownList ID="ddlThang" runat="server" CssClass="ddlptthoigian">
                        </asp:DropDownList>
                        <asp:DropDownList ID="ddlNam" runat="server" CssClass="ddlptthoigian">
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="rowthem">
                    <div class="themdivlabel tptlbl">Giá cả:</div>
                    <div><asp:TextBox ID="giacaTextBox" runat="server" Text='<%# Bind("giaca") %>' /></div>
                </div>
                <div class="rowthem">
                    <div class="themdivlabel tptlbl">Tình trạng:</div>
                    <div><asp:CheckBox ID="tinhtrangCheckBox" runat="server" Checked='<%# Bind("tinhtrang") %>' Text="Hư hỏng" /></div>
                </div>
                <div class="rowthem unvisible">
                    <div class="themdivlabel tptlbl">Thiết bị:</div>
                    <div>
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="tentb" DataValueField="matb" SelectedValue='<%# Bind("thietbi") %>' OnPreRender="FormView1_PreRender">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLThietBiMayTinhTungPhongBanConnectionString2 %>" SelectCommand="SELECT [matb], [tentb] FROM [tblthietbi]"></asp:SqlDataSource>
                    </div>
                </div>
                <div class="rowthem">
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </div>
            </div>
        </InsertItemTemplate>
        <ItemTemplate>
            mapt:
            <asp:Label ID="maptLabel" runat="server" Text='<%# Eval("mapt") %>' />
            <br />
            tenpt:
            <asp:Label ID="tenptLabel" runat="server" Text='<%# Bind("tenpt") %>' />
            <br />
            ngaynhap:
            <asp:Label ID="ngaynhapLabel" runat="server" Text='<%# Bind("ngaynhap") %>' />
            <br />
            giaca:
            <asp:Label ID="giacaLabel" runat="server" Text='<%# Bind("giaca") %>' />
            <br />
            tinhtrang:
            <asp:CheckBox ID="tinhtrangCheckBox" runat="server" Checked='<%# Bind("tinhtrang") %>' Enabled="false" />
            <br />
            thietbi:
            <asp:Label ID="thietbiLabel" runat="server" Text='<%# Bind("thietbi") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
    <p class="tptlvlthongbao"><%= thongbao %></p>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:QLThietBiMayTinhTungPhongBanConnectionString2 %>" DeleteCommand="DELETE FROM [tblphutung] WHERE [mapt] = @original_mapt AND (([tenpt] = @original_tenpt) OR ([tenpt] IS NULL AND @original_tenpt IS NULL)) AND (([ngaynhap] = @original_ngaynhap) OR ([ngaynhap] IS NULL AND @original_ngaynhap IS NULL)) AND (([giaca] = @original_giaca) OR ([giaca] IS NULL AND @original_giaca IS NULL)) AND (([tinhtrang] = @original_tinhtrang) OR ([tinhtrang] IS NULL AND @original_tinhtrang IS NULL)) AND (([thietbi] = @original_thietbi) OR ([thietbi] IS NULL AND @original_thietbi IS NULL))" InsertCommand="INSERT INTO [tblphutung] ([tenpt], [ngaynhap], [giaca], [tinhtrang], [thietbi]) VALUES (@tenpt, @ngaynhap, @giaca, @tinhtrang, @thietbi)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tblphutung]" UpdateCommand="UPDATE [tblphutung] SET [tenpt] = @tenpt, [ngaynhap] = @ngaynhap, [giaca] = @giaca, [tinhtrang] = @tinhtrang, [thietbi] = @thietbi WHERE [mapt] = @original_mapt AND (([tenpt] = @original_tenpt) OR ([tenpt] IS NULL AND @original_tenpt IS NULL)) AND (([ngaynhap] = @original_ngaynhap) OR ([ngaynhap] IS NULL AND @original_ngaynhap IS NULL)) AND (([giaca] = @original_giaca) OR ([giaca] IS NULL AND @original_giaca IS NULL)) AND (([tinhtrang] = @original_tinhtrang) OR ([tinhtrang] IS NULL AND @original_tinhtrang IS NULL)) AND (([thietbi] = @original_thietbi) OR ([thietbi] IS NULL AND @original_thietbi IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_mapt" Type="Int32" />
            <asp:Parameter Name="original_tenpt" Type="String" />
            <asp:Parameter Name="original_ngaynhap" Type="DateTime" />
            <asp:Parameter Name="original_giaca" Type="Int32" />
            <asp:Parameter Name="original_tinhtrang" Type="Boolean" />
            <asp:Parameter Name="original_thietbi" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="tenpt" Type="String" />
            <asp:Parameter Name="ngaynhap" Type="DateTime" />
            <asp:Parameter Name="giaca" Type="Int32" />
            <asp:Parameter Name="tinhtrang" Type="Boolean" />
            <asp:Parameter Name="thietbi" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="tenpt" Type="String" />
            <asp:Parameter Name="ngaynhap" Type="DateTime" />
            <asp:Parameter Name="giaca" Type="Int32" />
            <asp:Parameter Name="tinhtrang" Type="Boolean" />
            <asp:Parameter Name="thietbi" Type="Int32" />
            <asp:Parameter Name="original_mapt" Type="Int32" />
            <asp:Parameter Name="original_tenpt" Type="String" />
            <asp:Parameter Name="original_ngaynhap" Type="DateTime" />
            <asp:Parameter Name="original_giaca" Type="Int32" />
            <asp:Parameter Name="original_tinhtrang" Type="Boolean" />
            <asp:Parameter Name="original_thietbi" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

