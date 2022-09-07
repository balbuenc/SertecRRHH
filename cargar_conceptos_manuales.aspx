<%@ Page Title="" Language="VB" MasterPageFile="~/menu_master.master" AutoEventWireup="false" CodeFile="cargar_conceptos_manuales.aspx.vb" Inherits="cargar_conceptos_manuales" %>

<%@ Register assembly="Infragistics35.WebUI.WebDateChooser.v8.3, Version=8.3.20083.1009, Culture=neutral, PublicKeyToken=7dd5c3163f2cd0cb" namespace="Infragistics.WebUI.WebSchedule" tagprefix="igsch" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style3
    {
        width: 100%;
            height: 39px;
        }
    .estilo
        {
            font-family: "Trebuchet MS";
            font-size: small;
        }
        .style4
        {
            font-family: "Trebuchet MS";
            font-size: small;
            height: 22px;
        }
        .style5
        {
            height: 22px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center">
            <table align="center">
                <tr>
                    <td colspan="2" align="center" width="100%" 
                        
                        style="border: 1px dashed #000000; font-family: 'Trebuchet MS'; font-size: medium; font-weight: bold; ">
                        Carga de Conceptos Manuales</td>
                </tr>
                <tr>
                    <td class="style4">
                        </td>
                    <td class="style5">
                        </td>
                </tr>
                <tr>
                    <td class="label">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td align="left" class="label" colspan="2">
                        Especifique el archivo a importar:</td>
                </tr>
                <tr>
                    <td class="label" align="center" colspan="2">
                        <asp:FileUpload ID="FileUpload1" runat="server" Width="350px" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center" class="label">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center" height="30px" valign="middle" 
                        class="label">
                        <asp:Label ID="lb_mensaje" runat="server" CssClass="label" ForeColor="#FF3300"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center" valign="middle" 
                        class="label">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center" class="label">
                        <table class="style3">
                            <tr>
                                <td>
                        <asp:ImageButton ID="ImageButton2" runat="server" 
                            ImageUrl="~/images/controles/procesar.png" ToolTip="Cargar Conceptos" />
                                </td>
                                <td>
                                    &nbsp;</td>
                                <td>
            <asp:ImageButton ID="ImageButton1" runat="server" 
                ImageUrl="~/images/controles/salir.png" PostBackUrl="~/home.aspx" ToolTip="Cancelar" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:SqlDataSource ID="historial_conceptos_con" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
                    SelectCommand="SELECT * FROM [historial_conceptos]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

