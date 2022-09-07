<%@ Page Title="" Language="VB" MasterPageFile="~/menu_master.master" AutoEventWireup="false" CodeFile="man_funcionarios_historico.aspx.vb" Inherits="man_funcionarios_historico" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
        }
        .style4
        {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height:50%;width:100%">
        <div id="Header" style="text-align: center">
                <asp:Label runat="server" Text="Historial del Funcionario" Font-Names="Tahoma" 
                    Font-Size="Larger"></asp:Label>
        </div>
        
    </div>
    <div style="height:50%;width:100%">

        <table class="style3" width="100%">
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: center">
                    <b>ACTUAL</b></td>
                <td style="text-align: center">
                    <b>NUEVO</b></td>
            </tr>
            <tr>
                <td align="center" valign="top">
        <div style="vertical-align: top;" id="LeftDIV">
            <asp:FormView runat="server" ID="FuncionarioFV" BackColor="White" 
                BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                DataSourceID="FuncionarioDS" EnableModelValidation="True" 
                Font-Names="Segoe UI Light" ForeColor="Black" GridLines="Horizontal" 
                Width="400px">
                <EditItemTemplate>
                    estado_des:
                    <asp:TextBox ID="estado_desTextBox" runat="server" Text='<%# Bind("estado_des") %>' />
                    <br />
                    confidencial_des:
                    <asp:TextBox ID="confidencial_desTextBox" runat="server" Text='<%# Bind("confidencial_des") %>' />
                    <br />
                    tipo_remu_des:
                    <asp:TextBox ID="tipo_remu_desTextBox" runat="server" Text='<%# Bind("tipo_remu_des") %>' />
                    <br />
                    sexo_des:
                    <asp:TextBox ID="sexo_desTextBox" runat="server" Text='<%# Bind("sexo_des") %>' />
                    <br />
                    jefe:
                    <asp:TextBox ID="jefeTextBox" runat="server" Text='<%# Bind("jefe") %>' />
                    <br />
                    cod_funcionario:
                    <asp:Label ID="cod_funcionarioLabel1" runat="server" Text='<%# Eval("cod_funcionario") %>' />
                    <br />
                    codigo:
                    <asp:TextBox ID="codigoTextBox" runat="server" Text='<%# Bind("codigo") %>' />
                    <br />
                    documento:
                    <asp:TextBox ID="documentoTextBox" runat="server" Text='<%# Bind("documento") %>' />
                    <br />
                    cod_empresa:
                    <asp:TextBox ID="cod_empresaTextBox" runat="server" Text='<%# Bind("cod_empresa") %>' />
                    <br />
                    nombres:
                    <asp:TextBox ID="nombresTextBox" runat="server" Text='<%# Bind("nombres") %>' />
                    <br />
                    apellidos:
                    <asp:TextBox ID="apellidosTextBox" runat="server" Text='<%# Bind("apellidos") %>' />
                    <br />
                    cod_gerencia:
                    <asp:TextBox ID="cod_gerenciaTextBox" runat="server" Text='<%# Bind("cod_gerencia") %>' />
                    <br />
                    cod_area:
                    <asp:TextBox ID="cod_areaTextBox" runat="server" Text='<%# Bind("cod_area") %>' />
                    <br />
                    cod_region:
                    <asp:TextBox ID="cod_regionTextBox" runat="server" Text='<%# Bind("cod_region") %>' />
                    <br />
                    cod_nivel_salarial:
                    <asp:TextBox ID="cod_nivel_salarialTextBox" runat="server" Text='<%# Bind("cod_nivel_salarial") %>' />
                    <br />
                    salario:
                    <asp:TextBox ID="salarioTextBox" runat="server" Text='<%# Bind("salario") %>' />
                    <br />
                    cod_moneda:
                    <asp:TextBox ID="cod_monedaTextBox" runat="server" Text='<%# Bind("cod_moneda") %>' />
                    <br />
                    cod_cargo:
                    <asp:TextBox ID="cod_cargoTextBox" runat="server" Text='<%# Bind("cod_cargo") %>' />
                    <br />
                    profesion:
                    <asp:TextBox ID="profesionTextBox" runat="server" Text='<%# Bind("profesion") %>' />
                    <br />
                    tipo_remuneracion:
                    <asp:TextBox ID="tipo_remuneracionTextBox" runat="server" Text='<%# Bind("tipo_remuneracion") %>' />
                    <br />
                    cod_nivel_jerarquico:
                    <asp:TextBox ID="cod_nivel_jerarquicoTextBox" runat="server" Text='<%# Bind("cod_nivel_jerarquico") %>' />
                    <br />
                    cod_contrato:
                    <asp:TextBox ID="cod_contratoTextBox" runat="server" Text='<%# Bind("cod_contrato") %>' />
                    <br />
                    cod_jefe:
                    <asp:TextBox ID="cod_jefeTextBox" runat="server" Text='<%# Bind("cod_jefe") %>' />
                    <br />
                    grado_hay:
                    <asp:TextBox ID="grado_hayTextBox" runat="server" Text='<%# Bind("grado_hay") %>' />
                    <br />
                    confidencial:
                    <asp:TextBox ID="confidencialTextBox" runat="server" Text='<%# Bind("confidencial") %>' />
                    <br />
                    cod_banco:
                    <asp:TextBox ID="cod_bancoTextBox" runat="server" Text='<%# Bind("cod_banco") %>' />
                    <br />
                    cuenta_nro:
                    <asp:TextBox ID="cuenta_nroTextBox" runat="server" Text='<%# Bind("cuenta_nro") %>' />
                    <br />
                    fecha_ingreso:
                    <asp:TextBox ID="fecha_ingresoTextBox" runat="server" Text='<%# Bind("fecha_ingreso") %>' />
                    <br />
                    fecha_egreso:
                    <asp:TextBox ID="fecha_egresoTextBox" runat="server" Text='<%# Bind("fecha_egreso") %>' />
                    <br />
                    fecha_reingreso:
                    <asp:TextBox ID="fecha_reingresoTextBox" runat="server" Text='<%# Bind("fecha_reingreso") %>' />
                    <br />
                    estado:
                    <asp:TextBox ID="estadoTextBox" runat="server" Text='<%# Bind("estado") %>' />
                    <br />
                    sexo:
                    <asp:TextBox ID="sexoTextBox" runat="server" Text='<%# Bind("sexo") %>' />
                    <br />
                    fecha_nacimiento:
                    <asp:TextBox ID="fecha_nacimientoTextBox" runat="server" Text='<%# Bind("fecha_nacimiento") %>' />
                    <br />
                    cod_nacionalidad:
                    <asp:TextBox ID="cod_nacionalidadTextBox" runat="server" Text='<%# Bind("cod_nacionalidad") %>' />
                    <br />
                    cod_departamento:
                    <asp:TextBox ID="cod_departamentoTextBox" runat="server" Text='<%# Bind("cod_departamento") %>' />
                    <br />
                    ciudad:
                    <asp:TextBox ID="ciudadTextBox" runat="server" Text='<%# Bind("ciudad") %>' />
                    <br />
                    postal:
                    <asp:TextBox ID="postalTextBox" runat="server" Text='<%# Bind("postal") %>' />
                    <br />
                    direccion:
                    <asp:TextBox ID="direccionTextBox" runat="server" Text='<%# Bind("direccion") %>' />
                    <br />
                    telefono:
                    <asp:TextBox ID="telefonoTextBox" runat="server" Text='<%# Bind("telefono") %>' />
                    <br />
                    celular:
                    <asp:TextBox ID="celularTextBox" runat="server" Text='<%# Bind("celular") %>' />
                    <br />
                    email:
                    <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                    <br />
                    trabajos_anteriores:
                    <asp:TextBox ID="trabajos_anterioresTextBox" runat="server" Text='<%# Bind("trabajos_anteriores") %>' />
                    <br />
                    estado_civil:
                    <asp:TextBox ID="estado_civilTextBox" runat="server" Text='<%# Bind("estado_civil") %>' />
                    <br />
                    nombres_conyugue:
                    <asp:TextBox ID="nombres_conyugueTextBox" runat="server" Text='<%# Bind("nombres_conyugue") %>' />
                    <br />
                    apellidos_conyugue:
                    <asp:TextBox ID="apellidos_conyugueTextBox" runat="server" Text='<%# Bind("apellidos_conyugue") %>' />
                    <br />
                    fecha_nacimiento_conyugue:
                    <asp:TextBox ID="fecha_nacimiento_conyugueTextBox" runat="server" Text='<%# Bind("fecha_nacimiento_conyugue") %>' />
                    <br />
                    cod_categoria_mjt:
                    <asp:TextBox ID="cod_categoria_mjtTextBox" runat="server" Text='<%# Bind("cod_categoria_mjt") %>' />
                    <br />
                    valor_head:
                    <asp:TextBox ID="valor_headTextBox" runat="server" Text='<%# Bind("valor_head") %>' />
                    <br />
                    fte:
                    <asp:TextBox ID="fteTextBox" runat="server" Text='<%# Bind("fte") %>' />
                    <br />
                    ticket_alimentacion:
                    <asp:TextBox ID="ticket_alimentacionTextBox" runat="server" Text='<%# Bind("ticket_alimentacion") %>' />
                    <br />
                    cta_alimentacion:
                    <asp:TextBox ID="cta_alimentacionTextBox" runat="server" Text='<%# Bind("cta_alimentacion") %>' />
                    <br />
                    empresa:
                    <asp:TextBox ID="empresaTextBox" runat="server" Text='<%# Bind("empresa") %>' />
                    <br />
                    gerencia:
                    <asp:TextBox ID="gerenciaTextBox" runat="server" Text='<%# Bind("gerencia") %>' />
                    <br />
                    area:
                    <asp:TextBox ID="areaTextBox" runat="server" Text='<%# Bind("area") %>' />
                    <br />
                    region:
                    <asp:TextBox ID="regionTextBox" runat="server" Text='<%# Bind("region") %>' />
                    <br />
                    nivel_salarial:
                    <asp:TextBox ID="nivel_salarialTextBox" runat="server" Text='<%# Bind("nivel_salarial") %>' />
                    <br />
                    moneda:
                    <asp:TextBox ID="monedaTextBox" runat="server" Text='<%# Bind("moneda") %>' />
                    <br />
                    cargo:
                    <asp:TextBox ID="cargoTextBox" runat="server" Text='<%# Bind("cargo") %>' />
                    <br />
                    nivel_jerarquico:
                    <asp:TextBox ID="nivel_jerarquicoTextBox" runat="server" Text='<%# Bind("nivel_jerarquico") %>' />
                    <br />
                    contrato:
                    <asp:TextBox ID="contratoTextBox" runat="server" Text='<%# Bind("contrato") %>' />
                    <br />
                    banco:
                    <asp:TextBox ID="bancoTextBox" runat="server" Text='<%# Bind("banco") %>' />
                    <br />
                    nacionalidad:
                    <asp:TextBox ID="nacionalidadTextBox" runat="server" Text='<%# Bind("nacionalidad") %>' />
                    <br />
                    departamento:
                    <asp:TextBox ID="departamentoTextBox" runat="server" Text='<%# Bind("departamento") %>' />
                    <br />
                    estado_civil_des:
                    <asp:TextBox ID="estado_civil_desTextBox" runat="server" Text='<%# Bind("estado_civil_des") %>' />
                    <br />
                    categoria_mjt:
                    <asp:TextBox ID="categoria_mjtTextBox" runat="server" Text='<%# Bind("categoria_mjt") %>' />
                    <br />
                    horas_dia:
                    <asp:TextBox ID="horas_diaTextBox" runat="server" Text='<%# Bind("horas_dia") %>' />
                    <br />
                    trabaja_sabado:
                    <asp:TextBox ID="trabaja_sabadoTextBox" runat="server" Text='<%# Bind("trabaja_sabado") %>' />
                    <br />
                    cuenta_sec_nro:
                    <asp:TextBox ID="cuenta_sec_nroTextBox" runat="server" Text='<%# Bind("cuenta_sec_nro") %>' />
                    <br />
                    administrativo:
                    <asp:TextBox ID="administrativoTextBox" runat="server" Text='<%# Bind("administrativo") %>' />
                    <br />
                    incentivo:
                    <asp:TextBox ID="incentivoTextBox" runat="server" Text='<%# Bind("incentivo") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                        CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                        CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <EditRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <InsertItemTemplate>
                    estado_des:
                    <asp:TextBox ID="estado_desTextBox0" runat="server" 
                        Text='<%# Bind("estado_des") %>' />
                    <br />
                    confidencial_des:
                    <asp:TextBox ID="confidencial_desTextBox0" runat="server" 
                        Text='<%# Bind("confidencial_des") %>' />
                    <br />
                    tipo_remu_des:
                    <asp:TextBox ID="tipo_remu_desTextBox0" runat="server" 
                        Text='<%# Bind("tipo_remu_des") %>' />
                    <br />
                    sexo_des:
                    <asp:TextBox ID="sexo_desTextBox0" runat="server" 
                        Text='<%# Bind("sexo_des") %>' />
                    <br />
                    jefe:
                    <asp:TextBox ID="jefeTextBox0" runat="server" Text='<%# Bind("jefe") %>' />
                    <br />

                    codigo:
                    <asp:TextBox ID="codigoTextBox0" runat="server" Text='<%# Bind("codigo") %>' />
                    <br />
                    documento:
                    <asp:TextBox ID="documentoTextBox0" runat="server" 
                        Text='<%# Bind("documento") %>' />
                    <br />
                    cod_empresa:
                    <asp:TextBox ID="cod_empresaTextBox0" runat="server" 
                        Text='<%# Bind("cod_empresa") %>' />
                    <br />
                    nombres:
                    <asp:TextBox ID="nombresTextBox0" runat="server" 
                        Text='<%# Bind("nombres") %>' />
                    <br />
                    apellidos:
                    <asp:TextBox ID="apellidosTextBox0" runat="server" 
                        Text='<%# Bind("apellidos") %>' />
                    <br />
                    cod_gerencia:
                    <asp:TextBox ID="cod_gerenciaTextBox0" runat="server" 
                        Text='<%# Bind("cod_gerencia") %>' />
                    <br />
                    cod_area:
                    <asp:TextBox ID="cod_areaTextBox0" runat="server" 
                        Text='<%# Bind("cod_area") %>' />
                    <br />
                    cod_region:
                    <asp:TextBox ID="cod_regionTextBox0" runat="server" 
                        Text='<%# Bind("cod_region") %>' />
                    <br />
                    cod_nivel_salarial:
                    <asp:TextBox ID="cod_nivel_salarialTextBox0" runat="server" 
                        Text='<%# Bind("cod_nivel_salarial") %>' />
                    <br />
                    salario:
                    <asp:TextBox ID="salarioTextBox0" runat="server" 
                        Text='<%# Bind("salario") %>' />
                    <br />
                    cod_moneda:
                    <asp:TextBox ID="cod_monedaTextBox0" runat="server" 
                        Text='<%# Bind("cod_moneda") %>' />
                    <br />
                    cod_cargo:
                    <asp:TextBox ID="cod_cargoTextBox0" runat="server" 
                        Text='<%# Bind("cod_cargo") %>' />
                    <br />
                    profesion:
                    <asp:TextBox ID="profesionTextBox0" runat="server" 
                        Text='<%# Bind("profesion") %>' />
                    <br />
                    tipo_remuneracion:
                    <asp:TextBox ID="tipo_remuneracionTextBox0" runat="server" 
                        Text='<%# Bind("tipo_remuneracion") %>' />
                    <br />
                    cod_nivel_jerarquico:
                    <asp:TextBox ID="cod_nivel_jerarquicoTextBox0" runat="server" 
                        Text='<%# Bind("cod_nivel_jerarquico") %>' />
                    <br />
                    cod_contrato:
                    <asp:TextBox ID="cod_contratoTextBox0" runat="server" 
                        Text='<%# Bind("cod_contrato") %>' />
                    <br />
                    cod_jefe:
                    <asp:TextBox ID="cod_jefeTextBox0" runat="server" 
                        Text='<%# Bind("cod_jefe") %>' />
                    <br />
                    grado_hay:
                    <asp:TextBox ID="grado_hayTextBox0" runat="server" 
                        Text='<%# Bind("grado_hay") %>' />
                    <br />
                    confidencial:
                    <asp:TextBox ID="confidencialTextBox0" runat="server" 
                        Text='<%# Bind("confidencial") %>' />
                    <br />
                    cod_banco:
                    <asp:TextBox ID="cod_bancoTextBox0" runat="server" 
                        Text='<%# Bind("cod_banco") %>' />
                    <br />
                    cuenta_nro:
                    <asp:TextBox ID="cuenta_nroTextBox0" runat="server" 
                        Text='<%# Bind("cuenta_nro") %>' />
                    <br />
                    fecha_ingreso:
                    <asp:TextBox ID="fecha_ingresoTextBox0" runat="server" 
                        Text='<%# Bind("fecha_ingreso") %>' />
                    <br />
                    fecha_egreso:
                    <asp:TextBox ID="fecha_egresoTextBox0" runat="server" 
                        Text='<%# Bind("fecha_egreso") %>' />
                    <br />
                    fecha_reingreso:
                    <asp:TextBox ID="fecha_reingresoTextBox0" runat="server" 
                        Text='<%# Bind("fecha_reingreso") %>' />
                    <br />
                    estado:
                    <asp:TextBox ID="estadoTextBox0" runat="server" Text='<%# Bind("estado") %>' />
                    <br />
                    sexo:
                    <asp:TextBox ID="sexoTextBox0" runat="server" Text='<%# Bind("sexo") %>' />
                    <br />
                    fecha_nacimiento:
                    <asp:TextBox ID="fecha_nacimientoTextBox0" runat="server" 
                        Text='<%# Bind("fecha_nacimiento") %>' />
                    <br />
                    cod_nacionalidad:
                    <asp:TextBox ID="cod_nacionalidadTextBox0" runat="server" 
                        Text='<%# Bind("cod_nacionalidad") %>' />
                    <br />
                    cod_departamento:
                    <asp:TextBox ID="cod_departamentoTextBox0" runat="server" 
                        Text='<%# Bind("cod_departamento") %>' />
                    <br />
                    ciudad:
                    <asp:TextBox ID="ciudadTextBox0" runat="server" Text='<%# Bind("ciudad") %>' />
                    <br />
                    postal:
                    <asp:TextBox ID="postalTextBox0" runat="server" Text='<%# Bind("postal") %>' />
                    <br />
                    direccion:
                    <asp:TextBox ID="direccionTextBox0" runat="server" 
                        Text='<%# Bind("direccion") %>' />
                    <br />
                    telefono:
                    <asp:TextBox ID="telefonoTextBox0" runat="server" 
                        Text='<%# Bind("telefono") %>' />
                    <br />
                    celular:
                    <asp:TextBox ID="celularTextBox0" runat="server" 
                        Text='<%# Bind("celular") %>' />
                    <br />
                    email:
                    <asp:TextBox ID="emailTextBox0" runat="server" Text='<%# Bind("email") %>' />
                    <br />
                    trabajos_anteriores:
                    <asp:TextBox ID="trabajos_anterioresTextBox0" runat="server" 
                        Text='<%# Bind("trabajos_anteriores") %>' />
                    <br />
                    estado_civil:
                    <asp:TextBox ID="estado_civilTextBox0" runat="server" 
                        Text='<%# Bind("estado_civil") %>' />
                    <br />
                    nombres_conyugue:
                    <asp:TextBox ID="nombres_conyugueTextBox0" runat="server" 
                        Text='<%# Bind("nombres_conyugue") %>' />
                    <br />
                    apellidos_conyugue:
                    <asp:TextBox ID="apellidos_conyugueTextBox0" runat="server" 
                        Text='<%# Bind("apellidos_conyugue") %>' />
                    <br />
                    fecha_nacimiento_conyugue:
                    <asp:TextBox ID="fecha_nacimiento_conyugueTextBox0" runat="server" 
                        Text='<%# Bind("fecha_nacimiento_conyugue") %>' />
                    <br />
                    cod_categoria_mjt:
                    <asp:TextBox ID="cod_categoria_mjtTextBox0" runat="server" 
                        Text='<%# Bind("cod_categoria_mjt") %>' />
                    <br />
                    valor_head:
                    <asp:TextBox ID="valor_headTextBox0" runat="server" 
                        Text='<%# Bind("valor_head") %>' />
                    <br />
                    fte:
                    <asp:TextBox ID="fteTextBox0" runat="server" Text='<%# Bind("fte") %>' />
                    <br />
                    ticket_alimentacion:
                    <asp:TextBox ID="ticket_alimentacionTextBox0" runat="server" 
                        Text='<%# Bind("ticket_alimentacion") %>' />
                    <br />
                    cta_alimentacion:
                    <asp:TextBox ID="cta_alimentacionTextBox0" runat="server" 
                        Text='<%# Bind("cta_alimentacion") %>' />
                    <br />
                    empresa:
                    <asp:TextBox ID="empresaTextBox0" runat="server" 
                        Text='<%# Bind("empresa") %>' />
                    <br />
                    gerencia:
                    <asp:TextBox ID="gerenciaTextBox0" runat="server" 
                        Text='<%# Bind("gerencia") %>' />
                    <br />
                    area:
                    <asp:TextBox ID="areaTextBox0" runat="server" Text='<%# Bind("area") %>' />
                    <br />
                    region:
                    <asp:TextBox ID="regionTextBox0" runat="server" Text='<%# Bind("region") %>' />
                    <br />
                    nivel_salarial:
                    <asp:TextBox ID="nivel_salarialTextBox0" runat="server" 
                        Text='<%# Bind("nivel_salarial") %>' />
                    <br />
                    moneda:
                    <asp:TextBox ID="monedaTextBox0" runat="server" Text='<%# Bind("moneda") %>' />
                    <br />
                    cargo:
                    <asp:TextBox ID="cargoTextBox0" runat="server" Text='<%# Bind("cargo") %>' />
                    <br />
                    nivel_jerarquico:
                    <asp:TextBox ID="nivel_jerarquicoTextBox0" runat="server" 
                        Text='<%# Bind("nivel_jerarquico") %>' />
                    <br />
                    contrato:
                    <asp:TextBox ID="contratoTextBox0" runat="server" 
                        Text='<%# Bind("contrato") %>' />
                    <br />
                    banco:
                    <asp:TextBox ID="bancoTextBox0" runat="server" Text='<%# Bind("banco") %>' />
                    <br />
                    nacionalidad:
                    <asp:TextBox ID="nacionalidadTextBox0" runat="server" 
                        Text='<%# Bind("nacionalidad") %>' />
                    <br />
                    departamento:
                    <asp:TextBox ID="departamentoTextBox0" runat="server" 
                        Text='<%# Bind("departamento") %>' />
                    <br />
                    estado_civil_des:
                    <asp:TextBox ID="estado_civil_desTextBox0" runat="server" 
                        Text='<%# Bind("estado_civil_des") %>' />
                    <br />
                    categoria_mjt:
                    <asp:TextBox ID="categoria_mjtTextBox0" runat="server" 
                        Text='<%# Bind("categoria_mjt") %>' />
                    <br />
                    horas_dia:
                    <asp:TextBox ID="horas_diaTextBox0" runat="server" 
                        Text='<%# Bind("horas_dia") %>' />
                    <br />
                    trabaja_sabado:
                    <asp:TextBox ID="trabaja_sabadoTextBox0" runat="server" 
                        Text='<%# Bind("trabaja_sabado") %>' />
                    <br />
                    cuenta_sec_nro:
                    <asp:TextBox ID="cuenta_sec_nroTextBox0" runat="server" 
                        Text='<%# Bind("cuenta_sec_nro") %>' />
                    <br />
                    administrativo:
                    <asp:TextBox ID="administrativoTextBox0" runat="server" 
                        Text='<%# Bind("administrativo") %>' />
                    <br />
                    incentivo:
                    <asp:TextBox ID="incentivoTextBox0" runat="server" 
                        Text='<%# Bind("incentivo") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                        CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                        CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    <table class="style1">
                        <tr>
                            <td colspan="2" style="text-align: center" bgcolor="#99CCFF">
                                <b>Datos Personales</b></td>
                        </tr>
                        <tr>
                            <td class="style4">
                                Legajo</td>
                            <td class="style4">
                                <asp:Label ID="codigoLabel" runat="server" Text='<%# Bind("codigo") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Nombres</td>
                            <td>
                                <asp:Label ID="nombresLabel" runat="server" Text='<%# Bind("nombres") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Apellidos</td>
                            <td>
                                <asp:Label ID="apellidosLabel" runat="server" Text='<%# Bind("apellidos") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Estado</td>
                            <td>
                                <asp:Label ID="estado_desLabel" runat="server" 
                                    Text='<%# Bind("estado_des") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Confidencial</td>
                            <td>
                                <asp:Label ID="confidencial_desLabel" runat="server" 
                                    Text='<%# Bind("confidencial_des") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Remuneración</td>
                            <td>
                                <asp:Label ID="tipo_remu_desLabel" runat="server" 
                                    Text='<%# Bind("tipo_remu_des") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Sexo</td>
                            <td>
                                <asp:Label ID="sexo_desLabel" runat="server" Text='<%# Bind("sexo_des") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Jefe</td>
                            <td>
                                <asp:Label ID="jefeLabel" runat="server" Text='<%# Bind("jefe") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Ciudad</td>
                            <td>
                                <asp:Label ID="ciudadLabel" runat="server" Text='<%# Bind("ciudad") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Dirección</td>
                            <td>
                                <asp:Label ID="direccionLabel" runat="server" Text='<%# Bind("direccion") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Telefono</td>
                            <td>
                                <asp:Label ID="telefonoLabel" runat="server" Text='<%# Bind("telefono") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Celular</td>
                            <td>
                                <asp:Label ID="celularLabel" runat="server" Text='<%# Bind("celular") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Estado civil</td>
                            <td>
                                <asp:Label ID="estado_civil_desLabel" runat="server" 
                                    Text='<%# Bind("estado_civil_des") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Nombres (Conyugue)</td>
                            <td>
                                <asp:Label ID="nombres_conyugueLabel" runat="server" 
                                    Text='<%# Bind("nombres_conyugue") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Apellidos (Conyugue)</td>
                            <td>
                                <asp:Label ID="apellidos_conyugueLabel" runat="server" 
                                    Text='<%# Bind("apellidos_conyugue") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Ticket Alimentación</td>
                            <td>
                                <asp:Label ID="ticket_alimentacionLabel" runat="server" 
                                    Text='<%# Bind("ticket_alimentacion") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Cta. Alimentación</td>
                            <td>
                                <asp:Label ID="cta_alimentacionLabel" runat="server" 
                                    Text='<%# Bind("cta_alimentacion") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" style="text-align: center" bgcolor="#99CCFF">
                                <b>Datos corporativos</b></td>
                        </tr>
                        <tr>
                            <td>
                                Empresa</td>
                            <td>
                                <asp:Label ID="empresaLabel" runat="server" Text='<%# Bind("empresa") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Gerencia</td>
                            <td>
                                <asp:Label ID="gerenciaLabel" runat="server" Text='<%# Bind("gerencia") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Area</td>
                            <td>
                                <asp:Label ID="areaLabel" runat="server" Text='<%# Bind("area") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Cargo</td>
                            <td>
                                <asp:Label ID="cargoLabel" runat="server" Text='<%# Bind("cargo") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Nivel salarial</td>
                            <td>
                                <asp:Label ID="nivel_salarialLabel" runat="server" 
                                    Text='<%# Bind("nivel_salarial") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Moneda</td>
                            <td>
                                <asp:Label ID="monedaLabel" runat="server" Text='<%# Bind("moneda") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Nivel jerarquico</td>
                            <td>
                                <asp:Label ID="nivel_jerarquicoLabel" runat="server" 
                                    Text='<%# Bind("nivel_jerarquico") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Contrato</td>
                            <td>
                                <asp:Label ID="contratoLabel" runat="server" Text='<%# Bind("contrato") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Categoria MJT</td>
                            <td>
                                <asp:Label ID="categoria_mjtLabel" runat="server" 
                                    Text='<%# Bind("categoria_mjt") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Horas por dia</td>
                            <td>
                                <asp:Label ID="horas_diaLabel" runat="server" Text='<%# Bind("horas_dia") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Trabaja sabado</td>
                            <td>
                                <asp:Label ID="trabaja_sabadoLabel" runat="server" 
                                    Text='<%# Bind("trabaja_sabado") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Es Administrativo</td>
                            <td>
                                <asp:Label ID="administrativoLabel" runat="server" 
                                    Text='<%# Bind("administrativo") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Incentivo</td>
                            <td>
                                <asp:Label ID="incentivoLabel" runat="server" Text='<%# Bind("incentivo") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Banco</td>
                            <td>
                                <asp:Label ID="bancoLabel" runat="server" Text='<%# Bind("banco") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" style="text-align: center" bgcolor="#99CCFF">
                                <b>Datos de ubicación</b></td>
                        </tr>
                        <tr>
                            <td>
                                Región</td>
                            <td>
                                <asp:Label ID="regionLabel" runat="server" Text='<%# Bind("region") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Departamento</td>
                            <td>
                                <asp:Label ID="departamentoLabel" runat="server" 
                                    Text='<%# Bind("departamento") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                    <br />

                </ItemTemplate>
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            </asp:FormView>
        </div>
        
                </td>
                <td align="center" valign="top">
                     <div style="vertical-align: top;" id="Div1">
                    <table class="style1" __designer:mapid="22d" style="width: 100%;">
                        <tr __designer:mapid="22e">
                            <td colspan="2" style="text-align: center" __designer:mapid="22f">
                                Datos Personales</td>
                        </tr>
                        <tr __designer:mapid="240">
                            <td __designer:mapid="241">
                                Confidencial</td>
                            <td __designer:mapid="242">
                                <asp:DropDownList ID="confidencial_DropDownList" runat="server">
                                    <asp:ListItem Selected="True" Value="1">SI</asp:ListItem>
                                    <asp:ListItem Value="0">NO</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr __designer:mapid="247">
                            <td __designer:mapid="248">
                                Remuneración</td>
                            <td __designer:mapid="249">
                                <asp:DropDownList ID="remuneracion_DropDownList" runat="server">
                                    <asp:ListItem Value="M">Mensual</asp:ListItem>
                                    <asp:ListItem Value="J">Jornalero</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr __designer:mapid="252">
                            <td __designer:mapid="253">
                                Jefe</td>
                            <td __designer:mapid="254">
                                <asp:DropDownList ID="jefes_DropDownList" runat="server" 
                                    DataSourceID="JefesDS" DataTextField="Jefe" 
                                    DataValueField="cod_funcionario">
                                    <asp:ListItem Value="M">Mensual</asp:ListItem>
                                    <asp:ListItem Value="J">Jornalero</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr __designer:mapid="27a">
                            <td colspan="2" style="text-align: center" __designer:mapid="27b">
                                Datos corporativos</td>
                        </tr>
                        <tr __designer:mapid="280">
                            <td __designer:mapid="281">
                                Gerencia</td>
                            <td __designer:mapid="282">
                                <asp:DropDownList ID="gerencias_DropDownList" runat="server" 
                                    DataSourceID="GerenciasDS" DataTextField="descripcion" 
                                    DataValueField="cod_gerencia">
                                    <asp:ListItem Value="M">Mensual</asp:ListItem>
                                    <asp:ListItem Value="J">Jornalero</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr __designer:mapid="284">
                            <td __designer:mapid="285">
                                Area</td>
                            <td __designer:mapid="286">
                                <asp:DropDownList ID="area_DropDownList" runat="server" 
                                    DataSourceID="AreasDS" DataTextField="AreaExtendida" 
                                    DataValueField="cod_area">
                                    <asp:ListItem Value="M">Mensual</asp:ListItem>
                                    <asp:ListItem Value="J">Jornalero</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr __designer:mapid="288">
                            <td __designer:mapid="289">
                                Cargo</td>
                            <td __designer:mapid="28a">
                                <asp:DropDownList ID="cargos_DropDownList" runat="server" 
                                    DataSourceID="cargosDS" DataTextField="Cargo" DataValueField="cod_cargo">
                                    <asp:ListItem Value="M">Mensual</asp:ListItem>
                                    <asp:ListItem Value="J">Jornalero</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr __designer:mapid="28c">
                            <td __designer:mapid="28d">
                                Nivel Salarial</td>
                            <td __designer:mapid="28e">
                                <asp:DropDownList ID="nivelesSalariales_DropDownList" runat="server" 
                                    DataSourceID="NivelesSalarialesDS" DataTextField="nivel_salarial" 
                                    DataValueField="cod_nivel_salarial">
                                    <asp:ListItem Value="M">Mensual</asp:ListItem>
                                    <asp:ListItem Value="J">Jornalero</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr __designer:mapid="294">
                            <td __designer:mapid="295">
                                Nivel jerarquico</td>
                            <td __designer:mapid="296">
                                <asp:DropDownList ID="NivelJerarquico_DropDownList" runat="server" 
                                    DataSourceID="NivelesJerarquicosDS" DataTextField="nivel" 
                                    DataValueField="cod_nivel_jerarquico">
                                    <asp:ListItem Value="M">Mensual</asp:ListItem>
                                    <asp:ListItem Value="J">Jornalero</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr __designer:mapid="298">
                            <td __designer:mapid="299">
                                Contrato</td>
                            <td __designer:mapid="29a">
                                <asp:DropDownList ID="contrato_DropDownList" runat="server" 
                                    DataSourceID="ContratosDS" DataTextField="contrato" 
                                    DataValueField="cod_contrato" Enabled="False">
                                    <asp:ListItem Value="M">Mensual</asp:ListItem>
                                    <asp:ListItem Value="J">Jornalero</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr __designer:mapid="29c">
                            <td __designer:mapid="29d">
                                Categoria MJT</td>
                            <td __designer:mapid="29e">
                                <asp:DropDownList ID="catejoriaMJT_DropDownList" runat="server" 
                                    DataSourceID="CategoriasMjtDS" DataTextField="categoria" 
                                    DataValueField="cod_categoria_mjt">
                                    <asp:ListItem Value="M">Mensual</asp:ListItem>
                                    <asp:ListItem Value="J">Jornalero</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr __designer:mapid="2b0">
                            <td __designer:mapid="2b1">
                                Banco</td>
                            <td __designer:mapid="2b2">
                                <asp:DropDownList ID="bancos_DropDownList" runat="server" 
                                    DataSourceID="BancosDS" DataTextField="banco" DataValueField="cod_banco" 
                                    Enabled="False">
                                    <asp:ListItem Value="M">Mensual</asp:ListItem>
                                    <asp:ListItem Value="J">Jornalero</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr __designer:mapid="2be">
                            <td __designer:mapid="2bf">
                                &nbsp;</td>
                            <td __designer:mapid="2c0">
                                &nbsp;</td>
                        </tr>
                        <tr __designer:mapid="2be">
                            <td __designer:mapid="2bf" colspan="2" style="text-align: center">
                                Obervaciones</td>
                        </tr>
                        <tr __designer:mapid="2be">
                            <td __designer:mapid="2bf">
                                Fecha Act.</td>
                            <td __designer:mapid="2c0">
                                <asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
                                    BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" 
                                    Font-Names="Verdana" Font-Size="7pt" ForeColor="Black" Height="180px" 
                                    Width="200px">
                                    <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                                    <SelectorStyle BackColor="#CCCCCC" />
                                    <WeekendDayStyle BackColor="#FFFFCC" />
                                    <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                                    <OtherMonthDayStyle ForeColor="#808080" />
                                    <NextPrevStyle VerticalAlign="Bottom" />
                                    <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                                    <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                                </asp:Calendar>
                                                    </td>
                        </tr>
                        <tr __designer:mapid="2be">
                            <td __designer:mapid="2bf">
                                Motivo</td>
                            <td __designer:mapid="2c0">
                                <asp:DropDownList ID="DropDownList1" runat="server" 
                                    DataSourceID="HistorialMotivosDS" DataTextField="motivo" 
                                    DataValueField="motivo">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr __designer:mapid="2c1">
                            <td __designer:mapid="2c2">
                                <asp:Button ID="ModificarBTN" runat="server" Text="Aplicar" />
                            </td>
                            <td __designer:mapid="2c3">
                                <asp:Label ID="lb_mensaje" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <asp:SqlDataSource ID="HistorialMotivosDS" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
                            SelectCommand="SELECT historico, motivo FROM historicos_motivos">
                        </asp:SqlDataSource>
                    </table>
        </div>
                    </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>

    </div>
    <asp:SqlDataSource runat="server" ID="FuncionarioDS" ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" SelectCommand="get_funcionario_info" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:QueryStringParameter Name="p_cod_empresa" QueryStringField="p_cod_empresa" Type="Int32" />
            <asp:QueryStringParameter Name="p_cod_funcionario" QueryStringField="p_cod_funcionario" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="JefesDS" runat="server" 
        ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
        SelectCommand="sp_obtener_jefes_empresa" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:QueryStringParameter Name="p_cod_empresa" QueryStringField="p_cod_empresa" 
                Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="GerenciasDS" runat="server" 
        ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
        SelectCommand="SELECT cod_gerencia, descripcion FROM gerencias WHERE (cod_empresa = @p_cod_empresa)">
        <SelectParameters>
            <asp:QueryStringParameter Name="p_cod_empresa" 
                QueryStringField="p_cod_empresa" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="AreasDS" runat="server" 
        ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
        SelectCommand="sp_obtener_areas" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:QueryStringParameter Name="p_cod_empresa" 
                QueryStringField="p_cod_empresa" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="EmpresasDS" runat="server" 
        ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
        SelectCommand="SELECT descripcion AS Empresa, cod_empresa FROM empresas">
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="cargosDS" runat="server" 
        ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
        SelectCommand="SELECT cod_cargo, descripcion AS Cargo FROM cargos WHERE (cod_empresa = @p_cod_empresa) order by descripcion">
        <SelectParameters>
            <asp:QueryStringParameter Name="p_cod_empresa" 
                QueryStringField="p_cod_empresa" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="NivelesSalarialesDS" runat="server" 
        ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
        SelectCommand="select cod_nivel_salarial , descripcion as nivel_salarial  from niveles_salariales">
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="MonedasDS" runat="server" 
        ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
        SelectCommand="select cod_moneda, descripcion as moneda from monedas">
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="NivelesJerarquicosDS" runat="server" 
        ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
        SelectCommand="select cod_nivel_jerarquico, descripcion as nivel  from niveles_jerarquicos where cod_empresa = @p_cod_empresa">
        <SelectParameters>
            <asp:QueryStringParameter Name="p_cod_empresa" 
                QueryStringField="p_cod_empresa" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="ContratosDS" runat="server" 
        ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
        SelectCommand="select cod_contrato, descripcion as contrato from contratos where cod_empresa = @p_cod_empresa">
        <SelectParameters>
            <asp:QueryStringParameter Name="p_cod_empresa" 
                QueryStringField="p_cod_empresa" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="CategoriasMjtDS" runat="server" 
        ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
        SelectCommand="select cod_categoria_mjt, descripcion as categoria from categorias_mjt">
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="BancosDS" runat="server" 
        ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
        SelectCommand="select cod_banco, descripcion as banco from bancos">
    </asp:SqlDataSource>
    </asp:Content>

