<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UploadTaiLieu.aspx.cs" Inherits="Pages_UploadTaiLieu" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:FileUpload ID="FileUpload1" runat="server" />
    <asp:Button ID="Button1" runat="server" Text="Upload" OnClick="Button1_Click" />
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Dashboard.aspx" class="ultlquayve">Quay về</asp:HyperLink>
</asp:Content>

