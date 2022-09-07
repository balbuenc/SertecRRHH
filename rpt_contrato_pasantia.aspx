<%@ Page Title="" Language="VB" MasterPageFile="~/menu_master.master" AutoEventWireup="false" CodeFile="rpt_contrato_pasantia.aspx.vb" Inherits="rpt_contrato_pasantia" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
        }
        .style5
        {
            width: 79%;
            height: 60px;
        }
        .style26
        {
            width: 624px;
        }
        .style27
        {
            width: 80%;
        }
        .style29
        {
            width: 71px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <table align="center" class="style3" 
    style="font-family: 'Trebuchet MS'; font-size: small">
                <tr>
                    <td style="text-align: right">
                        <asp:ImageButton ID="img_salir" runat="server" 
                            ImageUrl="~/images/controles/salir32.png" PostBackUrl="~/home.aspx" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <table align="center" class="style5">
                            <tr>
                                <td class="style29" 
                                    style="font-family: 'Trebuchet MS'; font-size: large; font-weight: bolder" 
                                    valign="top">
                                    &nbsp;</td>
                                <td class="style26" 
                                    style="font-family: 'Trebuchet MS'; font-size: large; font-weight: bolder" 
                                    valign="top">
                                    Contrato de Pasantía - Aprendizaje</td>
                                <td rowspan="5" 
                                    style="font-family: 'Trebuchet MS'; font-size: large; font-weight: bolder" 
                                    valign="top">
                                    <asp:ImageButton ID="ImageButton5" runat="server" 
                                        ImageUrl="~/images/controles/find.png" 
                                        onclientclick="var wBusqueda = window.open('busca_funcionarios_contrato_pasantia.aspx','wBusqeuda','width=500,height=500, left = 262, top = 134');return false" />
                                </td>
                            </tr>
                            <tr>
                                <td class="style29" valign="top">
                                    &nbsp;</td>
                                <td style="font-family: 'trebuchet MS'; font-size: x-large; font-weight: bolder" 
                                    valign="top">
                                    <asp:FormView ID="form_funcionarios" runat="server" 
                                        DataSourceID="funcionarios_con" Width="100%">
                                        <EditItemTemplate>
                                            funcionario:
                                            <asp:TextBox ID="funcionarioTextBox" runat="server" 
                                                Text='<%# Bind("funcionario") %>' />
                                            <br />
                                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                                                CommandName="Update" Text="Update" />
                                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                                                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            funcionario:
                                            <asp:TextBox ID="funcionarioTextBox" runat="server" 
                                                Text='<%# Bind("funcionario") %>' />
                                            <br />
                                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                                                CommandName="Insert" Text="Insert" />
                                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                                                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            &nbsp;<asp:Label ID="funcionarioLabel" runat="server" ForeColor="#3366FF" 
                                                Text='<%# Bind("funcionario") %>' />
                                            <br />
                                        </ItemTemplate>
                                    </asp:FormView>
                                </td>
                            </tr>
                            <tr>
                                <td class="style29" valign="top">
                                    <br />
                                </td>
                                <td valign="top">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style29" valign="top">
                                    &nbsp;</td>
                                <td valign="top">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style29" valign="top">
                                    &nbsp;</td>
                                <td valign="top">
                                    <table align="center" width="100%">
                                        <tr>
                                            <td style="border: thin dashed #000000;" width="52%" height="10">
                                                <table align="center" style="font-family: 'Trebuchet MS'; font-size: small" 
                                                    width="95%">
                                                    <tr>
                                                        <td width="170">
                                                            Máximo de Horas Semanales</td>
                                                        <td style="text-align: left">
                                                            <asp:TextBox ID="txt_max_horas_semanales" runat="server" Width="50px"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                </table>
                                                <table align="center" style="font-family: 'Trebuchet MS'; font-size: small" 
                                                    width="95%">
                                                    <tr>
                                                        <td width="260" style="text-align: left">
                                                            Abonar Mensualidad dentro de los primeros</td>
                                                        <td style="text-align: left" width="50">
                                                            <asp:TextBox ID="txt_dias_habiles" runat="server" Width="50px"></asp:TextBox>
                                                        </td>
                                                        <td style="text-align: left">
                                                            días hábiles.</td>
                                                    </tr>
                                                </table>
                                                <table align="center" style="font-family: 'Trebuchet MS'; font-size: small" 
                                                    width="95%">
                                                    <tr>
                                                        <td align="left" width="145">
                                                            Horario de trabajo de: </td>
                                                        <td style="text-align: left" width="50">
                                                            <asp:TextBox ID="txt_hora_entrada" runat="server" Width="50px"></asp:TextBox>
                                                        </td>
                                                        <td width="20.">
                                                            a</td>
                                                        <td style="text-align: left" width="50">
                                                            <asp:TextBox ID="txt_hora_salida" runat="server" Width="50px"></asp:TextBox>
                                                        </td>
                                                        <td style="text-align: left" width="75">
                                                            Horas.&nbsp; </td>
                                                        <td style="text-align: left" width="50">
                                                            &nbsp;</td>
                                                        <td style="text-align: center" width="20">
                                                            &nbsp;</td>
                                                        <td style="text-align: left" width="50">
                                                            &nbsp;</td>
                                                        <td style="text-align: left">
                                                            &nbsp;</td>
                                                    </tr>
                                                </table>
                                                <table align="center" style="font-family: 'Trebuchet MS'; font-size: small" 
                                                    width="95%">
                                                    <tr>
                                                        <td width="145" style="text-align: left">
                                                            Horario de descanso de:</td>
                                                        <td style="text-align: left" width="50">
                                                            <asp:TextBox ID="txt_hora_inicio" runat="server" Width="50px"></asp:TextBox>
                                                        </td>
                                                        <td style="text-align: center" width="20">
                                                            a</td>
                                                        <td style="text-align: left" width="50">
                                                            <asp:TextBox ID="txt_hora_fin" runat="server" Width="50px"></asp:TextBox>
                                                        </td>
                                                        <td style="text-align: left">
                                                            Horas.</td>
                                                    </tr>
                                                </table>
                                                <table align="center" style="font-family: 'Trebuchet MS'; font-size: small" 
                                                    width="95%">
                                                    <tr>
                                                        <td width="145" style="text-align: left">
                                                            Fecha fin de Contrato:</td>
                                                        <td style="text-align: left">
                                                            <asp:TextBox ID="txt_fecha_fin" runat="server" Width="90px"></asp:TextBox>
                                                        </td>
                                                        <td style="text-align: left">
                                                            &nbsp;</td>
                                                    </tr>
                                                </table>
                                                <table align="center" style="font-family: 'Trebuchet MS'; font-size: small" 
                                                    width="95%">
                                                    <tr>
                                                        <td align="left" width="80">
                                                            Universidad:</td>
                                                        <td style="text-align: left">
                                                            <asp:TextBox ID="txt_universidad" runat="server" Width="400px"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                </table>
                                                <table align="center" style="font-family: 'Trebuchet MS'; font-size: small" 
                                                    width="95%">
                                                    <tr>
                                                        <td align="left" width="80">
                                                            Carrera:</td>
                                                        <td style="text-align: left">
                                                            <asp:TextBox ID="txt_carrera" runat="server" Width="400px"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                </table>
                                                <table align="center" style="font-family: 'Trebuchet MS'; font-size: small" 
                                                    width="95%">
                                                    <tr>
                                                        <td align="left" width="230">
                                                            Promedio de Notas igual o mayor que:</td>
                                                        <td style="text-align: left">
                                                            <asp:TextBox ID="txt_promedio_notas" runat="server" Width="40px"></asp:TextBox>
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
                        <table align="center" class="style27">
                            <tr>
                                <td style="text-align: right" width="270px">
                                    <asp:ImageButton ID="img_generar" runat="server" 
                                        ImageUrl="~/images/controles/procesar.png" />
                                </td>
                                <td width="150px">
                                    &nbsp;</td>
                                <td style="text-align: left">
                                    <asp:ImageButton ID="ImageButton4" runat="server" 
                                        ImageUrl="~/images/controles/cancel.png" PostBackUrl="~/home.aspx" />
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                        <br />
                        <br />
                        <table class="style3">
                            <tr>
                                <td style="font-weight: bold; font-size: x-small;" width="110px">
                                    Servidor de Reportes:</td>
                                <td style="text-align: left">
                                    <asp:Label ID="lb_server" runat="server"></asp:Label>
                                </td>
                            </tr>
                        </table>
                        <br />
                        <table align="center" class="style3">
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    <asp:SqlDataSource ID="funcionarios_con" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
                                        SelectCommand="SELECT apellidos + ' , ' + nombres AS funcionario FROM funcionarios WHERE (cod_funcionario LIKE @campo)">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="hf_cod_funcionario" Name="campo" 
                                                PropertyName="Value" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </td>
                                <td>
                                    <asp:HiddenField ID="hf_cod_funcionario" runat="server" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

