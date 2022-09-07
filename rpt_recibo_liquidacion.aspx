<%@ Page Title="" Language="VB" MasterPageFile="~/menu_master.master" AutoEventWireup="false" CodeFile="rpt_recibo_liquidacion.aspx.vb" Inherits="rpt_recibo_liquidacion" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=9.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<%@ Register assembly="Infragistics35.WebUI.WebDateChooser.v8.3, Version=8.3.20083.1009, Culture=neutral, PublicKeyToken=7dd5c3163f2cd0cb" namespace="Infragistics.WebUI.WebSchedule" tagprefix="igsch" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

    .style2
    {
        width: 100%;
    }
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
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width="100%">
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td align="center">
            <table align="center">
                <tr>
                    <td colspan="2" align="center" width="100%" 
                        
                        style="border: 1px dashed #000000; font-family: 'Trebuchet MS'; font-size: medium; font-weight: bold; ">
                        Emisión de Recibos</td>
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
                                <asp:CheckBox ID="ck_todos" runat="server" 
    Text="Todos" AutoPostBack="True" />
                    </td>
                </tr>
                <tr>
                    <td class="label">
                                <table class="style3">
                                    <tr>
                                        <td>
                                            Busque por Código o Apellido:</td>
                                        <td>
                                            <asp:TextBox ID="txt_campo" runat="server" AutoPostBack="True"></asp:TextBox>
                                        </td>
                                    </tr>
                                </table>
                    </td>
                    <td>
                        <asp:ImageButton ID="ib_buscar" runat="server" 
                            ImageUrl="~/images/controles/find.png" ToolTip="Buscar" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <asp:GridView ID="grilla_funcionarios" runat="server" AutoGenerateColumns="False" 
                            DataKeyNames="cod_funcionario" DataSourceID="funcionarios_con" 
                            AllowPaging="True" BackColor="LightGoldenrodYellow" BorderColor="Tan" 
                            BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" 
                            PageSize="5" CssClass="estilo">
                            <Columns>
                                <asp:CommandField SelectText="Elegir" ShowSelectButton="True" />
                                <asp:BoundField DataField="cod_funcionario" HeaderText="cod_funcionario" 
                                    InsertVisible="False" ReadOnly="True" SortExpression="cod_funcionario" 
                                    Visible="False" />
                                <asp:BoundField DataField="codigo" HeaderText="Codigo" 
                                    SortExpression="codigo" >
                                <HeaderStyle Width="80px" />
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="funcionario" HeaderText="Funcionario" 
                                    ReadOnly="True" SortExpression="funcionario" >
                                <HeaderStyle HorizontalAlign="Left" />
                                <ItemStyle HorizontalAlign="Left" />
                                </asp:BoundField>
                            </Columns>
                            <FooterStyle BackColor="Tan" />
                            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                                HorizontalAlign="Center" />
                            <EmptyDataTemplate>
                                <table class="style3">
                                    <tr>
                                        <td valign="bottom">
                                            No se han econtrado coincidencias.
                                        </td>
                                    </tr>
                                </table>
                                <br />
                            </EmptyDataTemplate>
                            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                            <HeaderStyle BackColor="Tan" Font-Bold="True" />
                            <AlternatingRowStyle BackColor="PaleGoldenrod" />
                        </asp:GridView>
                    </td>
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
                                <td>
                        <asp:ImageButton ID="ImageButton2" runat="server" 
                            ImageUrl="~/images/controles/procesar.png" ToolTip="Vista Previa" />
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
            <asp:SqlDataSource ID="funcionarios_con" runat="server" 
                ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
                
                
                
                
                SelectCommand="SELECT cod_funcionario, codigo, ISNULL(apellidos, ' ') + ', ' + ISNULL(nombres, ' ') AS funcionario FROM funcionarios WHERE (estado in ('A','E')) AND (tipo_remuneracion = 'M') AND (cod_empresa = @cod_empresa) AND (apellidos LIKE @campo + '%') OR (estado in ('A','E')) AND (tipo_remuneracion = 'M') AND (cod_empresa = @cod_empresa) AND (codigo LIKE @campo)">
                <SelectParameters>
                    <asp:SessionParameter DefaultValue="" Name="cod_empresa" 
                        SessionField="sv_empresa" />
                    <asp:ControlParameter ControlID="txt_campo" Name="campo" 
                        PropertyName="Text" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
</table>
</asp:Content>

