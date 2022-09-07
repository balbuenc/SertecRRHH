<%@ Page Title="" Language="VB" MasterPageFile="~/menu_master.master" AutoEventWireup="false" CodeFile="man_sanciones_por_funcionario.aspx.vb" Inherits="man_amonestaciones" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 96%;
        }
        .style6
        {
            width: 88%;
            height: 24px;
        }
        .style10
        {
            text-align: right;
            width: 90px;
        }
        .style11
        {
            width: 182px;
        }
        .style15
        {
            width: 678px;
        }
        .style16
        {
            width: 41px;
        }
        .style17
        {
            width: 90px;
        }
        .style18
        {
            width: 90px;
            height: 25px;
        }
        .style19
        {
            width: 182px;
            height: 25px;
        }
        .style23
        {
            width: 134px;
        }
        .style24
        {
            height: 25px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <table class="style3">
                <tr>
                    <td align="center" 
                
                style="font-family: 'Trebuchet MS'; font-size: large; font-weight: bolder; text-align: right;" 
                valign="top">
                        Sanciones Por Funcionarios&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:ImageButton ID="ImageButton2" runat="server" 
                    ImageUrl="~/images/controles/salir32.png" 
                    ToolTip="Volver al Menu Principal" 
                    PostBackUrl="~/home.aspx" />
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td align="center" 
                style="font-family: 'Trebuchet MS'; font-size: small; font-weight: normal" 
                valign="top">
                        <table align="center" 
                    style="font-family: 'Trebuchet MS'; font-size: small; width: 889px;">
                            <tr>
                                <td class="style15" style="font-family: 'Trebuchet MS'; font-size: small" 
                            valign="baseline" align="right">
                                    <asp:FormView ID="form_funcionarios" runat="server" DataSourceID="funcionarios_con" 
                                Width="473px">
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
                                            <asp:TextBox ID="funcionarioTextBox0" runat="server" 
                                        Text='<%# Bind("funcionario") %>' />
                                            <br />
                                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                                        CommandName="Insert" Text="Insert" />
                                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                                        CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <table align="center" class="style3">
                                                <tr>
                                                    <td style="text-align: center">
                                                        <asp:Label ID="lbl_form_funcionario" runat="server" Font-Size="X-Large" 
                                                    ForeColor="#3366FF" Text='<%# Bind("funcionario") %>' Width="500px" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </ItemTemplate>
                                    </asp:FormView>
                                </td>
                                <td class="style16" style="font-family: 'Trebuchet MS'; font-size: small; text-align: left;" 
                            valign="baseline">
                                    <asp:ImageButton ID="ImageButton1" runat="server" 
                                ImageUrl="~/images/controles/find.png" ToolTip="Buscar" 
                                
                                
                                
                                        onclientclick="var wBusqueda = window.open('busca_funcionarios_sanciones.aspx','wBusqeuda','width=500,height=500, left = 262, top = 134');return false" />
                                </td>
                                <td style="font-family: 'Trebuchet MS'; font-size: small; text-align: left;" 
                            valign="baseline">
                                    <asp:HiddenField ID="hf_cod_funcionario" runat="server" />
                                </td>
                            </tr>
                            <tr>
                                <td style="font-family: 'Trebuchet MS'; font-size: small" 
                            valign="baseline" align="right">
                                    &nbsp;</td>
                                <td style="font-family: 'Trebuchet MS'; font-size: small; text-align: left;" 
                            valign="baseline">
                                    &nbsp;</td>
                                <td style="font-family: 'Trebuchet MS'; font-size: small; text-align: left;" 
                            valign="baseline">
                                    &nbsp;</td>
                            </tr>
                        </table>
                        <table align="center" class="style6">
                            <tr>
                                <td style="font-family: 'Trebuchet MS'; font-size: small">
                                    <asp:FormView ID="form_sanciones_funcionarios" runat="server" AllowPaging="True" 
                                DataKeyNames="cod_funcionario,fecha_sancion,cod_sancion" 
                                DataSourceID="sanciones_funcionarios_con" DefaultMode="Insert" 
                                Width="100%">
                                        <EditItemTemplate>
                                            cod_funcionario:
                                            <asp:Label ID="cod_funcionarioLabel1" runat="server" 
                                        Text='<%# Eval("cod_funcionario") %>' />
                                            <br />
                                            fecha_sancion:
                                            <asp:Label ID="fecha_sancionLabel1" runat="server" 
                                        Text='<%# Eval("fecha_sancion") %>' />
                                            <br />
                                            cod_sancion:
                                            <asp:Label ID="cod_sancionLabel1" runat="server" 
                                        Text='<%# Eval("cod_sancion") %>' />
                                            <br />
                                            descripcion:
                                            <asp:TextBox ID="descripcionTextBox" runat="server" 
                                        Text='<%# Bind("descripcion") %>' />
                                            <br />
                                            fecha_desde:
                                            <asp:TextBox ID="fecha_desdeTextBox" runat="server" 
                                        Text='<%# Bind("fecha_desde") %>' />
                                            <br />
                                            fecha_hasta:
                                            <asp:TextBox ID="fecha_hastaTextBox" runat="server" 
                                        Text='<%# Bind("fecha_hasta") %>' />
                                            <br />
                                            <asp:ImageButton ID="UpdateButton0" runat="server" CausesValidation="True" 
                                        CommandName="Update" Text="Update" />
                                            &nbsp;<asp:ImageButton ID="UpdateCancelButton0" runat="server" 
                                        CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <table align="center" style="width: 737px">
                                                <tr>
                                                    <td class="style18" style="text-align: right">
                                                        Fecha:
                                                    </td>
                                                    <td class="style19" style="text-align: left">
                                                        <asp:TextBox ID="fecha_sancionTextBox" runat="server" 
                                                    Text='<%# Bind("fecha_sancion") %>' Width="200px" />
                                                    </td>
                                                    <td style="text-align: left" valign="top" 
                                                class="style24">
                                                        <asp:RequiredFieldValidator ID="rv_fecha" runat="server" 
                                                    ControlToValidate="fecha_sancionTextBox" Enabled="False" ErrorMessage="*" 
                                                    Font-Size="Small" style="text-align: left"></asp:RequiredFieldValidator>
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tipo sanción:</td>
                                                    <td class="style24" style="text-align: left">
                                                        <asp:DropDownList ID="ddl_sancion" runat="server" AppendDataBoundItems="True" 
                                                    DataSourceID="tipos_sanciones_con" DataTextField="descripcion" 
                                                    DataValueField="cod_sancion" SelectedValue='<%# Bind("cod_sancion") %>' 
                                                    Width="204px">
                                                        </asp:DropDownList>
                                                        <asp:RequiredFieldValidator ID="rv_sancion" runat="server" 
                                                    ControlToValidate="ddl_sancion" Enabled="False" ErrorMessage="*" 
                                                    Font-Size="Small"></asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style17" style="text-align: right">
                                                        Descripcion:
                                                    </td>
                                                    <td colspan="3" style="text-align: left">
                                                        <asp:TextBox ID="descripcionTextBox" runat="server" 
                                                    Text='<%# Bind("descripcion") %>' Width="200px" />
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style10">
                                                        Fecha Desde:
                                                    </td>
                                                    <td class="style11" style="text-align: left">
                                                        <asp:TextBox ID="fecha_desdeTextBox" runat="server" 
                                                    Text='<%# Bind("fecha_desde") %>' Width="200px" />
                                                    </td>
                                                    <td class="style23" style="text-align: right">
                                                        Fecha Hasta:
                                                    </td>
                                                    <td style="text-align: left">
                                                        <asp:TextBox ID="fecha_hastaTextBox" runat="server" 
                                                    Text='<%# Bind("fecha_hasta") %>' Width="201px" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style10">
                                                        &nbsp;</td>
                                                    <td class="style11" style="text-align: left">
                                                        &nbsp;</td>
                                                    <td class="style23" style="text-align: right">
                                                        &nbsp;</td>
                                                    <td style="text-align: left">
                                                        <asp:TextBox ID="cod_funcionarioTextBox" runat="server" 
                                                    Height="16px" Text='<%# Bind("cod_funcionario") %>' Visible="False" 
                                                    Width="200px" />
                                                    </td>
                                                </tr>
                                            </table>
                                            <asp:ImageButton ID="InsertButton0" runat="server" CausesValidation="True" 
                                        CommandName="Insert" Text="Insert" ImageUrl="~/images/controles/add.png" 
                                        onclick="InsertButton_Click" />
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:ImageButton ID="InsertCancelButton0" runat="server" 
                                        CausesValidation="False" CommandName="Cancel" Text="Cancel" 
                                        ImageUrl="~/images/controles/cancel.png" />
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            cod_funcionario:
                                            <asp:Label ID="cod_funcionarioLabel" runat="server" 
                                        Text='<%# Eval("cod_funcionario") %>' />
                                            <br />
                                            fecha_sancion:
                                            <asp:Label ID="fecha_sancionLabel" runat="server" 
                                        Text='<%# Eval("fecha_sancion") %>' />
                                            <br />
                                            cod_sancion:
                                            <asp:Label ID="cod_sancionLabel" runat="server" 
                                        Text='<%# Eval("cod_sancion") %>' />
                                            <br />
                                            descripcion:
                                            <asp:Label ID="descripcionLabel" runat="server" 
                                        Text='<%# Bind("descripcion") %>' />
                                            <br />
                                            fecha_desde:
                                            <asp:Label ID="fecha_desdeLabel" runat="server" 
                                        Text='<%# Bind("fecha_desde") %>' />
                                            <br />
                                            fecha_hasta:
                                            <asp:Label ID="fecha_hastaLabel" runat="server" 
                                        Text='<%# Bind("fecha_hasta") %>' />
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
                        <table align="center" class="style6">
                            <tr>
                                <td>
                                    <asp:GridView ID="Grilla_sanciones" runat="server" AutoGenerateColumns="False" 
                                BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
                                CellPadding="2" DataKeyNames="cod_funcionario,fecha_sancion,cod_sancion" 
                                DataSourceID="sanciones_funcionarios_con" ForeColor="Black" 
                                GridLines="None" Width="100%">
                                        <Columns>
                                            <asp:TemplateField ShowHeader="False">
                                                <EditItemTemplate>
                                                    <asp:ImageButton ID="ImageButton3" runat="server" 
                                                CausesValidation="True" CommandName="Update" 
                                                ImageUrl="~/images/controles/b_grabar.gif" Text="Update" ToolTip="Guardar" />
                                                    &nbsp;<asp:ImageButton ID="ImageButton4" runat="server" 
                                                CausesValidation="False" CommandName="Cancel" 
                                                ImageUrl="~/images/controles/b_cancelar.gif" Text="Cancel" ToolTip="Cancelar" />
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <asp:ImageButton ID="ImageButton5" runat="server" 
                                                CausesValidation="False" CommandName="Edit" 
                                                ImageUrl="~/images/controles/b_modificar.gif" Text="Edit" ToolTip="Modificar" />
                                                    &nbsp;<asp:ImageButton ID="ImageButton6" runat="server" 
                                                CausesValidation="False" CommandName="Delete" 
                                                ImageUrl="~/images/controles/b_eliminar.gif" 
                                                onclientclick="return confirm('Está Seguro que desea eliminar este registro ?')" 
                                                Text="Delete" ToolTip="Eliminar" />
                                                </ItemTemplate>
                                                <HeaderStyle HorizontalAlign="Left" />
                                                <ItemStyle HorizontalAlign="Left" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Sanción" SortExpression="cod_sancion">
                                                <EditItemTemplate>
                                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("sancion") %>' 
                                                Width="250px"></asp:Label>
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="lbl_grilla_sancion" runat="server" Text='<%# Bind("sancion") %>' 
                                                Width="250px"></asp:Label>
                                                </ItemTemplate>
                                                <HeaderStyle HorizontalAlign="Left" Width="200px" />
                                                <ItemStyle HorizontalAlign="Left" Width="200px" />
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="descripcion" HeaderText="Descripcion" 
                                        SortExpression="descripcion">
                                                <HeaderStyle HorizontalAlign="Left" Width="250px" />
                                                <ItemStyle HorizontalAlign="Left" Width="250px" />
                                            </asp:BoundField>
                                            <asp:TemplateField HeaderText="Aplica Desde" SortExpression="fecha_desde">
                                                <EditItemTemplate>
                                                    <asp:TextBox ID="TextBox1" runat="server" 
                                                Text='<%# Bind("fecha_desde", "{0:d}") %>'></asp:TextBox>
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="Label3" runat="server" 
                                                Text='<%# Bind("fecha_desde", "{0:d}") %>'></asp:Label>
                                                </ItemTemplate>
                                                <HeaderStyle HorizontalAlign="Center" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Aplica Hasta" SortExpression="fecha_hasta">
                                                <EditItemTemplate>
                                                    <asp:TextBox ID="TextBox2" runat="server" 
                                                Text='<%# Bind("fecha_hasta", "{0:d}") %>'></asp:TextBox>
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="Label2" runat="server" 
                                                Text='<%# Bind("fecha_hasta", "{0:d}") %>'></asp:Label>
                                                </ItemTemplate>
                                                <HeaderStyle HorizontalAlign="Center" />
                                            </asp:TemplateField>
                                        </Columns>
                                        <FooterStyle BackColor="Tan" />
                                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                                    HorizontalAlign="Center" />
                                        <EmptyDataTemplate>
                                            <table class="style3">
                                                <tr>
                                                    <td style="font-family: 'Trebuchet MS'; font-size: small">
                                                        <asp:Label ID="Label4" runat="server" Font-Size="Small" ForeColor="#FF3300" 
                                                    Text="No existe registro para este usuario"></asp:Label>
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
                        <asp:SqlDataSource ID="sanciones_funcionarios_con" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
                    DeleteCommand="DELETE FROM [sanciones_por_funcionarios] WHERE [cod_funcionario] = @cod_funcionario AND [fecha_sancion] = @fecha_sancion AND [cod_sancion] = @cod_sancion" 
                    InsertCommand="INSERT INTO [sanciones_por_funcionarios] ([cod_funcionario], [fecha_sancion], [cod_sancion], [descripcion], [fecha_desde], [fecha_hasta]) VALUES (@cod_funcionario, @fecha_sancion, @cod_sancion, @descripcion, @fecha_desde, @fecha_hasta)" 
                    SelectCommand="SELECT sanciones_por_funcionarios.cod_funcionario, sanciones_por_funcionarios.fecha_sancion, sanciones_por_funcionarios.cod_sancion, sanciones_por_funcionarios.descripcion, sanciones_por_funcionarios.fecha_desde, sanciones_por_funcionarios.fecha_hasta, tipos_sanciones.descripcion AS Sancion FROM sanciones_por_funcionarios INNER JOIN tipos_sanciones ON sanciones_por_funcionarios.cod_sancion = tipos_sanciones.cod_sancion WHERE (sanciones_por_funcionarios.cod_funcionario LIKE @campo)" 
                    
                    
                    
                    
                    
                            UpdateCommand="UPDATE [sanciones_por_funcionarios] SET [descripcion] = @descripcion, [fecha_desde] = @fecha_desde, [fecha_hasta] = @fecha_hasta WHERE [cod_funcionario] = @cod_funcionario AND [fecha_sancion] = @fecha_sancion AND [cod_sancion] = @cod_sancion">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="hf_cod_funcionario" Name="campo" 
                            PropertyName="Value" />
                            </SelectParameters>
                            <DeleteParameters>
                                <asp:Parameter Name="cod_funcionario" Type="Int16" />
                                <asp:Parameter Name="fecha_sancion" Type="DateTime" />
                                <asp:Parameter Name="cod_sancion" Type="Int16" />
                            </DeleteParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="descripcion" Type="String" />
                                <asp:Parameter Name="fecha_desde" Type="DateTime" />
                                <asp:Parameter Name="fecha_hasta" Type="DateTime" />
                                <asp:Parameter Name="cod_funcionario" Type="Int16" />
                                <asp:Parameter Name="fecha_sancion" Type="DateTime" />
                                <asp:Parameter Name="cod_sancion" Type="Int16" />
                            </UpdateParameters>
                            <InsertParameters>
                                <asp:Parameter Name="cod_funcionario" Type="Int16" />
                                <asp:Parameter Name="fecha_sancion" Type="DateTime" />
                                <asp:Parameter Name="cod_sancion" Type="Int16" />
                                <asp:Parameter Name="descripcion" Type="String" />
                                <asp:Parameter Name="fecha_desde" Type="DateTime" />
                                <asp:Parameter Name="fecha_hasta" Type="DateTime" />
                            </InsertParameters>
                        </asp:SqlDataSource>
                        <asp:SqlDataSource ID="tipos_sanciones_con" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
                    SelectCommand="SELECT [cod_sancion], [descripcion] FROM [tipos_sanciones]">
                        </asp:SqlDataSource>
                        <asp:SqlDataSource ID="funcionarios_con" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
                    SelectCommand="SELECT apellidos + ' ,  ' + nombres AS funcionario FROM funcionarios
WHERE cod_funcionario LIKE @campo">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="hf_cod_funcionario" Name="campo" 
                            PropertyName="Value" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
            </table>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

