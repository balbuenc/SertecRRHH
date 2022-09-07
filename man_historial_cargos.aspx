<%@ Page Title="" Language="VB" MasterPageFile="~/menu_master.master" AutoEventWireup="false" CodeFile="man_historial_cargos.aspx.vb" Inherits="man_historial_cargos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
        }
        .style6
        {
            width: 92%;
        }
        .style7
        {
            width: 80%;
        }
        .style8
        {
            text-align: right;
            width: 169px;
        }
        .style9
        {
            width: 169px;
            text-align: right;
            height: 44px;
        }
        .style10
        {
            height: 44px;
        }
        .style15
        {
            width: 112px;
        }
        .style16
        {
            width: 159px;
        }
        .style17
        {
            width: 214px;
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
            text-align: right;
            width: 169px;
            height: 35px;
        }
        .style22
        {
            height: 35px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <table align="center" class="style3">
                <tr>
                    <td align="center" 
                style="text-align: right;">
                        <asp:ImageButton ID="ImageButton2" runat="server" Height="32px" 
                            ImageUrl="~/images/controles/salir32.png" PostBackUrl="~/home.aspx" 
                            ToolTip="Volver al Menú Principal" Width="32px" />
                    </td>
                </tr>
                <tr>
                    <td align="center" 
                style="font-family: 'Trebuchet MS'; font-size: small; font-weight: normal">
                        <table align="center" style="width: 590px; height: 121px;" width="64%">
                            <tr>
                                <td class="style19" align="right" 
                                    
                                    style="font-family: 'Trebuchet MS'; font-size: large; font-weight: bolder; text-align: center;" 
                                    width="525">
                                    Historial de Cargos</td>
                                <td style="text-align: left" rowspan="5">
                                    <asp:ImageButton ID="ImageButton1" runat="server" 
                                        ImageUrl="~/images/controles/find.png" 
                                        onclientclick="var wBusqueda = window.open('busca_funcionarios_historial_cargos.aspx','wBusqeuda','width=500,height=500, left = 262, top = 134');return false" />
                                </td>
                            </tr>
                            <tr>
                                <td align="right" style="text-align: center" width="525">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td align="right" height="30" style="text-align: center">
                                    <asp:FormView ID="FormView2" runat="server" DataSourceID="funcionarios_con" 
                                        Height="20px" style="text-align: right; margin-left: 0px" Width="100%">
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
                                            <asp:TextBox ID="funcionariosTextBox0" runat="server" 
                                                Text='<%# Bind("funcionarios") %>' />
                                            <br />
                                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                                                CommandName="Insert" Text="Insert" />
                                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                                                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="funcionariosLabel" runat="server" Font-Size="X-Large" 
                                                ForeColor="#3366FF" style="text-align: center" 
                                                Text='<%# Bind("funcionarios") %>' Width="100%" />
                                            <br />
                                        </ItemTemplate>
                                    </asp:FormView>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" class="style20" valign="top">
                                    <asp:Label ID="lb_mensaje" runat="server" ForeColor="#FF3300" 
                                        style="text-align: center" Width="100%"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" 
                                    style="font-family: 'Trebuchet MS'; font-size: small; text-align: center;" 
                                    valign="baseline">
                                    Inserte Nuevo Cargo:</td>
                            </tr>
                        </table>
                        <table align="center" class="style6">
                            <tr>
                                <td>
                                    <asp:FormView ID="form_historial_cargos" runat="server" 
                                DataKeyNames="cod_funcionario,fecha" DataSourceID="historial_cargos_con" 
                                DefaultMode="Insert" Width="792px">
                                        <EditItemTemplate>
                                            cod_funcionario:
                                            <asp:Label ID="cod_funcionarioLabel1" runat="server" 
                                        Text='<%# Eval("cod_funcionario") %>' />
                                            <br />
                                            fecha:
                                            <asp:Label ID="fechaLabel1" runat="server" Text='<%# Eval("fecha") %>' />
                                            <br />
                                            cod_cargo:
                                            <asp:TextBox ID="cod_cargoTextBox" runat="server" 
                                        Text='<%# Bind("cod_cargo") %>' />
                                            <br />
                                            <asp:ImageButton ID="UpdateButton0" runat="server" CausesValidation="True" 
                                        CommandName="Update" Text="Update" />
                                            &nbsp;<asp:ImageButton ID="UpdateCancelButton0" runat="server" 
                                        CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <table align="center" class="style7">
                                                <tr>
                                                    <td class="style21">
                                                        Cargo:
                                                    </td>
                                                    <td style="text-align: left" class="style22">
                                                        <asp:DropDownList ID="ddl_form_cargos" runat="server" AutoPostBack="True" 
                                                    DataSourceID="cargos_con" DataTextField="descripcion" 
                                                    DataValueField="cod_cargo" SelectedValue='<%# Bind("cod_cargo") %>' 
                                                    Width="300px">
                                                        </asp:DropDownList>
                                                        <asp:RequiredFieldValidator ID="rv_cargos" runat="server" 
                                                    ControlToValidate="ddl_form_cargos" ErrorMessage="*" Enabled="False"></asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style9">
                                                        Fecha:
                                                    </td>
                                                    <td style="text-align: left" class="style10">
                                                        <asp:TextBox ID="fechaTextBox" runat="server" 
                                                    Text='<%# Bind("fecha") %>' Width="150px" />
                                                        <asp:RequiredFieldValidator ID="rv_fecha" runat="server" 
                                                    ControlToValidate="fechaTextBox" ErrorMessage="*" Enabled="False"></asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style8">
                                                        &nbsp;</td>
                                                    <td style="text-align: left">
                                                        <asp:TextBox ID="cod_funcionarioTextBox" runat="server" Height="16px" 
                                                    Text='<%# Bind("cod_funcionario") %>' Visible="False" Width="76px" />
                                                    </td>
                                                </tr>
                                            </table>
                                            &nbsp;<asp:ImageButton ID="InsertButton_insert" runat="server" CausesValidation="True" 
                                        CommandName="Insert" Text="Insert" ImageUrl="~/images/controles/add.png" 
                                                onclick="InsertButton_insert_Click" ToolTip="Agregar" 
                                        
                                        />
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:ImageButton 
                                        ID="InsertCancelButton0" runat="server" 
                                        CausesValidation="False" CommandName="Cancel" Text="Cancel" 
                                        ImageUrl="~/images/controles/cancel.png" ToolTip="Cancelar Inserción" />
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            cod_funcionario:
                                            <asp:Label ID="cod_funcionarioLabel" runat="server" 
                                        Text='<%# Eval("cod_funcionario") %>' />
                                            <br />
                                            fecha:
                                            <asp:Label ID="fechaLabel" runat="server" Text='<%# Eval("fecha") %>' />
                                            <br />
                                            cod_cargo:
                                            <asp:Label ID="cod_cargoLabel" runat="server" Text='<%# Bind("cod_cargo") %>' />
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
                            </tr>
                        </table>
                        <table class="style7">
                            <tr>
                                <td class="style17">
                                    &nbsp;</td>
                                <td style="text-align: left">
                                    &nbsp;</td>
                            </tr>
                        </table>
                        <table align="center" class="style6">
                            <tr>
                                <td class="style16">
                                    &nbsp;</td>
                                <td class="style15">
                                    <asp:GridView ID="grid_historial_cargos" runat="server" AutoGenerateColumns="False" 
                                BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
                                CellPadding="2" DataKeyNames="cod_funcionario,fecha" 
                                DataSourceID="historial_cargos_con" ForeColor="Black" GridLines="None" 
                                Width="572px" style="text-align: center">
                                        <Columns>
                                            <asp:TemplateField ShowHeader="False">
                                                <ItemTemplate>
                                                    <asp:ImageButton ID="eliminar_grilla" runat="server" CausesValidation="False" 
                                                CommandName="Delete" ImageUrl="~/images/controles/b_eliminar.gif" 
                                                Text="Delete" 
                                                        onclientclick="return confirm('Está Seguro que desea eliminar el registro?')" 
                                                        ToolTip="Eliminar" />
                                                </ItemTemplate>
                                                <HeaderStyle Width="50px" />
                                                <ItemStyle Width="50px" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Fecha" SortExpression="fecha">
                                                <EditItemTemplate>
                                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("fecha") %>'></asp:Label>
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("fecha","{0:d}") %>'></asp:Label>
                                                </ItemTemplate>
                                                <HeaderStyle HorizontalAlign="Center" Width="160px" />
                                                <ItemStyle HorizontalAlign="Center" Width="160px" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Cargo Actual" SortExpression="cod_cargo">
                                                <EditItemTemplate>
                                                    <asp:DropDownList ID="ddl_grilla_cargos" runat="server" 
                                                DataSourceID="cargos_con" DataTextField="descripcion" 
                                                DataValueField="cod_cargo" SelectedValue='<%# Bind("cod_cargo") %>' 
                                                Width="300px">
                                                    </asp:DropDownList>
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="lbl_grilla_cargo" runat="server" Text='<%# Bind("cargos") %>'></asp:Label>
                                                </ItemTemplate>
                                                <HeaderStyle HorizontalAlign="Left" />
                                                <ItemStyle HorizontalAlign="Left" Width="350px" />
                                            </asp:TemplateField>
                                        </Columns>
                                        <FooterStyle BackColor="Tan" />
                                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                                    HorizontalAlign="Center" />
                                        <EmptyDataTemplate>
                                            <table align="left" class="style3">
                                                <tr>
                                                    <td class="style17">
                                                        &nbsp;</td>
                                                    <td style="text-align: left">
                                                        <asp:Label ID="Label3" runat="server" ForeColor="Red" Text="Ningun Registro."></asp:Label>
                                                    </td>
                                                </tr>
                                            </table>
                                        </EmptyDataTemplate>
                                        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                                        <HeaderStyle BackColor="Tan" Font-Bold="True" />
                                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                                    </asp:GridView>
                                </td>
                                <td style="text-align: left">
                                    &nbsp;</td>
                            </tr>
                        </table>
                        <asp:SqlDataSource ID="historial_cargos_con" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
                    DeleteCommand="DELETE FROM [historial_cargos] WHERE [cod_funcionario] = @cod_funcionario AND [fecha] = @fecha" 
                    InsertCommand="INSERT INTO [historial_cargos] ([cod_funcionario], [fecha], [cod_cargo]) VALUES (@cod_funcionario, @fecha, @cod_cargo)" 
                    SelectCommand="SELECT historial_cargos.cod_funcionario, historial_cargos.fecha, historial_cargos.cod_cargo, cargos.descripcion AS cargos FROM historial_cargos INNER JOIN cargos ON historial_cargos.cod_cargo = cargos.cod_cargo WHERE (historial_cargos.cod_funcionario like @campo) order by historial_cargos.fecha" 
                    
                    
                    
                    
                    
                            UpdateCommand="UPDATE [historial_cargos] SET [cod_cargo] = @cod_cargo WHERE [cod_funcionario] = @cod_funcionario AND [fecha] = @fecha">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="hf_cod_funcionario" Name="campo" 
                            PropertyName="Value" />
                            </SelectParameters>
                            <DeleteParameters>
                                <asp:Parameter Name="cod_funcionario" Type="Int16" />
                                <asp:Parameter Name="fecha" Type="DateTime" />
                            </DeleteParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="cod_cargo" Type="Int16" />
                                <asp:Parameter Name="cod_funcionario" Type="Int16" />
                                <asp:Parameter Name="fecha" Type="DateTime" />
                            </UpdateParameters>
                            <InsertParameters>
                                <asp:Parameter Name="cod_funcionario" Type="Int16" />
                                <asp:Parameter Name="fecha" Type="DateTime" />
                                <asp:Parameter Name="cod_cargo" Type="Int16" />
                            </InsertParameters>
                        </asp:SqlDataSource>
                        <asp:SqlDataSource ID="funcionarios_con" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
                    SelectCommand="SELECT  apellidos + ' , ' + nombres AS funcionarios FROM funcionarios
WHERE cod_funcionario LIKE @campo">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="hf_cod_funcionario" Name="campo" 
                            PropertyName="Value" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:SqlDataSource ID="cargos_con" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
                    SelectCommand="SELECT [cod_cargo], [descripcion] FROM [cargos] order by [descripcion]"></asp:SqlDataSource>
                        <asp:HiddenField ID="hf_cod_funcionario" runat="server" />
                        <asp:HiddenField ID="hf_cargos" runat="server" />
                    </td>
                </tr>
            </table>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

