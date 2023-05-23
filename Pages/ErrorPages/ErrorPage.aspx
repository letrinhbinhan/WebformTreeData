<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ErrorPage.aspx.cs" Inherits="Pages_ErrorPage" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div>
        <h1>An Error Has Occurred</h1>
        <p>An uexpected error occurred on our website. The website administrator has been notified.</p>
        <ul>
            <li>
                <asp:HyperLink ID="HyperLink1" class="erblinkhomepage" runat="server" NavigateUrl="~/Dashboard.aspx">Return to the homepage</asp:HyperLink></li>
        </ul>
    </div>
</asp:Content>

