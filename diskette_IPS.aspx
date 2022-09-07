<%@ Page Title="" Language="VB" MasterPageFile="~/menu_master.master" AutoEventWireup="false" CodeFile="diskette_IPS.aspx.vb" Inherits="Default2" %>

<%@ Register assembly="Infragistics35.Web.v8.3, Version=8.3.20083.1009, Culture=neutral, PublicKeyToken=7dd5c3163f2cd0cb" namespace="Infragistics.Web.UI.LayoutControls" tagprefix="ig" %>

<%@ Register assembly="Infragistics35.WebUI.WebDateChooser.v8.3, Version=8.3.20083.1009, Culture=neutral, PublicKeyToken=7dd5c3163f2cd0cb" namespace="Infragistics.WebUI.WebSchedule" tagprefix="igsch" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style8
        {
            font-family: "Trebuchet MS";
            font-size: small;
            height: 32px;
        }
        .style10
    {
        font-family: "Trebuchet MS";
        font-size: small;
        text-decoration: underline;
            text-align: left;
        }
        .style9
    {
        text-decoration: underline;
    }
            
        .style3
    {
        width: 100%;
            height: 39px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1" __designer:mapid="4ad">
        <tr __designer:mapid="4ae">
            <td align="center" __designer:mapid="4af">
                <table align="center" __designer:mapid="481">
                    <tr __designer:mapid="482">
                        <td align="center" width="350" style="text-align: left" colspan="2" 
                            __designer:mapid="483">
                            &nbsp;</td>
                    </tr>
                    <tr __designer:mapid="484">
                        <td align="center" width="100%" 
                        
                        
                            
                            style="border: 1px dashed #000000; font-family: 'Trebuchet MS'; font-size: medium; font-weight: bold; " 
                            colspan="2" __designer:mapid="485">
                            Generación de Diskette para I.P.S.</td>
                    </tr>
                    <tr __designer:mapid="486">
                        <td colspan="2" __designer:mapid="487">
                            &nbsp;</td>
                    </tr>
                    <tr __designer:mapid="488">
                        <td class="style8" align="left" colspan="2" __designer:mapid="489">
                            <table align="center" __designer:mapid="48a">
                                <tr __designer:mapid="48b">
                                    <td align="right" class="label" __designer:mapid="48c">
                        Fecha Liquidación:</td>
                                    <td align="left" __designer:mapid="48d">
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
                    <tr __designer:mapid="48f">
                        <td align="left" colspan="2" __designer:mapid="490">
                        </td>
                    </tr>
                    <tr __designer:mapid="491">
                        <td align="left" style="text-align: center" class="label" colspan="2" 
                            __designer:mapid="492">
                                        &nbsp;</td>
                    </tr>
                    <tr __designer:mapid="493">
                        <td align="center" style="text-align: right" __designer:mapid="494">
                            <table class="label" style="width: 0px" __designer:mapid="495">
                                <tr __designer:mapid="496">
                                    <td class="style10" __designer:mapid="497">
                                        Ordenar por</td>
                                </tr>
                                <tr __designer:mapid="498">
                                    <td style="text-align: center" __designer:mapid="499">
                                        <asp:RadioButtonList ID="rb_orden" runat="server" Width="140px" 
                                            style="text-align: left">
                                            <asp:ListItem Value="L">Legajo</asp:ListItem>
                                            <asp:ListItem Value="A">Alfabeto</asp:ListItem>
                                        </asp:RadioButtonList>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td align="center" style="text-align: right" __designer:mapid="49b">
                            <table class="label" __designer:mapid="49c">
                                <tr __designer:mapid="49d">
                                    <td class="style9" style="text-align: left" __designer:mapid="49e">
                                        Formato de Salida</td>
                                </tr>
                                <tr __designer:mapid="49f">
                                    <td style="text-align: left" __designer:mapid="4a0">
                                        <asp:RadioButtonList ID="rb_formato" runat="server" Width="140px">
                                            <asp:ListItem Value="P">En Pantalla</asp:ListItem>
                                            <asp:ListItem Value="D">En Diskette</asp:ListItem>
                                        </asp:RadioButtonList>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr __designer:mapid="4a2">
                        <td style="text-align: center" height="30px" valign="middle" colspan="2" 
                            __designer:mapid="4a3">
                            <asp:Label ID="lb_mensaje" runat="server" CssClass="label" ForeColor="#FF3300"></asp:Label>
                        </td>
                    </tr>
                    <tr __designer:mapid="4a5">
                        <td style="text-align: center" colspan="2" __designer:mapid="4a6">
                            <table class="style3" __designer:mapid="4a7">
                                <tr __designer:mapid="4a8">
                                    <td align="center" __designer:mapid="4a9">
                                        <asp:ImageButton ID="ImageButton2" runat="server" 
                            ImageUrl="~/images/controles/procesar.png" ToolTip="Procesar" />
                                    </td>
                                    <td align="center" __designer:mapid="4ab">
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
        <tr __designer:mapid="4b0">
            <td align="center" __designer:mapid="4b1">
            &nbsp;</td>
        </tr>
        <tr __designer:mapid="4b2">
            <td align="center" __designer:mapid="4b3">
            &nbsp;</td>
        </tr>
        <tr __designer:mapid="4b4">
            <td align="center" __designer:mapid="4b5">
            &nbsp;</td>
        </tr>
        <tr __designer:mapid="4b6">
            <td align="center" __designer:mapid="4b7">
                &nbsp;</td>
        </tr>
        <tr __designer:mapid="4b8">
            <td align="center" __designer:mapid="4b9">
                &nbsp;</td>
        </tr>
        <tr __designer:mapid="4ba">
            <td align="center" __designer:mapid="4bb">
            &nbsp;</td>
        </tr>
        <tr __designer:mapid="4bc">
            <td align="left" __designer:mapid="4bd">
                <table style="font-family: 'Trebuchet MS'; font-size: 8pt; text-align: right;" 
                    __designer:mapid="4be">
                    <tr __designer:mapid="4bf">
                        <td __designer:mapid="4c0">
                            <b __designer:mapid="4c1">Servidor de Reportes:</b></td>
                        <td style="text-align: left" __designer:mapid="4c2">
                            <asp:Label ID="lb_server" runat="server" style="text-align: left"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr __designer:mapid="4c4">
            <td align="center" __designer:mapid="4c5">
                <asp:SqlDataSource ID="historial_conceptos_con" runat="server" 
                ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
                SelectCommand="SELECT * FROM [historial_conceptos]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

