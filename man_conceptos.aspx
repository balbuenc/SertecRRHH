<%@ Page Title="" Language="VB" MasterPageFile="~/menu_master.master" AutoEventWireup="false" CodeFile="man_conceptos.aspx.vb" Inherits="man_conceptos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
        }
        .style5
        {
            width: 68px;
        }
        .style6
        {
            width: 123px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <table align="center" class="style3">
                <tr>
                    <td style="text-align: center; font-family: 'Trebuchet MS'; font-size: small;" 
                        valign="top">
                        <table align="center" class="style3">
                            <tr>
                                <td style="text-align: right">
                                    <asp:ImageButton ID="img_salir" runat="server" 
                                ImageUrl="~/images/controles/salir32.png" PostBackUrl="~/home.aspx" 
                                        ToolTip="Volver al Menu Principal" />
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: center; font-family: 'Trebuchet MS'; font-size: large; font-weight: bolder;">
                                    Conceptos</td>
                            </tr>
                        </table>
                        <table align="center">
                            <tr>
                                <td>
                                    Filtre por Descripción o Código:</td>
                                <td>
                                    <asp:TextBox ID="txt_filtra" runat="server" Width="300px" AutoPostBack="True"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:Button ID="Button1" runat="server" Text="&gt;&gt;" ToolTip="Filtrar" />
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
                        <table align="center" class="style3">
                            <tr>
                                <td>
                                    <asp:FormView ID="form_conceptos" runat="server" AllowPaging="True" 
                                        BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
                                        CellPadding="2" DataKeyNames="cod_concepto" DataSourceID="conceptos_con" 
                                        ForeColor="Black" Width="100%">
                                        <FooterStyle BackColor="Tan" />
                                        <EmptyDataRowStyle BackColor="LightGoldenrodYellow" />
                                        <EditItemTemplate>
                                            <table align="center">
                                                <tr>
                                                    <td style="text-align: right" width="150">
                                                        Código Concepto:
                                                    </td>
                                                    <td align="left" width="300">
                                                        <asp:Label ID="cod_conceptoLabel2" runat="server" 
                                                            Text='<%# Eval("cod_concepto") %>' style="text-align: center" 
                                                            Width="100%" />
                                                    </td>
                                                    <td style="text-align: right" width="150">
                                                        Código:
                                                    </td>
                                                    <td style="text-align: left" width="300" align="left">
                                                        <table align="left">
                                                            <tr>
                                                                <td>
                                                                    <asp:TextBox ID="codigoTextBox" runat="server" Text='<%# Bind("codigo") %>' 
                                                                        Width="124px" />
                                                                </td>
                                                                <td>
                                                                    <asp:RequiredFieldValidator ID="rv_codigo_edit" runat="server" 
                                                                        ControlToValidate="codigoTextBox" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="left" style="text-align: right">
                                                        Descripción:
                                                    </td>
                                                    <td style="text-align: left">
                                                        <table align="left" width="100%">
                                                            <tr>
                                                                <td>
                                                                    <asp:TextBox ID="descripcionTextBox" runat="server" 
                                                                        Text='<%# Bind("descripcion") %>' Width="98%" />
                                                                </td>
                                                                <td width="5">
                                                                    <asp:RequiredFieldValidator ID="rv_descripcion_edit" runat="server" 
                                                                        ControlToValidate="descripcionTextBox" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                    <td style="text-align: right">
                                                        Automático - Manual:
                                                    </td>
                                                    <td style="text-align: left">
                                                        <asp:RadioButtonList ID="rb_automatico_edit" runat="server" 
                                                            RepeatDirection="Horizontal" SelectedValue='<%# Bind("auto_manual") %>' 
                                                            Width="124px">
                                                            <asp:ListItem Value="A">A</asp:ListItem>
                                                            <asp:ListItem Value="M">M</asp:ListItem>
                                                        </asp:RadioButtonList>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="left" style="text-align: right">
                                                        Descripción Recibo:
                                                    </td>
                                                    <td style="text-align: left">
                                                        <table align="left" width="100%">
                                                            <tr>
                                                                <td>
                                                                    <asp:TextBox ID="descripcion_reciboTextBox" runat="server" 
                                                                        Text='<%# Bind("descripcion_recibo") %>' Width="98%" />
                                                                </td>
                                                                <td width="5">
                                                                    <asp:RequiredFieldValidator ID="rv_descripcion_recibo_edit" runat="server" 
                                                                        ControlToValidate="descripcion_reciboTextBox" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                    <td style="text-align: right">
                                                        Incluir Recibo</td>
                                                    <td style="text-align: left">
                                                        <asp:RadioButtonList ID="rb_incluir_recibo_edit" runat="server" 
                                                            RepeatDirection="Horizontal" SelectedValue='<%# Bind("incluir_recibo") %>' 
                                                            Width="124px">
                                                            <asp:ListItem Value="S">SI</asp:ListItem>
                                                            <asp:ListItem Value="N">NO</asp:ListItem>
                                                        </asp:RadioButtonList>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right" style="text-align: right">
                                                        Haber - Descuento:
                                                    </td>
                                                    <td style="text-align: left">
                                                        <asp:DropDownList ID="ddl_haber_descuento" runat="server" 
                                                            SelectedValue='<%# Bind("haber_descuento") %>' Width="130px">
                                                            <asp:ListItem Value="H">HABER</asp:ListItem>
                                                            <asp:ListItem Value="D">DESCUENTO</asp:ListItem>
                                                        </asp:DropDownList>
                                                    </td>
                                                    <td style="text-align: right">
                                                        Condicional:</td>
                                                    <td style="text-align: left">
                                                        <asp:RadioButtonList ID="rb_condicional_edit" runat="server" 
                                                            AutoPostBack="True" 
                                                            onselectedindexchanged="rb_condicional_edit_SelectedIndexChanged" 
                                                            RepeatDirection="Horizontal" SelectedValue='<%# Bind("es_condicional") %>' 
                                                            Width="124px">
                                                            <asp:ListItem Value="S">SI</asp:ListItem>
                                                            <asp:ListItem Value="N">NO</asp:ListItem>
                                                        </asp:RadioButtonList>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right">
                                                        Moneda:
                                                    </td>
                                                    <td style="text-align: left">
                                                        <asp:DropDownList ID="ddl_monedas_edit" runat="server" 
                                                            DataSourceID="monedas_con" DataTextField="descripcion" 
                                                            DataValueField="cod_moneda" SelectedValue='<%# Bind("cod_moneda") %>' 
                                                            Width="130px">
                                                        </asp:DropDownList>
                                                    </td>
                                                    <td style="text-align: right">
                                                        Tipo de Composición:</td>
                                                    <td style="text-align: left">
                                                        <asp:RadioButtonList ID="rb_numero_formula_edit" runat="server" 
                                                            RepeatDirection="Horizontal" SelectedValue='<%# Bind("numero_formula") %>'>
                                                            <asp:ListItem Value="N">Número</asp:ListItem>
                                                            <asp:ListItem Value="F">Fórmula</asp:ListItem>
                                                        </asp:RadioButtonList>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right">
                                                        <asp:Label ID="Label5" runat="server" Text="Remunerable:"></asp:Label>
                                                    </td>
                                                    <td style="text-align: left">
                                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("remunerable") %>'></asp:TextBox>
                                                    </td>
                                                    <td style="text-align: right">
                                                        &nbsp;</td>
                                                    <td style="text-align: left">
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td align="right">
                                                        &nbsp;Desc. Composición:</td>
                                                    <td colspan="3" style="text-align: left">
                                                        <asp:TextBox ID="descripcion_formulaTextBox" runat="server" 
                                                            Text='<%# Bind("descripcion_formula") %>' Width="290px" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right">
                                                        &nbsp;Composición:
                                                    </td>
                                                    <td colspan="3" height="50" style="text-align: left">
                                                        <asp:TextBox ID="formulaTextBox" runat="server" Height="100%" 
                                                            Text='<%# Bind("formula") %>' TextMode="MultiLine" Width="700px" />
                                                    </td>
                                                </tr>
                                            </table>
                                            <table align="center">
                                                <tr>
                                                    <td>
                                                        <asp:ImageButton ID="UpdateButton" runat="server" CausesValidation="True" 
                                                            CommandName="Update" ImageUrl="~/images/controles/guardar.png" Text="Update" 
                                                            ToolTip="Guardar" onclick="UpdateButton_Click" />
                                                    </td>
                                                    <td width="200">
                                                        <asp:TextBox ID="cod_empresaTextBox" runat="server" Height="10px" 
                                                            Text='<%# Bind("cod_empresa") %>' Visible="False" />
                                                    </td>
                                                    <td>
                                                        <asp:ImageButton ID="UpdateCancelButton" runat="server" 
                                                            CausesValidation="False" CommandName="Cancel" 
                                                            ImageUrl="~/images/controles/cancel.png" Text="Cancel" 
                                                            ToolTip="Cancelar" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <table align="center">
                                                <tr>
                                                    <td style="text-align: right" width="155">
                                                        &nbsp;</td>
                                                    <td style="text-align: left" width="300">
                                                        <asp:TextBox ID="cod_empresaTextBox" runat="server" Height="10px" 
                                                            Text='<%# Bind("cod_empresa") %>' Visible="False" />
                                                    </td>
                                                    <td style="text-align: right" width="140">
                                                        Código:
                                                    </td>
                                                    <td style="text-align: left" width="300">
                                                        <table align="left">
                                                            <tr>
                                                                <td>
                                                                    <asp:TextBox ID="codigoTextBox" runat="server" Text='<%# Bind("codigo") %>' 
                                                                        Width="124px" />
                                                                </td>
                                                                <td>
                                                                    <asp:RequiredFieldValidator ID="rv_codigo" runat="server" 
                                                                        ControlToValidate="codigoTextBox" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="text-align: right">
                                                        Descripción:
                                                    </td>
                                                    <td style="text-align: left">
                                                        <table align="left" width="100%">
                                                            <tr>
                                                                <td>
                                                                    <asp:TextBox ID="descripcionTextBox" runat="server" Height="99%" 
                                                                        Text='<%# Bind("descripcion") %>' Width="98%" />
                                                                </td>
                                                                <td width="5">
                                                                    <asp:RequiredFieldValidator ID="rb_descripcion_insert" runat="server" 
                                                                        ControlToValidate="descripcionTextBox" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                    <td style="text-align: right">
                                                        Automático - Manual:
                                                    </td>
                                                    <td style="text-align: left">
                                                        <table align="left">
                                                            <tr>
                                                                <td>
                                                                    <asp:RadioButtonList ID="rb_automanual" runat="server" 
                                                                        RepeatDirection="Horizontal" SelectedValue='<%# Bind("auto_manual") %>' 
                                                                        Width="124px">
                                                                        <asp:ListItem Value="A">SI</asp:ListItem>
                                                                        <asp:ListItem Value="M">NO</asp:ListItem>
                                                                    </asp:RadioButtonList>
                                                                </td>
                                                                <td>
                                                                    <asp:RequiredFieldValidator ID="rv_automatico_insert" runat="server" 
                                                                        ControlToValidate="rb_automanual" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="text-align: right">
                                                        Descripción Recibo:</td>
                                                    <td style="text-align: left">
                                                        <table align="left" width="100%">
                                                            <tr>
                                                                <td>
                                                                    <asp:TextBox ID="descripcion_reciboTextBox" runat="server" 
                                                                        Text='<%# Bind("descripcion_recibo") %>' Width="98%" />
                                                                </td>
                                                                <td width="5">
                                                                    <asp:RequiredFieldValidator ID="rb_descripcion_recibo" runat="server" 
                                                                        ControlToValidate="descripcion_reciboTextBox" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                    <td style="text-align: right">
                                                        Incluir Recibo:</td>
                                                    <td style="text-align: left">
                                                        <table align="left">
                                                            <tr>
                                                                <td>
                                                                    <asp:RadioButtonList ID="rb_incluye_recibo" runat="server" 
                                                                        RepeatDirection="Horizontal" SelectedValue='<%# Bind("incluir_recibo") %>' 
                                                                        Width="124px">
                                                                        <asp:ListItem Value="S">SI</asp:ListItem>
                                                                        <asp:ListItem Value="N">NO</asp:ListItem>
                                                                    </asp:RadioButtonList>
                                                                </td>
                                                                <td>
                                                                    <asp:RequiredFieldValidator ID="rv_incluir_recibo" runat="server" 
                                                                        ControlToValidate="rb_incluye_recibo" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="text-align: right">
                                                        Haber - Descuento:</td>
                                                    <td style="text-align: left">
                                                        <asp:DropDownList ID="ddl_haber_descuento_insert" runat="server" 
                                                            SelectedValue='<%# Bind("haber_descuento") %>' Width="130px">
                                                            <asp:ListItem Value="H">HABER</asp:ListItem>
                                                            <asp:ListItem Value="D">DESCUENTO</asp:ListItem>
                                                        </asp:DropDownList>
                                                    </td>
                                                    <td style="text-align: right">
                                                        Condicional:</td>
                                                    <td style="text-align: left">
                                                        <table align="left">
                                                            <tr>
                                                                <td>
                                                                    <asp:RadioButtonList ID="rb_condicional" runat="server" AutoPostBack="True" 
                                                                        onselectedindexchanged="rb_condicional_SelectedIndexChanged" 
                                                                        RepeatDirection="Horizontal" SelectedValue='<%# Bind("es_condicional") %>' 
                                                                        Width="124px">
                                                                        <asp:ListItem Value="S">SI</asp:ListItem>
                                                                        <asp:ListItem Value="N">NO</asp:ListItem>
                                                                    </asp:RadioButtonList>
                                                                </td>
                                                                <td>
                                                                    <asp:RequiredFieldValidator ID="rv_condicional" runat="server" 
                                                                        ControlToValidate="rb_condicional" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="text-align: right">
                                                        Moneda:</td>
                                                    <td style="text-align: left">
                                                        <table align="left">
                                                            <tr>
                                                                <td>
                                                                    <asp:DropDownList ID="ddl_monedas_insert" runat="server" 
                                                                        DataSourceID="monedas_con" DataTextField="descripcion" 
                                                                        DataValueField="cod_moneda" SelectedValue='<%# Bind("cod_moneda") %>' 
                                                                        Width="130px">
                                                                    </asp:DropDownList>
                                                                </td>
                                                                <td>
                                                                    <asp:RequiredFieldValidator ID="rv_monedas" runat="server" 
                                                                        ControlToValidate="ddl_monedas_insert" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                    <td style="text-align: right">
                                                        Tipo de Composición:</td>
                                                    <td style="text-align: left">
                                                        <table align="left">
                                                            <tr>
                                                                <td>
                                                                    <asp:RadioButtonList ID="rb_numero_formula" runat="server" 
                                                                        RepeatDirection="Horizontal" SelectedValue='<%# Bind("numero_formula") %>'>
                                                                        <asp:ListItem Value="N">Número</asp:ListItem>
                                                                        <asp:ListItem Value="F">Fórmula</asp:ListItem>
                                                                    </asp:RadioButtonList>
                                                                </td>
                                                                <td>
                                                                    <asp:RequiredFieldValidator ID="rv_numero_formula" runat="server" 
                                                                        ControlToValidate="rb_numero_formula" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="text-align: right">
                                                        Remunerable:</td>
                                                    <td style="text-align: left">
                                                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("remunerable") %>'></asp:TextBox>
                                                    </td>
                                                    <td style="text-align: right">
                                                        &nbsp;</td>
                                                    <td style="text-align: left">
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td style="text-align: right">
                                                        &nbsp;Desc. Composición:</td>
                                                    <td colspan="3" style="text-align: left">
                                                        <asp:TextBox ID="descripcion_formulaTextBox" runat="server" Height="99%" 
                                                            Text='<%# Bind("descripcion_formula") %>' Width="290px" ><input name="ctl62$descripcion_formulaTextBox" type="text" id="ctl62_descripcion_formulaTextBox" style="width:290px;" /></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="text-align: right">
                                                        &nbsp;Composición:
                                                    </td>
                                                    <td colspan="3" height="50" style="text-align: left">
                                                        <asp:TextBox ID="formulaTextBox" runat="server" Height="99%" 
                                                            Text='<%# Bind("formula") %>' TextMode="MultiLine" Width="700px" />
                                                    </td>
                                                </tr>
                                            </table>
                                            <table align="center">
                                                <tr>
                                                    <td>
                                                        <asp:ImageButton ID="InsertButton_cabecera" runat="server" 
                                                            CausesValidation="True" CommandName="Insert" 
                                                            ImageUrl="~/images/controles/add.png" onclick="InsertButton_cabecera_Click" 
                                                            Text="Insert" ToolTip="Agregar" />
                                                    </td>
                                                    <td width="200">
                                                        &nbsp;</td>
                                                    <td>
                                                        <asp:ImageButton ID="InsertCancelButton_cabecera" runat="server" 
                                                            CausesValidation="False" CommandName="Cancel" 
                                                            ImageUrl="~/images/controles/cancel.png" Text="Cancel" 
                                                            ToolTip="Cancelar Inserción" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <table align="center">
                                                <tr>
                                                    <td style="text-align: right" width="155">
                                                        Código Concepto:</td>
                                                    <td style="border-style: dotted; border-width: 1px; border-color: gray; text-align: left" 
                                                        width="350">
                                                        <asp:Label ID="cod_conceptoLabel" runat="server" Height="100%" 
                                                            style="text-align: center" Text='<%# Eval("cod_concepto") %>' 
                                                            Width="100%" />
                                                    </td>
                                                    <td style="text-align: right" width="140">
                                                        Código:
                                                    </td>
                                                    <td style="border-style: dotted; border-width: 1px; border-color: gray; text-align: left" 
                                                        width="350">
                                                        <asp:Label ID="codigoLabel" runat="server" Height="100%" 
                                                            style="text-align: center" Text='<%# Bind("codigo") %>' Width="100%" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="text-align: right">
                                                        Descripción:
                                                    </td>
                                                    <td style="border: 1px dotted gray; text-align: left">
                                                        <asp:Label ID="descripcionLabel" runat="server" Height="100%" 
                                                            Text='<%# Bind("descripcion") %>' Width="99%" />
                                                    </td>
                                                    <td style="text-align: right">
                                                        Automático - Manual:</td>
                                                    <td style="border-style: dotted; border-width: 1px; border-color: gray; text-align: left">
                                                        <asp:Label ID="auto_manualLabel" runat="server" Height="100%" 
                                                            Text='<%# Bind("auto_manual_des") %>' Width="100%" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="text-align: right">
                                                        Descripción Recibo: </td>
                                                    <td style="border-style: dotted; border-width: 1px; border-color: gray; text-align: left">
                                                        <asp:Label ID="descripcion_reciboLabel" runat="server" Height="100%" 
                                                            Text='<%# Bind("descripcion_recibo") %>' Width="100%" />
                                                    </td>
                                                    <td style="text-align: right">
                                                        Incluir Recibo:</td>
                                                    <td style="border-style: dotted; border-width: 1px; border-color: gray; " 
                                                        align="left">
                                                        <asp:Label ID="incluir_reciboLabel" runat="server" Height="100%" 
                                                            Text='<%# Bind("incluir_recibo_des") %>' Width="100%" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="text-align: right">
                                                        Haber - Descuento:</td>
                                                    <td style="border-style: dotted; border-width: 1px; border-color: gray; text-align: left">
                                                        <asp:Label ID="haber_descuentoLabel" runat="server" Height="100%" 
                                                            Text='<%# Bind("haber_descuento_des") %>' Width="100%" />
                                                    </td>
                                                    <td style="text-align: right">
                                                        Condicional: </td>
                                                    <td style="border-style: dotted; border-width: 1px; border-color: gray; text-align: left">
                                                        <asp:Label ID="es_condicionalLabel" runat="server" Height="100%" 
                                                            Text='<%# Bind("es_condicional_des") %>' Width="100%" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="text-align: right">
                                                        Moneda:</td>
                                                    <td style="border-style: dotted; border-width: 1px; border-color: gray; text-align: left">
                                                        <asp:Label ID="cod_monedaLabel" runat="server" Height="100%" 
                                                            Text='<%# Bind("moneda") %>' Width="100%" />
                                                    </td>
                                                    <td style="border-style: none; border-color: gray; text-align: right">
                                                        Tipo de Composición:</td>
                                                    <td style="border-style: dotted; border-width: 1px; border-color: gray; text-align: left">
                                                        <asp:Label ID="numero_formulaLabel" runat="server" Height="100%" 
                                                            Text='<%# Eval("numero_formula_des") %>' Width="100%"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="text-align: right">
                                                        Remunerable</td>
                                                    <td style="border-style: dotted; border-width: 1px; border-color: gray; text-align: left">
                                                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("remunerable") %>'></asp:Label>
                                                    </td>
                                                    <td style="border-style: none; border-color: gray; text-align: right">
                                                        &nbsp;</td>
                                                    <td style="border-style: dotted; border-width: 1px; border-color: gray; text-align: left">
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td style="text-align: right">
                                                        &nbsp;Desc. Composición:</td>
                                                    <td colspan="3" 
                                                        style="border-style: dotted; border-width: 1px; border-color: gray; text-align: left">
                                                        <asp:Label ID="descripcion_formulaLabel" runat="server" Height="100%" 
                                                            Text='<%# Bind("descripcion_formula") %>' Width="100%" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="text-align: right">
                                                        Composición:
                                                    </td>
                                                    <td colspan="3" 
                                                        style="border-style: dotted; border-width: 1px; border-color: gray; text-align: left">
                                                        <asp:Label ID="formulaLabel2" runat="server" Height="100%" 
                                                            Text='<%# Bind("formula") %>' Width="100%" />
                                                    </td>
                                                </tr>
                                            </table>
                                            <table align="center">
                                                <tr>
                                                    <td>
                                                        &nbsp;</td>
                                                    <td width="100">
                                                        &nbsp;</td>
                                                    <td>
                                                        &nbsp;</td>
                                                    <td width="100">
                                                        &nbsp;</td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:ImageButton ID="NewButton0" runat="server" CausesValidation="False" 
                                                            CommandName="New" ImageUrl="~/images/controles/new.png" Text="New" 
                                                            ToolTip="Nuevo" />
                                                    </td>
                                                    <td width="100">
                                                        &nbsp;</td>
                                                    <td>
                                                        <asp:ImageButton ID="EditButton0" runat="server" CausesValidation="False" 
                                                            CommandName="Edit" ImageUrl="~/images/controles/edit.png" Text="Edit" 
                                                            ToolTip="Modificar" />
                                                    </td>
                                                    <td width="100">
                                                        &nbsp;</td>
                                                    <td>
                                                        <asp:ImageButton ID="DeleteButton_cabecera" runat="server" 
                                                            CausesValidation="False" CommandName="Delete" 
                                                            ImageUrl="~/images/controles/eliminar.png" 
                                                            onclick="DeleteButton_cabecera_Click" Text="Delete" ToolTip="Eliminar" 
                                                            onclientclick="return confirm('Atención. La eliminación de este concepto puede alterar el funcionamiento de la Liquidación. Desea Continuar?')" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </ItemTemplate>
                                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                                            HorizontalAlign="Center" />
                                        <EmptyDataTemplate>
                                            <asp:Label ID="lbl_mensaje_form_vacio" runat="server" Font-Size="Medium" 
                                                ForeColor="#FF3300" Text="No se encuentran coincidencias."></asp:Label>
                                        </EmptyDataTemplate>
                                        <HeaderStyle BackColor="Tan" Font-Bold="True" />
                                        <InsertRowStyle BackColor="LightGoldenrodYellow" />
                                    </asp:FormView>
                                </td>
                            </tr>
                        </table>
                        <asp:Label ID="lb_mensaje" runat="server" Text="Label" ForeColor="#FF3300"></asp:Label>
                        <br />
                        <table align="center" class="style3">
                            <tr>
                                <td style="text-align: left; font-family: 'Trebuchet MS'; font-size: small;">
                                    <asp:FormView ID="form_concepto_condiciones" runat="server" 
                                        DataKeyNames="cod_concepto,condicion,formula" 
                                        DataSourceID="conceptos_cond_form_con" DefaultMode="Insert" Width="100%">
                                        <EditItemTemplate>
                                            cod_concepto:
                                            <asp:Label ID="cod_conceptoLabel1" runat="server" 
                                                Text='<%# Eval("cod_concepto") %>' />
                                            <br />
                                            condicion:
                                            <asp:Label ID="condicionLabel1" runat="server" 
                                                Text='<%# Eval("condicion") %>' />
                                            <br />
                                            formula:
                                            <asp:Label ID="formulaLabel1" runat="server" Text='<%# Eval("formula") %>' />
                                            <br />
                                            descripcion:
                                            <asp:TextBox ID="descripcionTextBox" runat="server" 
                                                Text='<%# Bind("descripcion") %>' />
                                            <br />
                                            <asp:ImageButton ID="UpdateButton" runat="server" CausesValidation="True" 
                                                CommandName="Update" Text="Update" />
                                            &nbsp;<asp:ImageButton ID="UpdateCancelButton" runat="server" 
                                                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <table class="style3">
                                                <tr>
                                                    <td style="text-align: right" width="120">
                                                        Condición:</td>
                                                    <td>
                                                        <asp:TextBox ID="condicionTextBox" runat="server" 
                                                            Text='<%# Bind("condicion") %>' TextMode="MultiLine" Width="99%" 
                                                            style="font-family: 'Trebuchet MS'" />
                                                    </td>
                                                    <td style="text-align: right" width="7">
                                                        <asp:RequiredFieldValidator ID="rv_condicion_form_condicion" runat="server" 
                                                            ControlToValidate="condicionTextBox" Enabled="False" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="text-align: right">
                                                        Composición:</td>
                                                    <td>
                                                        <asp:TextBox ID="formulaTextBox" runat="server" 
                                                            style="font-family: 'Trebuchet MS'" Text='<%# Bind("formula") %>' 
                                                            TextMode="MultiLine" Width="99%" />
                                                    </td>
                                                    <td>
                                                        <asp:RequiredFieldValidator ID="rv_formula_form_condicion" runat="server" 
                                                            ControlToValidate="formulaTextBox" Enabled="False" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="text-align: right">
                                                        Desc. Composición:</td>
                                                    <td>
                                                        <asp:TextBox ID="descripcionTextBox_condicion" runat="server" 
                                                            style="font-family: 'Trebuchet MS'" Text='<%# Bind("descripcion") %>' 
                                                            Width="99%" />
                                                    </td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td style="text-align: right" class="style6">
                                                        &nbsp;</td>
                                                    <td>
                                                        <asp:TextBox ID="cod_conceptoTextBox" runat="server" 
                                                            Text='<%# Bind("cod_concepto") %>' Height="10px" Visible="False" />
                                                    </td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                            </table>
                                            <table align="center">
                                                <tr>
                                                    <td>
                                                        <asp:ImageButton ID="InsertButton_condición" runat="server" 
                                                            CausesValidation="True" CommandName="Insert" 
                                                            ImageUrl="~/images/controles/add.png" onclick="InsertButton_condición_Click" 
                                                            Text="Insert" ToolTip="Agregar" />
                                                    </td>
                                                    <td width="100">
                                                        &nbsp;</td>
                                                    <td>
                                                        <asp:ImageButton ID="InsertCancelButton_condicion" runat="server" 
                                                            CausesValidation="False" CommandName="Cancel" 
                                                            ImageUrl="~/images/controles/cancel.png" Text="Cancel" 
                                                            ToolTip="Cancelar Inserción" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            cod_concepto:
                                            <asp:Label ID="cod_conceptoLabel" runat="server" 
                                                Text='<%# Eval("cod_concepto") %>' />
                                            <br />
                                            condicion:
                                            <asp:Label ID="condicionLabel" runat="server" Text='<%# Eval("condicion") %>' />
                                            <br />
                                            formula:
                                            <asp:Label ID="formulaLabel" runat="server" Text='<%# Eval("formula") %>' />
                                            <br />
                                            descripcion:
                                            <asp:Label ID="descripcionLabel" runat="server" 
                                                Text='<%# Bind("descripcion") %>' />
                                            <br />
                                            <asp:ImageButton ID="EditButton" runat="server" CausesValidation="False" 
                                                CommandName="Edit" Text="Edit" />
                                            &nbsp;<asp:ImageButton ID="DeleteButton" runat="server" CausesValidation="False" 
                                                CommandName="Delete" Text="Delete" />
                                            &nbsp;<asp:ImageButton ID="NewButton" runat="server" CausesValidation="False" 
                                                CommandName="New" Text="New" />
                                        </ItemTemplate>
                                    </asp:FormView>
                                </td>
                                <td align="center" 
                                    style="font-family: 'Trebuchet MS'; font-size: small; text-align: right;" 
                                    valign="top" width="560">
                                    <asp:GridView ID="grid_condiciones" runat="server" AutoGenerateColumns="False" 
                                        BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
                                        CellPadding="2" DataKeyNames="cod_concepto,condicion,formula" 
                                        DataSourceID="conceptos_cond_form_con" ForeColor="Black" GridLines="None" 
                                        Width="560px">
                                        <Columns>
                                            <asp:TemplateField ShowHeader="False">
                                                <EditItemTemplate>
                                                    <asp:ImageButton ID="grid_guardar_edit" runat="server" CausesValidation="True" 
                                                        CommandName="Update" ImageUrl="~/images/controles/b_grabar.gif" 
                                                        Text="Update" onclick="grid_guardar_edit_Click" style="height: 14px" />
                                                    &nbsp;<asp:ImageButton ID="ImageButton2" runat="server" CausesValidation="False" 
                                                        CommandName="Cancel" ImageUrl="~/images/controles/b_cancelar.gif" 
                                                        Text="Cancel" />
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <asp:ImageButton runat="server" CausesValidation="False" 
                                                        CommandName="Edit" ImageUrl="~/images/controles/b_modificar.gif" 
                                                        Text="Edit" style="width: 14px" />
                                                    &nbsp;<asp:ImageButton ID="delete_grid_condiciones" runat="server" 
                                                        CausesValidation="False" CommandName="Delete" 
                                                        ImageUrl="~/images/controles/b_eliminar.gif" 
                                                        Text="Delete" 
                                                        onclientclick="return confirm('Atención. La eliminación  puede alterar el funcionamiento de la Liquidación. Desea Continuar?')" />
                                                </ItemTemplate>
                                                <HeaderStyle HorizontalAlign="Left" Width="50px" />
                                                <ItemStyle HorizontalAlign="Left" Width="50px" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Condición" SortExpression="condicion">
                                                <EditItemTemplate>
                                                    <asp:TextBox ID="txt_grid_condicion" runat="server" 
                                                        Text='<%# Bind("condicion") %>' TextMode="MultiLine" Width="150px"></asp:TextBox>
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("condicion") %>'></asp:Label>
                                                </ItemTemplate>
                                                <HeaderStyle HorizontalAlign="Left" Width="150px" />
                                                <ItemStyle HorizontalAlign="Left" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Fórmula" SortExpression="formula">
                                                <EditItemTemplate>
                                                    <asp:TextBox ID="txt_grid_formula_edit" runat="server" 
                                                        Text='<%# Bind("formula") %>' TextMode="MultiLine" Width="150px"></asp:TextBox>
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("formula") %>'></asp:Label>
                                                </ItemTemplate>
                                                <HeaderStyle HorizontalAlign="Left" Width="150px" />
                                                <ItemStyle HorizontalAlign="Left" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Descripción" SortExpression="Descripción">
                                                <EditItemTemplate>
                                                    <asp:TextBox ID="txt_descripcion_edit" runat="server" 
                                                        Text='<%# Bind("descripcion") %>'></asp:TextBox>
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("descripcion") %>'></asp:Label>
                                                </ItemTemplate>
                                                <HeaderStyle HorizontalAlign="Left" Width="100px" />
                                                <ItemStyle HorizontalAlign="Left" />
                                            </asp:TemplateField>
                                        </Columns>
                                        <FooterStyle BackColor="Tan" />
                                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                                            HorizontalAlign="Center" />
                                        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                                        <HeaderStyle BackColor="Tan" Font-Bold="True" />
                                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                                    </asp:GridView>
                                </td>
                            </tr>
                        </table>
                        <br />
                        <table align="center" class="style3">
                            <tr>
                                <td width="73px">
                                    <asp:SqlDataSource ID="conceptos_con" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
                                DeleteCommand="DELETE FROM [conceptos] WHERE [cod_concepto] = @cod_concepto" 
                                InsertCommand="INSERT INTO conceptos (codigo, cod_empresa, descripcion, descripcion_recibo, haber_descuento, cod_moneda, auto_manual, numero_formula, incluir_recibo, es_condicional, formula, descripcion_formula,remunerable) VALUES (@codigo,@cod_empresa,@descripcion,@descripcion_recibo,@haber_descuento, CASE@cod_moneda WHEN 0 THEN NULL ELSE@cod_moneda END,@auto_manual,@numero_formula,@incluir_recibo,@es_condicional,@formula,@descripcion_formula,@remunerable)" 
                                SelectCommand="SELECT conceptos.cod_concepto, conceptos.codigo, conceptos.cod_empresa, conceptos.descripcion, conceptos.descripcion_recibo, conceptos.haber_descuento, CASE conceptos.haber_descuento WHEN 'H' THEN 'HABER' WHEN 'D' THEN 'DESCUENTO' END AS haber_descuento_des, ISNULL(conceptos.cod_moneda, 0) AS cod_moneda, ISNULL(conceptos.auto_manual, 'M') AS auto_manual, CASE isnull(conceptos.auto_manual , 'M') WHEN 'A' THEN 'AUTOMATICO' WHEN 'M' THEN 'MANUAL' END AS auto_manual_des, ISNULL(conceptos.numero_formula, 'F') AS numero_formula, CASE isnull(conceptos.numero_formula , 'F') WHEN 'N' THEN 'NUMERO' WHEN 'F' THEN 'FORMULA' END AS numero_formula_des, ISNULL(conceptos.incluir_recibo, 'S') AS incluir_recibo, CASE conceptos.incluir_recibo WHEN 'S' THEN 'SI' WHEN 'N' THEN 'NO' END AS incluir_recibo_des, ISNULL(conceptos.es_condicional, 'N') AS es_condicional, CASE isnull(conceptos.es_condicional , 'N') WHEN 'S' THEN 'SI' WHEN 'N' THEN 'NO' END AS es_condicional_des, conceptos.formula, conceptos.descripcion_formula, empresas.descripcion AS empresa, ISNULL(monedas.descripcion, 'No Asignado') AS moneda, conceptos.remunerable FROM conceptos INNER JOIN empresas ON conceptos.cod_empresa = empresas.cod_empresa LEFT OUTER JOIN monedas ON conceptos.cod_moneda = monedas.cod_moneda WHERE (conceptos.cod_empresa = @cod_empresa) AND (conceptos.descripcion LIKE @txt_filtra + '%') OR (conceptos.cod_empresa = @cod_empresa) AND (conceptos.codigo LIKE @txt_filtra)" 
                                
                                
                                        
                                        
                                        UpdateCommand="UPDATE conceptos SET codigo = @codigo, cod_empresa = @cod_empresa, descripcion = @descripcion, descripcion_recibo = @descripcion_recibo, haber_descuento = @haber_descuento, cod_moneda = CASE @cod_moneda WHEN 0 THEN NULL ELSE @cod_moneda END, auto_manual = @auto_manual, numero_formula = @numero_formula, incluir_recibo = @incluir_recibo, es_condicional = @es_condicional, formula = @formula, descripcion_formula = @descripcion_formula, remunerable = @remunerable WHERE (cod_concepto = @cod_concepto)">
                                        <SelectParameters>
                                            <asp:SessionParameter Name="cod_empresa" SessionField="sv_empresa" />
                                            <asp:ControlParameter ControlID="txt_filtra" Name="txt_filtra" 
                                                PropertyName="Text" />
                                        </SelectParameters>
                                        <DeleteParameters>
                                            <asp:Parameter Name="cod_concepto" Type="Int16" />
                                        </DeleteParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="codigo" Type="Int32" />
                                            <asp:Parameter Name="cod_empresa" Type="Int16" />
                                            <asp:Parameter Name="descripcion" Type="String" />
                                            <asp:Parameter Name="descripcion_recibo" Type="String" />
                                            <asp:Parameter Name="haber_descuento" Type="String" />
                                            <asp:Parameter Name="cod_moneda" Type="Int16" />
                                            <asp:Parameter Name="auto_manual" Type="String" />
                                            <asp:Parameter Name="numero_formula" Type="String" />
                                            <asp:Parameter Name="incluir_recibo" Type="String" />
                                            <asp:Parameter Name="es_condicional" Type="String" />
                                            <asp:Parameter Name="formula" Type="String" />
                                            <asp:Parameter Name="descripcion_formula" Type="String" />
                                            <asp:Parameter Name="remunerable" />
                                            <asp:Parameter Name="cod_concepto" Type="Int16" />
                                        </UpdateParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="codigo" Type="Int32" />
                                            <asp:Parameter Name="cod_empresa" Type="Int16" />
                                            <asp:Parameter Name="descripcion" Type="String" />
                                            <asp:Parameter Name="descripcion_recibo" Type="String" />
                                            <asp:Parameter Name="haber_descuento" Type="String" />
                                            <asp:Parameter Name="cod_moneda" Type="Int16" />
                                            <asp:Parameter Name="auto_manual" Type="String" />
                                            <asp:Parameter Name="numero_formula" Type="String" />
                                            <asp:Parameter Name="incluir_recibo" Type="String" />
                                            <asp:Parameter Name="es_condicional" Type="String" />
                                            <asp:Parameter Name="formula" Type="String" />
                                            <asp:Parameter Name="descripcion_formula" Type="String" />
                                            <asp:Parameter Name="remunerable" />
                                        </InsertParameters>
                                    </asp:SqlDataSource>
                                </td>
                                <td width="150">
                                    <asp:SqlDataSource ID="monedas_con" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
                                        
                                        SelectCommand="SELECT 0 AS cod_moneda, 'No Asignado' AS descripcion UNION SELECT cod_moneda, descripcion FROM monedas">
                                    </asp:SqlDataSource>
                                </td>
                                <td class="style5">
                                    <asp:SqlDataSource ID="conceptos_cond_form_con" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
                                        DeleteCommand="DELETE FROM [conceptos_cond_form] WHERE [cod_concepto] = @cod_concepto AND [condicion] = @condicion AND [formula] = @formula" 
                                        InsertCommand="INSERT INTO [conceptos_cond_form] ([cod_concepto], [condicion], [formula], [descripcion]) VALUES (@cod_concepto, @condicion, @formula, @descripcion)" 
                                        SelectCommand="SELECT cod_concepto, condicion, formula, descripcion FROM conceptos_cond_form WHERE (cod_concepto = @form_conceptos)" 
                                        
                                        UpdateCommand="UPDATE [conceptos_cond_form] SET [descripcion] = @descripcion WHERE [cod_concepto] = @cod_concepto AND [condicion] = @condicion AND [formula] = @formula">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="hf_cod_concepto1" Name="form_conceptos" 
                                                PropertyName="Value" />
                                        </SelectParameters>
                                        <DeleteParameters>
                                            <asp:Parameter Name="cod_concepto" Type="Int16" />
                                            <asp:Parameter Name="condicion" Type="String" />
                                            <asp:Parameter Name="formula" Type="String" />
                                        </DeleteParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="descripcion" Type="String" />
                                            <asp:Parameter Name="cod_concepto" Type="Int16" />
                                            <asp:Parameter Name="condicion" Type="String" />
                                            <asp:Parameter Name="formula" Type="String" />
                                        </UpdateParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="cod_concepto" Type="Int16" />
                                            <asp:Parameter Name="condicion" Type="String" />
                                            <asp:Parameter Name="formula" Type="String" />
                                            <asp:Parameter Name="descripcion" Type="String" />
                                        </InsertParameters>
                                    </asp:SqlDataSource>
                                </td>
                                <td>
                                    <asp:SqlDataSource ID="empresa_con" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
                                        SelectCommand="SELECT [cod_empresa], [descripcion] FROM [empresas]">
                                    </asp:SqlDataSource>
                                </td>
                            </tr>
                            <tr>
                                <td width="73px">
                                    &nbsp;</td>
                                <td width="150">
                                    &nbsp;</td>
                                <td>
                                    <asp:HiddenField ID="hf_valida" runat="server" />
                                </td>
                                <td>
                                    <asp:HiddenField ID="hf_cod_concepto1" runat="server" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

