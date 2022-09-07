<%@ Page Title="" Language="VB" MasterPageFile="~/menu_master.master" AutoEventWireup="false" CodeFile="rpt_recibo_liquidacion_interno.aspx.vb" Inherits="rpt_recibo_liquidacion" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=9.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style2
    {
        width: 100%;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style2">
    <tr>
        <td>
            <table style="font-family: 'Trebuchet MS'; font-size: small; text-align: right;">
                <tr>
                    <td>
                        Servidor de Reportes:</td>
                    <td colspan="3">
                        <asp:TextBox ID="txt_server" runat="server" Width="370px">http://para02:8082/ReportServer_SQL2008</asp:TextBox>
                    </td>
                    <td rowspan="2" valign="middle" width="50px">
                        &nbsp;</td>
                    <td rowspan="2" valign="middle">
                        <asp:Button ID="Button1" runat="server" Text="Mostrar Reporte" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Directorio:</td>
                    <td>
                        <asp:TextBox ID="txt_folder" runat="server">/PayrollSSRS/</asp:TextBox>
                    </td>
                    <td>
                        Nombre:</td>
                    <td>
                        <asp:TextBox ID="txt_nombre" runat="server">recibo_liquidacion</asp:TextBox>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td align="center">
            <rsweb:ReportViewer ID="reporte" runat="server" Height="500px" Width="100%" 
                ZoomPercent="50">
            </rsweb:ReportViewer>
        </td>
    </tr>
</table>
</asp:Content>

