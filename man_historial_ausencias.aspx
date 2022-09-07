<%@ Page Title="" Language="VB" MasterPageFile="~/menu_master.master" AutoEventWireup="false" CodeFile="man_historial_ausencias.aspx.vb" Inherits="man_historial_ausencias" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
        }
        .style4
        {
            width: 982px;
            text-align: center;
        }
        .style5
        {
            width: 64%;
        }
        .style8
        {
            width: 112px;
        }
        .style9
        {
            width: 7px;
        }
        .style12
        {
            width: 86%;
        }
        .style14
        {
            width: 97%;
            height: 135px;
        }
        .style15
        {
            width: 636px;
        }
        .style17
        {
            width: 132px;
        }
        .style18
        {
        }
        .style20
        {
            width: 48px;
        }
        .style21
        {
            width: 39px;
        }
        .style22
        {
            width: 95px;
        }
        .style24
        {
            width: 91%;
        }
        .style30
        {
            width: 160px;
        }
        .style33
        {
            width: 5px;
        }
        .style34
        {
            width: 75px;
        }
        .style35
        {
            width: 71px;
        }
        .style41
        {
            width: 982px;
            font-size: large;
            font-weight: bold;
            font-family: "Trebuchet MS";
        }
        .style42
        {
            width: 495px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <table class="style3">
                <tr>
                    <td style="text-align: center" valign="top">
                        <table align="center" class="style3" 
                    style="font-family: 'Trebuchet MS'; font-size: large; font-weight: bolder">
                            <tr>
                                <td class="style4" valign="top">
                                    &nbsp;</td>
                                <td style="text-align: right" valign="top">
                                    <asp:ImageButton ID="ImageButton1" runat="server" 
                                ImageUrl="~/images/controles/salir32.png" PostBackUrl="~/home.aspx" 
                                style="text-align: right" ToolTip="Volver al Menu Principal" Height="32px" 
                                        Width="32px" />
                                </td>
                            </tr>
                        </table>
                        <table align="center" class="style5">
                            <tr>
                                <td class="style41">
                                    Historial de Ausencias</td>
                                <td class="style21" style="text-align: left" rowspan="4">
                                    <asp:ImageButton ID="img_busca" runat="server" 
                                ImageUrl="~/images/controles/find.png" 
                                
                                
                                        onclientclick="var wBusqueda = window.open('busca_funcionarios_historial_ausencias.aspx','wBusqeuda','width=500,height=500, left = 262, top = 134');return false" 
                                        ToolTip="Buscar Funcionario" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td height="30">
                                    <asp:FormView ID="form_funcionarios" runat="server" 
                                DataSourceID="funcionarios_con" ForeColor="#0066FF" Width="100%">
                                        <EditItemTemplate>
                                            Funcionario:
                                            <asp:TextBox ID="FuncionarioTextBox" runat="server" 
                                        Text='<%# Bind("Funcionario") %>' />
                                            <br />
                                            <asp:ImageButton ID="UpdateButton" runat="server" CausesValidation="True" 
                                        CommandName="Update" Text="Update" />
                                            &nbsp;<asp:ImageButton ID="UpdateCancelButton" runat="server" 
                                        CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            Funcionario:
                                            <asp:TextBox ID="FuncionarioTextBox0" runat="server" 
                                        Text='<%# Bind("Funcionario") %>' />
                                            <br />
                                            <asp:ImageButton ID="InsertButton" runat="server" CausesValidation="True" 
                                        CommandName="Insert" Text="Insert" />
                                            &nbsp;<asp:ImageButton ID="InsertCancelButton" runat="server" 
                                        CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="FuncionarioLabel" runat="server" 
                                        style="font-size: x-large" Text='<%# Bind("Funcionario") %>' Width="100%" />
                                        </ItemTemplate>
                                    </asp:FormView>
                                </td>
                            </tr>
                            <tr>
                                <td 
                            valign="top" height="30" style="font-family: 'Trebuchet MS'; font-size: small">
                                    <asp:Label ID="lb_mensaje" runat="server" 
                                ForeColor="#FF3300" Text="Label" Width="100%"></asp:Label>
                                </td>
                            </tr>
                        </table>
                        <table align="center" class="style12" 
                    style="font-family: 'Trebuchet MS'; font-size: small">
                            <tr>
                                <td style="text-align: left">
                                    &nbsp;</td>
                                <td 
                            style="text-align: center; font-family: 'Trebuchet MS'; font-size: small;" 
                            colspan="4">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Filtre por Año y&nbsp; Mes:</td>
                                <td style="text-align: left">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td style="text-align: left" width="180">
                                    <asp:HiddenField ID="hf_cod_funcionario" runat="server" />
                                </td>
                                <td style="text-align: right" width="150">
                                    Año:
                                </td>
                                <td class="style34" style="text-align: left">
                                    <asp:TextBox ID="txt_año" runat="server" Width="80px">%</asp:TextBox>
                                </td>
                                <td 
                            style="text-align: right; font-family: 'Trebuchet MS'; font-size: small;" 
                                    width="60">
                                    Mes:</td>
                                <td style="text-align: left" class="style22">
                                    <asp:DropDownList ID="ddl_mes" runat="server" Width="134px">
                                        <asp:ListItem Value="13">TODOS</asp:ListItem>
                                        <asp:ListItem Value="1">ENERO</asp:ListItem>
                                        <asp:ListItem Value="2">FEBRERO</asp:ListItem>
                                        <asp:ListItem Value="3">MARZO</asp:ListItem>
                                        <asp:ListItem Value="4">ABRIL</asp:ListItem>
                                        <asp:ListItem Value="5">MAYO</asp:ListItem>
                                        <asp:ListItem Value="6">JUNIO</asp:ListItem>
                                        <asp:ListItem Value="7">JULIO</asp:ListItem>
                                        <asp:ListItem Value="8">AGOSTO</asp:ListItem>
                                        <asp:ListItem Value="9">SETIEMBRE</asp:ListItem>
                                        <asp:ListItem Value="10">OCTUBRE</asp:ListItem>
                                        <asp:ListItem Value="11">NOVIEMBRE</asp:ListItem>
                                        <asp:ListItem Value="12">DICIEMBRE</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td style="text-align: left">
                                    &nbsp;<asp:Button ID="btn_busca" runat="server" Text="&gt;&gt;" 
                                        ToolTip="Filtrar" />
                                </td>
                            </tr>
                        </table>
                        <br />
                        <table align="center" class="style14">
                            <tr>
                                <td class="style35">
                                    &nbsp;</td>
                                <td 
                            style="font-family: 'Trebuchet MS'; font-size: small; text-align: left;">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ingresar 
                                    Nuevo Registro:</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td width="150">
                                    &nbsp;</td>
                                <td class="style15" style="font-family: 'Trebuchet MS'; font-size: small">
                                    <asp:FormView ID="form_historial_ausencias" runat="server" DataKeyNames="cod_ausencia" 
                                DataSourceID="historial_ausencias_con" DefaultMode="Insert" Width="690px">
                                        <EditItemTemplate>
                                            cod_ausencia:
                                            <asp:Label ID="cod_ausenciaLabel1" runat="server" 
                                        Text='<%# Eval("cod_ausencia") %>' />
                                            <br />
                                            cod_funcionario:
                                            <asp:TextBox ID="cod_funcionarioTextBox" runat="server" 
                                        Text='<%# Bind("cod_funcionario") %>' />
                                            <br />
                                            fecha_inicio:
                                            <asp:TextBox ID="fecha_inicioTextBox" runat="server" 
                                        Text='<%# Bind("fecha_inicio") %>' />
                                            <br />
                                            fecha_fin:
                                            <asp:TextBox ID="fecha_finTextBox" runat="server" 
                                        Text='<%# Bind("fecha_fin") %>' />
                                            <br />
                                            cantidad:
                                            <asp:TextBox ID="cantidadTextBox" runat="server" 
                                        Text='<%# Bind("cantidad") %>' />
                                            <br />
                                            tipo:
                                            <asp:TextBox ID="tipoTextBox" runat="server" Text='<%# Bind("tipo") %>' />
                                            <br />
                                            <asp:ImageButton ID="UpdateButton0" runat="server" CausesValidation="True" 
                                        CommandName="Update" Text="Update" />
                                            &nbsp;<asp:ImageButton ID="UpdateCancelButton0" runat="server" 
                                        CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <table align="center" class="style14" 
                                        style="font-family: 'Trebuchet MS'; font-size: small">
                                                <tr>
                                                    <td class="style30" style="text-align: right">
                                                        Fecha Inicio:
                                                    </td>
                                                    <td class="style17" style="text-align: left">
                                                        <asp:TextBox ID="fecha_inicioTextBox" runat="server" 
                                                    Text='<%# Bind("fecha_inicio") %>' />
                                                    </td>
                                                    <td class="style33">
                                                        <asp:RequiredFieldValidator ID="rv_fecha_inicio" runat="server" 
                                                    ControlToValidate="fecha_inicioTextBox" Enabled="False" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                    </td>
                                                    <td class="style20" style="text-align: right">
                                                        Tipo:
                                                    </td>
                                                    <td style="text-align: left">
                                                        <asp:DropDownList ID="ddl_tipo" runat="server" 
                                                    SelectedValue='<%# Bind("tipo") %>' Width="134px">
                                                            <asp:ListItem Value="I">INJUSTIFICADA</asp:ListItem>
                                                            <asp:ListItem Value="J">JUSTIFICADA</asp:ListItem>
                                                            <asp:ListItem Value="E">ENTRADA</asp:ListItem>
                                                        </asp:DropDownList>
                                                        <asp:RequiredFieldValidator ID="rv_tipo" runat="server" 
                                                    ControlToValidate="ddl_tipo" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style30" style="text-align: right">
                                                        Fecha Fin:
                                                    </td>
                                                    <td class="style17" style="text-align: left">
                                                        <asp:TextBox ID="fecha_finTextBox" runat="server" 
                                                    Text='<%# Bind("fecha_fin") %>' />
                                                    </td>
                                                    <td class="style33">
                                                        <asp:RequiredFieldValidator ID="rv_fecha_fin" runat="server" 
                                                    ControlToValidate="fecha_finTextBox" Enabled="False" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                    </td>
                                                    <td class="style20" style="text-align: right">
                                                        <asp:TextBox ID="cod_funcionarioTextBox" runat="server" Height="16px" 
                                                    Text='<%# Bind("cod_funcionario") %>' Visible="False" Width="34px" />
                                                    </td>
                                                    <td style="text-align: left">
                                                        <asp:TextBox ID="cantidadTextBox" runat="server" Height="16px" 
                                                    Text='<%# Bind("cantidad") %>' Visible="False" Width="38px" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style18" style="text-align: left" colspan="5">
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;
                                                        <asp:ImageButton ID="InsertButton" runat="server" CausesValidation="True" 
                                                    CommandName="Insert" ImageUrl="~/images/controles/add.png" 
                                                    onclick="InsertButton_Click" Text="Insert" 
                                                    ToolTip="Agregar nuevo Registro" />
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                        <asp:ImageButton ID="InsertCancelButton0" runat="server" 
                                                    CausesValidation="False" CommandName="Cancel" 
                                                    ImageUrl="~/images/controles/cancel.png" Text="Cancel" 
                                                    ToolTip="Cancelar" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            cod_ausencia:
                                            <asp:Label ID="cod_ausenciaLabel" runat="server" 
                                        Text='<%# Eval("cod_ausencia") %>' />
                                            <br />
                                            cod_funcionario:
                                            <asp:Label ID="cod_funcionarioLabel" runat="server" 
                                        Text='<%# Bind("cod_funcionario") %>' />
                                            <br />
                                            fecha_inicio:
                                            <asp:Label ID="fecha_inicioLabel" runat="server" 
                                        Text='<%# Bind("fecha_inicio") %>' />
                                            <br />
                                            fecha_fin:
                                            <asp:Label ID="fecha_finLabel" runat="server" Text='<%# Bind("fecha_fin") %>' />
                                            <br />
                                            cantidad:
                                            <asp:Label ID="cantidadLabel" runat="server" Text='<%# Bind("cantidad") %>' />
                                            <br />
                                            tipo:
                                            <asp:Label ID="tipoLabel" runat="server" Text='<%# Bind("tipo") %>' />
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
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                        <table align="center" class="style24">
                            <tr>
                                <td width="200">
                                    &nbsp;</td>
                                <td style="text-align: left; font-family: 'Trebuchet MS'; font-size: small;" 
                                    class="style42">
                                    <asp:GridView ID="grid_historial_ausencias" runat="server" 
                                AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" 
                                BorderWidth="1px" CellPadding="2" DataKeyNames="cod_ausencia" 
                                DataSourceID="historial_ausencias_con" ForeColor="Black" GridLines="None" 
                                Width="502px" style="text-align: center">
                                        <Columns>
                                            <asp:TemplateField ShowHeader="False">
                                                <EditItemTemplate>
                                                    <asp:ImageButton ID="ImageButton3" runat="server" CausesValidation="True" 
                                                CommandName="Update" ImageUrl="~/images/controles/b_grabar.gif" 
                                                onclick="ImageButton1_Click" Text="Update" ToolTip="Guardar" />
                                                    &nbsp;<asp:ImageButton ID="ImageButton2" runat="server" CausesValidation="False" 
                                                CommandName="Cancel" ImageUrl="~/images/controles/b_cancelar.gif" 
                                                Text="Cancel" ToolTip="Cancelar" />
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <asp:ImageButton ID="ImageButton4" runat="server" CausesValidation="False" 
                                                CommandName="Edit" ImageUrl="~/images/controles/b_modificar.gif" 
                                                Text="Edit" ToolTip="Modificar" />
                                                    &nbsp;<asp:ImageButton ID="ImageButton5" runat="server" CausesValidation="False" 
                                                CommandName="Delete" ImageUrl="~/images/controles/b_eliminar.gif" 
                                                Text="Delete" 
                                                        onclientclick="return confirm('Está Seguro que desea eliminar el registro?')" 
                                                        ToolTip="Eliminar" />
                                                </ItemTemplate>
                                                <HeaderStyle HorizontalAlign="Left" Width="50px" />
                                                <ItemStyle HorizontalAlign="Left" Width="50px" />
                                            </asp:TemplateField>
                                            <asp:TemplateField SortExpression="cod_funcionario">
                                                <EditItemTemplate>
                                                    <asp:HiddenField ID="hf_cod_funcionario_grilla_edit" runat="server" 
                                                Value='<%# Bind("cod_funcionario") %>' />
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <asp:HiddenField ID="hf_cod_funcionario_grilla_item" runat="server" 
                                                Value='<%# Bind("cod_funcionario") %>' />
                                                </ItemTemplate>
                                                <HeaderStyle HorizontalAlign="Left" Width="2px" />
                                                <ItemStyle HorizontalAlign="Left" Width="2px" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Fecha Inicio" SortExpression="fecha_inicio">
                                                <EditItemTemplate>
                                                    <asp:TextBox ID="txt_fecha_inicio_edit" runat="server" 
                                                Text='<%# Bind("fecha_inicio", "{0:d}") %>' Width="80px"></asp:TextBox>
                                                    &nbsp;<asp:RequiredFieldValidator ID="rv_grid_fecha_inicio_edit" runat="server" 
                                                        ControlToValidate="txt_fecha_inicio_edit" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="Label1" runat="server" 
                                                Text='<%# Bind("fecha_inicio", "{0:d}") %>'></asp:Label>
                                                </ItemTemplate>
                                                <HeaderStyle HorizontalAlign="Center" Width="100px" />
                                                <ItemStyle HorizontalAlign="Center" Width="100px" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Fecha Fin" SortExpression="fecha_fin">
                                                <EditItemTemplate>
                                                    <asp:TextBox ID="txt_fecha_fin_edit" runat="server" 
                                                Text='<%# Bind("fecha_fin", "{0:d}") %>' Width="80px"></asp:TextBox>
                                                    &nbsp;<asp:RequiredFieldValidator ID="rv_grid_fecha_fin_edit" runat="server" 
                                                        ControlToValidate="txt_fecha_fin_edit" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("fecha_fin", "{0:d}") %>'></asp:Label>
                                                </ItemTemplate>
                                                <HeaderStyle HorizontalAlign="Center" Width="100px" />
                                                <ItemStyle HorizontalAlign="Center" Width="100px" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Cantidad" SortExpression="cantidad">
                                                <EditItemTemplate>
                                                    <asp:Label ID="grid_lbl_cantidad_edit" runat="server" 
                                                        Text='<%# Bind("cantidad") %>'></asp:Label>
                                                    &nbsp;<br />
                                                    <asp:HiddenField ID="hf_cantidad_edit" runat="server" 
                                                        Value='<%# Bind("cantidad") %>' />
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("cantidad") %>'></asp:Label>
                                                </ItemTemplate>
                                                <HeaderStyle Width="100px" />
                                                <ItemStyle HorizontalAlign="Center" Width="100px" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Tipo" SortExpression="tipo">
                                                <EditItemTemplate>
                                                    <asp:DropDownList ID="DropDownList1" runat="server" 
                                                SelectedValue='<%# Bind("tipo") %>'>
                                                        <asp:ListItem Value="I">INJUSTIFICADA</asp:ListItem>
                                                        <asp:ListItem Value="J">JUSTIFICADA</asp:ListItem>
                                                        <asp:ListItem Value="E">ENTRADA</asp:ListItem>
                                                    </asp:DropDownList>
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("tipo_descripcion") %>'></asp:Label>
                                                </ItemTemplate>
                                                <HeaderStyle HorizontalAlign="Center" />
                                                <ItemStyle HorizontalAlign="Center" />
                                            </asp:TemplateField>
                                        </Columns>
                                        <FooterStyle BackColor="Tan" />
                                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                                    HorizontalAlign="Center" />
                                        <EmptyDataTemplate>
                                            <asp:Label ID="Label5" runat="server" 
                                        ForeColor="#FF3300" Text="Ningun Registro." Width="100%"></asp:Label>
                                        </EmptyDataTemplate>
                                        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                                        <HeaderStyle BackColor="Tan" Font-Bold="True" />
                                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                                    </asp:GridView>
                                </td>
                                <td style="text-align: left; font-family: 'Trebuchet MS'; font-size: small;">
                                    &nbsp;</td>
                            </tr>
                        </table>
                        <table align="center" class="style3">
                            <tr>
                                <td class="style8">
                                    <asp:SqlDataSource ID="historial_ausencias_con" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
                                DeleteCommand="DELETE FROM [historial_ausencias] WHERE [cod_ausencia] = @cod_ausencia" 
                                InsertCommand="INSERT INTO [historial_ausencias] ([cod_funcionario], [fecha_inicio], [fecha_fin], [cantidad], [tipo]) VALUES (@cod_funcionario, @fecha_inicio, @fecha_fin, @cantidad, @tipo)" 
                                SelectCommand="SELECT cod_ausencia, cod_funcionario, fecha_inicio, fecha_fin, cantidad, tipo, CASE tipo WHEN 'I' THEN 'INJUSTIFICADA' WHEN 'E' THEN 'ENTRADA' WHEN 'J' THEN 'JUSTIFICADA' END AS tipo_descripcion FROM historial_ausencias WHERE (cod_funcionario = @campo) AND (CAST(YEAR(fecha_inicio) AS varchar(4)) LIKE CAST(@txt_año AS varchar(4))) AND (CAST(MONTH(fecha_inicio) AS Varchar(2)) LIKE CASE CAST(@ddl_mes AS Varchar(2)) WHEN '13' THEN '%' ELSE CAST(@ddl_mes AS Varchar(2)) END)" 
                                
                                
                                
                                
                                        
                                        
                                        UpdateCommand="UPDATE [historial_ausencias] SET [cod_funcionario] = @cod_funcionario, [fecha_inicio] = @fecha_inicio, [fecha_fin] = @fecha_fin, [cantidad] = @cantidad, [tipo] = @tipo WHERE [cod_ausencia] = @cod_ausencia">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="hf_cod_funcionario" Name="campo" 
                                        PropertyName="Value" />
                                            <asp:ControlParameter ControlID="txt_año" Name="txt_año" PropertyName="Text" />
                                            <asp:ControlParameter ControlID="ddl_mes" Name="ddl_mes" 
                                        PropertyName="SelectedValue"/>
                                        </SelectParameters>
                                        <DeleteParameters>
                                            <asp:Parameter Name="cod_ausencia" Type="Int16" />
                                        </DeleteParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="cod_funcionario" Type="Int16" />
                                            <asp:Parameter Name="fecha_inicio" Type="DateTime" />
                                            <asp:Parameter Name="fecha_fin" Type="DateTime" />
                                            <asp:Parameter Name="cantidad" Type="Byte" />
                                            <asp:Parameter Name="tipo" Type="String" />
                                            <asp:Parameter Name="cod_ausencia" Type="Int16" />
                                        </UpdateParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="cod_funcionario" Type="Int16" />
                                            <asp:Parameter Name="fecha_inicio" Type="DateTime" />
                                            <asp:Parameter Name="fecha_fin" Type="DateTime" />
                                            <asp:Parameter Name="cantidad" Type="Byte" />
                                            <asp:Parameter Name="tipo" Type="String" />
                                        </InsertParameters>
                                    </asp:SqlDataSource>
                                </td>
                                <td class="style9">
                                    <asp:SqlDataSource ID="funcionarios_con" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" SelectCommand="SELECT  apellidos + ' , ' + nombres AS Funcionario FROM funcionarios
WHERE (cod_funcionario LIKE @campo)">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="hf_cod_funcionario" Name="campo" 
                                        PropertyName="Value" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
            </table>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

