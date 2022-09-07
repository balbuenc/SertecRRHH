<%@ Page Title="" Language="VB" MasterPageFile="~/menu_master.master" AutoEventWireup="false" CodeFile="rpt_certificado_comisiones.aspx.vb" Inherits="certificado_comisiones" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
        }
        .style19
        {
            width: 515px;
        }
        .style20
        {
            height: 32px;
        }
        .style21
        {
            width: 64%;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <table align="center" class="style3">
                <tr>
                    <td style="text-align: center">
                        <table class="style3">
                            <tr>
                                <td style="text-align: right">
                                    <asp:ImageButton ID="img_salir" runat="server" 
                                        ImageUrl="~/images/controles/salir32.png" PostBackUrl="~/home.aspx" />
                                </td>
                            </tr>
                        </table>
                        <table align="center" style="width: 590px; height: 121px;" width="64%">
                            <tr>
                                <td align="right" class="style19" 
                                    style="font-family: 'Trebuchet MS'; font-size: large; font-weight: bolder; text-align: center;" 
                                    width="525">
                                    Certificado de Comisiones</td>
                                <td rowspan="5" style="text-align: left">
                                    <asp:ImageButton ID="ImageButton1" runat="server" 
                                        ImageUrl="~/images/controles/find.png" 
                                        onclientclick="var wBusqueda = window.open('busca_funcionarios_certificado_comisiones.aspx','wBusqeuda','width=500,height=500, left = 262, top = 134');return false" />
                                </td>
                            </tr>
                            <tr>
                                <td align="right" style="text-align: center" width="525">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td align="right" height="30" 
                                    style="text-align: center; font-family: 'Trebuchet MS';">
                                    <asp:FormView ID="form_funcionarios" runat="server" 
                                        DataSourceID="funcionarios_con" Width="100%">
                                        <EditItemTemplate>
                                            funcionarios:
                                            <asp:TextBox ID="funcionariosTextBox" runat="server" 
                                                Text='<%# Bind("funcionarios") %>' />
                                            <br />
                                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                                                CommandName="Update" Text="Update" />
                                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                                                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            funcionarios:
                                            <asp:TextBox ID="funcionariosTextBox" runat="server" 
                                                Text='<%# Bind("funcionarios") %>' />
                                            <br />
                                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                                                CommandName="Insert" Text="Insert" />
                                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                                                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="funcionariosLabel" runat="server" Font-Size="X-Large" 
                                                ForeColor="#0066FF" Text='<%# Bind("funcionarios") %>' Width="100%" />
                                            <br />
                                        </ItemTemplate>
                                    </asp:FormView>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" class="style20" style="font-family: 'Trebuchet MS'" 
                                    valign="top">
                                    <asp:Label ID="lb_mensaje" runat="server" ForeColor="#FF3300" 
                                        style="text-align: center" Width="100%"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" 
                                    style="font-family: 'Trebuchet MS'; font-size: small; text-align: center;" 
                                    valign="baseline">
                                    &nbsp;</td>
                            </tr>
                        </table>
                        <br />
                        <br />
                        <table align="center" class="style21" 
                            style="font-family: 'Trebuchet MS'; font-size: small">
                            <tr>
                                <td style="text-align: right" width="340">
                                    Meses de Comisiones:</td>
                                <td style="text-align: left">
                                    <asp:TextBox ID="txt_meses" runat="server" Width="50px"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                        <br />
                        <br />
                        <table width="61%">
                            <tr>
                                <td width="200">
                                    <asp:ImageButton ID="img_generar" runat="server" Enabled="False" 
                                        ImageUrl="~/images/controles/procesar.png" ToolTip="Generar Informe" />
                                </td>
                                <td width="60">
                                    &nbsp;</td>
                                <td>
                                    <asp:ImageButton ID="img_cancelar" runat="server" 
                                        ImageUrl="~/images/controles/cancel.png" ToolTip="Cancelar" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                        <br />
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
                        <table align="center" class="style3">
                            <tr>
                                <td>
                                    <asp:SqlDataSource ID="funcionarios_con" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
                                        SelectCommand="SELECT apellidos + ' , ' + nombres AS funcionarios FROM funcionarios WHERE (cod_funcionario LIKE @campo)">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="hf_cod_funcionario" Name="campo" 
                                                PropertyName="Value" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </td>
                                <td>
                                    <asp:HiddenField ID="hf_cod_funcionario" runat="server" />
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

