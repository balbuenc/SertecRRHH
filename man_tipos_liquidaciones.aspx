<%@ Page Title="" Language="VB" MasterPageFile="~/menu_master.master" AutoEventWireup="false" CodeFile="man_tipos_liquidaciones.aspx.vb" Inherits="man_tipos_liquidaciones" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
        }
        .style4
        {
            width: 86%;
        }
        .style7
        {
            width: 73%;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <table align="center" class="style3">
                <tr>
                    <td colspan="2" style="text-align: center">
                        <table align="center" class="style3">
                            <tr>
                                <td width="100">
                                    &nbsp;</td>
                                <td 
                            
                            style="font-family: 'Trebuchet MS'; font-size: large; font-weight: bolder; text-align: center;" 
                            valign="top">
                                    Tipos de Liquidaciones</td>
                                <td style="text-align: right">
                                    <asp:ImageButton ID="ImageButton1" runat="server" 
                                ImageUrl="~/images/controles/salir32.png" 
                                PostBackUrl="~/home.aspx" ToolTip="Volver al Menu Principal" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td align="center" valign="top" 
                style="font-family: 'Trebuchet MS'; font-size: small" width="450">
                        <asp:FormView ID="form_tipos_liquidaciones" runat="server" 
                    DataKeyNames="cod_tipo_liquidacion,cod_empresa" 
                    DataSourceID="tipos_liquidaciones_con" Height="121px" Width="381px" 
                    DefaultMode="Insert">
                            <EditItemTemplate>
                                cod_tipo_liquidacion:
                                <asp:Label ID="cod_tipo_liquidacionLabel1" runat="server" 
                            Text='<%# Eval("cod_tipo_liquidacion") %>' />
                                <br />
                                cod_empresa:
                                <asp:Label ID="cod_empresaLabel1" runat="server" 
                            Text='<%# Eval("cod_empresa") %>' />
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
                                <br />
                                <table align="center" class="style4" 
                            style="font-family: 'Trebuchet MS'; font-size: small">
                                    <tr>
                                        <td style="text-align: right">
                                            Descripción:</td>
                                        <td style="text-align: left">
                                            <asp:TextBox ID="descripcionTextBox" runat="server" 
                                        Text='<%# Bind("descripcion") %>' Width="200px" />
                                        </td>
                                        <td style="text-align: left">
                                            <asp:RequiredFieldValidator ID="rv_descripcion" runat="server" 
                                                ControlToValidate="descripcionTextBox" Enabled="False" 
                                        ErrorMessage="*"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right">
                                            &nbsp;</td>
                                        <td style="text-align: left" width="206">
                                            <asp:TextBox ID="txt_empresa" runat="server" 
                                        Text='<%# Bind("cod_empresa") %>' Visible="False"></asp:TextBox>
                                        </td>
                                        <td style="text-align: left">
                                            &nbsp;</td>
                                    </tr>
                                </table>
                                <br />
                                <table align="center" class="style7">
                                    <tr>
                                        <td>
                                            <asp:ImageButton ID="InsertButton" runat="server" CausesValidation="True" 
                                        CommandName="Insert" Text="Insert" ImageUrl="~/images/controles/add.png" 
                                        ToolTip="Agregar" onclick="InsertButton_Click" />
                                        </td>
                                        <td width="100">
                                            &nbsp;</td>
                                        <td>
                                            <asp:ImageButton ID="InsertCancelButton" runat="server" CausesValidation="False" 
                                        CommandName="Cancel" Text="Cancel" 
                                        ImageUrl="~/images/controles/cancel.png" ToolTip="Cancelar Inserción" />
                                        </td>
                                    </tr>
                                </table>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                cod_tipo_liquidacion:
                                <asp:Label ID="cod_tipo_liquidacionLabel" runat="server" 
                            Text='<%# Eval("cod_tipo_liquidacion") %>' />
                                <br />
                                cod_empresa:
                                <asp:Label ID="cod_empresaLabel" runat="server" 
                            Text='<%# Eval("cod_empresa") %>' />
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
                        <asp:SqlDataSource ID="tipos_liquidaciones_con" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
                    DeleteCommand="DELETE FROM [tipos_liquidaciones] WHERE [cod_tipo_liquidacion] = @cod_tipo_liquidacion AND [cod_empresa] = @cod_empresa" 
                    InsertCommand="INSERT INTO [tipos_liquidaciones] ([cod_empresa], [descripcion]) VALUES (@cod_empresa, @descripcion)" 
                    SelectCommand="SELECT tipos_liquidaciones.cod_tipo_liquidacion, tipos_liquidaciones.cod_empresa, tipos_liquidaciones.descripcion, empresas.descripcion AS empresa FROM tipos_liquidaciones LEFT OUTER JOIN empresas ON tipos_liquidaciones.cod_empresa = empresas.cod_empresa WHERE (tipos_liquidaciones.descripcion LIKE @descripcion + '%')" 
                    
                    
                    
                    
                            UpdateCommand="UPDATE [tipos_liquidaciones] SET [descripcion] = @descripcion WHERE [cod_tipo_liquidacion] = @cod_tipo_liquidacion AND [cod_empresa] = @cod_empresa">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="txt_descripcion" Name="descripcion" 
                            PropertyName="Text" />
                            </SelectParameters>
                            <DeleteParameters>
                                <asp:Parameter Name="cod_tipo_liquidacion" Type="Int16" />
                                <asp:Parameter Name="cod_empresa" Type="Int16" />
                            </DeleteParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="descripcion" Type="String" />
                                <asp:Parameter Name="cod_tipo_liquidacion" Type="Int16" />
                                <asp:Parameter Name="cod_empresa" Type="Int16" />
                            </UpdateParameters>
                            <InsertParameters>
                                <asp:Parameter Name="cod_empresa" Type="Int16" />
                                <asp:Parameter Name="descripcion" Type="String" />
                            </InsertParameters>
                        </asp:SqlDataSource>
                        <asp:SqlDataSource ID="empresas_con" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
                    SelectCommand="SELECT [cod_empresa], [descripcion] FROM [empresas]">
                        </asp:SqlDataSource>
                        <br />
                    </td>
                    <td style="text-align: center; font-family: 'Trebuchet MS'; font-size: small;" 
                valign="top">
                        <table align="center" 
                    style="font-family: 'Trebuchet MS'; font-size: small">
                            <tr>
                                <td>
                                    Busque por&nbsp; Descripción:</td>
                                <td>
                                    <asp:TextBox ID="txt_descripcion" runat="server" AutoPostBack="True" 
                                Width="200px"></asp:TextBox>
                                </td>
                                <td style="text-align: left">
                                    <asp:ImageButton ID="ImageButton2" runat="server" 
                                ImageUrl="~/images/controles/find.png" ToolTip="Buscar" />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3" 
                            style="font-family: 'Trebuchet MS'; font-size: small">
                                    <asp:GridView ID="grilla_tipos_liquidaciones" runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" 
                    BorderWidth="1px" CellPadding="2" 
                    DataKeyNames="cod_tipo_liquidacion,cod_empresa" 
                    DataSourceID="tipos_liquidaciones_con" ForeColor="Black" GridLines="None" 
                    Width="100%">
                                        <RowStyle HorizontalAlign="Left" />
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
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="cod_tipo_liquidacion" HeaderText="Código" 
                            InsertVisible="False" ReadOnly="True" 
                            SortExpression="cod_tipo_liquidacion" >
                                                <HeaderStyle HorizontalAlign="Center" />
                                                <ItemStyle HorizontalAlign="Center" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="descripcion" HeaderText="Descripción" 
                            SortExpression="descripcion" >
                                                <HeaderStyle HorizontalAlign="Left" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="empresa" HeaderText="Empresa" 
                            SortExpression="empresa" Visible="False" >
                                                <HeaderStyle HorizontalAlign="Left" />
                                            </asp:BoundField>
                                        </Columns>
                                        <FooterStyle BackColor="Tan" />
                                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                        HorizontalAlign="Left" />
                                        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" 
                        HorizontalAlign="Left" />
                                        <HeaderStyle BackColor="Tan" Font-Bold="True" />
                                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                                    </asp:GridView>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

