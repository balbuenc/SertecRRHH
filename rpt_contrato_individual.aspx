<%@ Page Title="" Language="VB" MasterPageFile="~/menu_master.master" AutoEventWireup="false" CodeFile="rpt_contrato_individual.aspx.vb" Inherits="rpt_contrato_individual" %>

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
        .style25
        {
            width: 32px;
        }
        .style26
        {
            width: 624px;
        }
        .style27
        {
            width: 80%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <table class="style3">
                <tr>
                    <td style="text-align: center">
                        <table align="center" class="style3">
                            <tr>
                                <td style="font-family: 'Trebuchet MS'; font-size: large; font-weight: bolder">
                                    &nbsp;</td>
                                <td style="text-align: right">
                                    <asp:ImageButton ID="ImageButton2" runat="server" 
                                        ImageUrl="~/images/controles/salir32.png" PostBackUrl="~/home.aspx" />
                                </td>
                            </tr>
                        </table>
                        <table align="center" class="style5">
                            <tr>
                                <td class="style25" 
                                    style="font-family: 'Trebuchet MS'; font-size: large; font-weight: bolder" 
                                    valign="top">
                                    &nbsp;</td>
                                <td class="style26" 
                                    style="font-family: 'Trebuchet MS'; font-size: large; font-weight: bolder" 
                                    valign="top">
                                    Contrato Individual de Trabajo</td>
                                <td rowspan="5" 
                                    style="font-family: 'Trebuchet MS'; font-size: large; font-weight: bolder" 
                                    valign="top">
                                    <asp:ImageButton ID="img_buscador" runat="server" 
                                        ImageUrl="~/images/controles/find.png" 
                                        onclientclick="var wBusqueda = window.open('busca_funcionarios_contrato_individual.aspx','wBusqeuda','width=500,height=500, left = 262, top = 134');return false" />
                                </td>
                            </tr>
                            <tr>
                                <td class="style25" valign="top">
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
                                <td class="style25" valign="top">
                                    <br />
                                </td>
                                <td valign="top">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style25" valign="top">
                                    &nbsp;</td>
                                <td valign="top">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style25" valign="top">
                                    &nbsp;</td>
                                <td valign="top">
                                    <table align="center" width="70%">
                                        <tr>
                                            <td style="border: thin dashed #000000;" width="52%">
                                                <br />
                                                <table align="center" style="font-family: 'Trebuchet MS'; font-size: small" 
                                                    width="95%">
                                                    <tr>
                                                        <td style="text-align: left" width="100">
                                                            Días de Prueba:</td>
                                                        <td style="text-align: left">
                                                            <asp:TextBox ID="txt_dias_prueba" runat="server" Width="50px"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                </table>
                                                <br />
                                                <table align="center" style="font-family: 'Trebuchet MS'; font-size: small" 
                                                    width="95%">
                                                    <tr>
                                                        <td width="260">
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
                                                        <td align="left" width="170">
                                                            Periodo de Trabajo desde:</td>
                                                        <td style="text-align: left" width="50">
                                                            <asp:TextBox ID="txt_hora_entrada" runat="server" Width="50px"></asp:TextBox>
                                                        </td>
                                                        <td width="20.">
                                                            a</td>
                                                        <td style="text-align: left" width="50">
                                                            <asp:TextBox ID="txt_hora_salida" runat="server" Width="50px"></asp:TextBox>
                                                        </td>
                                                        <td style="text-align: left">
                                                            Horas.</td>
                                                    </tr>
                                                </table>
                                                <table align="center" style="font-family: 'Trebuchet MS'; font-size: small" 
                                                    width="95%">
                                                    <tr>
                                                        <td align="left" width="170">
                                                            Periodo de Descanso desde:</td>
                                                        <td style="text-align: left" width="50">
                                                            <asp:TextBox ID="txt_hora_inicio" runat="server" Width="50px"></asp:TextBox>
                                                        </td>
                                                        <td width="20.">
                                                            a</td>
                                                        <td style="text-align: left" width="50">
                                                            <asp:TextBox ID="txt_hora_fin" runat="server" Width="50px"></asp:TextBox>
                                                        </td>
                                                        <td style="text-align: left">
                                                            Horas.</td>
                                                    </tr>
                                                </table>
                                                <br />
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
                                        ImageUrl="~/images/controles/cancel.png" />
                                </td>
                                <td>
                                    &nbsp;</td>
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
                        <table align="center">
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

