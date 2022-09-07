<%@ Page Title="" Language="VB" MasterPageFile="~/menu_master.master" AutoEventWireup="false" CodeFile="man_funcionarios_tab_update.aspx.vb" Inherits="man_funcionarios" %>

<%@ Register assembly="Infragistics35.WebUI.UltraWebTab.v8.3, Version=8.3.20083.1009, Culture=neutral, PublicKeyToken=7dd5c3163f2cd0cb" namespace="Infragistics.WebUI.UltraWebTab" tagprefix="igtab" %>

<%@ Register assembly="Infragistics35.WebUI.WebCombo.v8.3, Version=8.3.20083.1009, Culture=neutral, PublicKeyToken=7dd5c3163f2cd0cb" namespace="Infragistics.WebUI.WebCombo" tagprefix="igcmbo" %>
<%@ Register assembly="Infragistics35.WebUI.UltraWebGrid.v8.3, Version=8.3.20083.1009, Culture=neutral, PublicKeyToken=7dd5c3163f2cd0cb" namespace="Infragistics.WebUI.UltraWebGrid" tagprefix="igtbl" %>

<%@ Register assembly="Infragistics35.WebUI.WebSpellChecker.v8.3, Version=8.3.20083.1009, Culture=neutral, PublicKeyToken=7dd5c3163f2cd0cb" namespace="Infragistics.WebUI.WebSpellChecker" tagprefix="ig_spell" %>
<%@ Register assembly="Infragistics35.WebUI.WebDataInput.v8.3, Version=8.3.20083.1009, Culture=neutral, PublicKeyToken=7dd5c3163f2cd0cb" namespace="Infragistics.WebUI.WebDataInput" tagprefix="igtxt" %>
<%@ Register assembly="Infragistics35.WebUI.WebDateChooser.v8.3, Version=8.3.20083.1009, Culture=neutral, PublicKeyToken=7dd5c3163f2cd0cb" namespace="Infragistics.WebUI.WebSchedule" tagprefix="igsch" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .etiquetas
        {
            font-family: "Trebuchet MS";
            font-size: small;
            font-weight: normal;
        }
        .ancho11
        {
            width: 81px;
            text-align: right;
        }
        .ancho14
        {
            width: 150px;
            text-align: right;
        }
        .ancho13
        {
            border: 1px dotted #808080;
            width: 250px;
            text-align: left;
        }
        .ancho12
        {
            border: 1px dotted #808080;
            width: 250px;
            text-align: left;
        }
        .ancho_fondo
        {
            border: 1px solid #808080;
            background-color: #F9F9FF;
            height: 360px;
            width: 795px;
            vertical-align: top;
            text-align: left;
        }
        .ancho_fondo_seco
        {
            border: 1px solid #808080;
        }
        .ancho_fondo_izq
        {
            background-color: #F9F9FF;
            height: 350px;
            width: 325px;
            vertical-align: top;
            text-align: left;
        }
        .ancho_fondo_dere
        {
            background-color: #F9F9FF;
            height: 350px;
            width: 325px;
            vertical-align: top;
            text-align: left;
        }
        .style3
        {
            width: 100%;
        }
        .style4
        {
            width: 3px;
        }
        .style5
        {
            text-align: right;
        }
        .style7
        {
            width: 3px;
            height: 25px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <table width="100%">
                <tr>
                    <td align="center" width="100%" 
                        style="font-family: 'Trebuchet MS'; font-size: large">
                        Funcionarios</td>
                    <td align="right" valign="top" width="100%">
                        <asp:ImageButton ID="ImageButton4" runat="server" 
                            ImageUrl="~/images/controles/salir32.png" PostBackUrl="~/home.aspx" 
                            ToolTip="Volver al Menu Principal" />
                    </td>
                </tr>
                <tr>
                    <td align="center" width="100%">
                        <asp:Label ID="lb_mensaje" runat="server" CssClass="label" ForeColor="#FF3300"></asp:Label>
                    </td>
                    <td align="right" valign="top" width="100%">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td align="center" width="100%">
                        <asp:FormView ID="FormView1" runat="server" 
                    DataKeyNames="cod_funcionario" DataSourceID="funcionarios_con" 
                            EmptyDataText="No Existen Funcionarios registrados">
                            <EditItemTemplate>
                                <table class="style3">
                                    <tr>
                                        <td align="left">
                                            <asp:Menu ID="menu_editar" runat="server" Orientation="Horizontal" 
                                                onmenuitemclick="Menu_editar_MenuItemClick">
                                                <Items>
                                                    <asp:MenuItem ImageUrl="~/images/menu/Empresa_1.gif" Text=" " Value=" 0">
                                                    </asp:MenuItem>
                                                    <asp:MenuItem ImageUrl="~/images/menu/Personales_apagado_1.gif" Text=" " 
                                                        Value="1"></asp:MenuItem>
                                                    <asp:MenuItem ImageUrl="~/images/menu/Familiares_apagado_1.gif" Text=" " 
                                                        Value="2"></asp:MenuItem>
                                                    <asp:MenuItem ImageUrl="~/images/menu/M.J.T._apagado_1.gif" Text=" " Value="3">
                                                    </asp:MenuItem>
                                                    <asp:MenuItem ImageUrl="~/images/menu/Capacitaciones_apagado_1.gif" Text=" " 
                                                        Value="4"></asp:MenuItem>
                                                    <asp:MenuItem ImageUrl="~/images/menu/Gourmet_apagado_1.gif" Text=" " Value="5">
                                                    </asp:MenuItem>
                                                </Items>
                                            </asp:Menu>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:MultiView ID="mv_editar" runat="server" ActiveViewIndex="0">
                                                <table class="style3">
                                                    <tr>
                                                        <td>
                                                            <asp:View ID="v_empresa_editar" runat="server">
                                                                <table class="style3">
                                                                    <tr>
                                                                        <td class="ancho_fondo">
                                                                            <table class="style3">
                                                                                <tr>
                                                                                    <td valign="top">
                                                                                        <table class="etiquetas">
                                                                                            <tr>
                                                                                                <td class="style5">
                                                                                                    Código:</td>
                                                                                                <td class="style4" width="90px">
                                                                                                    &nbsp;</td>
                                                                                                <td class="style7">
                                                                                                    <asp:Label ID="cod_funcionarioLabel1" runat="server" 
                                                                                                        Text='<%# Eval("cod_funcionario") %>' />
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="style5" width="90px">
                                                                                                    Empresa:</td>
                                                                                                <td class="style4" width="90px">
                                                                                                    &nbsp;</td>
                                                                                                <td class="style7" width="200px">
                                                                                                    <asp:Label ID="lb_empresa_edit" runat="server" Text='<%# Bind("empresa") %>'></asp:Label>
                                                                                                    <asp:HiddenField ID="hf_empresa_edit" runat="server" 
                                                                                                        Value='<%# Bind("cod_empresa") %>' />
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="style5" width="90px">
                                                                                                    Gerencia:</td>
                                                                                                <td class="style4" width="90px">
                                                                                                    &nbsp;</td>
                                                                                                <td class="style7" width="200px">
                                                                                                    <asp:Label ID="lb_gerencia_edit" runat="server" Text='<%# Bind("gerencia") %>'></asp:Label>
                                                                                                    <asp:HiddenField ID="hf_gerencia_edit" runat="server" 
                                                                                                        Value='<%# Bind("cod_gerencia") %>' />
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="style5" width="90px">
                                                                                                    Area:</td>
                                                                                                <td class="style4" width="90px">
                                                                                                    &nbsp;</td>
                                                                                                <td class="style7" width="200px">
                                                                                                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("area") %>'></asp:Label>
                                                                                                    <asp:HiddenField ID="hf_area_editar" runat="server" 
                                                                                                        Value='<%# Bind("cod_area") %>' />
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="style5" width="90px">
                                                                                                    Ubicación:</td>
                                                                                                <td class="style4" width="90px">
                                                                                                    &nbsp;</td>
                                                                                                <td class="style7" width="200px">
                                                                                                    <asp:DropDownList ID="ddl_ubicacion_edit" runat="server" DataSourceID="regiones_con" 
                                                                                                        DataTextField="descripcion" DataValueField="cod_region" 
                                                                                                        SelectedValue='<%# Bind("cod_region") %>' Width="225px">
                                                                                                    </asp:DropDownList>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="style5" width="90px">
                                                                                                    Legajo:</td>
                                                                                                <td class="style4" width="90px">
                                                                                                    &nbsp;</td>
                                                                                                <td class="style7" width="200px">
                                                                                                    <asp:TextBox ID="codigoTextBox0" runat="server" Text='<%# Bind("codigo") %>' 
                                                                                                        Width="80px" />
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="style5" width="90px">
                                                                                                    Apellidos:</td>
                                                                                                <td class="style4" width="90px">
                                                                                                    &nbsp;</td>
                                                                                                <td class="style7" width="200px">
                                                                                                    <asp:TextBox ID="apellidosTextBox" runat="server" 
                                                                                                        Text='<%# Bind("apellidos") %>' Width="220px" />
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="style5" width="90px">
                                                                                                    Nombres:</td>
                                                                                                <td class="style4" width="90px">
                                                                                                    &nbsp;</td>
                                                                                                <td class="style7" width="200px">
                                                                                                    <asp:TextBox ID="nombresTextBox" runat="server" Text='<%# Bind("nombres") %>' 
                                                                                                        Width="220px" />
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="style5" width="90px">
                                                                                                    Nivel Salarial:</td>
                                                                                                <td class="style4" width="90px">
                                                                                                    &nbsp;</td>
                                                                                                <td class="style7" width="200px">
                                                                                                    &nbsp;</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="style5" width="90px">
                                                                                                    Salario:</td>
                                                                                                <td class="style4" width="90px">
                                                                                                    &nbsp;</td>
                                                                                                <td class="style7" width="200px">
                                                                                                    <asp:HiddenField ID="hf_salario_edit" runat="server" 
                                                                                                                Value='<%# Bind("salario") %>' />
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="style5" width="90px">
                                                                                                    Moneda:</td>
                                                                                                <td class="style4" width="90px">
                                                                                                    &nbsp;</td>
                                                                                                <td class="style7" width="200px">
                                                                                                    &nbsp;</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="style5" width="90px">
                                                                                                    Cargo:</td>
                                                                                                <td class="style4" width="90px">
                                                                                                    &nbsp;</td>
                                                                                                <td class="style7" width="200px">
                                                                                                    <asp:Label ID="lb_cargo_edit" runat="server" Text='<%# Eval("cargo") %>'></asp:Label>
                                                                                                    <asp:HiddenField ID="hf_cargo_edit" runat="server" 
                                                                                                                Value='<%# Bind("cod_cargo") %>' />
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="style5" width="90px">
                                                                                                    Profesión:</td>
                                                                                                <td class="style4" width="90px">
                                                                                                    &nbsp;</td>
                                                                                                <td class="style7" width="200px">
                                                                                                    <asp:TextBox ID="profesionTextBox" runat="server" 
                                                                                                        Text='<%# Bind("profesion") %>' Width="220px" />
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="style5" width="90px">
                                                                                                    Hs. X Día:</td>
                                                                                                <td class="style4" width="90px">
                                                                                                    &nbsp;</td>
                                                                                                <td width="200px">
                                                                                                    <table align="center" width="100%">
                                                                                                        <tr>
                                                                                                            <td width="30">
                                                                                                                <asp:TextBox ID="horas_diaTexBox" runat="server" 
                                                                                                                    Text='<%# Bind("horas_dia") %>' Width="30px"></asp:TextBox>
                                                                                                                &nbsp;</td>
                                                                                                            <td>
                                                                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                                                                                                    ControlToValidate="horas_diaTexBox" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                    </table>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="style5" width="90px">
                                                                                                    TRab Sab</td>
                                                                                                <td class="style4" width="90px">
                                                                                                    &nbsp;</td>
                                                                                                <td class="style7" width="200px">
                                                                                                    <table align="left" class="style3">
                                                                                                        <tr>
                                                                                                            <td width="50">
                                                                                                                <asp:RadioButtonList ID="rb_trabaja" runat="server" 
                                                                                                                    RepeatDirection="Horizontal">
                                                                                                                    <asp:ListItem Value="1">SI</asp:ListItem>
                                                                                                                    <asp:ListItem Value="0">NO</asp:ListItem>
                                                                                                                </asp:RadioButtonList>
                                                                                                            </td>
                                                                                                            <td>
                                                                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                                                                                    ErrorMessage="*" ControlToValidate="rb_trabaja"></asp:RequiredFieldValidator>
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                    </table>
                                                                                                </td>
                                                                                            </tr>
                                                                                        </table>
                                                                                    </td>
                                                                                    <td valign="top">
                                                                                        <table class="etiquetas">
                                                                                            <tr>
                                                                                                <td class="style5" width="150px">
                                                                                                    Tipo de Remuneración:</td>
                                                                                                <td class="style4" width="145px">
                                                                                                    &nbsp;</td>
                                                                                                <td class="style7">
                                                                                                    <asp:DropDownList ID="ddl_t_remu_edit" runat="server" 
                                                                                                        SelectedValue='<%# Bind("tipo_remuneracion") %>' Width="155px">
                                                                                                        <asp:ListItem Value="M">Mensual</asp:ListItem>
                                                                                                        <asp:ListItem Value="J">Jornalero</asp:ListItem>
                                                                                                    </asp:DropDownList>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="style5" width="145px">
                                                                                                    Nivel Jerárquico:</td>
                                                                                                <td class="style4" width="145px">
                                                                                                    &nbsp;</td>
                                                                                                <td class="style7">
                                                                                                    <asp:DropDownList ID="ddl_nivel_jerar_edit" runat="server" 
                                                                                                        DataSourceID="niveles_jerarquicos_con" DataTextField="descripcion" 
                                                                                                        DataValueField="cod_nivel_jerarquico" 
                                                                                                        SelectedValue='<%# Bind("cod_nivel_jerarquico") %>' 
                                                                                            Width="155px">
                                                                                                    </asp:DropDownList>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="style5" width="145px">
                                                                                                    Tipo de Contrato:</td>
                                                                                                <td class="style4" width="145px">
                                                                                                    &nbsp;</td>
                                                                                                <td class="style7">
                                                                                                    <asp:DropDownList ID="ddl_t_contrato_edit" runat="server" 
                                                                                                        DataSourceID="contratos_con" DataTextField="descripcion" 
                                                                                                        DataValueField="cod_contrato" SelectedValue='<%# Bind("cod_contrato") %>' 
                                                                                                        Width="155px">
                                                                                                    </asp:DropDownList>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="style5" width="145px">
                                                                                                    Jefe:</td>
                                                                                                <td class="style4" width="145px">
                                                                                                    &nbsp;</td>
                                                                                                <td class="style7">
                                                                                                    <asp:DropDownList ID="ddl_jefes_edit" runat="server" 
                                                                                            DataSourceID="jefes_con" DataTextField="jefe" DataValueField="cod_funcionario" 
                                                                                            SelectedValue='<%# Bind("cod_jefe") %>' Width="275px">
                                                                                                    </asp:DropDownList>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="style5" width="145px">
                                                                                                    Grado Hay:</td>
                                                                                                <td class="style4" width="145px">
                                                                                                    &nbsp;</td>
                                                                                                <td class="style7">
                                                                                                    <asp:TextBox ID="grado_hayTextBox" runat="server" 
                                                                                                        Text='<%# Bind("grado_hay") %>' Width="50px" />
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="style5" width="145px">
                                                                                                    Confidencial:</td>
                                                                                                <td class="style4" width="145px">
                                                                                                    &nbsp;</td>
                                                                                                <td class="style7">
                                                                                                    <asp:RadioButtonList ID="rb_confidencial_edit" runat="server" 
                                                                                                        RepeatDirection="Horizontal" SelectedValue='<%# Bind("confidencial") %>' 
                                                                                                        Width="120px">
                                                                                                        <asp:ListItem Value="1">SI</asp:ListItem>
                                                                                                        <asp:ListItem Value="0">NO</asp:ListItem>
                                                                                                    </asp:RadioButtonList>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="style5" width="145px">
                                                                                                    Banco:</td>
                                                                                                <td class="style4" width="145px">
                                                                                                    &nbsp;</td>
                                                                                                <td class="style7">
                                                                                                    &nbsp;</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="style5" width="145px">
                                                                                                    Cta. Banco:</td>
                                                                                                <td class="style4" width="145px">
                                                                                                    &nbsp;</td>
                                                                                                <td class="style7">
                                                                                                    &nbsp;</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="style5" width="145px">
                                                                                                    Cta. Banco Secundaria:</td>
                                                                                                <td class="style4" width="145px">
                                                                                                    &nbsp;</td>
                                                                                                <td class="style7">
                                                                                                    &nbsp;</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="style5" width="145px">
                                                                                                    Fecha de Ingreso:</td>
                                                                                                <td class="style4" width="145px">
                                                                                                    &nbsp;</td>
                                                                                                <td class="style7">
                                                                                                    <asp:TextBox ID="fecha_ingresoTextBox" runat="server" 
                                                                                                        Text='<%# Bind("fecha_ingreso", "{0:d}") %>' Width="80px" 
                                                                                            MaxLength="10" />
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="style5" width="145px">
                                                                                                    Fecha de Egreso:</td>
                                                                                                <td class="style4" width="145px">
                                                                                                    &nbsp;</td>
                                                                                                <td class="style7">
                                                                                                    <asp:TextBox ID="fecha_egresoTextBox" runat="server" 
                                                                                                        Text='<%# Bind("fecha_egreso", "{0:d}") %>' Width="80px" 
                                                                                                        MaxLength="10" />
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="style5" width="145px">
                                                                                                    Fecha de Reingreso:</td>
                                                                                                <td class="style4" width="145px">
                                                                                                    &nbsp;</td>
                                                                                                <td class="style7">
                                                                                                    <asp:TextBox ID="fecha_reingresoTextBox" runat="server" MaxLength="10" 
                                                                                                        Text='<%# Bind("fecha_reingreso", "{0:d}") %>' Width="80px" />
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="style5" width="145px">
                                                                                                    Status:</td>
                                                                                                <td class="style4" width="145px">
                                                                                                    &nbsp;</td>
                                                                                                <td class="style7">
                                                                                                    <asp:DropDownList ID="ddl_status_edit" runat="server" 
                                                                                                        SelectedValue='<%# Bind("estado") %>'>
                                                                                                        <asp:ListItem Value="A">Activo</asp:ListItem>
                                                                                                        <asp:ListItem Value="I">Inactivo</asp:ListItem>
                                                                                                        <asp:ListItem Value="E">Egreso</asp:ListItem>
                                                                                                    </asp:DropDownList>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="style5" width="145px">
                                                                                                    &nbsp;</td>
                                                                                                <td class="style4" width="145px">
                                                                                                    &nbsp;</td>
                                                                                                <td class="style7">
                                                                                                    &nbsp;</td>
                                                                                            </tr>
                                                                                        </table>
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </asp:View>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:View ID="v_personales_editar" runat="server">
                                                                <table class="style3">
                                                                    <tr>
                                                                        <td class="ancho_fondo">
                                                                            <table class="etiquetas">
                                                                                <tr>
                                                                                    <td class="style5">
                                                                                        Sexo:</td>
                                                                                    <td class="style4" width="135px">
                                                                                        &nbsp;</td>
                                                                                    <td width="250px">
                                                                                        <asp:DropDownList ID="ddl_sexo_editar" runat="server" 
                                                                                            SelectedValue='<%# Bind("sexo") %>' Width="155px">
                                                                                            <asp:ListItem Value="M">Masculino</asp:ListItem>
                                                                                            <asp:ListItem Value="F">Femenino</asp:ListItem>
                                                                                        </asp:DropDownList>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="style5">
                                                                                        Fecha de Nacimiento:</td>
                                                                                    <td class="style4">
                                                                                        &nbsp;</td>
                                                                                    <td>
                                                                                        <asp:TextBox ID="fecha_nacimientoTextBox" runat="server" 
                                                                                            Text='<%# Bind("fecha_nacimiento", "{0:d}") %>' Width="80px" 
                                                                                            MaxLength="10" />
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="style5">
                                                                                        Cédula de Identidad:</td>
                                                                                    <td class="style4">
                                                                                        &nbsp;</td>
                                                                                    <td>
                                                                                        <asp:TextBox ID="documentoTextBox" runat="server" 
                                                                                            Text='<%# Bind("documento") %>' Width="150px" />
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="style5">
                                                                                        Nacionalidad:</td>
                                                                                    <td class="style4">
                                                                                        &nbsp;</td>
                                                                                    <td>
                                                                                        <asp:DropDownList ID="ddl_nacionalidad_editar" runat="server" 
                                                                                            DataSourceID="nacionalidades_con" DataTextField="descripcion" 
                                                                                            DataValueField="cod_nacionalidad" 
                                                                                            SelectedValue='<%# Bind("cod_nacionalidad") %>' Width="155px">
                                                                                        </asp:DropDownList>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="style5">
                                                                                        Departamento:</td>
                                                                                    <td class="style4">
                                                                                        &nbsp;</td>
                                                                                    <td>
                                                                                        <asp:DropDownList ID="ddl_departamento_editar" runat="server" 
                                                                                            DataSourceID="departamentos_con" DataTextField="descripcion" 
                                                                                            DataValueField="cod_departamento" Width="155px" 
                                                                                            SelectedValue='<%# Bind("cod_departamento") %>'>
                                                                                        </asp:DropDownList>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="style5">
                                                                                        Ciudad:</td>
                                                                                    <td class="style4">
                                                                                        &nbsp;</td>
                                                                                    <td>
                                                                                        <asp:TextBox ID="ciudadTextBox" runat="server" Text='<%# Bind("ciudad") %>' 
                                                                                            Width="150px" />
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="style5">
                                                                                        Código Postal:</td>
                                                                                    <td class="style4">
                                                                                        &nbsp;</td>
                                                                                    <td>
                                                                                        <asp:TextBox ID="postalTextBox" runat="server" Text='<%# Bind("postal") %>' 
                                                                                            Width="150px" />
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="style5">
                                                                                        Dirección:</td>
                                                                                    <td class="style4">
                                                                                        &nbsp;</td>
                                                                                    <td>
                                                                                        <asp:TextBox ID="direccionTextBox" runat="server" 
                                                                                            Text='<%# Bind("direccion") %>' Width="400px" />
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="style5">
                                                                                        Teléfono:</td>
                                                                                    <td class="style4">
                                                                                        &nbsp;</td>
                                                                                    <td>
                                                                                        <asp:TextBox ID="telefonoTextBox" runat="server" Text='<%# Bind("telefono") %>' 
                                                                                            Width="200px" />
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="style5">
                                                                                        Celular:</td>
                                                                                    <td class="style4">
                                                                                        &nbsp;</td>
                                                                                    <td>
                                                                                        <asp:TextBox ID="celularTextBox" runat="server" Text='<%# Bind("celular") %>' 
                                                                                            Width="200px" />
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="style5">
                                                                                        Email:</td>
                                                                                    <td class="style4">
                                                                                        &nbsp;</td>
                                                                                    <td>
                                                                                        <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' 
                                                                                            Width="200px" />
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="style5">
                                                                                        Trabajos Anteriores:</td>
                                                                                    <td class="style4">
                                                                                        &nbsp;</td>
                                                                                    <td>
                                                                                        <asp:TextBox ID="trabajos_anterioresTextBox" runat="server" 
                                                                                            Text='<%# Bind("trabajos_anteriores") %>' Width="400px" />
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </asp:View>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:View ID="v_familiares_editar" runat="server">
                                                                <table class="style3">
                                                                    <tr>
                                                                        <td class="ancho_fondo">
                                                                            <table class="etiquetas">
                                                                                <tr>
                                                                                    <td class="style5">
                                                                                        Estado Civil:</td>
                                                                                    <td class="style4" width="195px">
                                                                                        &nbsp;</td>
                                                                                    <td width="250px">
                                                                                        <asp:DropDownList ID="ddl_e_civil_edit" runat="server" 
                                                                                            DataSourceID="estados_civiles_con" DataTextField="descripcion" 
                                                                                            DataValueField="cod_estado_civil" SelectedValue='<%# Bind("estado_civil") %>' 
                                                                                            Width="155px">
                                                                                        </asp:DropDownList>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="style5">
                                                                                        Nombres Conyuge:</td>
                                                                                    <td class="style4">
                                                                                        &nbsp;</td>
                                                                                    <td>
                                                                                        <asp:TextBox ID="nombres_conyugueTextBox" runat="server" 
                                                                                            Text='<%# Bind("nombres_conyugue") %>' Width="150px" />
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="style5">
                                                                                        Apellidos Conyuge:</td>
                                                                                    <td class="style4">
                                                                                        &nbsp;</td>
                                                                                    <td>
                                                                                        <asp:TextBox ID="apellidos_conyugueTextBox" runat="server" 
                                                                                            Text='<%# Bind("apellidos_conyugue") %>' Width="150px" />
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="style5">
                                                                                        Fecha de Nacimiento Conyuge:</td>
                                                                                    <td class="style4">
                                                                                        &nbsp;</td>
                                                                                    <td>
                                                                                        <asp:TextBox ID="fecha_nacimiento_conyugueTextBox" runat="server" 
                                                                                            Text='<%# Bind("fecha_nacimiento_conyugue") %>' Width="80px" />
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </asp:View>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:View ID="v_mjt_editar" runat="server">
                                                                <table class="style3">
                                                                    <tr>
                                                                        <td class="ancho_fondo">
                                                                            <table class="etiquetas">
                                                                                <tr>
                                                                                    <td class="style5">
                                                                                        Discriminación de Personas:</td>
                                                                                    <td class="style4" width="170px">
                                                                                        &nbsp;</td>
                                                                                    <td width="250px">
                                                                                        <asp:DropDownList ID="ddl_mjt_edit" runat="server" 
                                                                                            DataSourceID="categorias_mjt_con" DataTextField="descripcion" 
                                                                                            DataValueField="cod_categoria_mjt" 
                                                                                            SelectedValue='<%# Bind("cod_categoria_mjt") %>' Width="155px">
                                                                                        </asp:DropDownList>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="style5">
                                                                                        Valor Head:</td>
                                                                                    <td class="style4">
                                                                                        &nbsp;</td>
                                                                                    <td>
                                                                                        <asp:TextBox ID="valor_headTextBox" runat="server" 
                                                                                            Text='<%# Bind("valor_head") %>' Width="80px" />
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="style5">
                                                                                        FTE:</td>
                                                                                    <td class="style4">
                                                                                        &nbsp;</td>
                                                                                    <td>
                                                                                        <asp:TextBox ID="fteTextBox" runat="server" Text='<%# Bind("fte") %>' 
                                                                                            Width="80px" />
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </asp:View>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:View ID="v_capacitaciones_editar" runat="server">
                                                                <table class="style3">
                                                                    <tr>
                                                                        <td class="ancho_fondo">
                                                                            &nbsp;</td>
                                                                    </tr>
                                                                </table>
                                                            </asp:View>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:View ID="v_gourmet_editar" runat="server">
                                                                <table class="style3">
                                                                    <tr>
                                                                        <td class="ancho_fondo">
                                                                            <table class="etiquetas">
                                                                                <tr>
                                                                                    <td class="style5">
                                                                                        Ticket de Alimentación:</td>
                                                                                    <td class="style4" width="145px">
                                                                                        &nbsp;</td>
                                                                                    <td width="250px">
                                                                                        <asp:TextBox ID="ticket_alimentacionTextBox" runat="server" 
                                                                                            Text='<%# Bind("ticket_alimentacion") %>' Width="150px" />
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="style5">
                                                                                        Cuenta de Refrigerio:</td>
                                                                                    <td class="style4">
                                                                                        &nbsp;</td>
                                                                                    <td>
                                                                                        <asp:TextBox ID="cta_alimentacionTextBox" runat="server" 
                                                                                            Text='<%# Bind("cta_alimentacion") %>' Width="150px" />
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </asp:View>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </asp:MultiView>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <table class="style3">
                                                <tr>
                                                    <td align="right">
                                                        <asp:ImageButton ID="UpdateButton" runat="server" CausesValidation="True" 
                                                    CommandName="Update" ImageUrl="~/images/controles/guardar.png" 
                                                    Text="Update" ToolTip="Guardar cambios" onclick="UpdateButton_Click"/>
                                                    </td>
                                                    <td>
                                                        &nbsp;</td>
                                                    <td align="left">
                                                        <asp:ImageButton ID="UpdateCancelButton" runat="server" 
                                                    CausesValidation="False" CommandName="Cancel" 
                                                    ImageUrl="~/images/controles/cancel.png" Text="Cancel" 
                                                    ToolTip="Cancelar" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <table class="style3">
                                    <tr>
                                        <td align="left">
                                            <asp:Menu ID="menu_insertar" runat="server" Orientation="Horizontal" 
                                                onmenuitemclick="menu_insertar_MenuItemClick">
                                                <Items>
                                                    <asp:MenuItem ImageUrl="~/images/menu/Empresa_1.gif" Text=" " Value=" 0">
                                                    </asp:MenuItem>
                                                    <asp:MenuItem ImageUrl="~/images/menu/Personales_apagado_1.gif" Text=" " 
                                                        Value="1"></asp:MenuItem>
                                                    <asp:MenuItem ImageUrl="~/images/menu/Familiares_apagado_1.gif" Text=" " 
                                                        Value="2"></asp:MenuItem>
                                                    <asp:MenuItem ImageUrl="~/images/menu/M.J.T._apagado_1.gif" Text=" " Value=" 3">
                                                    </asp:MenuItem>
                                                    <asp:MenuItem ImageUrl="~/images/menu/Capacitaciones_apagado_1.gif" Text=" " 
                                                        Value=" 4"></asp:MenuItem>
                                                    <asp:MenuItem ImageUrl="~/images/menu/Gourmet_apagado_1.gif" Text=" " Value="5">
                                                    </asp:MenuItem>
                                                </Items>
                                            </asp:Menu>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:MultiView ID="mv_insertar" runat="server" ActiveViewIndex="0">
                                                <table class="style3">
                                                    <tr>
                                                        <td>
                                                            <asp:View ID="v_empresa_insertar" runat="server">
                                                                <table class="style3">
                                                                    <tr>
                                                                        <td class="ancho_fondo">
                                                                            <table class="style3">
                                                                                <tr>
                                                                                    <td valign="top">
                                                                                        <table class="etiquetas">
                                                                                            <tr>
                                                                                                <td class="style5">
                                                                                                    Empresa:</td>
                                                                                                <td class="style4" width="90px">
                                                                                                    &nbsp;</td>
                                                                                                <td class="style7" width="200px">
                                                                                                    <asp:Label ID="lb_empresa_descri_insert" runat="server"></asp:Label>
                                                                                                    <asp:HiddenField ID="hf_empresa_insert" runat="server" 
                                                                                                        Value='<%# Bind("cod_empresa") %>' />
                                                                                                </td>
                                                                                                <td width="5">
                                                                                                    &nbsp;</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="style5" width="90px">
                                                                                                    Gerencia:</td>
                                                                                                <td class="style4" width="90px">
                                                                                                    &nbsp;</td>
                                                                                                <td class="style7" width="200px">
                                                                                                    -</td>
                                                                                                <td width="5">
                                                                                                    &nbsp;</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="style5" width="90px">
                                                                                                    Area:</td>
                                                                                                <td class="style4" width="90px">
                                                                                                    &nbsp;</td>
                                                                                                <td class="style7" width="200px">
                                                                                                    -</td>
                                                                                                <td width="5">
                                                                                                    &nbsp;</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="style5" width="90px">
                                                                                                    Ubicación:</td>
                                                                                                <td class="style4" width="90px">
                                                                                                    &nbsp;</td>
                                                                                                <td class="style7" width="200px">
                                                                                                    <asp:DropDownList ID="ddl_ubicacion_insert" runat="server" 
                                                                                                        DataSourceID="regiones_con" DataTextField="descripcion" 
                                                                                                        DataValueField="cod_region" SelectedValue='<%# Bind("cod_region") %>' 
                                                                                                        Width="225px">
                                                                                                    </asp:DropDownList>
                                                                                                </td>
                                                                                                <td width="5">
                                                                                                    &nbsp;</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="style5" width="90px">
                                                                                                    Legajo:</td>
                                                                                                <td class="style4" width="90px">
                                                                                                    &nbsp;</td>
                                                                                                <td class="style7" width="200px">
                                                                                                    <table>
                                                                                                        <tr>
                                                                                                            <td>
                                                                                                                <asp:TextBox ID="codigoTextBox" runat="server" Text='<%# Bind("codigo") %>' 
                                                                                                                            Width="80px" />
                                                                                                            </td>
                                                                                                            <td>
                                                                                                                <asp:RequiredFieldValidator ID="rv_legajo_insert" runat="server" 
                                                                                                                            ControlToValidate="codigoTextBox" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                    </table>
                                                                                                </td>
                                                                                                <td width="5">
                                                                                                    &nbsp;</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="style5" width="90px">
                                                                                                    Apellidos:</td>
                                                                                                <td class="style4" width="90px">
                                                                                                    &nbsp;</td>
                                                                                                <td class="style7" width="200px">
                                                                                                    <asp:TextBox ID="apellidosTextBox_i" runat="server" 
                                                                                                        Text='<%# Bind("apellidos") %>' Width="220px" />
                                                                                                </td>
                                                                                                <td width="5">
                                                                                                    <asp:RequiredFieldValidator ID="rv_apellidos_insert" runat="server" 
                                                                                                                ControlToValidate="apellidosTextBox_i" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="style5" width="90px">
                                                                                                    Nombres:</td>
                                                                                                <td class="style4" width="90px">
                                                                                                    &nbsp;</td>
                                                                                                <td class="style7" width="200px">
                                                                                                    <asp:TextBox ID="nombresTextBox_i" runat="server" Text='<%# Bind("nombres") %>' 
                                                                                                        Width="220px" />
                                                                                                </td>
                                                                                                <td width="5">
                                                                                                    <asp:RequiredFieldValidator ID="rv_nombres_insert" runat="server" 
                                                                                                                ControlToValidate="nombresTextBox_i" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="style5" width="90px">
                                                                                                    Nivel Salarial:</td>
                                                                                                <td class="style4" width="90px">
                                                                                                    &nbsp;</td>
                                                                                                <td class="style7" width="200px">
                                                                                                    <asp:DropDownList ID="ddl_n_salarial_insert" runat="server" 
                                                                                                        DataSourceID="niveles_salariales_con" DataTextField="descripcion" 
                                                                                                        DataValueField="cod_nivel_salarial" 
                                                                                                        SelectedValue='<%# Bind("cod_nivel_salarial") %>' Width="225px">
                                                                                                    </asp:DropDownList>
                                                                                                </td>
                                                                                                <td width="5">
                                                                                                    &nbsp;</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="style5" width="90px">
                                                                                                    Salario:</td>
                                                                                                <td class="style4" width="90px">
                                                                                                    &nbsp;</td>
                                                                                                <td class="style7" width="200px">
                                                                                                    -</td>
                                                                                                <td width="5">
                                                                                                    &nbsp;</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="style5" width="90px">
                                                                                                    Moneda:</td>
                                                                                                <td class="style4" width="90px">
                                                                                                    &nbsp;</td>
                                                                                                <td class="style7" width="200px">
                                                                                                    <asp:DropDownList ID="ddl_moneda_insert" runat="server" DataSourceID="monedas_con" 
                                                                                                        DataTextField="descripcion" DataValueField="cod_moneda" 
                                                                                                        SelectedValue='<%# Bind("cod_moneda") %>' Width="225px">
                                                                                                    </asp:DropDownList>
                                                                                                </td>
                                                                                                <td width="5">
                                                                                                    &nbsp;</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="style5" width="90px">
                                                                                                    Cargo:</td>
                                                                                                <td class="style4" width="90px">
                                                                                                    &nbsp;</td>
                                                                                                <td class="style7" width="200px">
                                                                                                    -</td>
                                                                                                <td width="5">
                                                                                                    &nbsp;</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="style5" width="90px">
                                                                                                    Profesión:</td>
                                                                                                <td class="style4" width="90px">
                                                                                                    &nbsp;</td>
                                                                                                <td class="style7" width="200px">
                                                                                                    <asp:TextBox ID="profesionTextBox_i" runat="server" 
                                                                                                        Text='<%# Bind("profesion") %>' Width="220px" />
                                                                                                </td>
                                                                                                <td width="5">
                                                                                                    &nbsp;</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="style5" width="90px">
                                                                                                    Hs. X Día:</td>
                                                                                                <td class="style4" width="90px">
                                                                                                    &nbsp;</td>
                                                                                                <td class="style7" width="200px">
                                                                                                    <asp:TextBox ID="horas_diaTexbox" runat="server" 
                                                                                                        Text='<%# Bind("horas_dia") %>' Width="30px"></asp:TextBox>
                                                                                                </td>
                                                                                                <td width="5">
                                                                                                    &nbsp;</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="style5" width="90px">
                                                                                                    Trab Sab</td>
                                                                                                <td class="style4" width="90px">
                                                                                                    &nbsp;</td>
                                                                                                <td class="style7" width="200px">
                                                                                                    <table align="left" class="style3">
                                                                                                        <tr>
                                                                                                            <td width="50">
                                                                                                                <asp:RadioButtonList ID="rb_trabaja" runat="server" 
                                                                                                                    RepeatDirection="Horizontal" SelectedValue='<%# Bind("trabaja_sabado") %>'>
                                                                                                                    <asp:ListItem Value="1">SI</asp:ListItem>
                                                                                                                    <asp:ListItem Value="0">NO</asp:ListItem>
                                                                                                                </asp:RadioButtonList>
                                                                                                            </td>
                                                                                                            <td>
                                                                                                                <asp:RequiredFieldValidator ID="rv_trabaja_sab" runat="server" 
                                                                                                                    ControlToValidate="rb_trabaja" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                    </table>
                                                                                                </td>
                                                                                                <td width="5">
                                                                                                    &nbsp;</td>
                                                                                            </tr>
                                                                                        </table>
                                                                                    </td>
                                                                                    <td valign="top">
                                                                                        <table class="etiquetas">
                                                                                            <tr>
                                                                                                <td class="style5" width="150px">
                                                                                                    Tipo de Remuneración:</td>
                                                                                                <td class="style4" width="145px">
                                                                                                    &nbsp;</td>
                                                                                                <td class="style8">
                                                                                                    <asp:DropDownList ID="ddl_t_remu_insert" runat="server" 
                                                                                                        SelectedValue='<%# Bind("tipo_remuneracion") %>' Width="155px">
                                                                                                        <asp:ListItem Value="M">Mensual</asp:ListItem>
                                                                                                        <asp:ListItem Value="J">Jornalero</asp:ListItem>
                                                                                                    </asp:DropDownList>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="style5">
                                                                                                    Nivel Jerárquico:</td>
                                                                                                <td class="style4" width="145px">
                                                                                                    &nbsp;</td>
                                                                                                <td class="style8">
                                                                                                    <asp:DropDownList ID="ddl_n_jerarq_insert" runat="server" 
                                                                                                        DataSourceID="niveles_jerarquicos_con" DataTextField="descripcion" 
                                                                                                        DataValueField="cod_nivel_jerarquico" 
                                                                                                        SelectedValue='<%# Bind("cod_nivel_jerarquico") %>' Width="155px">
                                                                                                    </asp:DropDownList>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="style5">
                                                                                                    Tipo de Contrato:</td>
                                                                                                <td class="style4" width="145px">
                                                                                                    &nbsp;</td>
                                                                                                <td class="style8">
                                                                                                    <asp:DropDownList ID="ddl_t_contrato_insert" runat="server" 
                                                                                                        DataSourceID="contratos_con" DataTextField="descripcion" 
                                                                                                        DataValueField="cod_contrato" SelectedValue='<%# Bind("cod_contrato") %>' 
                                                                                                        Width="155px">
                                                                                                    </asp:DropDownList>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="style5">
                                                                                                    Jefe:</td>
                                                                                                <td class="style4" width="145px">
                                                                                                    &nbsp;</td>
                                                                                                <td class="style8">
                                                                                                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="jefes_con" 
                                                                                                        DataTextField="jefe" DataValueField="cod_funcionario" 
                                                                                                        SelectedValue='<%# Bind("cod_jefe") %>' Width="275px">
                                                                                                    </asp:DropDownList>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="style5">
                                                                                                    Grado Hay:</td>
                                                                                                <td class="style4" width="145px">
                                                                                                    &nbsp;</td>
                                                                                                <td class="style8">
                                                                                                    <asp:TextBox ID="grado_hayTextBox_i" runat="server" 
                                                                                                        Text='<%# Bind("grado_hay") %>' Width="50px" />
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="style5">
                                                                                                    Confidencial:</td>
                                                                                                <td class="style4" width="145px">
                                                                                                    &nbsp;</td>
                                                                                                <td class="style8">
                                                                                                    <table>
                                                                                                        <tr>
                                                                                                            <td>
                                                                                                                <asp:RadioButtonList ID="rb_confidencial_insert" runat="server" 
                                                                                                                            RepeatDirection="Horizontal" SelectedValue='<%# Bind("confidencial") %>' 
                                                                                                                            Width="90px">
                                                                                                                    <asp:ListItem Value="1">SI</asp:ListItem>
                                                                                                                    <asp:ListItem Value="0">NO</asp:ListItem>
                                                                                                                </asp:RadioButtonList>
                                                                                                            </td>
                                                                                                            <td align="left">
                                                                                                                <asp:RequiredFieldValidator ID="rv_confidencial_insert" runat="server" 
                                                                                                                            ControlToValidate="rb_confidencial_insert" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                    </table>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="style5">
                                                                                                    Banco:</td>
                                                                                                <td class="style4" width="145px">
                                                                                                    &nbsp;</td>
                                                                                                <td class="style8">
                                                                                                    <asp:DropDownList ID="ddl_banco_insert" runat="server" DataSourceID="bancos_con" 
                                                                                                        DataTextField="descripcion" DataValueField="cod_banco" 
                                                                                                        SelectedValue='<%# Bind("cod_banco") %>' Width="155px">
                                                                                                    </asp:DropDownList>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="style5">
                                                                                                    Cta. Banco:</td>
                                                                                                <td class="style4" width="145px">
                                                                                                    &nbsp;</td>
                                                                                                <td class="style8">
                                                                                                    <asp:TextBox ID="cuenta_nroTextBox_i" runat="server" 
                                                                                                        Text='<%# Bind("cuenta_nro") %>' Width="150px" />
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="style5">
                                                                                                    Cta. Banco Secundaria:</td>
                                                                                                <td class="style4" width="145px">
                                                                                                    &nbsp;</td>
                                                                                                <td class="style8">
                                                                                                    <asp:TextBox ID="cuenta_nroTextBox_i0" runat="server" 
                                                                                                        Text='<%# Bind("cuenta_sec_nro") %>' Width="150px" />
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="style5">
                                                                                                    Fecha de Ingreso:</td>
                                                                                                <td class="style4" width="145px">
                                                                                                    &nbsp;</td>
                                                                                                <td class="style8">
                                                                                                    <asp:TextBox ID="fecha_ingresoTextBox_i" runat="server" 
                                                                                                        Text='<%# Bind("fecha_ingreso", "{0:d}") %>' Width="80px" MaxLength="10" />
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="style5">
                                                                                                    Fecha de Egreso:</td>
                                                                                                <td class="style4" width="145px">
                                                                                                    &nbsp;</td>
                                                                                                <td class="style8">
                                                                                                    <asp:TextBox ID="fecha_egresoTextBox_i" runat="server" 
                                                                                                        Text='<%# Bind("fecha_egreso", "{0:d}") %>' Width="80px" 
                                                                                                        MaxLength="10" />
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="style5">
                                                                                                    Fecha de Reingreso:</td>
                                                                                                <td class="style4" width="145px">
                                                                                                    &nbsp;</td>
                                                                                                <td class="style8">
                                                                                                    <asp:TextBox ID="fecha_reingresoTextBox_i" runat="server" MaxLength="10" 
                                                                                                        Text='<%# Bind("fecha_reingreso", "{0:d}") %>' Width="80px" />
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="style5">
                                                                                                    Status:</td>
                                                                                                <td class="style4" width="145px">
                                                                                                    &nbsp;</td>
                                                                                                <td class="style8">
                                                                                                    <asp:DropDownList ID="ddl_estado_insert" runat="server" 
                                                                                                        SelectedValue='<%# Bind("estado") %>'>
                                                                                                        <asp:ListItem Value="A">Activo</asp:ListItem>
                                                                                                        <asp:ListItem Value="I">Inactivo</asp:ListItem>
                                                                                                        <asp:ListItem Value="E">Egreso</asp:ListItem>
                                                                                                    </asp:DropDownList>
                                                                                                </td>
                                                                                            </tr>
                                                                                        </table>
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </asp:View>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:View ID="v_personales_insertar" runat="server">
                                                                <table class="style3">
                                                                    <tr>
                                                                        <td class="ancho_fondo">
                                                                            <table class="etiquetas">
                                                                                <tr>
                                                                                    <td class="style5">
                                                                                        Sexo:</td>
                                                                                    <td class="style4" width="135px">
                                                                                        &nbsp;</td>
                                                                                    <td width="250px">
                                                                                        <asp:DropDownList ID="ddl_sexo_insert" runat="server" 
                                                                                            SelectedValue='<%# Bind("sexo") %>' Width="155px">
                                                                                            <asp:ListItem Value="M">Masculino</asp:ListItem>
                                                                                            <asp:ListItem Value="F">Femenino</asp:ListItem>
                                                                                        </asp:DropDownList>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="style5">
                                                                                        Fecha de Nacimiento:</td>
                                                                                    <td class="style4">
                                                                                        &nbsp;</td>
                                                                                    <td>
                                                                                        <asp:TextBox ID="fecha_nacimientoTextBox_i" runat="server" 
                                                                                            Text='<%# Bind("fecha_nacimiento", "{0:d}") %>' Width="80px" 
                                                                                            MaxLength="10" />
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="style5">
                                                                                        Cédula de Identidad:</td>
                                                                                    <td class="style4">
                                                                                        &nbsp;</td>
                                                                                    <td>
                                                                                        <asp:TextBox ID="documentoTextBox_i" runat="server" 
                                                                                            Text='<%# Bind("documento") %>' Width="150px" />
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="style5">
                                                                                        Nacionalidad:</td>
                                                                                    <td class="style4">
                                                                                        &nbsp;</td>
                                                                                    <td>
                                                                                        <asp:DropDownList ID="ddl_nacionalidad_insert" runat="server" 
                                                                                            DataSourceID="nacionalidades_con" DataTextField="descripcion" 
                                                                                            DataValueField="cod_nacionalidad" 
                                                                                            SelectedValue='<%# Bind("cod_nacionalidad") %>' Width="155px">
                                                                                        </asp:DropDownList>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="style5">
                                                                                        Departamento:</td>
                                                                                    <td class="style4">
                                                                                        &nbsp;</td>
                                                                                    <td>
                                                                                        <asp:DropDownList ID="ddl_departamento_insert" runat="server" 
                                                                                            DataSourceID="departamentos_con" DataTextField="descripcion" 
                                                                                            DataValueField="cod_departamento" 
                                                                                            SelectedValue='<%# Bind("cod_departamento") %>' Width="155px">
                                                                                        </asp:DropDownList>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="style5">
                                                                                        Ciudad:</td>
                                                                                    <td class="style4">
                                                                                        &nbsp;</td>
                                                                                    <td>
                                                                                        <asp:TextBox ID="ciudadTextBox_i" runat="server" Text='<%# Bind("ciudad") %>' 
                                                                                            Width="150px" />
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="style5">
                                                                                        Código Postal:</td>
                                                                                    <td class="style4">
                                                                                        &nbsp;</td>
                                                                                    <td>
                                                                                        <asp:TextBox ID="postalTextBox_i" runat="server" Text='<%# Bind("postal") %>' 
                                                                                            Width="150px" />
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="style5">
                                                                                        Dirección:</td>
                                                                                    <td class="style4">
                                                                                        &nbsp;</td>
                                                                                    <td>
                                                                                        <asp:TextBox ID="direccionTextBox_i" runat="server" 
                                                                                            Text='<%# Bind("direccion") %>' Width="400px" />
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="style5">
                                                                                        Teléfono:</td>
                                                                                    <td class="style4">
                                                                                        &nbsp;</td>
                                                                                    <td>
                                                                                        <asp:TextBox ID="telefonoTextBox_i" runat="server" 
                                                                                            Text='<%# Bind("telefono") %>' Width="200px" />
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="style5">
                                                                                        Celular:</td>
                                                                                    <td class="style4">
                                                                                        &nbsp;</td>
                                                                                    <td>
                                                                                        <asp:TextBox ID="celularTextBox_i" runat="server" Text='<%# Bind("celular") %>' 
                                                                                            Width="200px" />
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="style5">
                                                                                        Email:</td>
                                                                                    <td class="style4">
                                                                                        &nbsp;</td>
                                                                                    <td>
                                                                                        <asp:TextBox ID="emailTextBox_i" runat="server" Text='<%# Bind("email") %>' 
                                                                                            Width="200px" />
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="style5">
                                                                                        Trabajos Anteriores:</td>
                                                                                    <td class="style4">
                                                                                        &nbsp;</td>
                                                                                    <td>
                                                                                        <asp:TextBox ID="trabajos_anterioresTextBox_i" runat="server" 
                                                                                            Text='<%# Bind("trabajos_anteriores") %>' Width="400px" />
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </asp:View>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:View ID="v_familiares_insertar" runat="server">
                                                                <table class="style3">
                                                                    <tr>
                                                                        <td class="ancho_fondo">
                                                                            <table class="etiquetas">
                                                                                <tr>
                                                                                    <td class="style5">
                                                                                        Estado Civil:</td>
                                                                                    <td class="style4" width="195px">
                                                                                        &nbsp;</td>
                                                                                    <td width="250px">
                                                                                        <asp:DropDownList ID="ddl_e_civil_insert" runat="server" 
                                                                                            DataSourceID="estados_civiles_con" DataTextField="descripcion" 
                                                                                            DataValueField="cod_estado_civil" SelectedValue='<%# Bind("estado_civil") %>' 
                                                                                            Width="155px">
                                                                                        </asp:DropDownList>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="style5">
                                                                                        Nombres Conyuge:</td>
                                                                                    <td class="style4">
                                                                                        &nbsp;</td>
                                                                                    <td>
                                                                                        <asp:TextBox ID="nombres_conyugueTextBox_i" runat="server" 
                                                                                            Text='<%# Bind("nombres_conyugue") %>' Width="150px" />
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="style5">
                                                                                        Apellidos Conyuge:</td>
                                                                                    <td class="style4">
                                                                                        &nbsp;</td>
                                                                                    <td>
                                                                                        <asp:TextBox ID="apellidos_conyugueTextBox_i" runat="server" 
                                                                                            Text='<%# Bind("apellidos_conyugue") %>' Width="150px" />
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="style5">
                                                                                        Fecha de Nacimiento Conyuge:</td>
                                                                                    <td class="style4">
                                                                                        &nbsp;</td>
                                                                                    <td>
                                                                                        <asp:TextBox ID="fecha_nacimiento_conyugueTextBox_i" runat="server" 
                                                                                            Text='<%# Bind("fecha_nacimiento_conyugue") %>' Width="80px" />
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </asp:View>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:View ID="v_mjt_insertar" runat="server">
                                                                <table class="style3">
                                                                    <tr>
                                                                        <td class="ancho_fondo">
                                                                            <table class="etiquetas">
                                                                                <tr>
                                                                                    <td class="style5">
                                                                                        Discriminación de Personas:</td>
                                                                                    <td class="style4" width="170px">
                                                                                        &nbsp;</td>
                                                                                    <td width="250px">
                                                                                        <asp:DropDownList ID="ddl_mjt_insert" runat="server" 
                                                                                            DataSourceID="categorias_mjt_con" DataTextField="descripcion" 
                                                                                            DataValueField="cod_categoria_mjt" 
                                                                                            SelectedValue='<%# Bind("cod_categoria_mjt") %>' Width="155px">
                                                                                        </asp:DropDownList>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="style5">
                                                                                        Valor Head:</td>
                                                                                    <td class="style4">
                                                                                        &nbsp;</td>
                                                                                    <td>
                                                                                        <asp:TextBox ID="valor_headTextBox_i" runat="server" 
                                                                                            Text='<%# Bind("valor_head") %>' Width="80px" />
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="style5">
                                                                                        FTE:</td>
                                                                                    <td class="style4">
                                                                                        &nbsp;</td>
                                                                                    <td>
                                                                                        <asp:TextBox ID="fteTextBox_i" runat="server" Text='<%# Bind("fte") %>' 
                                                                                            Width="80px" />
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </asp:View>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:View ID="v_capacitaciones_insertar" runat="server">
                                                                <table class="style3">
                                                                    <tr>
                                                                        <td class="ancho_fondo">
                                                                            &nbsp;</td>
                                                                    </tr>
                                                                </table>
                                                            </asp:View>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:View ID="v_gourmet_insertar" runat="server">
                                                                <table class="style3">
                                                                    <tr>
                                                                        <td class="ancho_fondo">
                                                                            <table class="etiquetas">
                                                                                <tr>
                                                                                    <td class="style5">
                                                                                        Ticket de Alimentación:</td>
                                                                                    <td class="style4" width="145px">
                                                                                        &nbsp;</td>
                                                                                    <td width="250px">
                                                                                        <asp:TextBox ID="ticket_alimentacionTextBox_i" runat="server" 
                                                                                            Text='<%# Bind("ticket_alimentacion") %>' Width="150px" />
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="style5">
                                                                                        Cuenta de Refrigerio:</td>
                                                                                    <td class="style4">
                                                                                        &nbsp;</td>
                                                                                    <td>
                                                                                        <asp:TextBox ID="cta_alimentacionTextBox_i" runat="server" 
                                                                                            Text='<%# Bind("cta_alimentacion") %>' Width="150px" />
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </asp:View>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </asp:MultiView>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center">
                                            <table class="style3">
                                                <tr>
                                                    <td align="right">
                                                        <asp:ImageButton ID="InsertButton" runat="server" CausesValidation="True" 
                                                    CommandName="Insert" ImageUrl="~/images/controles/add.png" Text="Insert" 
                                                    ToolTip="Insertar" onclick="InsertButton_Click" />
                                                    </td>
                                                    <td align="center">
                                                        &nbsp;</td>
                                                    <td align="left">
                                                        <asp:ImageButton ID="InsertCancelButton" runat="server" 
                                                    CausesValidation="False" CommandName="Cancel" 
                                                    ImageUrl="~/images/controles/cancel.png" Text="Cancel" 
                                                    ToolTip="Cancelar" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <table class="style3">
                                    <tr>
                                        <td align="left">
                                            <asp:Menu ID="menu_item" runat="server" onmenuitemclick="menu_item_MenuItemClick" 
                                                Orientation="Horizontal">
                                                <StaticSelectedStyle BackColor="" />
                                                <Items>
                                                    <asp:MenuItem ImageUrl="~/images/menu/Empresa_1.gif" Text=" " Value="0">
                                                    </asp:MenuItem>
                                                    <asp:MenuItem ImageUrl="~/images/menu/Personales_apagado_1.gif" Text=" " 
                                                        Value="1"></asp:MenuItem>
                                                    <asp:MenuItem ImageUrl="~/images/menu/Familiares_apagado_1.gif" Text=" " 
                                                        Value="2"></asp:MenuItem>
                                                    <asp:MenuItem ImageUrl="~/images/menu/M.J.T._apagado_1.gif" Text=" " Value="3">
                                                    </asp:MenuItem>
                                                    <asp:MenuItem ImageUrl="~/images/menu/Capacitaciones_apagado_1.gif" Text=" " 
                                                        Value="4"></asp:MenuItem>
                                                    <asp:MenuItem ImageUrl="~/images/menu/Gourmet_apagado_1.gif" Text=" " Value="5">
                                                    </asp:MenuItem>
                                                </Items>
                                            </asp:Menu>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left" valign="bottom">
                                            <asp:MultiView ID="mv_item" runat="server" ActiveViewIndex="0">
                                                <table class="style3">
                                                    <tr>
                                                        <td>
                                                            <asp:View ID="v_empresa_item" runat="server">
                                                                <table class="style3">
                                                                    <tr>
                                                                        <td class="ancho_fondo">
                                                                            <table class="style3">
                                                                                <tr>
                                                                                    <td valign="top">
                                                                                        <table class="etiquetas">
                                                                                            <tr>
                                                                                                <td class="ancho11">
                                                                                                    Código:</td>
                                                                                                <td class="style4">
                                                                                                    &nbsp;</td>
                                                                                                <td class="ancho13">
                                                                                                    <asp:Label ID="cod_funcionarioLabel" runat="server" 
                                                                                                        Text='<%# Eval("cod_funcionario") %>' />
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="ancho11">
                                                                                                    Empresa:</td>
                                                                                                <td class="style4">
                                                                                                    &nbsp;</td>
                                                                                                <td class="ancho13">
                                                                                                    <asp:Label ID="empresaLabel" runat="server" Text='<%# Bind("empresa") %>' />
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="ancho11">
                                                                                                    Gerencia:</td>
                                                                                                <td class="style4">
                                                                                                    &nbsp;</td>
                                                                                                <td class="ancho13">
                                                                                                    <asp:Label ID="gerenciaLabel" runat="server" Text='<%# Bind("gerencia") %>' />
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="ancho11">
                                                                                                    Area:</td>
                                                                                                <td class="style4">
                                                                                                    &nbsp;</td>
                                                                                                <td class="ancho13">
                                                                                                    <asp:Label ID="areaLabel" runat="server" Text='<%# Bind("area") %>' />
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="ancho11">
                                                                                                    Ubicación:</td>
                                                                                                <td class="style4">
                                                                                                    &nbsp;</td>
                                                                                                <td class="ancho13">
                                                                                                    <asp:Label ID="regionLabel" runat="server" Text='<%# Bind("region") %>' />
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="ancho11">
                                                                                                    Legajo:</td>
                                                                                                <td class="style4">
                                                                                                    &nbsp;</td>
                                                                                                <td class="ancho13">
                                                                                                    <asp:Label ID="codigoLabel" runat="server" Text='<%# Bind("codigo") %>' />
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="ancho11">
                                                                                                    Apellidos:</td>
                                                                                                <td class="style4">
                                                                                                    &nbsp;</td>
                                                                                                <td class="ancho13">
                                                                                                    <asp:Label ID="apellidosLabel" runat="server" Text='<%# Bind("apellidos") %>' />
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="ancho11">
                                                                                                    Nombres:</td>
                                                                                                <td class="style4">
                                                                                                    &nbsp;</td>
                                                                                                <td class="ancho13">
                                                                                                    <asp:Label ID="nombresLabel" runat="server" Text='<%# Bind("nombres") %>' />
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="ancho11">
                                                                                                    Nivel Salarial:</td>
                                                                                                <td class="style4">
                                                                                                    &nbsp;</td>
                                                                                                <td class="ancho13">
                                                                                                    &nbsp;</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="ancho11">
                                                                                                    Salario:</td>
                                                                                                <td class="style4">
                                                                                                    &nbsp;</td>
                                                                                                <td class="ancho13">
                                                                                                    &nbsp;</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="ancho11">
                                                                                                    Moneda:</td>
                                                                                                <td class="style4">
                                                                                                    &nbsp;</td>
                                                                                                <td class="ancho13">
                                                                                                    &nbsp;</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="ancho11">
                                                                                                    Cargo:</td>
                                                                                                <td class="style4">
                                                                                                    &nbsp;</td>
                                                                                                <td class="ancho13">
                                                                                                    <asp:Label ID="cargoLabel" runat="server" Text='<%# Bind("cargo") %>' />
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="ancho11">
                                                                                                    Profesión:</td>
                                                                                                <td class="style4">
                                                                                                    &nbsp;</td>
                                                                                                <td class="ancho13">
                                                                                                    <asp:Label ID="profesionLabel" runat="server" Text='<%# Bind("profesion") %>' />
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="ancho11">
                                                                                                    Hs. X día:</td>
                                                                                                <td class="style4">
                                                                                                    &nbsp;</td>
                                                                                                <td class="ancho13">
                                                                                                    <asp:Label ID="horas_diaLabel" runat="server" Text='<%# Eval("horas_dia") %>'></asp:Label>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="ancho11">
                                                                                                    Trab Sab</td>
                                                                                                <td class="style4">
                                                                                                    &nbsp;</td>
                                                                                                <td class="ancho13">
                                                                                                    <asp:Label ID="trabaja_sabadoLabel" runat="server" 
                                                                                                        Text='<%# Eval("trabaja_sabado") %>'></asp:Label>
                                                                                                </td>
                                                                                            </tr>
                                                                                        </table>
                                                                                    </td>
                                                                                    <td valign="top">
                                                                                        <table class="etiquetas">
                                                                                            <tr>
                                                                                                <td class="ancho14">
                                                                                                    Tipo de Remuneración:</td>
                                                                                                <td class="style4">
                                                                                                    &nbsp;</td>
                                                                                                <td class="ancho12">
                                                                                                    <asp:Label ID="tipo_remu_desLabel" runat="server" 
                                                                                                        Text='<%# Bind("tipo_remu_des") %>' />
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="ancho14">
                                                                                                    Nivel Jerárquico:</td>
                                                                                                <td class="style4">
                                                                                                    &nbsp;</td>
                                                                                                <td class="ancho12">
                                                                                                    <asp:Label ID="nivel_jerarquicoLabel" runat="server" 
                                                                                                        Text='<%# Bind("nivel_jerarquico") %>' />
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="ancho14">
                                                                                                    Tipo de Contrato:</td>
                                                                                                <td class="style4">
                                                                                                    &nbsp;</td>
                                                                                                <td class="ancho12">
                                                                                                    <asp:Label ID="contratoLabel" runat="server" Text='<%# Bind("contrato") %>' />
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="ancho14">
                                                                                                    Jefe:</td>
                                                                                                <td class="style4">
                                                                                                    &nbsp;</td>
                                                                                                <td class="ancho12">
                                                                                                    <asp:Label ID="lb_jefe_item" runat="server" Text='<%# Bind("jefe") %>' />
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="ancho14">
                                                                                                    Grado Hay:</td>
                                                                                                <td class="style4">
                                                                                                    &nbsp;</td>
                                                                                                <td class="ancho12">
                                                                                                    <asp:Label ID="grado_hayLabel" runat="server" Text='<%# Bind("grado_hay") %>' />
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="ancho14">
                                                                                                    Condifencial:</td>
                                                                                                <td class="style4">
                                                                                                    &nbsp;</td>
                                                                                                <td class="ancho12">
                                                                                                    <asp:Label ID="confidencial_desLabel" runat="server" 
                                                                                                        Text='<%# Bind("confidencial_des") %>' />
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="ancho14">
                                                                                                    Banco:</td>
                                                                                                <td class="style4">
                                                                                                    &nbsp;</td>
                                                                                                <td class="ancho12">
                                                                                                    &nbsp;</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="style6">
                                                                                                    Cta. Banco:</td>
                                                                                                <td class="style7">
                                                                                                    </td>
                                                                                                <td class="style8">
                                                                                                    &nbsp;</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="ancho14">
                                                                                                    Cta. Banco Secundaria:</td>
                                                                                                <td class="style4">
                                                                                                    &nbsp;</td>
                                                                                                <td class="ancho12">
                                                                                                    &nbsp;</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="ancho14">
                                                                                                    Fecha de Ingreso:</td>
                                                                                                <td class="style4">
                                                                                                    &nbsp;</td>
                                                                                                <td class="ancho12">
                                                                                                    <asp:Label ID="fecha_ingresoLabel" runat="server" 
                                                                                                        Text='<%# Bind("fecha_ingreso", "{0:d}") %>' Height="100%" Width="100%" />
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="ancho14">
                                                                                                    Fecha de Egreso:</td>
                                                                                                <td class="style4">
                                                                                                    &nbsp;</td>
                                                                                                <td class="ancho12">
                                                                                                    <asp:Label ID="fecha_egresoLabel" runat="server" 
                                                                                                        Text='<%# Bind("fecha_egreso", "{0:d}") %>' Height="100%" 
                                                                                                        Width="100%" />
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="ancho14">
                                                                                                    Fecha de Reingreso:</td>
                                                                                                <td class="style4">
                                                                                                    &nbsp;</td>
                                                                                                <td class="ancho12">
                                                                                                    <asp:Label ID="fecha_reingresoLabel" runat="server" 
                                                                                                        Text='<%# Bind("fecha_reingreso", "{0:d}") %>' Height="100%" 
                                                                                                        Width="100%" />
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="ancho14">
                                                                                                    Status:</td>
                                                                                                <td class="style4">
                                                                                                    &nbsp;</td>
                                                                                                <td class="ancho12">
                                                                                                    <asp:Label ID="estado_desLabel" runat="server" 
                                                                                                        Text='<%# Bind("estado_des") %>' />
                                                                                                </td>
                                                                                            </tr>
                                                                                        </table>
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </asp:View>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:View ID="v_personales_item" runat="server">
                                                                <table class="style3">
                                                                    <tr>
                                                                        <td class="ancho_fondo">
                                                                            <table class="etiquetas">
                                                                                <tr>
                                                                                    <td class="style5">
                                                                                        Sexo:</td>
                                                                                    <td class="style4">
                                                                                        &nbsp;</td>
                                                                                    <td style="border: 1px dotted #808080" width="250px">
                                                                                        <asp:Label ID="sexodesLabel" runat="server" Text='<%# Bind("sexo_des") %>' />
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="style5">
                                                                                        Fecha de Nacimiento:</td>
                                                                                    <td class="style4">
                                                                                        &nbsp;</td>
                                                                                    <td style="border: 1px dotted #808080">
                                                                                        <asp:Label ID="fecha_nacimientoLabel" runat="server" 
                                                                                            Text='<%# Bind("fecha_nacimiento", "{0:d}") %>' Height="100%" 
                                                                                            Width="100%" />
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="style5">
                                                                                        Cédula de Identidad:</td>
                                                                                    <td class="style4">
                                                                                        &nbsp;</td>
                                                                                    <td style="border: 1px dotted #808080">
                                                                                        <asp:Label ID="documentoLabel" runat="server" Text='<%# Bind("documento") %>' />
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="style5">
                                                                                        Nacionalidad:</td>
                                                                                    <td class="style4">
                                                                                        &nbsp;</td>
                                                                                    <td style="border: 1px dotted #808080">
                                                                                        <asp:Label ID="nacionalidadLabel" runat="server" 
                                                                                            Text='<%# Bind("nacionalidad") %>' />
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="style5">
                                                                                        Departamento:</td>
                                                                                    <td class="style4">
                                                                                        &nbsp;</td>
                                                                                    <td style="border: 1px dotted #808080">
                                                                                        <asp:Label ID="departamentoLabel" runat="server" 
                                                                                            Text='<%# Bind("departamento") %>' />
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="style5">
                                                                                        Ciudad:</td>
                                                                                    <td class="style4">
                                                                                        &nbsp;</td>
                                                                                    <td style="border: 1px dotted #808080">
                                                                                        <asp:Label ID="ciudadLabel" runat="server" Text='<%# Bind("ciudad") %>' />
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="style5">
                                                                                        Código Postal:</td>
                                                                                    <td class="style4">
                                                                                        &nbsp;</td>
                                                                                    <td style="border: 1px dotted #808080">
                                                                                        <asp:Label ID="postalLabel" runat="server" Text='<%# Bind("postal") %>' />
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="style5">
                                                                                        Dirección:</td>
                                                                                    <td class="style4">
                                                                                        &nbsp;</td>
                                                                                    <td style="border: 1px dotted #808080">
                                                                                        <asp:Label ID="direccionLabel" runat="server" Text='<%# Bind("direccion") %>' />
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="style5">
                                                                                        Teléfono:</td>
                                                                                    <td class="style4">
                                                                                        &nbsp;</td>
                                                                                    <td style="border: 1px dotted #808080">
                                                                                        <asp:Label ID="telefonoLabel" runat="server" Text='<%# Bind("telefono") %>' />
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="style5">
                                                                                        Celular:</td>
                                                                                    <td class="style4">
                                                                                        &nbsp;</td>
                                                                                    <td style="border: 1px dotted #808080">
                                                                                        <asp:Label ID="celularLabel" runat="server" Text='<%# Bind("celular") %>' />
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="style5">
                                                                                        Email:</td>
                                                                                    <td class="style4">
                                                                                        &nbsp;</td>
                                                                                    <td style="border: 1px dotted #808080">
                                                                                        <asp:Label ID="emailLabel" runat="server" Text='<%# Bind("email") %>' />
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="style5">
                                                                                        Trabajos Anteriores:</td>
                                                                                    <td class="style4">
                                                                                        &nbsp;</td>
                                                                                    <td style="border: 1px dotted #808080">
                                                                                        <asp:Label ID="trabajos_anterioresLabel" runat="server" 
                                                                                            Text='<%# Bind("trabajos_anteriores") %>' />
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </asp:View>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:View ID="v_familiares_item" runat="server">
                                                                <table class="style3">
                                                                    <tr>
                                                                        <td class="ancho_fondo">
                                                                            <table class="etiquetas">
                                                                                <tr>
                                                                                    <td class="style5">
                                                                                        Estado Civil:</td>
                                                                                    <td width="3">
                                                                                        &nbsp;</td>
                                                                                    <td style="border: 1px dotted #808080" width="250px">
                                                                                        <asp:Label ID="estado_civil_desLabel" runat="server" 
                                                                                            Text='<%# Bind("estado_civil_des") %>' />
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="style5">
                                                                                        Nombres Conyuge:</td>
                                                                                    <td>
                                                                                        &nbsp;</td>
                                                                                    <td style="border: 1px dotted #808080">
                                                                                        <asp:Label ID="nombres_conyugueLabel" runat="server" 
                                                                                            Text='<%# Bind("nombres_conyugue") %>' Height="100%" Width="100%" />
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="style5">
                                                                                        Apellidos Conyuge:</td>
                                                                                    <td>
                                                                                        &nbsp;</td>
                                                                                    <td style="border: 1px dotted #808080">
                                                                                        <asp:Label ID="apellidos_conyugueLabel" runat="server" 
                                                                                            Text='<%# Bind("apellidos_conyugue") %>' Height="100%" Width="100%" />
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="style5">
                                                                                        Fecha de Nacimiento Conyuge:</td>
                                                                                    <td>
                                                                                        &nbsp;</td>
                                                                                    <td style="border: 1px dotted #808080">
                                                                                        <asp:Label ID="fecha_nacimiento_conyugueLabel" runat="server" 
                                                                                            Text='<%# Bind("fecha_nacimiento_conyugue") %>' Height="100%" 
                                                                                            Width="100%" />
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </asp:View>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:View ID="v_mjt_item" runat="server">
                                                                <table class="style3">
                                                                    <tr>
                                                                        <td class="ancho_fondo">
                                                                            <table class="etiquetas">
                                                                                <tr>
                                                                                    <td class="style5">
                                                                                        Discriminación de Personas:</td>
                                                                                    <td width="3">
                                                                                        &nbsp;</td>
                                                                                    <td style="border: 1px dotted #808080" width="150px">
                                                                                        <asp:Label ID="categoria_mjtLabel" runat="server" 
                                                                                            Text='<%# Bind("categoria_mjt") %>' />
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="style5">
                                                                                        Valor Head:</td>
                                                                                    <td>
                                                                                        &nbsp;</td>
                                                                                    <td style="border: 1px dotted #808080">
                                                                                        <asp:Label ID="valor_headLabel" runat="server" 
                                                                                            Text='<%# Bind("valor_head") %>' />
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="style5">
                                                                                        FTE:</td>
                                                                                    <td>
                                                                                        &nbsp;</td>
                                                                                    <td style="border: 1px dotted #808080">
                                                                                        <asp:Label ID="fteLabel" runat="server" Text='<%# Bind("fte") %>' />
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </asp:View>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:View ID="v_capacitaciones_item" runat="server">
                                                                <table class="style3">
                                                                    <tr>
                                                                        <td class="ancho_fondo">
                                                                            &nbsp;</td>
                                                                    </tr>
                                                                </table>
                                                            </asp:View>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:View ID="v_gourmet_item" runat="server">
                                                                <table class="style3">
                                                                    <tr>
                                                                        <td class="ancho_fondo">
                                                                            <table class="etiquetas">
                                                                                <tr>
                                                                                    <td class="style5">
                                                                                        Ticket de Alimentación:</td>
                                                                                    <td width="3">
                                                                                        &nbsp;</td>
                                                                                    <td style="border: 1px dotted #808080" width="150px">
                                                                                        <asp:Label ID="ticket_alimentacionLabel" runat="server" 
                                                                                            Text='<%# Bind("ticket_alimentacion") %>' />
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="style5">
                                                                                        Cuenta de Refrigerio:</td>
                                                                                    <td>
                                                                                        &nbsp;</td>
                                                                                    <td style="border: 1px dotted #808080">
                                                                                        <asp:Label ID="cta_alimentacionLabel" runat="server" 
                                                                                            Text='<%# Bind("cta_alimentacion") %>' />
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </asp:View>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </asp:MultiView>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center">
                                            <table>
                                                <tr>
                                                    <td align="right">
                                                        &nbsp;</td>
                                                    <td align="right" width="30px">
                                                        &nbsp;</td>
                                                    <td align="right">
                                                        <asp:ImageButton ID="EditButton" runat="server" CausesValidation="False" 
                                                    CommandName="Edit" ImageUrl="~/images/controles/edit.png" Text="Edit" 
                                                    ToolTip="Editar" />
                                                    </td>
                                                    <td width="30px">
                                                        &nbsp;</td>
                                                    <td align="left">
                                                        <asp:ImageButton    ID="ImageButton2" 
                                                                            runat="server" 
                                                                            ImageUrl="~/images/controles/find.png" 
                                                                            ToolTip="Buscar" 
                                                                            
                                                            onclientclick="var wBusqueda = window.open('busca_funcionarios.aspx?update=1','wBusqeuda','width=500,height=500, left = 262, top = 134');return false" 
                                                             />
                                                    </td>
                                                    <td align="left" width="30px">
                                                        &nbsp;</td>
                                                    <td align="left" width="30px">
                                                        &nbsp;</td>
                                                    <td align="left" width="30px">
                                                        &nbsp;</td>
                                                    <td align="left">
                                                        &nbsp;</td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                            <EmptyDataTemplate>
                                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                                    Text="Nuevo Funcionario" />
                            </EmptyDataTemplate>
                        </asp:FormView>
                    </td>
                    <td valign="top" align="right" width="100%">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td align="center">
                        <table class="style3">
                            <tr>
                                <td align="left" colspan="4">
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
                                <td>
                                    <asp:SqlDataSource ID="funcionarios_con" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
                    DeleteCommand="DELETE FROM [funcionarios] WHERE [cod_funcionario] = @cod_funcionario" 
                    InsertCommand="INSERT INTO funcionarios (codigo, documento, cod_empresa, nombres, apellidos, cod_gerencia, cod_area, cod_region, cod_nivel_salarial, salario, cod_moneda, cod_cargo, profesion, tipo_remuneracion, cod_nivel_jerarquico, cod_contrato, cod_jefe, grado_hay, confidencial, cod_banco, cuenta_nro, fecha_ingreso, fecha_egreso, fecha_reingreso, estado, sexo, fecha_nacimiento, cod_nacionalidad, cod_departamento, ciudad, postal, direccion, telefono, celular, email, trabajos_anteriores, estado_civil, nombres_conyugue, apellidos_conyugue, fecha_nacimiento_conyugue, cod_categoria_mjt, valor_head, fte, ticket_alimentacion, cta_alimentacion,cuenta_sec_nro) VALUES (@codigo,@documento,@cod_empresa,@nombres,@apellidos,@cod_gerencia,@cod_area, CASE @cod_region WHEN 0 THEN NULL ELSE @cod_region END,@cod_nivel_salarial,@salario,@cod_moneda,@cod_cargo,@profesion,@tipo_remuneracion,@cod_nivel_jerarquico,@cod_contrato, CASE @cod_jefe WHEN 0 THEN NULL ELSE @cod_jefe END,@grado_hay,@confidencial,@cod_banco,@cuenta_nro,@fecha_ingreso,@fecha_egreso,@fecha_reingreso,@estado,@sexo,@fecha_nacimiento,@cod_nacionalidad, CASE @cod_departamento WHEN 0 THEN NULL ELSE @cod_departamento END,@ciudad,@postal,@direccion,@telefono,@celular,@email,@trabajos_anteriores, CASE @estado_civil WHEN 0 THEN NULL ELSE @estado_civil END,@nombres_conyugue,@apellidos_conyugue,@fecha_nacimiento_conyugue,@cod_categoria_mjt,@valor_head,@fte,@ticket_alimentacion,@cta_alimentacion,@cuenta_sec_nro)" 
                    SelectCommand="SELECT CASE funcionarios.estado WHEN 'A' THEN 'Activo' WHEN 'E' THEN 'Egreso' WHEN 'I' THEN 'Inactivo' END AS estado_des, CASE isnull(funcionarios.confidencial , 0) WHEN '1' THEN 'SI' WHEN '0' THEN 'NO' END AS confidencial_des, CASE funcionarios.tipo_remuneracion WHEN 'M' THEN 'Mensual' END AS tipo_remu_des, CASE funcionarios.sexo WHEN 'M' THEN 'Masculino' WHEN 'F' THEN 'Femenino' END AS sexo_des, ISNULL(jefes.apellidos + ', ' + jefes.nombres, 'No Asignado') AS jefe, funcionarios.cod_funcionario, funcionarios.codigo, funcionarios.documento, funcionarios.cod_empresa, funcionarios.nombres, funcionarios.apellidos, funcionarios.cod_gerencia, funcionarios.cod_area, ISNULL(funcionarios.cod_region, 0) AS cod_region, funcionarios.cod_nivel_salarial, funcionarios.salario, funcionarios.cod_moneda, funcionarios.cod_cargo, ISNULL(funcionarios.profesion, '-') AS profesion, funcionarios.tipo_remuneracion, funcionarios.cod_nivel_jerarquico, funcionarios.cod_contrato, ISNULL(funcionarios.cod_jefe, 0) AS cod_jefe, funcionarios.grado_hay, ISNULL(funcionarios.confidencial, 0) AS confidencial, funcionarios.cod_banco, funcionarios.cuenta_nro, funcionarios.fecha_ingreso, funcionarios.fecha_egreso, funcionarios.fecha_reingreso, funcionarios.estado, funcionarios.sexo, funcionarios.fecha_nacimiento, funcionarios.cod_nacionalidad, ISNULL(funcionarios.cod_departamento, 0) AS cod_departamento, funcionarios.ciudad, ISNULL(funcionarios.postal, '-') AS postal, funcionarios.direccion, ISNULL(funcionarios.telefono, '-') AS telefono, ISNULL(funcionarios.celular, '-') AS celular, ISNULL(funcionarios.email, '-') AS email, ISNULL(funcionarios.trabajos_anteriores, '-') AS trabajos_anteriores, ISNULL(funcionarios.estado_civil, 0) AS estado_civil, ISNULL(funcionarios.nombres_conyugue, '-') AS nombres_conyugue, ISNULL(funcionarios.apellidos_conyugue, '-') AS apellidos_conyugue, funcionarios.fecha_nacimiento_conyugue, funcionarios.cod_categoria_mjt, funcionarios.valor_head, funcionarios.fte, funcionarios.ticket_alimentacion, funcionarios.cta_alimentacion, empresas.descripcion AS empresa, gerencias.descripcion AS gerencia, areas.descripcion AS area, regiones.descripcion AS region, niveles_salariales.descripcion AS nivel_salarial, monedas.descripcion AS moneda, cargos.descripcion AS cargo, niveles_jerarquicos.descripcion AS nivel_jerarquico, contratos_1.descripcion AS contrato, bancos.descripcion AS banco, nacionalidades.descripcion AS nacionalidad, ISNULL(departamentos.descripcion, 'No Asignado') AS departamento, estados_civiles.descripcion AS estado_civil_des, categorias_mjt.descripcion AS categoria_mjt, ISNULL(funcionarios.horas_dia, 0) AS horas_dia, CASE isnull(funcionarios.trabaja_sabado , 0) WHEN '1' THEN 'SI' WHEN '0' THEN 'NO' END AS trabaja_sabado, funcionarios.cuenta_sec_nro FROM funcionarios INNER JOIN niveles_jerarquicos ON funcionarios.cod_nivel_jerarquico = niveles_jerarquicos.cod_nivel_jerarquico INNER JOIN bancos ON funcionarios.cod_banco = bancos.cod_banco INNER JOIN categorias_mjt ON funcionarios.cod_categoria_mjt = categorias_mjt.cod_categoria_mjt LEFT OUTER JOIN estados_civiles ON funcionarios.estado_civil = estados_civiles.cod_estado_civil LEFT OUTER JOIN departamentos ON funcionarios.cod_departamento = departamentos.cod_departamento LEFT OUTER JOIN nacionalidades ON funcionarios.cod_nacionalidad = nacionalidades.cod_nacionalidad LEFT OUTER JOIN contratos AS contratos_1 ON funcionarios.cod_contrato = contratos_1.cod_contrato LEFT OUTER JOIN gerencias ON funcionarios.cod_gerencia = gerencias.cod_gerencia LEFT OUTER JOIN areas ON funcionarios.cod_area = areas.cod_area LEFT OUTER JOIN regiones ON funcionarios.cod_region = regiones.cod_region LEFT OUTER JOIN empresas ON funcionarios.cod_empresa = empresas.cod_empresa LEFT OUTER JOIN monedas ON funcionarios.cod_moneda = monedas.cod_moneda INNER JOIN niveles_salariales ON funcionarios.cod_nivel_salarial = niveles_salariales.cod_nivel_salarial LEFT OUTER JOIN cargos ON funcionarios.cod_cargo = cargos.cod_cargo LEFT OUTER JOIN funcionarios AS jefes ON funcionarios.cod_jefe = jefes.cod_funcionario WHERE (funcionarios.cod_empresa = @cod_empresa) AND (funcionarios.apellidos LIKE @campo + '%') OR (funcionarios.cod_empresa = @cod_empresa) AND (funcionarios.cod_funcionario LIKE @campo) ORDER BY funcionarios.apellidos" 
                    UpdateCommand="UPDATE funcionarios SET codigo = @codigo, documento = @documento, cod_empresa = @cod_empresa, nombres = @nombres, apellidos = @apellidos, cod_gerencia = @cod_gerencia, cod_area = @cod_area, cod_region = CASE @cod_region WHEN 0 THEN NULL ELSE @cod_region END, cod_nivel_salarial = @cod_nivel_salarial, salario = @salario, cod_moneda = @cod_moneda, cod_cargo = @cod_cargo, profesion = @profesion, tipo_remuneracion = @tipo_remuneracion, cod_nivel_jerarquico = @cod_nivel_jerarquico, cod_contrato = @cod_contrato, cod_jefe = CASE @cod_jefe WHEN 0 THEN NULL ELSE @cod_jefe END, grado_hay = @grado_hay, confidencial = @confidencial, cod_banco = @cod_banco, cuenta_nro = @cuenta_nro, fecha_ingreso = @fecha_ingreso, fecha_egreso = @fecha_egreso, fecha_reingreso = @fecha_reingreso, estado = @estado, sexo = @sexo, fecha_nacimiento = @fecha_nacimiento, cod_nacionalidad = @cod_nacionalidad, cod_departamento = CASE @cod_departamento WHEN 0 THEN NULL ELSE @cod_departamento END, ciudad = @ciudad, postal = @postal, direccion = @direccion, telefono = @telefono, celular = @celular, email = @email, trabajos_anteriores = @trabajos_anteriores, estado_civil = CASE @estado_civil WHEN 0 THEN NULL ELSE @estado_civil END, nombres_conyugue = @nombres_conyugue, apellidos_conyugue = @apellidos_conyugue, fecha_nacimiento_conyugue = @fecha_nacimiento_conyugue, cod_categoria_mjt = @cod_categoria_mjt, valor_head = @valor_head, fte = @fte, ticket_alimentacion = @ticket_alimentacion, cta_alimentacion = @cta_alimentacion, cuenta_sec_nro = @cuenta_sec_nro WHERE (cod_funcionario = @cod_funcionario)">
                                        <SelectParameters>
                                            <asp:SessionParameter Name="cod_empresa" SessionField="sv_empresa" />
                                            <asp:ControlParameter ControlID="hf_cod_funcionario" Name="campo" 
                            PropertyName="Value" />
                                        </SelectParameters>
                                        <DeleteParameters>
                                            <asp:Parameter Name="cod_funcionario" Type="Int16" />
                                        </DeleteParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="codigo" Type="Int32" />
                                            <asp:Parameter Name="documento" Type="String" />
                                            <asp:Parameter Name="cod_empresa" Type="Int16" />
                                            <asp:Parameter Name="nombres" Type="String" />
                                            <asp:Parameter Name="apellidos" Type="String" />
                                            <asp:Parameter Name="cod_gerencia" Type="Int16" />
                                            <asp:Parameter Name="cod_area" Type="Int16" />
                                            <asp:Parameter Name="cod_region" Type="Int16" />
                                            <asp:Parameter Name="cod_nivel_salarial" Type="Int16" />
                                            <asp:Parameter Name="salario" Type="Decimal" />
                                            <asp:Parameter Name="cod_moneda" Type="Int16" />
                                            <asp:Parameter Name="cod_cargo" Type="Int16" />
                                            <asp:Parameter Name="profesion" Type="String" />
                                            <asp:Parameter Name="tipo_remuneracion" Type="String" />
                                            <asp:Parameter Name="cod_nivel_jerarquico" Type="Int16" />
                                            <asp:Parameter Name="cod_contrato" Type="Int16" />
                                            <asp:Parameter Name="cod_jefe" Type="Int16" />
                                            <asp:Parameter Name="grado_hay" Type="Int16" />
                                            <asp:Parameter Name="confidencial" Type="String" />
                                            <asp:Parameter Name="cod_banco" Type="Int16" />
                                            <asp:Parameter Name="cuenta_nro" Type="String" />
                                            <asp:Parameter Name="fecha_ingreso" Type="DateTime" />
                                            <asp:Parameter Name="fecha_egreso" Type="DateTime" />
                                            <asp:Parameter Name="fecha_reingreso" Type="DateTime" />
                                            <asp:Parameter Name="estado" Type="String" />
                                            <asp:Parameter Name="sexo" Type="String" />
                                            <asp:Parameter Name="fecha_nacimiento" Type="DateTime" />
                                            <asp:Parameter Name="cod_nacionalidad" Type="Int16" />
                                            <asp:Parameter Name="cod_departamento" Type="Int16" />
                                            <asp:Parameter Name="ciudad" Type="String" />
                                            <asp:Parameter Name="postal" Type="String" />
                                            <asp:Parameter Name="direccion" Type="String" />
                                            <asp:Parameter Name="telefono" Type="String" />
                                            <asp:Parameter Name="celular" Type="String" />
                                            <asp:Parameter Name="email" Type="String" />
                                            <asp:Parameter Name="trabajos_anteriores" Type="String" />
                                            <asp:Parameter Name="estado_civil" Type="String" />
                                            <asp:Parameter Name="nombres_conyugue" Type="String" />
                                            <asp:Parameter Name="apellidos_conyugue" Type="String" />
                                            <asp:Parameter Name="fecha_nacimiento_conyugue" Type="DateTime" />
                                            <asp:Parameter Name="cod_categoria_mjt" Type="Int16" />
                                            <asp:Parameter Name="valor_head" Type="Decimal" />
                                            <asp:Parameter Name="fte" Type="Decimal" />
                                            <asp:Parameter Name="ticket_alimentacion" Type="String" />
                                            <asp:Parameter Name="cta_alimentacion" Type="String" />
                                            <asp:Parameter Name="cuenta_sec_nro" Type="String" />
                                            <asp:Parameter Name="cod_funcionario" Type="Int16" />
                                        </UpdateParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="codigo" Type="Int32" />
                                            <asp:Parameter Name="documento" Type="String" />
                                            <asp:Parameter Name="cod_empresa" Type="Int16" />
                                            <asp:Parameter Name="nombres" Type="String" />
                                            <asp:Parameter Name="apellidos" Type="String" />
                                            <asp:Parameter Name="cod_gerencia" Type="Int16" />
                                            <asp:Parameter Name="cod_area" Type="Int16" />
                                            <asp:Parameter Name="cod_region" Type="Int16" />
                                            <asp:Parameter Name="cod_nivel_salarial" Type="Int16" />
                                            <asp:Parameter Name="salario" Type="Decimal" />
                                            <asp:Parameter Name="cod_moneda" Type="Int16" />
                                            <asp:Parameter Name="cod_cargo" Type="Int16" />
                                            <asp:Parameter Name="profesion" Type="String" />
                                            <asp:Parameter Name="tipo_remuneracion" Type="String" />
                                            <asp:Parameter Name="cod_nivel_jerarquico" Type="Int16" />
                                            <asp:Parameter Name="cod_contrato" Type="Int16" />
                                            <asp:Parameter Name="cod_jefe" Type="Int16" />
                                            <asp:Parameter Name="grado_hay" Type="Int16" />
                                            <asp:Parameter Name="confidencial" Type="String" />
                                            <asp:Parameter Name="cod_banco" Type="Int16" />
                                            <asp:Parameter Name="cuenta_nro" Type="String" />
                                            <asp:Parameter Name="fecha_ingreso" Type="DateTime" />
                                            <asp:Parameter Name="fecha_egreso" Type="DateTime" />
                                            <asp:Parameter Name="fecha_reingreso" Type="DateTime" />
                                            <asp:Parameter Name="estado" Type="String" />
                                            <asp:Parameter Name="sexo" Type="String" />
                                            <asp:Parameter Name="fecha_nacimiento" Type="DateTime" />
                                            <asp:Parameter Name="cod_nacionalidad" Type="Int16" />
                                            <asp:Parameter Name="cod_departamento" Type="Int16" />
                                            <asp:Parameter Name="ciudad" Type="String" />
                                            <asp:Parameter Name="postal" Type="String" />
                                            <asp:Parameter Name="direccion" Type="String" />
                                            <asp:Parameter Name="telefono" Type="String" />
                                            <asp:Parameter Name="celular" Type="String" />
                                            <asp:Parameter Name="email" Type="String" />
                                            <asp:Parameter Name="trabajos_anteriores" Type="String" />
                                            <asp:Parameter Name="estado_civil" Type="String" />
                                            <asp:Parameter Name="nombres_conyugue" Type="String" />
                                            <asp:Parameter Name="apellidos_conyugue" Type="String" />
                                            <asp:Parameter Name="fecha_nacimiento_conyugue" Type="DateTime" />
                                            <asp:Parameter Name="cod_categoria_mjt" Type="Int16" />
                                            <asp:Parameter Name="valor_head" Type="Decimal" />
                                            <asp:Parameter Name="fte" Type="Decimal" />
                                            <asp:Parameter Name="ticket_alimentacion" Type="String" />
                                            <asp:Parameter Name="cta_alimentacion" Type="String" />
                                            <asp:Parameter Name="cuenta_sec_nro" Type="String"  />
                                        </InsertParameters>
                                    </asp:SqlDataSource>
                                </td>
                                <td>
                                    <asp:SqlDataSource ID="regiones_con" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
                                
                                
                                
                                        
                                        
                                
                                
                                        
                                        
                                        SelectCommand="SELECT 0 AS cod_region, 'No Asignado' AS descripcion UNION SELECT cod_region, descripcion FROM regiones">
                                    </asp:SqlDataSource>
                                </td>
                                <td>
                                    <asp:SqlDataSource ID="niveles_salariales_con" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
                                
                                
                                        
                                        
                                
                                
                                        
                                        
                                        
                                        SelectCommand="SELECT [cod_nivel_salarial], [descripcion] FROM [niveles_salariales] WHERE ([cod_empresa] = @cod_empresa)">
                                        <SelectParameters>
                                            <asp:SessionParameter Name="cod_empresa" SessionField="sv_empresa" 
                                                Type="Int16" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </td>
                                <td>
                                    <asp:SqlDataSource ID="cargos_con" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
                                SelectCommand="SELECT [cod_cargo], [descripcion] FROM [cargos]"></asp:SqlDataSource>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:SqlDataSource ID="niveles_jerarquicos_con" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
                                
                                
                                        
                                        
                                
                                
                                        
                                        
                                        
                                        SelectCommand="SELECT [cod_nivel_jerarquico], [descripcion] FROM [niveles_jerarquicos] WHERE ([cod_empresa] = @cod_empresa)">
                                        <SelectParameters>
                                            <asp:SessionParameter Name="cod_empresa" SessionField="sv_empresa" 
                                                Type="Int16" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </td>
                                <td>
                                    <asp:SqlDataSource ID="contratos_con" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
                                
                                        SelectCommand="SELECT [cod_contrato], [descripcion] FROM [contratos] WHERE ([cod_empresa] = @cod_empresa)">
                                        <SelectParameters>
                                            <asp:SessionParameter Name="cod_empresa" SessionField="sv_empresa" 
                                                Type="Int16" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </td>
                                <td>
                                    <asp:SqlDataSource ID="jefes_con" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
                                
                                
                                
                                
                                        
                                        
                                
                                
                                        
                                        
                                        
                                        SelectCommand="SELECT 0 AS cod_funcionario, 'No Asignado' AS jefe UNION SELECT cod_funcionario, apellidos + ', ' + nombres AS Expr1 FROM funcionarios">
                                    </asp:SqlDataSource>
                                </td>
                                <td>
                                    <asp:SqlDataSource ID="bancos_con" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
                                SelectCommand="SELECT [cod_banco], [descripcion] FROM [bancos]"></asp:SqlDataSource>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:SqlDataSource ID="monedas_con" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
                                SelectCommand="SELECT [cod_moneda], [descripcion] FROM [monedas]">
                                    </asp:SqlDataSource>
                                </td>
                                <td>
                                    <asp:SqlDataSource ID="nacionalidades_con" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
                                
                                
                                
                                SelectCommand="SELECT [cod_nacionalidad], [descripcion] FROM [nacionalidades]">
                                    </asp:SqlDataSource>
                                </td>
                                <td>
                                    <asp:SqlDataSource ID="departamentos_con" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
                                
                                
                                
                                        
                                        
                                
                                
                                        
                                        
                                        SelectCommand="SELECT 0 AS cod_departamento, 'No Asignado' AS descripcion UNION SELECT cod_departamento, descripcion FROM departamentos">
                                    </asp:SqlDataSource>
                                </td>
                                <td>
                                    <asp:SqlDataSource ID="estados_civiles_con" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
                                
                                
                                
                                        
                                        
                                
                                
                                        
                                        
                                        SelectCommand="SELECT 0 AS cod_estado_civil, 'No Asignado' AS descripcion UNION SELECT cod_estado_civil, descripcion FROM estados_civiles">
                                    </asp:SqlDataSource>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:SqlDataSource ID="categorias_mjt_con" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
                                
                                
                                
                                SelectCommand="SELECT [cod_categoria_mjt], [descripcion] FROM [categorias_mjt]">
                                    </asp:SqlDataSource>
                                </td>
                                <td>
                                    <asp:HiddenField ID="hf_cod_funcionario" runat="server" />
                                </td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </td>
                    <td valign="top" align="left">
                        &nbsp;</td>
                </tr>
            </table>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

