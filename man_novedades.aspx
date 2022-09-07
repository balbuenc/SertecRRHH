<%@ Page Title="" Language="VB" MasterPageFile="~/menu_master.master" AutoEventWireup="false" CodeFile="man_novedades.aspx.vb" Inherits="man_novedades" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <h1>Importar novedades</h1>
    </div>
    <div>
        <asp:fileupload runat="server" ID="FileUpload" BorderStyle="Solid" Font-Names="Segoe UI" ></asp:fileupload>
    </div>
    <div>
        <asp:Button ID="Button1" runat="server" Text="Subir" OnClick="Button1_Click" />
    </div>
    <div>
        <asp:Label ID="MessageLabel" runat="server" Text=""></asp:Label>
    </div>
</asp:Content>

