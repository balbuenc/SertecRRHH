<%@ Page Title="" Language="VB" MasterPageFile="~/menu_master.master" AutoEventWireup="false" CodeFile="rpt_planilla_liquidacion.aspx.vb" Inherits="rpt_planilla_liquidacion" %>

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
        height: 24px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
    <tr>
        <td align="center">
            <table align="center">
                <tr>
                    <td colspan="2" align="center" width="350">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2" align="center" width="100%" 
                        
                        style="border: 1px dashed #000000; font-family: 'Trebuchet MS'; font-size: medium; font-weight: bold; ">
                        Emisión de Planillas de Liquidación</td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="label" align="center" colspan="2">
                        <table align="center">
                            <tr>
                                <td align="right" class="label">
                        Fecha Liquidación:</td>
                                <td align="left">
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
                        </table>
                    </td>
                </tr>
                <tr>
                    <td class="label" align="left" colspan="2">
                                &nbsp;</td>
                </tr>
                <tr>
                    <td class="style4" align="left" colspan="2">
                                <asp:RadioButtonList ID="rb_monedas" runat="server">
                                    <asp:ListItem Value="GS">En Guaraníes</asp:ListItem>
                                    <asp:ListItem Value="DS">En Dólares</asp:ListItem>
                                </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td class="label" align="left" colspan="2">
                                &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center" height="30px" valign="middle">
                        <asp:Label ID="lb_mensaje" runat="server" CssClass="label" ForeColor="#FF3300"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center">
                        <table class="style3">
                            <tr>
                                <td align="center">
                        <asp:ImageButton ID="ImageButton2" runat="server" 
                            ImageUrl="~/images/controles/procesar.png" ToolTip="Procesar" />
                                </td>
                                <td>
                                    &nbsp;</td>
                                <td align="center">
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
            &nbsp;</td>
    </tr>
    <tr>
        <td align="center">
            &nbsp;</td>
    </tr>
    <tr>
        <td align="center">
            &nbsp;</td>
    </tr>
    <tr>
        <td align="center">
            &nbsp;</td>
    </tr>
    <tr>
        <td align="center">
            &nbsp;</td>
    </tr>
    <tr>
        <td align="center">
            &nbsp;</td>
    </tr>
    <tr>
        <td align="left">
            <table style="font-family: 'Trebuchet MS'; font-size: 8pt; text-align: right;">
                <tr>
                    <td>
                        <b>Servidor de Reportes:</b></td>
                    <td style="text-align: left">
                        <asp:Label ID="lb_server" runat="server" style="text-align: left"></asp:Label>
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

