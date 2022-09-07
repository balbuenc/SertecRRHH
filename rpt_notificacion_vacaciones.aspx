<%@ Page Title="" Language="VB" MasterPageFile="~/menu_master.master" AutoEventWireup="false" CodeFile="rpt_notificacion_vacaciones.aspx.vb" Inherits="rpt_notificacion_vacaciones" %>

<%@ Register assembly="Infragistics35.WebUI.WebDateChooser.v8.3, Version=8.3.20083.1009, Culture=neutral, PublicKeyToken=7dd5c3163f2cd0cb" namespace="Infragistics.WebUI.WebSchedule" tagprefix="igsch" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style3
    {
        width: 100%;
    }
    .estilo
        {
            font-family: "Trebuchet MS";
            font-size: small;
        }
        .style4
        {
            width: 99%;
        }
        .style6
        {
            font-weight: normal;
        }
        .style7
        {
            font-family: "Trebuchet MS";
            font-size: small;
            font-weight: normal;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
        <table class="style3">
            <tr>
                <td style="text-align: center">
                    <table align="right" class="style3">
                        <tr>
                            <td style="text-align: right">
                                <asp:ImageButton ID="img_salir" runat="server" 
                                    ImageUrl="~/images/controles/salir32.png" PostBackUrl="~/home.aspx" />
                            </td>
                        </tr>
                    </table>
                    <br />
                    <br />
                    <table align="center" class="style4">
                        <tr>
                            <td>
                                <table align="center">
                                    <tr>
                                        <td align="center" 
                                            style="border: 1px dashed #000000; font-family: 'Trebuchet MS'; font-size: medium; font-weight: bold;" 
                                            width="100%">
                                            <table align="center">
                                                <tr>
                                                    <td align="center" colspan="2" 
                                                        style="border: 1px dashed #000000; font-family: 'Trebuchet MS'; font-size: medium; font-weight: bold;" 
                                                        width="100%">
                                                        Emisión de Notificación de Vacaciones</td>
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
                                                                <td align="right" class="style7">
                                                                    Fecha Notificación:</td>
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
                                                    <td align="left" class="label" colspan="2">
                                                        <asp:CheckBox ID="ck_todos" runat="server" AutoPostBack="True" Text="Todos" 
                                                            Visible="False" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="label">
                                                        <table class="style3">
                                                            <tr>
                                                                <td class="style6">
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
                                                    <td align="center" colspan="2" 
                                                        style="font-family: 'Trebuchet MS'; font-size: small">
                                                        <asp:GridView ID="grilla_funcionarios" runat="server" AllowPaging="True" 
                                                            AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" 
                                                            BorderWidth="1px" CellPadding="2" CssClass="estilo" 
                                                            DataKeyNames="cod_funcionario" DataSourceID="funcionarios_con" 
                                                            ForeColor="Black" GridLines="None" PageSize="5">
                                                            <Columns>
                                                                <asp:CommandField SelectText="Elegir" ShowSelectButton="True" />
                                                                <asp:BoundField DataField="cod_funcionario" HeaderText="cod_funcionario" 
                                                                    InsertVisible="False" ReadOnly="True" SortExpression="cod_funcionario" 
                                                                    Visible="False" />
                                                                <asp:BoundField DataField="codigo" HeaderText="Codigo" SortExpression="codigo">
                                                                    <HeaderStyle Width="80px" />
                                                                    <ItemStyle HorizontalAlign="Center" />
                                                                </asp:BoundField>
                                                                <asp:BoundField DataField="funcionario" HeaderText="Funcionario" 
                                                                    ReadOnly="True" SortExpression="funcionario">
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
                                                    <td colspan="2" height="30px" style="text-align: center" valign="middle">
                                                        <asp:Label ID="lb_mensaje" runat="server" CssClass="label" ForeColor="#FF3300"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2" style="text-align: center">
                                                        <table class="style3">
                                                            <tr>
                                                                <td>
                                                                    <asp:ImageButton ID="img_procesar" runat="server" 
                                                                        ImageUrl="~/images/controles/procesar.png" ToolTip="Vista Previa" />
                                                                </td>
                                                                <td>
                                                                    &nbsp;</td>
                                                                <td>
                                                                    <asp:ImageButton ID="img_salir3" runat="server" 
                                                                        ImageUrl="~/images/controles/salir.png" PostBackUrl="~/home.aspx" 
                                                                        ToolTip="Cancelar" />
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                            </table>
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
                            <td style="text-align: left; font-family: 'trebuchet MS'; font-size: x-small; font-weight: normal;">
                                <asp:Label ID="lb_server" runat="server"></asp:Label>
                            </td>
                        </tr>
                    </table>
                    <br />
                    <br />
                    <asp:SqlDataSource ID="funcionarios_con" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
                        SelectCommand="SELECT cod_funcionario, codigo, ISNULL(apellidos, ' ') + ', ' + ISNULL(nombres, ' ') AS funcionario FROM funcionarios WHERE (estado = 'A') AND (tipo_remuneracion = 'M') AND (cod_empresa = @cod_empresa) AND (apellidos LIKE @campo + '%') OR (estado = 'A') AND (tipo_remuneracion = 'M') AND (cod_empresa = @cod_empresa) AND (codigo LIKE @campo)">
                        <SelectParameters>
                            <asp:SessionParameter Name="cod_empresa" SessionField="sv_empresa" />
                            <asp:ControlParameter ControlID="txt_campo" Name="campo" PropertyName="Text" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <br />
                </td>
            </tr>
        </table>
    </ContentTemplate>
</asp:UpdatePanel>
</asp:Content>

