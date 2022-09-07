<%@ Page Title="" Language="VB" MasterPageFile="~/menu_master.master" AutoEventWireup="false" CodeFile="rpt_empleados_obreros.aspx.vb" Inherits="rpt_empleados_obreros" %>

<%@ Register assembly="Infragistics35.WebUI.WebDateChooser.v8.3, Version=8.3.20083.1009, Culture=neutral, PublicKeyToken=7dd5c3163f2cd0cb" namespace="Infragistics.WebUI.WebSchedule" tagprefix="igsch" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style3
    {
        width: 100%;
    }
    .style4
    {
        width: 35px;
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
                            <td align="center">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td align="center" 
                                style="border: 1px dashed #000000; font-family: 'Trebuchet MS'; font-size: medium; font-weight: bold;" 
                                width="100%">
                                Empleados y Obreros</td>
                        </tr>
                        <tr>
                            <td class="style4">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style4">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td align="center" class="label">
                                <table align="center">
                                    <tr>
                                        <td align="right">
                                            Seleccione fecha de liquidación:</td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: center" valign="middle">
                                <igsch:WebDateChooser ID="dd_fecha" runat="server" Value="" Width="85px">
                                    <CalendarLayout CellPadding="5" DayNameFormat="FirstLetter" 
                                        NextMonthImageUrl="igsch_right_arrow.gif" 
                                        PrevMonthImageUrl="igsch_left_arrow.gif" ShowFooter="False" 
                                        ShowMonthDropDown="False" ShowYearDropDown="False">
                                        <CalendarStyle BackColor="White" BorderColor="#7F9DB9" BorderStyle="Solid" 
                                            Font-Bold="False" Font-Italic="False" Font-Names="Tahoma,Verdana" 
                                            Font-Overline="False" Font-Size="8pt" Font-Strikeout="False" 
                                            Font-Underline="False">
                                        </CalendarStyle>
                                        <DayHeaderStyle>
                                        <BorderDetails ColorBottom="172, 168, 153" StyleBottom="Solid" 
                                            WidthBottom="1px" />
                                        </DayHeaderStyle>
                                        <OtherMonthDayStyle ForeColor="#ACA899" />
                                        <SelectedDayStyle BackColor="Transparent" BorderColor="#BB5503" 
                                            BorderStyle="Solid" BorderWidth="2px" ForeColor="Black" />
                                        <TitleStyle BackColor="#9EBEF5" />
                                        <TodayDayStyle BackColor="#FBE694" />
                                    </CalendarLayout>
                                </igsch:WebDateChooser>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: center" valign="middle">
                                <asp:Label ID="lb_mensaje" runat="server" CssClass="label" ForeColor="#FF3300"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td height="30px" style="text-align: center" valign="middle">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="text-align: center">
                                <table>
                                    <tr>
                                        <td>
                                            <asp:ImageButton ID="img_generar" runat="server" 
                                                ImageUrl="~/images/controles/procesar.png" ToolTip="Ver informe" />
                                        </td>
                                        <td width="200">
                                            &nbsp;</td>
                                        <td>
                                            <asp:ImageButton ID="Salir" runat="server" 
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
                    <table align="left" class="style3">
                        <tr>
                            <td style="font-family: 'trebuchet MS'; font-size: x-small; font-weight: bold;" 
                                width="120px">
                                Nombre del Servidor:</td>
                            <td style="text-align: left; font-family: 'trebuchet MS'; font-size: small; font-weight: normal;">
                                <asp:Label ID="lb_server" runat="server"></asp:Label>
                            </td>
                        </tr>
                    </table>
                    <br />
                    <br />
                    <br />
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
                    <br />
                </td>
            </tr>
        </table>
    </ContentTemplate>
</asp:UpdatePanel>
</asp:Content>

