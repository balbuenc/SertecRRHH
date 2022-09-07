<%@ Page Title="" Language="VB" MasterPageFile="~/menu_master.master" AutoEventWireup="false" CodeFile="man_monedas.aspx.vb" Inherits="man_monedas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
        }
        .style8
        {
            width: 208px;
        }
        .style13
        {
            width: 100%;
            margin-left: 0px;
        }
        .style21
        {
            width: 89px;
            text-align: right;
        }
        .style28
        {
            text-align: center;
        }
        .style29
        {
            height: 22px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <table align="center" class="style3">
                <tr>
                    <td colspan="2" class="style28">
                        <table class="style13" align="center" 
                    style="font-family: 'Trebuchet MS'; font-size: large; font-weight: bolder">
                            <tr>
                                <td width="120">
                                    &nbsp;&nbsp;</td>
                                <td valign="top">
                                    &nbsp;Monedas</td>
                                <td style="text-align: right">
                                    <asp:ImageButton ID="ImageButton1" runat="server" 
                                ImageUrl="~/images/controles/salir32.png" PostBackUrl="~/home.aspx" 
                                ToolTip="Vover al Menu Principal" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td valign="top" 
                style="font-family: 'Trebuchet MS'; font-size: small" align="center" 
                width="450">
                        <asp:FormView ID="form_monedas" runat="server" DataKeyNames="cod_moneda" 
                    DataSourceID="monedas_con" DefaultMode="Insert" Width="80%" 
                    style="text-align: center">
                            <EditItemTemplate>
                                cod_moneda:
                                <asp:Label ID="cod_monedaLabel1" runat="server" 
                            Text='<%# Eval("cod_moneda") %>' />
                                <br />
                                descripcion:
                                <asp:TextBox ID="descripcionTextBox" runat="server" 
                            Text='<%# Bind("descripcion") %>' />
                                <br />
                                simbolo:
                                <asp:TextBox ID="simboloTextBox" runat="server" Text='<%# Bind("simbolo") %>' />
                                <br />
                                operador:
                                <asp:TextBox ID="operadorTextBox" runat="server" 
                            Text='<%# Bind("operador") %>' />
                                <br />
                                <asp:ImageButton ID="UpdateButton" runat="server" CausesValidation="True" 
                            CommandName="Update" Text="Update" />
                                &nbsp;<asp:ImageButton ID="UpdateCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <br />
                                <table align="center">
                                    <tr>
                                        <td class="style21">
                                            Descripción:</td>
                                        <td style="text-align: left">
                                            <asp:TextBox ID="descripcionTextBox" runat="server" 
                                        Text='<%# Bind("descripcion") %>' Width="200px" />
                                        </td>
                                        <td style="text-align: left" width="100%">
                                            <asp:RequiredFieldValidator ID="rv_descripcion" runat="server" ErrorMessage="*" 
                                                ControlToValidate="descripcionTextBox" Enabled="False"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style21">
                                            Símbolo:</td>
                                        <td style="text-align: left">
                                            <asp:TextBox ID="simboloTextBox" runat="server" Text='<%# Bind("simbolo") %>' 
                                        Width="200px" ontextchanged="simboloTextBox0_TextChanged" />
                                        </td>
                                        <td style="text-align: left" width="100%">
                                            <asp:RequiredFieldValidator ID="rv_simbolo" runat="server" 
                                        ControlToValidate="simboloTextBox" Enabled="False" ErrorMessage="*"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style21">
                                            Operador:</td>
                                        <td style="text-align: left">
                                            <asp:TextBox ID="operadorTextBox" runat="server" Text='<%# Bind("operador") %>' 
                                        Width="200px" />
                                        </td>
                                        <td style="text-align: left" width="100%">
                                            <asp:RequiredFieldValidator ID="rv_operador" runat="server" 
                                        ControlToValidate="operadorTextBox" Enabled="False" ErrorMessage="*"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                </table>
                                <br />
                                <table align="center" class="style8">
                                    <tr>
                                        <td style="text-align: right">
                                            <asp:ImageButton ID="InsertButton" runat="server" CausesValidation="True" 
                                        CommandName="Insert" Text="Insert" Height="48px" 
                                        ImageUrl="~/images/controles/add.png" Width="48px" ToolTip="Agregar" 
                                                onclick="InsertButton_Click" />
                                        </td>
                                        <td width="100">
                                            &nbsp;</td>
                                        <td style="text-align: right">
                                            <asp:ImageButton ID="InsertCancelButton" runat="server" CausesValidation="False" 
                                        CommandName="Cancel" Text="Cancel" ImageUrl="~/images/controles/cancel.png" 
                                        Width="49px" ToolTip="Cancelar" />
                                        </td>
                                    </tr>
                                </table>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                cod_moneda:
                                <asp:Label ID="cod_monedaLabel" runat="server" 
                            Text='<%# Eval("cod_moneda") %>' />
                                <br />
                                descripcion:
                                <asp:Label ID="descripcionLabel" runat="server" 
                            Text='<%# Bind("descripcion") %>' />
                                <br />
                                simbolo:
                                <asp:Label ID="simboloLabel" runat="server" Text='<%# Bind("simbolo") %>' />
                                <br />
                                operador:
                                <asp:Label ID="operadorLabel" runat="server" Text='<%# Bind("operador") %>' />
                                <br />
                                <asp:ImageButton ID="EditButton" runat="server" CausesValidation="False" 
                            CommandName="Edit" Text="Edit" />
                                &nbsp;<asp:ImageButton ID="DeleteButton" runat="server" CausesValidation="False" 
                            CommandName="Delete" Text="Delete" />
                                &nbsp;<asp:ImageButton ID="NewButton" runat="server" CausesValidation="False" 
                            CommandName="New" Text="New" />
                            </ItemTemplate>
                        </asp:FormView>
                        <br />
                        <asp:SqlDataSource ID="monedas_con" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
                    DeleteCommand="DELETE FROM [monedas] WHERE [cod_moneda] = @cod_moneda" 
                    InsertCommand="INSERT INTO [monedas] ([descripcion], [simbolo], [operador]) VALUES (@descripcion, @simbolo, @operador)" 
                    SelectCommand="SELECT cod_moneda, descripcion, simbolo, operador FROM monedas WHERE (descripcion LIKE @descripcion + '%')" 
                    
                    
                    
                            UpdateCommand="UPDATE [monedas] SET [descripcion] = @descripcion, [simbolo] = @simbolo, [operador] = @operador WHERE [cod_moneda] = @cod_moneda">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="txt_descripcion" Name="descripcion" 
                            PropertyName="Text" />
                            </SelectParameters>
                            <DeleteParameters>
                                <asp:Parameter Name="cod_moneda" Type="Int16" />
                            </DeleteParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="descripcion" Type="String" />
                                <asp:Parameter Name="simbolo" Type="String" />
                                <asp:Parameter Name="operador" Type="String" />
                                <asp:Parameter Name="cod_moneda" Type="Int16" />
                            </UpdateParameters>
                            <InsertParameters>
                                <asp:Parameter Name="descripcion" Type="String" />
                                <asp:Parameter Name="simbolo" Type="String" />
                                <asp:Parameter Name="operador" Type="String" />
                            </InsertParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td valign="top" 
                style="font-family: 'Trebuchet MS'; font-size: small">
                        <table align="center" 
                    style="font-family: 'Trebuchet MS'; font-size: small">
                            <tr>
                                <td>
                                    Busque por Descripción:</td>
                                <td style="text-align: left">
                                    <asp:TextBox ID="txt_descripcion" runat="server" Width="220px" 
                                        AutoPostBack="True"></asp:TextBox>
                                </td>
                                <td style="text-align: left">
                                    <asp:ImageButton ID="ImageButton2" runat="server" 
                                ImageUrl="~/images/controles/find.png" ToolTip="Buscar" />
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: right" colspan="3" valign="top">
                                    <asp:GridView ID="grilla_moneda" runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" 
                    BorderWidth="1px" CellPadding="2" DataKeyNames="cod_moneda" 
                    DataSourceID="monedas_con" ForeColor="Black" GridLines="None" 
                    Width="100%" HorizontalAlign="Left">
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
                                                <HeaderStyle HorizontalAlign="Left" Width="80px" />
                                                <ItemStyle HorizontalAlign="Left" Width="80px" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Código" 
                            InsertVisible="False" SortExpression="cod_moneda">
                                                <EditItemTemplate>
                                                    <asp:Label ID="Label1" runat="server" 
                                    Text='<%# Eval("cod_moneda") %>'></asp:Label>
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("cod_moneda") %>'></asp:Label>
                                                </ItemTemplate>
                                                <HeaderStyle HorizontalAlign="Center" />
                                                <ItemStyle HorizontalAlign="Center" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Descripción" 
                            SortExpression="descripcion">
                                                <EditItemTemplate>
                                                    <table>
                                                        <tr>
                                                            <td>
                                                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("descripcion") %>' 
                                                                    Width="100px"></asp:TextBox>
                                                            </td>
                                                            <td>
                                                                <asp:RequiredFieldValidator ID="rv_grid_descripcion" runat="server" 
                                                                    ControlToValidate="TextBox1" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="Label2" runat="server" 
                                    Text='<%# Bind("descripcion") %>'></asp:Label>
                                                </ItemTemplate>
                                                <HeaderStyle HorizontalAlign="Left" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Símbolo" 
                            SortExpression="simbolo">
                                                <EditItemTemplate>
                                                    <table>
                                                        <tr>
                                                            <td>
                                                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("simbolo") %>' 
                                                                    Width="80px"></asp:TextBox>
                                                            </td>
                                                            <td>
                                                                <asp:RequiredFieldValidator ID="rv_grid_simbolo" runat="server" 
                                                                    ControlToValidate="TextBox2" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="Label3" runat="server" 
                                    Text='<%# Bind("simbolo") %>'></asp:Label>
                                                </ItemTemplate>
                                                <HeaderStyle HorizontalAlign="Center" />
                                                <ItemStyle HorizontalAlign="Center" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Operador" 
                            SortExpression="operador">
                                                <EditItemTemplate>
                                                    <table>
                                                        <tr>
                                                            <td class="style29">
                                                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("operador") %>' 
                                                                    Width="50px"></asp:TextBox>
                                                            </td>
                                                            <td class="style29">
                                                                <asp:RequiredFieldValidator ID="rv_grid_operador" runat="server" 
                                                                    ControlToValidate="TextBox3" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="Label4" runat="server" 
                                    Text='<%# Bind("operador") %>'></asp:Label>
                                                </ItemTemplate>
                                                <HeaderStyle HorizontalAlign="Center" />
                                                <ItemStyle HorizontalAlign="Center" />
                                            </asp:TemplateField>
                                        </Columns>
                                        <FooterStyle BackColor="Tan" />
                                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                        HorizontalAlign="Left" />
                                        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                                        <HeaderStyle BackColor="Tan" Font-Bold="True" />
                                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                                    </asp:GridView>
                                </td>
                            </tr>
                        </table>
                        <br />
                    </td>
                </tr>
            </table>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

