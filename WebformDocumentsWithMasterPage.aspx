<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="WebformDocumentsWithMasterPage.aspx.cs" Inherits="WebformDocumentsWithMasterPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <asp:Label ID="Label1" runat="server" Text="Label" ></asp:Label><br />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
        <asp:Button ID="Button1" runat="server" Text="Button" /><br />
        <asp:LinkButton ID="LinkButton1" runat="server">LinkButton</asp:LinkButton><br />
        <asp:ImageButton ID="ImageButton1" runat="server" /><br />
        <asp:HyperLink ID="HyperLink1" runat="server">HyperLink</asp:HyperLink><br />
        <asp:DropDownList ID="DropDownList1" runat="server">
        </asp:DropDownList><br />
        <asp:ListBox ID="ListBox1" runat="server"></asp:ListBox><br />
        <asp:CheckBox ID="CheckBox1" runat="server" /><br />
        <asp:CheckBoxList ID="CheckBoxList1" runat="server">
        </asp:CheckBoxList>
        <asp:RadioButton ID="RadioButton1" runat="server" /><br />
        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
        </asp:RadioButtonList>
        <asp:Image ID="Image1" runat="server" /><br />
        <asp:ImageMap ID="ImageMap1" runat="server">
        </asp:ImageMap><br />
        <asp:Table ID="Table1" runat="server">
        </asp:Table>
        <asp:BulletedList ID="BulletedList1" runat="server">
        </asp:BulletedList>
        <br />
        <asp:HiddenField ID="HiddenField1" runat="server" />
        <asp:Literal ID="Literal1" runat="server"></asp:Literal><br />
        <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
        <asp:AdRotator ID="AdRotator1" runat="server" />
        <br />
        <asp:FileUpload ID="FileUpload1" runat="server" /><br />
        <asp:Wizard ID="Wizard1" runat="server">
            <WizardSteps>
                <asp:WizardStep runat="server" Title="Step 1">
                </asp:WizardStep>
                <asp:WizardStep runat="server" Title="Step 2">
                </asp:WizardStep>
            </WizardSteps>
        </asp:Wizard>
        <asp:Xml ID="Xml1" runat="server"></asp:Xml>
        <asp:MultiView ID="MultiView1" runat="server">
        </asp:MultiView>
        <asp:Panel ID="Panel1" runat="server">
        </asp:Panel>
        <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
        <br />
        <asp:View ID="View1" runat="server">
        </asp:View>
        <asp:Substitution ID="Substitution1" runat="server" />
        <br />
        <asp:Localize ID="Localize1" runat="server"></asp:Localize><br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    
    </div>
</asp:Content>

