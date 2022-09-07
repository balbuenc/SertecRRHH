<%@ Page Title="" Language="VB" MasterPageFile="~/menu_master.master" AutoEventWireup="false" CodeFile="man_funcionarios.aspx.vb" Inherits="man_funcionarios" %>

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
            width: 90px;
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
            width: 200px;
            text-align: left;
        }
        .ancho12
        {
            border: 1px dotted #808080;
            width: 145px;
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
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width="100%">
        <tr>
            <td align="left" width="100%">
                <asp:HiddenField ID="hf_cod_funcionario" runat="server" />
            </td>
            <td valign="top" align="right" width="100%">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" width="100%">
                <asp:FormView ID="FormView1" runat="server" 
                    DataKeyNames="cod_funcionario" DataSourceID="funcionarios_con" 
                    AllowPaging="True">
                    <EditItemTemplate>
                        <table class="style3">
                            <tr>
                                <td>
                                    <igtab:UltraWebTab ID="UltraWebTab2" runat="server" BorderColor="#949C9C" 
                                        BorderStyle="Solid" BorderWidth="1px" Height="370px" ThreeDEffect="False" 
                                        Width="650px" style="text-align: left" AutoPostBack="True" 
                                        DisplayMode="Scrollable" SelectedTab="1">
                                        <Tabs>
                                            <igtab:Tab Text="Empresa">
                                                <ContentTemplate>
                                                    <table class="style3">
                                                        <tr>
                                                            <td valign="top">
                                                                <table class="etiquetas">
                                                                    <tr>
                                                                        <td class="style6">
                                                                            Codigo:</td>
                                                                        <td class="style4" width="90px">
                                                                            &nbsp;</td>
                                                                        <td class="style7">
                                                                            <asp:Label ID="cod_funcionarioLabel1" runat="server" 
                                                                                Text='<%# Eval("cod_funcionario") %>' />
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style6" width="90px">
                                                                            Empresa:</td>
                                                                        <td class="style4" width="90px">
                                                                            &nbsp;</td>
                                                                        <td class="style7" width="200px">
                                                                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("empresa") %>'></asp:Label>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style6" width="90px">
                                                                            Gerencia:</td>
                                                                        <td class="style4" width="90px">
                                                                            &nbsp;</td>
                                                                        <td class="style7" width="200px">
                                                                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("gerencia") %>'></asp:Label>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style6" width="90px">
                                                                            Area:</td>
                                                                        <td class="style4" width="90px">
                                                                            &nbsp;</td>
                                                                        <td class="style7" width="200px">
                                                                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("area") %>'></asp:Label>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style6" width="90px">
                                                                            Ubicacion:</td>
                                                                        <td class="style4" width="90px">
                                                                            &nbsp;</td>
                                                                        <td class="style7" width="200px">
                                                                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="regiones_con" 
                                                                                DataTextField="descripcion" DataValueField="cod_region" 
                                                                                SelectedValue='<%# Bind("cod_region") %>' Width="225px">
                                                                            </asp:DropDownList>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style6" width="90px">
                                                                            Legajo:</td>
                                                                        <td class="style4" width="90px">
                                                                            &nbsp;</td>
                                                                        <td class="style7" width="200px">
                                                                            <asp:TextBox ID="codigoTextBox0" runat="server" Text='<%# Bind("codigo") %>' 
                                                                                Width="220px" />
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style6" width="90px">
                                                                            Apellidos:</td>
                                                                        <td class="style4" width="90px">
                                                                            &nbsp;</td>
                                                                        <td class="style7" width="200px">
                                                                            <asp:TextBox ID="apellidosTextBox" runat="server" 
                                                                                Text='<%# Bind("apellidos") %>' Width="220px" />
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style6" width="90px">
                                                                            Nombres:</td>
                                                                        <td class="style4" width="90px">
                                                                            &nbsp;</td>
                                                                        <td class="style7" width="200px">
                                                                            <asp:TextBox ID="nombresTextBox" runat="server" Text='<%# Bind("nombres") %>' 
                                                                                Width="220px" />
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style6" width="90px">
                                                                            Nivel Salarial:</td>
                                                                        <td class="style4" width="90px">
                                                                            &nbsp;</td>
                                                                        <td class="style7" width="200px">
                                                                            <asp:DropDownList ID="DropDownList2" runat="server" 
                                                                                DataSourceID="niveles_salariales_con" DataTextField="descripcion" 
                                                                                DataValueField="cod_nivel_salarial" 
                                                                                SelectedValue='<%# Bind("cod_nivel_salarial") %>' Width="225px">
                                                                            </asp:DropDownList>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style6" width="90px">
                                                                            Salario:</td>
                                                                        <td class="style4" width="90px">
                                                                            &nbsp;</td>
                                                                        <td class="style7" width="200px">
                                                                            <asp:TextBox ID="salarioTextBox" runat="server" Text='<%# Bind("salario") %>' 
                                                                                Width="220px" />
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style6" width="90px">
                                                                            Moneda:</td>
                                                                        <td class="style4" width="90px">
                                                                            &nbsp;</td>
                                                                        <td class="style7" width="200px">
                                                                            <asp:DropDownList ID="DropDownList11" runat="server" DataSourceID="monedas_con" 
                                                                                DataTextField="descripcion" DataValueField="cod_moneda" 
                                                                                SelectedValue='<%# Bind("cod_moneda") %>' Width="225px">
                                                                            </asp:DropDownList>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style6" width="90px">
                                                                            Cargo:</td>
                                                                        <td class="style4" width="90px">
                                                                            &nbsp;</td>
                                                                        <td class="style7" width="200px">
                                                                            <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="cargos_con" 
                                                                                DataTextField="descripcion" DataValueField="cod_cargo" 
                                                                                SelectedValue='<%# Bind("cod_cargo") %>' Width="225px">
                                                                            </asp:DropDownList>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style6" width="90px">
                                                                            Profesion:</td>
                                                                        <td class="style4" width="90px">
                                                                            &nbsp;</td>
                                                                        <td class="style7" width="200px">
                                                                            <asp:TextBox ID="profesionTextBox" runat="server" 
                                                                                Text='<%# Bind("profesion") %>' Width="220px" />
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style6" width="90px">
                                                                            &nbsp;</td>
                                                                        <td class="style4" width="90px">
                                                                            &nbsp;</td>
                                                                        <td class="style7" width="200px">
                                                                            &nbsp;</td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                            <td valign="top">
                                                                <table class="etiquetas">
                                                                    <tr>
                                                                        <td width="150px" class="style6">
                                                                            Tipo de Remuneracion:</td>
                                                                        <td class="style4" width="145px">
                                                                            &nbsp;</td>
                                                                        <td class="style7">
                                                                            <asp:DropDownList ID="DropDownList4" runat="server" 
                                                                                SelectedValue='<%# Bind("tipo_remuneracion") %>' Width="155px">
                                                                                <asp:ListItem Value="M">Mensual</asp:ListItem>
                                                                                <asp:ListItem Value="J">Jornalero</asp:ListItem>
                                                                            </asp:DropDownList>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td width="145px" class="style6">
                                                                            Nivel Jerarquico:</td>
                                                                        <td class="style4" width="145px">
                                                                            &nbsp;</td>
                                                                        <td class="style7">
                                                                            <asp:DropDownList ID="DropDownList5" runat="server" 
                                                                                DataSourceID="niveles_jerarquicos_con" DataTextField="descripcion" 
                                                                                DataValueField="cod_nivel_jerarquico" 
                                                                                SelectedValue='<%# Bind("cod_nivel_jerarquico") %>' Width="155px">
                                                                            </asp:DropDownList>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td width="145px" class="style6">
                                                                            Tipo de Contrato:</td>
                                                                        <td class="style4" width="145px">
                                                                            &nbsp;</td>
                                                                        <td class="style7">
                                                                            <asp:DropDownList ID="DropDownList6" runat="server" 
                                                                                DataSourceID="contratos_con" DataTextField="descripcion" 
                                                                                DataValueField="cod_contrato" SelectedValue='<%# Bind("cod_contrato") %>' 
                                                                                Width="155px">
                                                                            </asp:DropDownList>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td width="145px" class="style6">
                                                                            Jefe:</td>
                                                                        <td class="style4" width="145px">
                                                                            &nbsp;</td>
                                                                        <td class="style7">
                                                                            &nbsp;</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td width="145px" class="style6">
                                                                            Grado Hay:</td>
                                                                        <td class="style4" width="145px">
                                                                            &nbsp;</td>
                                                                        <td class="style7">
                                                                            <asp:TextBox ID="grado_hayTextBox" runat="server" 
                                                                                Text='<%# Bind("grado_hay") %>' Width="50px" />
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td width="145px" class="style6">
                                                                            Confidencial:</td>
                                                                        <td class="style4" width="145px">
                                                                            &nbsp;</td>
                                                                        <td class="style7">
                                                                            <asp:DropDownList ID="DropDownList18" runat="server">
                                                                                <asp:ListItem Value="1">Si</asp:ListItem>
                                                                                <asp:ListItem Value="0">No</asp:ListItem>
                                                                            </asp:DropDownList>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td width="145px" class="style6">
                                                                            Banco:</td>
                                                                        <td class="style4" width="145px">
                                                                            &nbsp;</td>
                                                                        <td class="style7">
                                                                            <asp:DropDownList ID="DropDownList9" runat="server" DataSourceID="bancos_con" 
                                                                                DataTextField="descripcion" DataValueField="cod_banco" 
                                                                                SelectedValue='<%# Bind("cod_banco") %>' Width="155px">
                                                                            </asp:DropDownList>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td width="145px" class="style6">
                                                                            Cta. Banco:</td>
                                                                        <td class="style4" width="145px">
                                                                            &nbsp;</td>
                                                                        <td class="style7">
                                                                            <asp:TextBox ID="cuenta_nroTextBox" runat="server" 
                                                                                Text='<%# Bind("cuenta_nro") %>' Width="150px" />
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td width="145px" class="style6">
                                                                            Fecha de Ingreso:</td>
                                                                        <td class="style4" width="145px">
                                                                            &nbsp;</td>
                                                                        <td class="style7">
                                                                            <asp:TextBox ID="fecha_ingresoTextBox" runat="server" 
                                                                                Text='<%# Bind("fecha_ingreso") %>' Width="80px" />
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td width="145px" class="style6">
                                                                            Fecha de Egreso:</td>
                                                                        <td class="style4" width="145px">
                                                                            &nbsp;</td>
                                                                        <td class="style7">
                                                                            <asp:TextBox ID="fecha_egresoTextBox" runat="server" 
                                                                                Text='<%# Bind("fecha_egreso") %>' Width="80px" />
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td width="145px" class="style6">
                                                                            Fecha de Reingreso:</td>
                                                                        <td class="style4" width="145px">
                                                                            &nbsp;</td>
                                                                        <td class="style7">
                                                                            <asp:TextBox ID="fecha_reingresoTextBox" runat="server" 
                                                                                Text='<%# Bind("fecha_reingreso") %>' Width="80px" />
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td width="145px" class="style6">
                                                                            Status:</td>
                                                                        <td class="style4" width="145px">
                                                                            &nbsp;</td>
                                                                        <td class="style7">
                                                                            <asp:DropDownList ID="DropDownList10" runat="server" 
                                                                                SelectedValue='<%# Bind("estado") %>'>
                                                                                <asp:ListItem Value="A">Activo</asp:ListItem>
                                                                                <asp:ListItem Value="I">Inactivo</asp:ListItem>
                                                                                <asp:ListItem Value="E">Egreso</asp:ListItem>
                                                                            </asp:DropDownList>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td width="145px" class="style6">
                                                                            &nbsp;</td>
                                                                        <td class="style4" width="145px">
                                                                            &nbsp;</td>
                                                                        <td class="style7">
                                                                            &nbsp;</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style6" width="145px">
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
                                                </ContentTemplate>
                                            </igtab:Tab>
                                            <igtab:TabSeparator>
                                            </igtab:TabSeparator>
                                            <igtab:TabSeparator>
                                            </igtab:TabSeparator>
                                            <igtab:TabSeparator>
                                            </igtab:TabSeparator>
                                            <igtab:TabSeparator>
                                            </igtab:TabSeparator>
                                            <igtab:Tab Text="Personales">
                                                <ContentTemplate>
                                                    <table class="etiquetas">
                                                        <tr>
                                                            <td class="style6">
                                                                Sexo:</td>
                                                            <td class="style4" width="135px">
                                                                &nbsp;</td>
                                                            <td width="250px">
                                                                <asp:DropDownList ID="DropDownList17" runat="server" 
                                                                    SelectedValue='<%# Bind("sexo") %>' Width="155px">
                                                                    <asp:ListItem Value="M">Masculino</asp:ListItem>
                                                                    <asp:ListItem Value="F">Femenino</asp:ListItem>
                                                                </asp:DropDownList>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style6">
                                                                Fecha de Nacimiento:</td>
                                                            <td class="style4">
                                                                &nbsp;</td>
                                                            <td>
                                                                <asp:TextBox ID="fecha_nacimientoTextBox" runat="server" 
                                                                    Text='<%# Bind("fecha_nacimiento") %>' Width="80px" />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style6">
                                                                Cedula de Identidad:</td>
                                                            <td class="style4">
                                                                &nbsp;</td>
                                                            <td>
                                                                <asp:TextBox ID="documentoTextBox" runat="server" 
                                                                    Text='<%# Bind("documento") %>' Width="150px" />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style6">
                                                                Nacionalidad:</td>
                                                            <td class="style4">
                                                                &nbsp;</td>
                                                            <td>
                                                                <asp:DropDownList ID="DropDownList13" runat="server" 
                                                                    DataSourceID="nacionalidades_con" DataTextField="descripcion" 
                                                                    DataValueField="cod_nacionalidad" 
                                                                    SelectedValue='<%# Bind("cod_nacionalidad") %>' Width="155px">
                                                                </asp:DropDownList>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style6">
                                                                Departamento:</td>
                                                            <td class="style4">
                                                                &nbsp;</td>
                                                            <td>
                                                                <asp:DropDownList ID="DropDownList14" runat="server" 
                                                                    DataSourceID="departamentos_con" DataTextField="descripcion" 
                                                                    DataValueField="cod_departamento" Width="155px">
                                                                </asp:DropDownList>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style6">
                                                                Ciudad:</td>
                                                            <td class="style4">
                                                                &nbsp;</td>
                                                            <td>
                                                                <asp:TextBox ID="ciudadTextBox" runat="server" Text='<%# Bind("ciudad") %>' 
                                                                    Width="150px" />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style6">
                                                                Codigo Postal:</td>
                                                            <td class="style4">
                                                                &nbsp;</td>
                                                            <td>
                                                                <asp:TextBox ID="postalTextBox" runat="server" Text='<%# Bind("postal") %>' 
                                                                    Width="150px" />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style6">
                                                                Direccion:</td>
                                                            <td class="style4">
                                                                &nbsp;</td>
                                                            <td>
                                                                <asp:TextBox ID="direccionTextBox" runat="server" 
                                                                    Text='<%# Bind("direccion") %>' Width="400px" />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style6">
                                                                Telefono:</td>
                                                            <td class="style4">
                                                                &nbsp;</td>
                                                            <td>
                                                                <asp:TextBox ID="telefonoTextBox" runat="server" 
                                                                    Text='<%# Bind("telefono") %>' Width="200px" />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style6">
                                                                Celular:</td>
                                                            <td class="style4">
                                                                &nbsp;</td>
                                                            <td>
                                                                <asp:TextBox ID="celularTextBox" runat="server" Text='<%# Bind("celular") %>' 
                                                                    Width="200px" />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style6">
                                                                Email:</td>
                                                            <td class="style4">
                                                                &nbsp;</td>
                                                            <td>
                                                                <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' 
                                                                    Width="200px" />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style6">
                                                                Trabajos Anteriores:</td>
                                                            <td class="style4">
                                                                &nbsp;</td>
                                                            <td>
                                                                <asp:TextBox ID="trabajos_anterioresTextBox" runat="server" 
                                                                    Text='<%# Bind("trabajos_anteriores") %>' Width="400px" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </ContentTemplate>
                                            </igtab:Tab>
                                            <igtab:TabSeparator>
                                            </igtab:TabSeparator>
                                            <igtab:TabSeparator>
                                            </igtab:TabSeparator>
                                            <igtab:TabSeparator>
                                            </igtab:TabSeparator>
                                            <igtab:TabSeparator>
                                            </igtab:TabSeparator>
                                            <igtab:Tab Text="Familiares">
                                                <ContentTemplate>
                                                    <table class="etiquetas">
                                                        <tr>
                                                            <td class="style6">
                                                                Estado Civil:</td>
                                                            <td class="style4" width="195px">
                                                                &nbsp;</td>
                                                            <td width="250px">
                                                                <asp:DropDownList ID="DropDownList15" runat="server" 
                                                                    DataSourceID="estados_civiles_con" DataTextField="descripcion" 
                                                                    DataValueField="cod_estado_civil" SelectedValue='<%# Bind("estado_civil") %>' 
                                                                    Width="155px">
                                                                </asp:DropDownList>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style6">
                                                                Nombres Conyuge:</td>
                                                            <td class="style4">
                                                                &nbsp;</td>
                                                            <td>
                                                                <asp:TextBox ID="nombres_conyugueTextBox" runat="server" 
                                                                    Text='<%# Bind("nombres_conyugue") %>' Width="150px" />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style6">
                                                                Apellidos Conyuge:</td>
                                                            <td class="style4">
                                                                &nbsp;</td>
                                                            <td>
                                                                <asp:TextBox ID="apellidos_conyugueTextBox" runat="server" 
                                                                    Text='<%# Bind("apellidos_conyugue") %>' Width="150px" />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style6">
                                                                Fecha de Nacimiento Conyuge:</td>
                                                            <td class="style4">
                                                                &nbsp;</td>
                                                            <td>
                                                                <asp:TextBox ID="fecha_nacimiento_conyugueTextBox" runat="server" 
                                                                    Text='<%# Bind("fecha_nacimiento_conyugue") %>' Width="80px" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </ContentTemplate>
                                            </igtab:Tab>
                                            <igtab:TabSeparator>
                                            </igtab:TabSeparator>
                                            <igtab:TabSeparator>
                                            </igtab:TabSeparator>
                                            <igtab:TabSeparator>
                                            </igtab:TabSeparator>
                                            <igtab:TabSeparator>
                                            </igtab:TabSeparator>
                                            <igtab:Tab Text="M.J.T.">
                                                <ContentTemplate>
                                                    <table class="etiquetas">
                                                        <tr>
                                                            <td class="style6">
                                                                Discriminacion de Personas:</td>
                                                            <td class="style4" width="170px">
                                                                &nbsp;</td>
                                                            <td width="250px">
                                                                <asp:DropDownList ID="DropDownList16" runat="server" 
                                                                    DataSourceID="categorias_mjt_con" DataTextField="descripcion" 
                                                                    DataValueField="cod_categoria_mjt" 
                                                                    SelectedValue='<%# Bind("cod_categoria_mjt") %>' Width="155px">
                                                                </asp:DropDownList>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style6">
                                                                Valor Head:</td>
                                                            <td class="style4">
                                                                &nbsp;</td>
                                                            <td>
                                                                <asp:TextBox ID="valor_headTextBox" runat="server" 
                                                                    Text='<%# Bind("valor_head") %>' Width="80px" />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style6">
                                                                FTE:</td>
                                                            <td class="style4">
                                                                &nbsp;</td>
                                                            <td>
                                                                <asp:TextBox ID="fteTextBox" runat="server" Text='<%# Bind("fte") %>' 
                                                                    Width="80px" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </ContentTemplate>
                                            </igtab:Tab>
                                            <igtab:TabSeparator>
                                            </igtab:TabSeparator>
                                            <igtab:TabSeparator>
                                            </igtab:TabSeparator>
                                            <igtab:TabSeparator>
                                            </igtab:TabSeparator>
                                            <igtab:TabSeparator>
                                            </igtab:TabSeparator>
                                            <igtab:Tab Text="Capacitaciones">
                                                <ContentTemplate>
                                                    <table class="style3">
                                                        <tr>
                                                            <td>
                                                                &nbsp;</td>
                                                        </tr>
                                                    </table>
                                                </ContentTemplate>
                                            </igtab:Tab>
                                            <igtab:TabSeparator>
                                            </igtab:TabSeparator>
                                            <igtab:TabSeparator>
                                            </igtab:TabSeparator>
                                            <igtab:TabSeparator>
                                            </igtab:TabSeparator>
                                            <igtab:TabSeparator>
                                            </igtab:TabSeparator>
                                            <igtab:Tab Text="Gourmet">
                                                <ContentTemplate>
                                                    <table class="etiquetas">
                                                        <tr>
                                                            <td class="style6">
                                                                Ticket de Alimentacion:</td>
                                                            <td class="style4" width="145px">
                                                                &nbsp;</td>
                                                            <td width="250px">
                                                                <asp:TextBox ID="ticket_alimentacionTextBox" runat="server" 
                                                                    Text='<%# Bind("ticket_alimentacion") %>' Width="150px" />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style6">
                                                                Cuenta de Refrigerio:</td>
                                                            <td class="style4">
                                                                &nbsp;</td>
                                                            <td>
                                                                <asp:TextBox ID="cta_alimentacionTextBox" runat="server" 
                                                                    Text='<%# Bind("cta_alimentacion") %>' Width="150px" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </ContentTemplate>
                                            </igtab:Tab>
                                        </Tabs>
                                        <RoundedImage FillStyle="LeftMergedWithCenter" HoverImage="ig_tab_winXPs2.gif" 
                                            LeftSideWidth="7" NormalImage="ig_tab_winXPs3.gif" RightSideWidth="6" 
                                            SelectedImage="ig_tab_winXPs1.gif" ShiftOfImages="2" />
                                        <SelectedTabStyle>
                                            <Padding Bottom="2px" />
                                        </SelectedTabStyle>
                                        <DefaultTabStyle BackColor="GhostWhite" Font-Names="Microsoft Sans Serif" 
                                            Font-Size="8pt" ForeColor="Black" Height="22px">
                                            <Padding Top="2px" />
                                        </DefaultTabStyle>
                                    </igtab:UltraWebTab>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="style3">
                                        <tr>
                                            <td align="right">
                                                <asp:ImageButton ID="UpdateButton" runat="server" CausesValidation="True" 
                                                    CommandName="Update" ImageUrl="~/images/controles/guardar.png" 
                                                    Text="Update" ToolTip="Guardar cambios" />
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
                                <td>
                                    <igtab:UltraWebTab ID="UltraWebTab3" runat="server" BorderColor="#949C9C" 
                                        BorderStyle="Solid" BorderWidth="1px" Height="370px" ThreeDEffect="False" 
                                        Width="650px" style="text-align: left">
                                        <Tabs>
                                            <igtab:Tab Text="Empresa">
                                                <ContentTemplate>
                                                    <table class="style3">
                                                        <tr>
                                                            <td valign="top">
                                                                <table class="etiquetas">
                                                                    <tr>
                                                                        <td class="style6">
                                                                            Empresa:</td>
                                                                        <td class="style4" width="90px">
                                                                            &nbsp;</td>
                                                                        <td width="200px" class="style7">
                                                                            <asp:HiddenField ID="HiddenField1" runat="server" 
                                                                                Value='<%# Bind("cod_empresa") %>' />
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td width="90px" class="style6">
                                                                            Gerencia:</td>
                                                                        <td class="style4" width="90px">
                                                                            &nbsp;</td>
                                                                        <td width="200px" class="style7">
                                                                            -</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td width="90px" class="style6">
                                                                            Area:</td>
                                                                        <td class="style4" width="90px">
                                                                            &nbsp;</td>
                                                                        <td width="200px" class="style7">
                                                                            -</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td width="90px" class="style6">
                                                                            Ubicacion:</td>
                                                                        <td class="style4" width="90px">
                                                                            &nbsp;</td>
                                                                        <td width="200px" class="style7">
                                                                            <asp:DropDownList ID="DropDownList19" runat="server" 
                                                                                DataSourceID="regiones_con" DataTextField="descripcion" 
                                                                                DataValueField="cod_region" SelectedValue='<%# Bind("cod_region") %>' 
                                                                                Width="225px">
                                                                            </asp:DropDownList>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td width="90px" class="style6">
                                                                            Legajo:</td>
                                                                        <td class="style4" width="90px">
                                                                            &nbsp;</td>
                                                                        <td width="200px" class="style7">
                                                                            <asp:TextBox ID="codigoTextBox" runat="server" Text='<%# Bind("codigo") %>' 
                                                                                Width="220px" />
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td width="90px" class="style6">
                                                                            Apellidos:</td>
                                                                        <td class="style4" width="90px">
                                                                            &nbsp;</td>
                                                                        <td width="200px" class="style7">
                                                                            <asp:TextBox ID="apellidosTextBox_i" runat="server" 
                                                                                Text='<%# Bind("apellidos") %>' Width="220px" />
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td width="90px" class="style6">
                                                                            Nombres:</td>
                                                                        <td class="style4" width="90px">
                                                                            &nbsp;</td>
                                                                        <td width="200px" class="style7">
                                                                            <asp:TextBox ID="nombresTextBox_i" runat="server" 
                                                                                Text='<%# Bind("nombres") %>' Width="220px" />
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td width="90px" class="style6">
                                                                            Nivel Salarial:</td>
                                                                        <td class="style4" width="90px">
                                                                            &nbsp;</td>
                                                                        <td width="200px" class="style7">
                                                                            <asp:DropDownList ID="DropDownList20" runat="server" 
                                                                                DataSourceID="niveles_salariales_con" DataTextField="descripcion" 
                                                                                DataValueField="cod_nivel_salarial" 
                                                                                SelectedValue='<%# Bind("cod_nivel_salarial") %>' Width="225px">
                                                                            </asp:DropDownList>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td width="90px" class="style6">
                                                                            Salario:</td>
                                                                        <td class="style4" width="90px">
                                                                            &nbsp;</td>
                                                                        <td width="200px" class="style7">
                                                                            <asp:TextBox ID="salarioTextBox_i" runat="server" 
                                                                                Text='<%# Bind("salario") %>' Width="220px" />
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td width="90px" class="style6">
                                                                            Moneda:</td>
                                                                        <td class="style4" width="90px">
                                                                            &nbsp;</td>
                                                                        <td width="200px" class="style7">
                                                                            <asp:DropDownList ID="DropDownList21" runat="server" DataSourceID="monedas_con" 
                                                                                DataTextField="descripcion" DataValueField="cod_moneda" 
                                                                                SelectedValue='<%# Bind("cod_moneda") %>' Width="225px">
                                                                            </asp:DropDownList>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td width="90px" class="style6">
                                                                            Cargo:</td>
                                                                        <td class="style4" width="90px">
                                                                            &nbsp;</td>
                                                                        <td width="200px" class="style7">
                                                                            <asp:DropDownList ID="DropDownList22" runat="server" DataSourceID="cargos_con" 
                                                                                DataTextField="descripcion" DataValueField="cod_cargo" 
                                                                                SelectedValue='<%# Bind("cod_cargo") %>' Width="225px">
                                                                            </asp:DropDownList>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td width="90px" class="style6">
                                                                            Profesion:</td>
                                                                        <td class="style4" width="90px">
                                                                            &nbsp;</td>
                                                                        <td width="200px" class="style7">
                                                                            <asp:TextBox ID="profesionTextBox_i" runat="server" 
                                                                                Text='<%# Bind("profesion") %>' Width="220px" />
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style6" width="90px">
                                                                            &nbsp;</td>
                                                                        <td class="style4" width="90px">
                                                                            &nbsp;</td>
                                                                        <td class="style7" width="200px">
                                                                            &nbsp;</td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                            <td valign="top">
                                                                <table class="etiquetas">
                                                                    <tr>
                                                                        <td width="150px" class="style6">
                                                                            Tipo de Remuneracion:</td>
                                                                        <td class="style4" width="145px">
                                                                            &nbsp;</td>
                                                                        <td class="style8">
                                                                            <asp:DropDownList ID="DropDownList26" runat="server" 
                                                                                SelectedValue='<%# Bind("tipo_remuneracion") %>' Width="155px">
                                                                                <asp:ListItem Value="M">Mensual</asp:ListItem>
                                                                                <asp:ListItem Value="J">Jornalero</asp:ListItem>
                                                                            </asp:DropDownList>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style6">
                                                                            Nivel Jerarquico:</td>
                                                                        <td class="style4" width="145px">
                                                                            &nbsp;</td>
                                                                        <td class="style8">
                                                                            <asp:DropDownList ID="DropDownList23" runat="server" 
                                                                                DataSourceID="niveles_jerarquicos_con" DataTextField="descripcion" 
                                                                                DataValueField="cod_nivel_jerarquico" 
                                                                                SelectedValue='<%# Bind("cod_nivel_jerarquico") %>' Width="155px">
                                                                            </asp:DropDownList>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style6">
                                                                            Tipo de Contrato:</td>
                                                                        <td class="style4" width="145px">
                                                                            &nbsp;</td>
                                                                        <td class="style8">
                                                                            <asp:DropDownList ID="DropDownList24" runat="server" 
                                                                                DataSourceID="contratos_con" DataTextField="descripcion" 
                                                                                DataValueField="cod_contrato" SelectedValue='<%# Bind("cod_contrato") %>' 
                                                                                Width="155px">
                                                                            </asp:DropDownList>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style6">
                                                                            Jefe:</td>
                                                                        <td class="style4" width="145px">
                                                                            &nbsp;</td>
                                                                        <td class="style8">
                                                                            &nbsp;</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style6">
                                                                            Grado Hay:</td>
                                                                        <td class="style4" width="145px">
                                                                            &nbsp;</td>
                                                                        <td class="style8">
                                                                            <asp:TextBox ID="grado_hayTextBox_i" runat="server" 
                                                                                Text='<%# Bind("grado_hay") %>' Width="50px" />
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style6">
                                                                            Confidencial:</td>
                                                                        <td class="style4" width="145px">
                                                                            &nbsp;</td>
                                                                        <td class="style8">
                                                                            <asp:DropDownList ID="DropDownList28" runat="server" 
                                                                                SelectedValue='<%# Bind("confidencial") %>'>
                                                                                <asp:ListItem Value="1">Si</asp:ListItem>
                                                                                <asp:ListItem Value="0">No</asp:ListItem>
                                                                            </asp:DropDownList>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style6">
                                                                            Banco:</td>
                                                                        <td class="style4" width="145px">
                                                                            &nbsp;</td>
                                                                        <td class="style8">
                                                                            <asp:DropDownList ID="DropDownList25" runat="server" DataSourceID="bancos_con" 
                                                                                DataTextField="descripcion" DataValueField="cod_banco" 
                                                                                SelectedValue='<%# Bind("cod_banco") %>' Width="155px">
                                                                            </asp:DropDownList>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style6">
                                                                            Cta. Banco:</td>
                                                                        <td class="style4" width="145px">
                                                                            &nbsp;</td>
                                                                        <td class="style8">
                                                                            <asp:TextBox ID="cuenta_nroTextBox_i" runat="server" 
                                                                                Text='<%# Bind("cuenta_nro") %>' Width="150px" />
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style6">
                                                                            Fecha de Ingreso:</td>
                                                                        <td class="style4" width="145px">
                                                                            &nbsp;</td>
                                                                        <td class="style8">
                                                                            <asp:TextBox ID="fecha_ingresoTextBox_i" runat="server" 
                                                                                Text='<%# Bind("fecha_ingreso") %>' Width="80px" />
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style6">
                                                                            Fecha de Egreso:</td>
                                                                        <td class="style4" width="145px">
                                                                            &nbsp;</td>
                                                                        <td class="style8">
                                                                            <asp:TextBox ID="fecha_egresoTextBox_i" runat="server" 
                                                                                Text='<%# Bind("fecha_egreso") %>' Width="80px" />
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style6">
                                                                            Fecha de Reingreso:</td>
                                                                        <td class="style4" width="145px">
                                                                            &nbsp;</td>
                                                                        <td class="style8">
                                                                            <asp:TextBox ID="fecha_reingresoTextBox_i" runat="server" 
                                                                                Text='<%# Bind("fecha_reingreso") %>' Width="80px" />
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style6">
                                                                            Status:</td>
                                                                        <td class="style4" width="145px">
                                                                            &nbsp;</td>
                                                                        <td class="style8">
                                                                            <asp:DropDownList ID="DropDownList27" runat="server" 
                                                                                SelectedValue='<%# Bind("estado") %>'>
                                                                                <asp:ListItem Value="A">Activo</asp:ListItem>
                                                                                <asp:ListItem Value="I">Inactivo</asp:ListItem>
                                                                                <asp:ListItem Value="E">Egreso</asp:ListItem>
                                                                            </asp:DropDownList>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style6">
                                                                            &nbsp;</td>
                                                                        <td class="style4" width="145px">
                                                                            &nbsp;</td>
                                                                        <td class="style8">
                                                                            &nbsp;</td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </ContentTemplate>
                                            </igtab:Tab>
                                            <igtab:TabSeparator>
                                            </igtab:TabSeparator>
                                            <igtab:TabSeparator>
                                            </igtab:TabSeparator>
                                            <igtab:TabSeparator>
                                            </igtab:TabSeparator>
                                            <igtab:TabSeparator>
                                            </igtab:TabSeparator>
                                            <igtab:Tab Text="Personales">
                                                <ContentTemplate>
                                                    <table class="etiquetas">
                                                        <tr>
                                                            <td class="style6">
                                                                Sexo:</td>
                                                            <td class="style4" width="135px">
                                                                &nbsp;</td>
                                                            <td width="250px">
                                                                <asp:DropDownList ID="DropDownList31" runat="server" 
                                                                    SelectedValue='<%# Bind("sexo") %>' Width="155px">
                                                                    <asp:ListItem Value="M">Masculino</asp:ListItem>
                                                                    <asp:ListItem Value="F">Femenino</asp:ListItem>
                                                                </asp:DropDownList>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style6">
                                                                Fecha de Nacimiento:</td>
                                                            <td class="style4">
                                                                &nbsp;</td>
                                                            <td>
                                                                <asp:TextBox ID="fecha_nacimientoTextBox_i" runat="server" 
                                                                    Text='<%# Bind("fecha_nacimiento") %>' Width="80px" />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style6">
                                                                Cedula de Identidad:</td>
                                                            <td class="style4">
                                                                &nbsp;</td>
                                                            <td>
                                                                <asp:TextBox ID="documentoTextBox_i" runat="server" 
                                                                    Text='<%# Bind("documento") %>' Width="150px" />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style6">
                                                                Nacionalidad:</td>
                                                            <td class="style4">
                                                                &nbsp;</td>
                                                            <td>
                                                                <asp:DropDownList ID="DropDownList29" runat="server" 
                                                                    DataSourceID="nacionalidades_con" DataTextField="descripcion" 
                                                                    DataValueField="cod_nacionalidad" 
                                                                    SelectedValue='<%# Bind("cod_nacionalidad") %>' Width="155px">
                                                                </asp:DropDownList>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style6">
                                                                Departamento:</td>
                                                            <td class="style4">
                                                                &nbsp;</td>
                                                            <td>
                                                                <asp:DropDownList ID="DropDownList30" runat="server" 
                                                                    DataSourceID="departamentos_con" DataTextField="descripcion" 
                                                                    DataValueField="cod_departamento" 
                                                                    SelectedValue='<%# Bind("cod_departamento") %>' Width="155px">
                                                                </asp:DropDownList>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style6">
                                                                Ciudad:</td>
                                                            <td class="style4">
                                                                &nbsp;</td>
                                                            <td>
                                                                <asp:TextBox ID="ciudadTextBox_i" runat="server" Text='<%# Bind("ciudad") %>' 
                                                                    Width="150px" />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style6">
                                                                Codigo Postal:</td>
                                                            <td class="style4">
                                                                &nbsp;</td>
                                                            <td>
                                                                <asp:TextBox ID="postalTextBox_i" runat="server" Text='<%# Bind("postal") %>' 
                                                                    Width="150px" />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style6">
                                                                Direccion:</td>
                                                            <td class="style4">
                                                                &nbsp;</td>
                                                            <td>
                                                                <asp:TextBox ID="direccionTextBox_i" runat="server" 
                                                                    Text='<%# Bind("direccion") %>' Width="400px" />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style6">
                                                                Telefono:</td>
                                                            <td class="style4">
                                                                &nbsp;</td>
                                                            <td>
                                                                <asp:TextBox ID="telefonoTextBox_i" runat="server" 
                                                                    Text='<%# Bind("telefono") %>' Width="200px" />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style6">
                                                                Celular:</td>
                                                            <td class="style4">
                                                                &nbsp;</td>
                                                            <td>
                                                                <asp:TextBox ID="celularTextBox_i" runat="server" 
                                                                    Text='<%# Bind("celular") %>' Width="200px" />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style6">
                                                                Email:</td>
                                                            <td class="style4">
                                                                &nbsp;</td>
                                                            <td>
                                                                <asp:TextBox ID="emailTextBox_i" runat="server" Text='<%# Bind("email") %>' 
                                                                    Width="200px" />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style6">
                                                                Trabajos Anteriores:</td>
                                                            <td class="style4">
                                                                &nbsp;</td>
                                                            <td>
                                                                <asp:TextBox ID="trabajos_anterioresTextBox_i" runat="server" 
                                                                    Text='<%# Bind("trabajos_anteriores") %>' Width="400px" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </ContentTemplate>
                                            </igtab:Tab>
                                            <igtab:TabSeparator>
                                            </igtab:TabSeparator>
                                            <igtab:TabSeparator>
                                            </igtab:TabSeparator>
                                            <igtab:TabSeparator>
                                            </igtab:TabSeparator>
                                            <igtab:TabSeparator>
                                            </igtab:TabSeparator>
                                            <igtab:Tab Text="Familiares">
                                                <ContentTemplate>
                                                    <table class="etiquetas">
                                                        <tr>
                                                            <td class="style6">
                                                                Estado Civil:</td>
                                                            <td class="style4" width="195px">
                                                                &nbsp;</td>
                                                            <td width="250px">
                                                                <asp:DropDownList ID="DropDownList32" runat="server" 
                                                                    DataSourceID="estados_civiles_con" DataTextField="descripcion" 
                                                                    DataValueField="cod_estado_civil" SelectedValue='<%# Bind("estado_civil") %>' 
                                                                    Width="155px">
                                                                </asp:DropDownList>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style6">
                                                                Nombres Conyuge:</td>
                                                            <td class="style4">
                                                                &nbsp;</td>
                                                            <td>
                                                                <asp:TextBox ID="nombres_conyugueTextBox_i" runat="server" 
                                                                    Text='<%# Bind("nombres_conyugue") %>' Width="150px" />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style6">
                                                                Apellidos Conyuge:</td>
                                                            <td class="style4">
                                                                &nbsp;</td>
                                                            <td>
                                                                <asp:TextBox ID="apellidos_conyugueTextBox_i" runat="server" 
                                                                    Text='<%# Bind("apellidos_conyugue") %>' Width="150px" />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style6">
                                                                Fecha de Nacimiento Conyuge:</td>
                                                            <td class="style4">
                                                                &nbsp;</td>
                                                            <td>
                                                                <asp:TextBox ID="fecha_nacimiento_conyugueTextBox_i" runat="server" 
                                                                    Text='<%# Bind("fecha_nacimiento_conyugue") %>' Width="80px" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </ContentTemplate>
                                            </igtab:Tab>
                                            <igtab:TabSeparator>
                                            </igtab:TabSeparator>
                                            <igtab:TabSeparator>
                                            </igtab:TabSeparator>
                                            <igtab:TabSeparator>
                                            </igtab:TabSeparator>
                                            <igtab:TabSeparator>
                                            </igtab:TabSeparator>
                                            <igtab:Tab Text="M.J.T.">
                                                <ContentTemplate>
                                                    <table class="etiquetas">
                                                        <tr>
                                                            <td class="style6">
                                                                Discriminacion de Personas:</td>
                                                            <td class="style4" width="170px">
                                                                &nbsp;</td>
                                                            <td width="250px">
                                                                <asp:DropDownList ID="DropDownList33" runat="server" 
                                                                    DataSourceID="categorias_mjt_con" DataTextField="descripcion" 
                                                                    DataValueField="cod_categoria_mjt" 
                                                                    SelectedValue='<%# Bind("cod_categoria_mjt") %>' Width="155px">
                                                                </asp:DropDownList>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style6">
                                                                Valor Head:</td>
                                                            <td class="style4">
                                                                &nbsp;</td>
                                                            <td>
                                                                <asp:TextBox ID="valor_headTextBox_i" runat="server" 
                                                                    Text='<%# Bind("valor_head") %>' Width="80px" />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style6">
                                                                FTE:</td>
                                                            <td class="style4">
                                                                &nbsp;</td>
                                                            <td>
                                                                <asp:TextBox ID="fteTextBox_i" runat="server" Text='<%# Bind("fte") %>' 
                                                                    Width="80px" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </ContentTemplate>
                                            </igtab:Tab>
                                            <igtab:TabSeparator>
                                            </igtab:TabSeparator>
                                            <igtab:TabSeparator>
                                            </igtab:TabSeparator>
                                            <igtab:TabSeparator>
                                            </igtab:TabSeparator>
                                            <igtab:TabSeparator>
                                            </igtab:TabSeparator>
                                            <igtab:Tab Text="Capacitaciones">
                                                <ContentTemplate>
                                                    <table class="style3">
                                                        <tr>
                                                            <td>
                                                                &nbsp;</td>
                                                        </tr>
                                                    </table>
                                                </ContentTemplate>
                                            </igtab:Tab>
                                            <igtab:TabSeparator>
                                            </igtab:TabSeparator>
                                            <igtab:TabSeparator>
                                            </igtab:TabSeparator>
                                            <igtab:TabSeparator>
                                            </igtab:TabSeparator>
                                            <igtab:TabSeparator>
                                            </igtab:TabSeparator>
                                            <igtab:Tab Text="Gourmet">
                                                <ContentTemplate>
                                                    <table class="etiquetas">
                                                        <tr>
                                                            <td class="style6">
                                                                Ticket de Alimentacion:</td>
                                                            <td class="style4" width="145px">
                                                                &nbsp;</td>
                                                            <td width="250px">
                                                                <asp:TextBox ID="ticket_alimentacionTextBox_i" runat="server" 
                                                                    Text='<%# Bind("ticket_alimentacion") %>' Width="150px" />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style6">
                                                                Cuenta de Refrigerio:</td>
                                                            <td class="style4">
                                                                &nbsp;</td>
                                                            <td>
                                                                <asp:TextBox ID="cta_alimentacionTextBox_i" runat="server" 
                                                                    Text='<%# Bind("cta_alimentacion") %>' Width="150px" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </ContentTemplate>
                                            </igtab:Tab>
                                        </Tabs>
                                        <RoundedImage FillStyle="LeftMergedWithCenter" HoverImage="ig_tab_winXPs2.gif" 
                                            LeftSideWidth="7" NormalImage="ig_tab_winXPs3.gif" RightSideWidth="6" 
                                            SelectedImage="ig_tab_winXPs1.gif" ShiftOfImages="2" />
                                        <SelectedTabStyle>
                                            <Padding Bottom="2px" />
                                        </SelectedTabStyle>
                                        <DefaultTabStyle BackColor="GhostWhite" Font-Names="Microsoft Sans Serif" 
                                            Font-Size="8pt" ForeColor="Black" Height="22px">
                                            <Padding Top="2px" />
                                        </DefaultTabStyle>
                                    </igtab:UltraWebTab>
                                </td>
                            </tr>
                            <tr>
                                <td align="center">
                                    <table class="style3">
                                        <tr>
                                            <td align="right">
                                                <asp:ImageButton ID="InsertButton" runat="server" CausesValidation="True" 
                                                    CommandName="Insert" ImageUrl="~/images/controles/add.png" Text="Insert" 
                                                    ToolTip="Insertar" />
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
                                <td>
                                    <igtab:UltraWebTab ID="UltraWebTab1" runat="server" BorderColor="#949C9C" 
                                        BorderStyle="Solid" BorderWidth="1px" Height="370px" ThreeDEffect="False" 
                                        Width="650px" style="text-align: left">
                                        <Tabs>
                                            <igtab:Tab Text="Empresa">
                                                <ContentTemplate>
                                                    <table class="style3">
                                                        <tr>
                                                            <td valign="top">
                                                                <table class="etiquetas">
                                                                    <tr>
                                                                        <td class="ancho11">
                                                                            Codigo:</td>
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
                                                                            <asp:Label ID="empresaLabel" runat="server" 
                                                                                Text='<%# Bind("empresa") %>' />
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="ancho11">
                                                                            Gerencia:</td>
                                                                        <td class="style4">
                                                                            &nbsp;</td>
                                                                        <td class="ancho13">
                                                                            <asp:Label ID="gerenciaLabel" runat="server" 
                                                                                Text='<%# Bind("gerencia") %>' />
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
                                                                            Ubicacion:</td>
                                                                        <td class="style4">
                                                                            &nbsp;</td>
                                                                        <td class="ancho13">
                                                                            <asp:Label ID="regionLabel" runat="server" 
                                                                                Text='<%# Bind("region") %>' />
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
                                                                            <asp:Label ID="nivel_salarialLabel" runat="server" 
                                                                                Text='<%# Bind("nivel_salarial") %>' />
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="ancho11">
                                                                            Salario:</td>
                                                                        <td class="style4">
                                                                            &nbsp;</td>
                                                                        <td class="ancho13">
                                                                            <asp:Label ID="salarioLabel" runat="server" Text='<%# Bind("salario") %>' />
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="ancho11">
                                                                            Moneda:</td>
                                                                        <td class="style4">
                                                                            &nbsp;</td>
                                                                        <td class="ancho13">
                                                                            <asp:Label ID="monedaLabel" runat="server" 
                                                                                Text='<%# Bind("moneda") %>' />
                                                                        </td>
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
                                                                            Profesion:</td>
                                                                        <td class="style4">
                                                                            &nbsp;</td>
                                                                        <td class="ancho13">
                                                                            <asp:Label ID="profesionLabel" runat="server" Text='<%# Bind("profesion") %>' />
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                            <td valign="top">
                                                                <table class="etiquetas">
                                                                    <tr>
                                                                        <td class="ancho14">
                                                                            Tipo de Remuneracion:</td>
                                                                        <td class="style4">
                                                                            &nbsp;</td>
                                                                        <td class="ancho12">
                                                                            <asp:Label ID="tipo_remu_desLabel" runat="server" 
                                                                                Text='<%# Bind("tipo_remu_des") %>' />
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="ancho14">
                                                                            Nivel Jerarquico:</td>
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
                                                                            <asp:Label ID="contratoLabel" runat="server" 
                                                                                Text='<%# Bind("contrato") %>' />
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="ancho14">
                                                                            Jefe:</td>
                                                                        <td class="style4">
                                                                            &nbsp;</td>
                                                                        <td class="ancho12">
                                                                            <asp:Label ID="cod_jefeLabel" runat="server" Text='<%# Bind("cod_jefe") %>' />
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
                                                                            <asp:Label ID="bancoLabel" runat="server" Text='<%# Bind("banco") %>' />
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="ancho14">
                                                                            Cta. Banco:</td>
                                                                        <td class="style4">
                                                                            &nbsp;</td>
                                                                        <td class="ancho12">
                                                                            <asp:Label ID="cuenta_nroLabel" runat="server" 
                                                                                Text='<%# Bind("cuenta_nro") %>' />
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="ancho14">
                                                                            Fecha de Ingreso:</td>
                                                                        <td class="style4">
                                                                            &nbsp;</td>
                                                                        <td class="ancho12">
                                                                            <asp:Label ID="fecha_ingresoLabel" runat="server" 
                                                                                Text='<%# Bind("fecha_ingreso") %>' />
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="ancho14">
                                                                            Fecha de Egreso:</td>
                                                                        <td class="style4">
                                                                            &nbsp;</td>
                                                                        <td class="ancho12">
                                                                            <asp:Label ID="fecha_egresoLabel" runat="server" 
                                                                                Text='<%# Bind("fecha_egreso") %>' />
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="ancho14">
                                                                            Fecha de Reingreso:</td>
                                                                        <td class="style4">
                                                                            &nbsp;</td>
                                                                        <td class="ancho12">
                                                                            <asp:Label ID="fecha_reingresoLabel" runat="server" 
                                                                                Text='<%# Bind("fecha_reingreso") %>' />
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
                                                                    <tr>
                                                                        <td class="ancho14">
                                                                            Cta. Banco Secundaria:</td>
                                                                        <td class="style4">
                                                                            &nbsp;</td>
                                                                        <td class="ancho12">
                                                                            <asp:Label ID="cuenta_nroLabel0" runat="server" 
                                                                                Text='<%# Bind("cuenta_sec_nro") %>' />
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </ContentTemplate>
                                            </igtab:Tab>
                                            <igtab:TabSeparator>
                                            </igtab:TabSeparator>
                                            <igtab:TabSeparator>
                                            </igtab:TabSeparator>
                                            <igtab:TabSeparator>
                                            </igtab:TabSeparator>
                                            <igtab:TabSeparator>
                                            </igtab:TabSeparator>
                                            <igtab:Tab Text="Personales">
                                                <ContentTemplate>
                                                    <table class="style3">
                                                        <tr>
                                                            <td style="text-align: left">
                                                                <table class="etiquetas">
                                                                    <tr>
                                                                        <td class="style6">
                                                                            Sexo:</td>
                                                                        <td class="style4">
                                                                            &nbsp;</td>
                                                                        <td width="250px" style="border: 1px dotted #808080">
                                                                            <asp:Label ID="sexodesLabel" runat="server" Text='<%# Bind("sexo_des") %>' />
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style6">
                                                                            Fecha de Nacimiento:</td>
                                                                        <td class="style4">
                                                                            &nbsp;</td>
                                                                        <td style="border: 1px dotted #808080">
                                                                            <asp:Label ID="fecha_nacimientoLabel" runat="server" 
                                                                                Text='<%# Bind("fecha_nacimiento") %>' />
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style6">
                                                                            Cedula de Identidad:</td>
                                                                        <td class="style4">
                                                                            &nbsp;</td>
                                                                        <td style="border: 1px dotted #808080">
                                                                            <asp:Label ID="documentoLabel" runat="server" Text='<%# Bind("documento") %>' />
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style6">
                                                                            Nacionalidad:</td>
                                                                        <td class="style4">
                                                                            &nbsp;</td>
                                                                        <td style="border: 1px dotted #808080">
                                                                            <asp:Label ID="nacionalidadLabel" runat="server" 
                                                                                Text='<%# Bind("nacionalidad") %>' />
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style6">
                                                                            Departamento:</td>
                                                                        <td class="style4">
                                                                            &nbsp;</td>
                                                                        <td style="border: 1px dotted #808080">
                                                                            <asp:Label ID="departamentoLabel" runat="server" 
                                                                                Text='<%# Bind("departamento") %>' />
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style6">
                                                                            Ciudad:</td>
                                                                        <td class="style4">
                                                                            &nbsp;</td>
                                                                        <td style="border: 1px dotted #808080">
                                                                            <asp:Label ID="ciudadLabel" runat="server" Text='<%# Bind("ciudad") %>' />
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style6">
                                                                            Codigo Postal:</td>
                                                                        <td class="style4">
                                                                            &nbsp;</td>
                                                                        <td style="border: 1px dotted #808080">
                                                                            <asp:Label ID="postalLabel" runat="server" Text='<%# Bind("postal") %>' />
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style6">
                                                                            Direccion:</td>
                                                                        <td class="style4">
                                                                            &nbsp;</td>
                                                                        <td style="border: 1px dotted #808080">
                                                                            <asp:Label ID="direccionLabel" runat="server" Text='<%# Bind("direccion") %>' />
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style6">
                                                                            Telefono:</td>
                                                                        <td class="style4">
                                                                            &nbsp;</td>
                                                                        <td style="border: 1px dotted #808080">
                                                                            <asp:Label ID="telefonoLabel" runat="server" Text='<%# Bind("telefono") %>' />
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style6">
                                                                            Celular:</td>
                                                                        <td class="style4">
                                                                            &nbsp;</td>
                                                                        <td style="border: 1px dotted #808080">
                                                                            <asp:Label ID="celularLabel" runat="server" Text='<%# Bind("celular") %>' />
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style6">
                                                                            Email:</td>
                                                                        <td class="style4">
                                                                            &nbsp;</td>
                                                                        <td style="border: 1px dotted #808080">
                                                                            <asp:Label ID="emailLabel" runat="server" Text='<%# Bind("email") %>' />
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style6">
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
                                                </ContentTemplate>
                                            </igtab:Tab>
                                            <igtab:TabSeparator>
                                            </igtab:TabSeparator>
                                            <igtab:TabSeparator>
                                            </igtab:TabSeparator>
                                            <igtab:TabSeparator>
                                            </igtab:TabSeparator>
                                            <igtab:TabSeparator>
                                            </igtab:TabSeparator>
                                            <igtab:Tab Text="Familiares">
                                                <ContentTemplate>
                                                    <table class="etiquetas">
                                                        <tr>
                                                            <td class="style6">
                                                                Estado Civil:</td>
                                                            <td class="style4" width="185px">
                                                                &nbsp;</td>
                                                            <td width="250px" style="border: 1px dotted #808080">
                                                                <asp:Label ID="estado_civil_desLabel" runat="server" 
                                                                    Text='<%# Bind("estado_civil_des") %>' />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style6">
                                                                Nombres Conyuge:</td>
                                                            <td class="style4">
                                                                &nbsp;</td>
                                                            <td style="border: 1px dotted #808080">
                                                                <asp:Label ID="nombres_conyugueLabel" runat="server" 
                                                                    Text='<%# Bind("nombres_conyugue") %>' />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style6">
                                                                Apellidos Conyuge:</td>
                                                            <td class="style4">
                                                                &nbsp;</td>
                                                            <td style="border: 1px dotted #808080">
                                                                <asp:Label ID="apellidos_conyugueLabel" runat="server" 
                                                                    Text='<%# Bind("apellidos_conyugue") %>' />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style6">
                                                                Fecha de Nacimiento Conyuge:</td>
                                                            <td class="style4">
                                                                &nbsp;</td>
                                                            <td style="border: 1px dotted #808080">
                                                                <asp:Label ID="fecha_nacimiento_conyugueLabel" runat="server" 
                                                                    Text='<%# Bind("fecha_nacimiento_conyugue") %>' />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </ContentTemplate>
                                            </igtab:Tab>
                                            <igtab:TabSeparator>
                                            </igtab:TabSeparator>
                                            <igtab:TabSeparator>
                                            </igtab:TabSeparator>
                                            <igtab:TabSeparator>
                                            </igtab:TabSeparator>
                                            <igtab:TabSeparator>
                                            </igtab:TabSeparator>
                                            <igtab:Tab Text="M.J.T.">
                                                <ContentTemplate>
                                                    <table class="etiquetas">
                                                        <tr>
                                                            <td class="style6">
                                                                Discriminacion de Personas:</td>
                                                            <td class="style4" width="170px">
                                                                &nbsp;</td>
                                                            <td width="150px" style="border: 1px dotted #808080">
                                                                <asp:Label ID="categoria_mjtLabel" runat="server" 
                                                                    Text='<%# Bind("categoria_mjt") %>' />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style6">
                                                                Valor Head:</td>
                                                            <td class="style4">
                                                                &nbsp;</td>
                                                            <td style="border: 1px dotted #808080">
                                                                <asp:Label ID="valor_headLabel" runat="server" 
                                                                    Text='<%# Bind("valor_head") %>' />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style6">
                                                                FTE:</td>
                                                            <td class="style4">
                                                                &nbsp;</td>
                                                            <td style="border: 1px dotted #808080">
                                                                <asp:Label ID="fteLabel" runat="server" Text='<%# Bind("fte") %>' />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </ContentTemplate>
                                            </igtab:Tab>
                                            <igtab:TabSeparator>
                                            </igtab:TabSeparator>
                                            <igtab:TabSeparator>
                                            </igtab:TabSeparator>
                                            <igtab:TabSeparator>
                                            </igtab:TabSeparator>
                                            <igtab:TabSeparator>
                                            </igtab:TabSeparator>
                                            <igtab:Tab Text="Capacitaciones">
                                                <ContentTemplate>
                                                    <table class="style3">
                                                        <tr>
                                                            <td>
                                                                &nbsp;</td>
                                                        </tr>
                                                    </table>
                                                </ContentTemplate>
                                            </igtab:Tab>
                                            <igtab:TabSeparator>
                                            </igtab:TabSeparator>
                                            <igtab:TabSeparator>
                                            </igtab:TabSeparator>
                                            <igtab:TabSeparator>
                                            </igtab:TabSeparator>
                                            <igtab:TabSeparator>
                                            </igtab:TabSeparator>
                                            <igtab:Tab Text="Gourmet">
                                                <ContentTemplate>
                                                    <table class="etiquetas">
                                                        <tr>
                                                            <td class="style6">
                                                                Ticket de Alimentacion:</td>
                                                            <td class="style4" width="145px">
                                                                &nbsp;</td>
                                                            <td width="150px" style="border: 1px dotted #808080">
                                                                <asp:Label ID="ticket_alimentacionLabel" runat="server" 
                                                                    Text='<%# Bind("ticket_alimentacion") %>' />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style6">
                                                                Cuenta de Refrigerio:</td>
                                                            <td class="style4">
                                                                &nbsp;</td>
                                                            <td style="border: 1px dotted #808080">
                                                                <asp:Label ID="cta_alimentacionLabel" runat="server" 
                                                                    Text='<%# Bind("cta_alimentacion") %>' />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </ContentTemplate>
                                            </igtab:Tab>
                                        </Tabs>
                                        <RoundedImage FillStyle="LeftMergedWithCenter" HoverImage="ig_tab_winXPs2.gif" 
                                            LeftSideWidth="7" NormalImage="ig_tab_winXPs3.gif" RightSideWidth="6" 
                                            SelectedImage="ig_tab_winXPs1.gif" ShiftOfImages="2" />
                                        <SelectedTabStyle>
                                            <Padding Bottom="2px" />
                                        </SelectedTabStyle>
                                        <DefaultTabStyle BackColor="GhostWhite" Font-Names="Microsoft Sans Serif" 
                                            Font-Size="8pt" ForeColor="Black" Height="22px">
                                            <Padding Top="2px" />
                                        </DefaultTabStyle>
                                    </igtab:UltraWebTab>
                                </td>
                            </tr>
                            <tr>
                                <td align="center">
                                    <table>
                                        <tr>
                                            <td align="right">
                                                <asp:ImageButton ID="NewButton" runat="server" CausesValidation="False" 
                                                    CommandName="New" ImageUrl="~/images/controles/new.png" Text="New" 
                                                    ToolTip="Nuevo" />
                                            </td>
                                            <td align="right" width="30px">
                                                &nbsp;</td>
                                            <td align="right">
                                                <asp:ImageButton ID="EditButton" runat="server" CausesValidation="False" 
                                                    CommandName="Edit" ImageUrl="~/images/controles/edit.png" Text="Edit" 
                                                    onclick="EditButton_Click" ToolTip="Editar" />
                                            </td>
                                            <td width="30px">
                                                &nbsp;</td>
                                            <td align="left">
                                                <asp:ImageButton ID="ImageButton2" runat="server" 
                                                    ImageUrl="~/images/controles/find.png" ToolTip="Buscar" 
                                                    
                                                    
                                                    onclientclick="var wBusqueda = window.open('busca_funcionarios.aspx','wBusqeuda','width=500,height=500, left = 262, top = 134');return false" />
                                            </td>
                                            <td align="left" width="30px">
                                                &nbsp;</td>
                                            <td align="left" width="30px">
                                                <asp:ImageButton ID="ImageButton3" runat="server" 
                                                    ImageUrl="~/images/controles/imprimir.png" ToolTip="Imprimir" />
                                            </td>
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
                </asp:FormView>
            </td>
            <td valign="top" align="right" width="100%">
                <asp:ImageButton ID="ImageButton1" runat="server" 
                    ImageUrl="~/images/controles/salir.png" PostBackUrl="~/home.aspx" 
                    ToolTip="Volver al Menu Principal" />
            </td>
        </tr>
        <tr>
            <td align="center">
                <table class="style3">
                    <tr>
                        <td>
                <asp:SqlDataSource ID="funcionarios_con" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
                    DeleteCommand="DELETE FROM [funcionarios] WHERE [cod_funcionario] = @cod_funcionario" 
                    InsertCommand="INSERT INTO funcionarios(codigo, documento, cod_empresa, nombres, apellidos, cod_gerencia, cod_area, cod_region, cod_nivel_salarial, salario, cod_moneda, cod_cargo, profesion, tipo_remuneracion, cod_nivel_jerarquico, cod_contrato, cod_jefe, grado_hay, confidencial, cod_banco, cuenta_nro, fecha_ingreso, fecha_egreso, fecha_reingreso, estado, sexo, fecha_nacimiento, cod_nacionalidad, cod_departamento, ciudad, postal, direccion, telefono, celular, email, trabajos_anteriores, estado_civil, nombres_conyugue, apellidos_conyugue, fecha_nacimiento_conyugue, cod_categoria_mjt, valor_head, fte, ticket_alimentacion, cta_alimentacion, cuenta_sec_nro) VALUES (@codigo, @documento, @cod_empresa, @nombres, @apellidos, @cod_gerencia, @cod_area, @cod_region, @cod_nivel_salarial, @salario, @cod_moneda, @cod_cargo, @profesion, @tipo_remuneracion, @cod_nivel_jerarquico, @cod_contrato, @cod_jefe, @grado_hay, @confidencial, @cod_banco, @cuenta_nro, @fecha_ingreso, @fecha_egreso, @fecha_reingreso, @estado, @sexo, @fecha_nacimiento, @cod_nacionalidad, @cod_departamento, @ciudad, @postal, @direccion, @telefono, @celular, @email, @trabajos_anteriores, @estado_civil, @nombres_conyugue, @apellidos_conyugue, @fecha_nacimiento_conyugue, @cod_categoria_mjt, @valor_head, @fte, @ticket_alimentacion, @cta_alimentacion, @cuenta_sec_nro)" 
                    SelectCommand="SELECT CASE funcionarios.estado WHEN 'A' THEN 'Activo' WHEN 'E' THEN 'Egreso' WHEN 'I' THEN 'Inactivo' END AS estado_des, CASE funcionarios.confidencial WHEN '1' THEN 'Si' WHEN '0' THEN 'No' END AS confidencial_des, CASE funcionarios.tipo_remuneracion WHEN 'M' THEN 'Mensual' END AS tipo_remu_des, CASE funcionarios.sexo WHEN 'M' THEN 'Masculino' WHEN 'F' THEN 'Femenino' END AS sexo_des, funcionarios.cod_funcionario, funcionarios.codigo, funcionarios.documento, funcionarios.cod_empresa, funcionarios.nombres, funcionarios.apellidos, funcionarios.cod_gerencia, funcionarios.cod_area, funcionarios.cod_region, funcionarios.cod_nivel_salarial, funcionarios.salario, funcionarios.cod_moneda, funcionarios.cod_cargo, funcionarios.profesion, funcionarios.tipo_remuneracion, funcionarios.cod_nivel_jerarquico, funcionarios.cod_contrato, funcionarios.cod_jefe, funcionarios.grado_hay, funcionarios.confidencial, funcionarios.cod_banco, funcionarios.cuenta_nro, funcionarios.fecha_ingreso, funcionarios.fecha_egreso, funcionarios.fecha_reingreso, funcionarios.estado, funcionarios.sexo, funcionarios.fecha_nacimiento, funcionarios.cod_nacionalidad, funcionarios.cod_departamento, funcionarios.ciudad, funcionarios.postal, funcionarios.direccion, funcionarios.telefono, funcionarios.celular, funcionarios.email, funcionarios.trabajos_anteriores, funcionarios.estado_civil, funcionarios.nombres_conyugue, funcionarios.apellidos_conyugue, funcionarios.fecha_nacimiento_conyugue, funcionarios.cod_categoria_mjt, funcionarios.valor_head, funcionarios.fte, funcionarios.ticket_alimentacion, funcionarios.cta_alimentacion, empresas.descripcion AS empresa, gerencias.descripcion AS gerencia, areas.descripcion AS area, regiones.descripcion AS region, niveles_salariales.descripcion AS nivel_salarial, monedas.descripcion AS moneda, cargos.descripcion AS cargo, niveles_jerarquicos.descripcion AS nivel_jerarquico, contratos_1.descripcion AS contrato, bancos.descripcion AS banco, nacionalidades.descripcion AS nacionalidad, departamentos.descripcion AS departamento, estados_civiles.descripcion AS estado_civil_des, categorias_mjt.descripcion AS categoria_mjt, funcionarios.cuenta_sec_nro FROM funcionarios INNER JOIN niveles_jerarquicos ON funcionarios.cod_nivel_jerarquico = niveles_jerarquicos.cod_nivel_jerarquico INNER JOIN bancos ON funcionarios.cod_banco = bancos.cod_banco LEFT OUTER JOIN categorias_mjt ON funcionarios.cod_categoria_mjt = categorias_mjt.cod_categoria_mjt LEFT OUTER JOIN estados_civiles ON funcionarios.estado_civil = estados_civiles.cod_estado_civil LEFT OUTER JOIN departamentos ON funcionarios.cod_departamento = departamentos.cod_departamento LEFT OUTER JOIN nacionalidades ON funcionarios.cod_nacionalidad = nacionalidades.cod_nacionalidad LEFT OUTER JOIN contratos AS contratos_1 ON funcionarios.cod_contrato = contratos_1.cod_contrato LEFT OUTER JOIN gerencias ON funcionarios.cod_gerencia = gerencias.cod_gerencia LEFT OUTER JOIN areas ON funcionarios.cod_area = areas.cod_area LEFT OUTER JOIN regiones ON funcionarios.cod_region = regiones.cod_region LEFT OUTER JOIN empresas ON funcionarios.cod_empresa = empresas.cod_empresa LEFT OUTER JOIN monedas ON funcionarios.cod_moneda = monedas.cod_moneda LEFT OUTER JOIN niveles_salariales ON funcionarios.cod_nivel_salarial = niveles_salariales.cod_nivel_salarial LEFT OUTER JOIN cargos ON funcionarios.cod_cargo = cargos.cod_cargo WHERE (funcionarios.cod_empresa = @cod_empresa) AND (funcionarios.apellidos LIKE @campo + '%') OR (funcionarios.cod_empresa = @cod_empresa) AND (funcionarios.cod_funcionario LIKE @campo)" 
                    
                                
                                
                                
                                
                                
                                UpdateCommand="UPDATE funcionarios SET codigo = @codigo, documento = @documento, cod_empresa = @cod_empresa, nombres = @nombres, apellidos = @apellidos, cod_gerencia = @cod_gerencia, cod_area = @cod_area, cod_region = @cod_region, cod_nivel_salarial = @cod_nivel_salarial, salario = @salario, cod_moneda = @cod_moneda, cod_cargo = @cod_cargo, profesion = @profesion, tipo_remuneracion = @tipo_remuneracion, cod_nivel_jerarquico = @cod_nivel_jerarquico, cod_contrato = @cod_contrato, cod_jefe = @cod_jefe, grado_hay = @grado_hay, confidencial = @confidencial, cod_banco = @cod_banco, cuenta_nro = @cuenta_nro, fecha_ingreso = @fecha_ingreso, fecha_egreso = @fecha_egreso, fecha_reingreso = @fecha_reingreso, estado = @estado, sexo = @sexo, fecha_nacimiento = @fecha_nacimiento, cod_nacionalidad = @cod_nacionalidad, cod_departamento = @cod_departamento, ciudad = @ciudad, postal = @postal, direccion = @direccion, telefono = @telefono, celular = @celular, email = @email, trabajos_anteriores = @trabajos_anteriores, estado_civil = @estado_civil, nombres_conyugue = @nombres_conyugue, apellidos_conyugue = @apellidos_conyugue, fecha_nacimiento_conyugue = @fecha_nacimiento_conyugue, cod_categoria_mjt = @cod_categoria_mjt, valor_head = @valor_head, fte = @fte, ticket_alimentacion = @ticket_alimentacion, cta_alimentacion = @cta_alimentacion, cuenta_sec_nro = @cuenta_sec_nro WHERE (cod_funcionario = @cod_funcionario)">
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
                        <asp:Parameter Name="cuenta_sec_nro" />
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
                        <asp:Parameter Name="cuenta_sec_nro" />
                    </InsertParameters>
                </asp:SqlDataSource>
                        </td>
                        <td>
                            <asp:SqlDataSource ID="regiones_con" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
                                SelectCommand="SELECT [cod_region], [descripcion] FROM [regiones]">
                            </asp:SqlDataSource>
                        </td>
                        <td>
                            <asp:SqlDataSource ID="niveles_salariales_con" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
                                SelectCommand="SELECT [cod_nivel_salarial], [descripcion] FROM [niveles_salariales]">
                            </asp:SqlDataSource>
                        </td>
                        <td>
                            <asp:SqlDataSource ID="cargos_con" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
                                SelectCommand="SELECT [cod_cargo], [descripcion] FROM [cargos]">
                            </asp:SqlDataSource>
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
                                SelectCommand="SELECT cod_funcionario, apellidos + ', ' + nombres AS jefe FROM funcionarios">
                            </asp:SqlDataSource>
                        </td>
                        <td>
                            <asp:SqlDataSource ID="bancos_con" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
                                SelectCommand="SELECT [cod_banco], [descripcion] FROM [bancos]">
                            </asp:SqlDataSource>
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
                                SelectCommand="SELECT [cod_departamento], [descripcion] FROM [departamentos]">
                            </asp:SqlDataSource>
                        </td>
                        <td>
                            <asp:SqlDataSource ID="estados_civiles_con" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
                                SelectCommand="SELECT [cod_estado_civil], [descripcion] FROM [estados_civiles]">
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
                            &nbsp;</td>
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
</asp:Content>

