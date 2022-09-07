<%@ Page Title="" Language="VB" MasterPageFile="~/menu_master.master" AutoEventWireup="false" CodeFile="man_historial_salarios.aspx.vb" Inherits="man_historial_funcionarios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
        }
        .style8
        {
            width: 84%;
        }
        .style9
        {
            width: 156px;
            text-align: right;
        }
        .style15
        {
            width: 90%;
        }
        .style16
        {
            width: 131px;
        }
        .style17
        {
            width: 168px;
        }
        .style18
        {
            width: 129px;
        }
        .style19
        {
            width: 124px;
        }
        .style21
        {
        }
        .style22
        {
            width: 70px;
        }
        .style23
        {
            width: 542px;
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
                                <td 
                            
                            
                            
                                    style="text-align: right;">
                                    <asp:ImageButton ID="ImageButton1" runat="server" Height="32px" 
                                        ImageUrl="~/images/controles/salir32.png" PostBackUrl="~/home.aspx" 
                                        ToolTip="Volver al Menu Principal" Width="32px" />
                                </td>
                            </tr>
                        </table>
                        <table align="center" 
                    style="font-family: 'Trebuchet MS'; font-size: small" width="64%">
                            <tr>
                                <td valign="top" align="center" 
                                    style="font-family: 'Trebuchet MS'; font-size: large; font-weight: bolder; text-align: center;">
                                    Historial Salarios</td>
                                <td rowspan="5">
                                    <asp:ImageButton ID="ImageButton2" runat="server" 
                                ImageUrl="~/images/controles/find.png" 
                                
                                onclientclick="var wBusqueda = window.open('busca_funcionarios_historial_salarios.aspx','wBusqeuda','width=500,height=500, left = 262, top = 134');return false" 
                                PostBackUrl="~/home.aspx" ToolTip="Busca Funcionarios" />
                                </td>
                            </tr>
                            <tr>
                                <td align="center" 
                                    style="font-family: 'Trebuchet MS'; font-size: large; font-weight: bolder; text-align: center;" 
                                    valign="top">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td valign="top" align="center" height="30">
                                    <asp:FormView ID="form_funcionarios" runat="server" 
                                        DataSourceID="funcionarios_con" Width="485px">
                                        <EditItemTemplate>
                                            Funcionarios:
                                            <asp:TextBox ID="FuncionariosTextBox" runat="server" 
                                                Text='<%# Bind("Funcionarios") %>' />
                                            <br />
                                            <asp:ImageButton ID="UpdateButton" runat="server" CausesValidation="True" 
                                                CommandName="Update" Text="Update" />
                                            &nbsp;<asp:ImageButton ID="UpdateCancelButton" runat="server" 
                                                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            Funcionarios:
                                            <asp:TextBox ID="FuncionariosTextBox0" runat="server" 
                                                Text='<%# Bind("Funcionarios") %>' />
                                            <br />
                                            <asp:ImageButton ID="InsertButton" runat="server" CausesValidation="True" 
                                                CommandName="Insert" Text="Insert" />
                                            &nbsp;<asp:ImageButton ID="InsertCancelButton" runat="server" 
                                                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="FuncionariosLabel" runat="server" Font-Size="X-Large" 
                                                ForeColor="#0066FF" Text='<%# Bind("Funcionarios") %>' Width="100%" />
                                        </ItemTemplate>
                                    </asp:FormView>
                                </td>
                            </tr>
                            <tr>
                                <td valign="top" align="center" height="30" 
                                    style="font-family: 'Trebuchet MS'; font-size: small">
                                    <asp:Label ID="lb_mensaje" runat="server" ForeColor="#FF3300" Width="100%"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" valign="baseline">
                                    Inserte Nuevo Registro:</td>
                            </tr>
                        </table>
                        <table align="center" class="style8">
                            <tr>
                                <td>
                                    <asp:FormView ID="form_historial_salario" runat="server" 
                                DataKeyNames="cod_funcionario,fecha" DataSourceID="historial_salarios_con" 
                                Width="791px" DefaultMode="Insert">
                                        <EditItemTemplate>
                                            cod_funcionario:
                                            <asp:Label ID="cod_funcionarioLabel1" runat="server" 
                                        Text='<%# Eval("cod_funcionario") %>' />
                                            <br />
                                            fecha:
                                            <asp:Label ID="fechaLabel1" runat="server" Text='<%# Eval("fecha") %>' />
                                            <br />
                                            cod_moneda:
                                            <asp:TextBox ID="cod_monedaTextBox" runat="server" 
                                        Text='<%# Bind("cod_moneda") %>' />
                                            <br />
                                            salario_actual:
                                            <asp:TextBox ID="salario_actualTextBox" runat="server" 
                                        Text='<%# Bind("salario_actual") %>' />
                                            <br />
                                            cod_tipo_liquidacion:
                                            <asp:TextBox ID="cod_tipo_liquidacionTextBox" runat="server" 
                                        Text='<%# Bind("cod_tipo_liquidacion") %>' />
                                            <br />
                                            <asp:ImageButton ID="UpdateButton0" runat="server" CausesValidation="True" 
                                        CommandName="Update" Text="Update" />
                                            &nbsp;<asp:ImageButton ID="UpdateCancelButton0" runat="server" 
                                        CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <table align="center" class="style8" 
                                        style="font-family: 'Trebuchet MS'; font-size: small; height: 76px;">
                                                <tr>
                                                    <td class="style9">
                                                        Fecha:
                                                    </td>
                                                    <td style="text-align: left" class="style21">
                                                        <asp:TextBox ID="fechaTextBox" runat="server" Text='<%# Bind("fecha") %>' 
                                                    Width="100px" />
                                                    </td>
                                                    <td>
                                                        <asp:RequiredFieldValidator ID="rv_fecha" runat="server" 
                                                    ControlToValidate="fechaTextBox" ErrorMessage="*" 
                                                    Enabled="False"></asp:RequiredFieldValidator>
                                                    </td>
                                                    <td style="text-align: right" class="style22">
                                                        Moneda:
                                                    </td>
                                                    <td style="text-align: left">
                                                        <asp:DropDownList ID="ddl_moneda" runat="server" DataSourceID="monedas_con" 
                                                    DataTextField="descripcion" DataValueField="cod_moneda" 
                                                    SelectedValue='<%# Bind("cod_moneda") %>' Width="150px">
                                                        </asp:DropDownList>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style9">
                                                        Salario:
                                                    </td>
                                                    <td style="text-align: left" class="style21">
                                                        <asp:TextBox ID="salario_actualTextBox" runat="server" 
                                                    Text='<%# Bind("salario_actual") %>' Width="100px" />
                                                    </td>
                                                    <td>
                                                        <asp:RequiredFieldValidator ID="rv_salario" runat="server" 
                                                    ControlToValidate="salario_actualTextBox" ErrorMessage="*" Enabled="False"></asp:RequiredFieldValidator>
                                                    </td>
                                                    <td style="text-align: left" class="style22">
                                                        <asp:TextBox ID="cod_tipo_liquidacionTextBox" runat="server" 
                                                    Text='<%# Bind("cod_tipo_liquidacion") %>' Height="16px" Visible="False" 
                                                            Width="46px" />
                                                    </td>
                                                    <td style="text-align: left">
                                                        <asp:TextBox ID="cod_funcionarioTextBox" runat="server" 
                                                    Text='<%# Bind("cod_funcionario") %>' Visible="False" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style9">
                                                        Motivo:</td>
                                                    <td class="style21" colspan="4" style="text-align: left">
                                                        <asp:DropDownList ID="DropDownList1" runat="server" Width="396px" 
                                                            SelectedValue='<%# Bind("motivo") %>'>
                                                            <asp:ListItem Value="AJUSTE"  Text="AJUSTE"></asp:ListItem>
                                                            <asp:ListItem Value="CAMBIO DE ESTRUCTURA" Text="CAMBIO DE ESTRUCTURA"></asp:ListItem>
                                                            <asp:ListItem Value="INGRESO"></asp:ListItem>
                                                        </asp:DropDownList>
                                                    </td>
                                                </tr>
                                            </table>
                                            <asp:ImageButton ID="InsertButton_insert" runat="server" CausesValidation="True" 
                                        CommandName="Insert" Text="Insert" ImageUrl="~/images/controles/add.png" 
                                        ToolTip="Agregar" onclick="InsertButton_insert_Click"  />
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:ImageButton ID="InsertCancelButton0" runat="server" 
                                        CausesValidation="False" CommandName="Cancel" Text="Cancel" 
                                        ImageUrl="~/images/controles/cancel.png" ToolTip="Cancelar inserción" />
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <br />
                                            cod_funcionario:
                                            <br />
                                            fecha:
                                            <asp:Label ID="fechaLabel" runat="server" Text='<%# Eval("fecha") %>' />
                                            <br />
                                            cod_moneda:
                                            <asp:Label ID="cod_monedaLabel" runat="server" 
                                        Text='<%# Bind("cod_moneda") %>' />
                                            <br />
                                            salario_actual:
                                            <asp:Label ID="salario_actualLabel" runat="server" 
                                        Text='<%# Bind("salario_actual") %>' />
                                            <br />
                                            cod_tipo_liquidacion:
                                            <br />
                                            <asp:ImageButton ID="EditButton" runat="server" CausesValidation="False" 
                                        CommandName="Edit" Text="Edit" />
                                            &nbsp;<asp:ImageButton ID="DeleteButton" runat="server" CausesValidation="False" 
                                        CommandName="Delete" Text="Delete" />
                                            &nbsp;<asp:ImageButton ID="NewButton" runat="server" CausesValidation="False" 
                                        CommandName="New" Text="New" />
                                        </ItemTemplate>
                                    </asp:FormView>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                </td>
                            </tr>
                        </table>
                        <table align="center">
                            <tr>
                                <td style="font-family: 'Trebuchet MS'; font-size: small; text-align: left;" 
                                    class="style23">
                                    <asp:GridView ID="grid_historial_salarios" runat="server" 
                                AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" 
                                BorderWidth="1px" CellPadding="2" DataKeyNames="cod_funcionario,fecha" 
                                DataSourceID="historial_salarios_con" ForeColor="Black" GridLines="None" 
                                Width="500px">
                                        <Columns>
                                            <asp:TemplateField ShowHeader="False">
                                                <ItemTemplate>
                                                    <asp:ImageButton ID="grid_elimina_item" runat="server" CausesValidation="False" 
                                                CommandName="Delete" ImageUrl="~/images/controles/b_eliminar.gif" 
                                                Text="Delete" 
                                                        onclientclick="return confirm('Está Seguro que desea eliminar el registro?')" 
                                                        ToolTip="Eliminar" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Fecha" SortExpression="fecha">
                                                <EditItemTemplate>
                                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("fecha") %>'></asp:Label>
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("fecha","{0:d}") %>'></asp:Label>
                                                </ItemTemplate>
                                                <HeaderStyle HorizontalAlign="Center" Width="80px" />
                                                <ItemStyle HorizontalAlign="Center" Width="80px" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Salario Actual" SortExpression="salario_actual">
                                                <EditItemTemplate>
                                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("salario_actual") %>'></asp:TextBox>
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="Label2" runat="server" 
                                                Text='<%# Bind("salario_actual", "{0:N}") %>'></asp:Label>
                                                </ItemTemplate>
                                                <HeaderStyle HorizontalAlign="Right" Width="120px" />
                                                <ItemStyle HorizontalAlign="Right" Width="120px" />
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="moneda" HeaderText="Moneda" 
                                        SortExpression="moneda" >
                                                <HeaderStyle HorizontalAlign="Center" Width="130px" />
                                                <ItemStyle HorizontalAlign="Center" Width="130px" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="tipo_liquidacion" HeaderText="Tipo Liquidacion" 
                                        SortExpression="tipo_liquidacion" >
                                                <HeaderStyle HorizontalAlign="Center" />
                                                <ItemStyle HorizontalAlign="Center" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="Motivo" HeaderText="Motivo" 
                                                SortExpression="Motivo" />
                                        </Columns>
                                        <FooterStyle BackColor="Tan" />
                                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                                    HorizontalAlign="Center" />
                                        <EmptyDataTemplate>
                                            <table align="center" class="style12">
                                                <tr>
                                                    <td style="font-family: 'Trebuchet MS'; font-size: small">
                                                        <asp:Label ID="Label4" runat="server" ForeColor="Red" 
                                                    Text="Ningun Registro."></asp:Label>
                                                    </td>
                                                </tr>
                                            </table>
                                        </EmptyDataTemplate>
                                        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                                        <HeaderStyle BackColor="Tan" Font-Bold="True" />
                                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                                    </asp:GridView>
                                </td>
                            </tr>
                        </table>
                        <br />
                        <table class="style15">
                            <tr>
                                <td class="style17">
                                    <asp:SqlDataSource ID="historial_salarios_con" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
                    DeleteCommand="DELETE FROM [historial_salarios] WHERE [cod_funcionario] = @cod_funcionario AND [fecha] = @fecha" 
                    InsertCommand="INSERT INTO [historial_salarios] ([cod_funcionario], [fecha], [cod_moneda], [salario_actual], [cod_tipo_liquidacion],[motivo]) VALUES (@cod_funcionario, @fecha, @cod_moneda, @salario_actual, @cod_tipo_liquidacion, @motivo)" 
                    SelectCommand="SELECT historial_salarios.cod_funcionario, historial_salarios.fecha, historial_salarios.cod_moneda, historial_salarios.salario_actual, historial_salarios.cod_tipo_liquidacion, monedas.descripcion AS moneda, tipos_liquidaciones.descripcion AS tipo_liquidacion , historial_salarios.motivo as motivo FROM historial_salarios INNER JOIN monedas ON historial_salarios.cod_moneda = monedas.cod_moneda LEFT OUTER JOIN tipos_liquidaciones ON historial_salarios.cod_tipo_liquidacion = tipos_liquidaciones.cod_tipo_liquidacion WHERE (historial_salarios.cod_funcionario LIKE @campo)" 
                    
                    
                    
                                
                                        UpdateCommand="UPDATE [historial_salarios] SET [cod_moneda] = @cod_moneda, [salario_actual] = @salario_actual, [cod_tipo_liquidacion] = @cod_tipo_liquidacion , [motivo] = @motivo WHERE [cod_funcionario] = @cod_funcionario AND [fecha] = @fecha">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="hf_cod_funcionario" Name="campo" 
                            PropertyName="Value" />
                                        </SelectParameters>
                                        <DeleteParameters>
                                            <asp:Parameter Name="cod_funcionario" Type="Int16" />
                                            <asp:Parameter Name="fecha" Type="DateTime" />
                                        </DeleteParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="cod_moneda" Type="Int16" />
                                            <asp:Parameter Name="salario_actual" Type="Decimal" />
                                            <asp:Parameter Name="cod_tipo_liquidacion" Type="Int16" />
                                            <asp:Parameter Name="cod_funcionario" Type="Int16" />
                                            <asp:Parameter Name="fecha" Type="DateTime" />
                                            <asp:Parameter Name="motivo" Type="String" />
                                        </UpdateParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="cod_funcionario" Type="Int16" />
                                            <asp:Parameter Name="fecha" Type="DateTime" />
                                            <asp:Parameter Name="cod_moneda" Type="Int16" />
                                            <asp:Parameter Name="salario_actual" Type="Decimal" />
                                            <asp:Parameter Name="cod_tipo_liquidacion" Type="Int16" />
                                            <asp:Parameter Name="motivo" Type="String" />
                                        </InsertParameters>
                                    </asp:SqlDataSource>
                                </td>
                                <td class="style18">
                                    <asp:SqlDataSource ID="funcionarios_con" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
                    SelectCommand="SELECT apellidos + ' , ' + nombres AS Funcionarios FROM funcionarios
WHERE (cod_funcionario LIKE @campo)">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="hf_cod_funcionario" Name="campo" 
                            PropertyName="Value" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </td>
                                <td class="style19">
                                    <asp:SqlDataSource ID="monedas_con" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
                    SelectCommand="SELECT [cod_moneda], [descripcion] FROM [monedas]"></asp:SqlDataSource>
                                </td>
                                <td class="style16">
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

