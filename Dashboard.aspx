<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="main-content">    
    <div class="center-content-qltb">
        <div class="center-tree">
            <button id="addthietbi" class="button-add" type="button">+</button>
            <%= showGocCayThuMucViTri() %>
        </div>
        </div>
        <div class="center-contain">            
            <asp:Image ID="Image1" runat="server" onclick="visibleleftmenu()" class="icon-pin icon-pin-open" ImageUrl="~/Resourcers/Images/thumbtacks.png"/>
            <div id="center-ct" class="center-contain-form">
                
            </div>
        </div>
        <div id="ccimg" class="ccimg">
            
        </div>
    </div>
    <script type="text/javascript" src="Resourcers/Javascripts/Dashboard.js"></script>
</asp:Content>