﻿<%@ Page Title="" Language="VB" MasterPageFile="~/menu_master.master" AutoEventWireup="false" CodeFile="rpt_sueldos_jornales_anual.aspx.vb" Inherits="rpt_sueldos_jornales_anual" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
        }
        .style4
    {
        font-family: "Trebuchet MS";
        font-size: small;
        height: 24px;
    }
    .style6
    {
        text-align: left;
        width: 148px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <table align="center" class="style3">
                <tr>
                    <td style="text-align: center">
                        <table align="center" class="style3">
                            <tr>
                                <td style="text-align: right">
                                    <asp:ImageButton ID="img_salir" runat="server" 
                                        ImageUrl="~/images/controles/salir32.png" PostBackUrl="~/home.aspx" />
                                </td>
                            </tr>
                        </table>
                        <table align="center">
                            <tr>
                                <td align="center" colspan="2" width="350">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2" 
                                    style="border: 1px dashed #000000; font-family: 'Trebuchet MS'; font-size: medium; font-weight: bold;" 
                                    width="100%">
                                    Sueldos y Jornales Anual</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td align="center" class="label" colspan="2">
                                    <table align="center">
                                        <tr>
                                            <td align="right" class="label">
                                                Año:</td>
                                            <td align="right" class="label">
                                                <asp:TextBox ID="txt_año" runat="server" Width="50px"></asp:TextBox>
                                            </td>
                                            <td align="left">
                                                &nbsp;</td>
                                            <td align="left">
                                                &nbsp;</td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td align="left" class="label" colspan="2">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td align="left" class="style4" colspan="2">
                                   
                                </td>
                            </tr>
                            <tr>
                                <td align="left" class="label" colspan="2">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td colspan="2" height="30px" style="text-align: center" valign="middle">
                                    <asp:Label ID="lb_mensaje" runat="server" CssClass="label" ForeColor="#FF3300"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" style="text-align: center">
                                    <table class="style3">
                                        <tr>
                                            <td align="center">
                                                <asp:ImageButton ID="img_procesar" runat="server"  visible="false"
                                                    ImageUrl="~/images/controles/procesar.png" ToolTip="Ver Informe" />
                                            </td>
                                            <td>
                                                <asp:LinkButton runat="server" id="personas_btn"  PostBackUrl="http://app.enigmatech.biz/ReportServer/Pages/ReportViewer.aspx?/EnigmaSSRS/MJT-PersonasOcupadas&rs:Command=Render">Empleados y Obreros</asp:LinkButton>
                                            </td>
                                            <td>
                                                <asp:LinkButton runat="server" id="sueldos_btn" PostBackUrl="http://app.enigmatech.biz/ReportServer/Pages/ReportViewer.aspx?/EnigmaSSRS/MJT-RegistroSueldosJornales&rs:Command=Render">Sueldos y Jornales</asp:LinkButton>
                                            </td>
                                            <td>
                                                <asp:LinkButton runat="server" id="emlpeados_btn" PostBackUrl="http://app.enigmatech.biz/ReportServer/Pages/ReportViewer.aspx?/EnigmaSSRS/MJT-RegistroEmpleadosObreros&rs:Command=Render">Empleados y Obreros</asp:LinkButton>
                                            </td>
                                            <td>
                                                &nbsp;</td>
                                            <td align="center">
                                                <asp:ImageButton ID="ImageButton1" runat="server" 
                                                    ImageUrl="~/images/controles/salir.png" PostBackUrl="~/home.aspx" 
                                                    ToolTip="Cancelar" />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <table align="center" class="style3" 
                            style="font-family: 'trebuchet MS'; font-size: small">
                            <tr>
                                <td class="style6">
                                    <b style="text-align: left">Servidor de Reportes:</b></td>
                                <td style="text-align: left">
                                    <asp:Label ID="lb_server" runat="server" style="text-align: left"></asp:Label>
                                </td>
                            </tr>
                        </table>
                        <br />
                        <table align="center" class="style3">
                            <tr>
                                <td>
                                    <asp:SqlDataSource ID="historial_conceptos_con" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
                                        SelectCommand="SELECT * FROM [historial_conceptos]"></asp:SqlDataSource>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

