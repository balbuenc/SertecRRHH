<%@ Page Title="" Language="VB" MasterPageFile="~/menu_master.master" AutoEventWireup="false" CodeFile="man_tipos_sanciones.aspx.vb" Inherits="tipos_sanciones" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
        }
        .style4
        {
            width: 100%;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <table align="center" class="style3">
                <tr>
                    <td colspan="2">
                        <table align="center" class="style4">
                            <tr>
                                <td width="100">
                                    &nbsp;</td>
                                <td style="text-align: center; font-family: 'Trebuchet MS'; font-size: large; font-weight: bolder;" 
                            valign="top">
                                    Tipos de Sanciones</td>
                                <td style="text-align: right">
                                    <asp:ImageButton ID="ImageButton1" runat="server" 
                                ImageUrl="~/images/controles/salir32.png" PostBackUrl="~/home.aspx" 
                                ToolTip="Volver al Menu Principal" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td 
                style="text-align: center; font-family: 'Trebuchet MS'; font-size: small;" 
                        width="500">
                        <asp:FormView ID="form_tipos_sancion" runat="server" DataKeyNames="cod_sancion" 
                            DataSourceID="tipos_sancion_con" DefaultMode="Insert" 
                            style="text-align: center" Width="90%">
                            <EditItemTemplate>
                                cod_sancion:
                                <asp:Label ID="cod_sancionLabel1" runat="server" 
                                    Text='<%# Eval("cod_sancion") %>' />
                                <br />
                                cod_empresa:
                                <asp:TextBox ID="cod_empresaTextBox" runat="server" 
                                    Text='<%# Bind("cod_empresa") %>' />
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
                                <table>
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                        <td width="250">
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td width="110" style="text-align: right">
                                            Descripción:
                                        </td>
                                        <td style="text-align: left" width="200">
                                            <asp:TextBox ID="descripcionTextBox" runat="server" 
                                                Text='<%# Bind("descripcion") %>' Width="249px" />
                                        </td>
                                        <td>
                                            <asp:RequiredFieldValidator ID="rv_descripcion" runat="server" 
                                                ControlToValidate="descripcionTextBox" Enabled="False" ErrorMessage="*"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            <asp:TextBox ID="txt_empresa" runat="server" 
                                                Text='<%# Bind("cod_empresa") %>' Visible="False" />
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:ImageButton ID="InsertButton" runat="server" CausesValidation="True" 
                                                CommandName="Insert" ImageUrl="~/images/controles/add.png" 
                                                onclick="InsertButton_Click1" Text="Insert" ToolTip="Agregar" />
                                        </td>
                                        <td align="right" style="text-align: center">
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:ImageButton ID="InsertCancelButton" runat="server" 
                                                CausesValidation="False" CommandName="Cancel" 
                                                ImageUrl="~/images/controles/cancel.png" Text="Cancel" 
                                                ToolTip="Cancelar Inserción" />
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                </table>
                                <table>
                                </table>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                cod_sancion:
                                <asp:Label ID="cod_sancionLabel" runat="server" 
                                    Text='<%# Eval("cod_sancion") %>' />
                                <br />
                                cod_empresa:
                                <asp:Label ID="cod_empresaLabel" runat="server" 
                                    Text='<%# Bind("cod_empresa") %>' />
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
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <asp:SqlDataSource ID="tipos_sancion_con" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
                            SelectCommand="SELECT * FROM [tipos_sanciones]" 
                            DeleteCommand="DELETE FROM [tipos_sanciones] WHERE [cod_sancion] = @cod_sancion" 
                            InsertCommand="INSERT INTO [tipos_sanciones] ([cod_empresa], [descripcion]) VALUES (@cod_empresa, @descripcion)" 
                            UpdateCommand="UPDATE [tipos_sanciones] SET [cod_empresa] = @cod_empresa, [descripcion] = @descripcion WHERE [cod_sancion] = @cod_sancion">
                            <DeleteParameters>
                                <asp:Parameter Name="cod_sancion" Type="Int16" />
                            </DeleteParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="cod_empresa" Type="Int16" />
                                <asp:Parameter Name="descripcion" Type="String" />
                                <asp:Parameter Name="cod_sancion" Type="Int16" />
                            </UpdateParameters>
                            <InsertParameters>
                                <asp:Parameter Name="cod_empresa" Type="Int16" />
                                <asp:Parameter Name="descripcion" Type="String" />
                            </InsertParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td align="center" valign="top" 
                style="font-family: 'Trebuchet MS'; font-size: small; text-align: left;">
                        <table align="center" style="width: 413px">
                            <tr>
                                <td align="left" width="165">
                                    Busque por Descripción:</td>
                                <td align="center" style="text-align: center">
                                    <asp:TextBox ID="txt_descripcion" runat="server" Width="200px" 
                                AutoPostBack="True" style="text-align: left"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:ImageButton ID="ImageButton2" runat="server" 
                                ImageUrl="~/images/controles/find.png" ToolTip="Buscar" />
                                </td>
                            </tr>
                            <tr>
                                <td align="left" colspan="3">
                                    <asp:GridView ID="grid_sanciones" runat="server" AutoGenerateColumns="False" 
                                        BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
                                        CellPadding="2" DataKeyNames="cod_sancion" DataSourceID="tipos_sancion_con" 
                                        ForeColor="Black" GridLines="None" Width="100%">
                                        <Columns>
                                            <asp:TemplateField ShowHeader="False">
                                                <EditItemTemplate>
                                                    <asp:ImageButton ID="ImageButton1" runat="server" CausesValidation="True" 
                                                        CommandName="Update" ImageUrl="~/images/controles/b_grabar.gif" Text="Update" 
                                                        ToolTip="Guardar" />
                                                    &nbsp;<asp:ImageButton ID="ImageButton2" runat="server" CausesValidation="False" 
                                                        CommandName="Cancel" ImageUrl="~/images/controles/b_cancelar.gif" 
                                                        style="height: 14px" Text="Cancel" ToolTip="Cancelar" />
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <asp:ImageButton ID="ImageButton1" runat="server" CausesValidation="False" 
                                                        CommandName="Edit" ImageUrl="~/images/controles/b_modificar.gif" Text="Edit" 
                                                        ToolTip="Modificar" />
                                                    &nbsp;<asp:ImageButton ID="ImageButton2" runat="server" CausesValidation="False" 
                                                        CommandName="Delete" ImageUrl="~/images/controles/b_eliminar.gif" 
                                                        onclientclick="return confirm('Está Seguro que desea eliminar este registro ?')" 
                                                        Text="Delete" ToolTip="Eliminar" />
                                                </ItemTemplate>
                                                <HeaderStyle Width="60px" />
                                                <ItemStyle Width="60px" />
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="cod_sancion" HeaderText="Código" 
                                                InsertVisible="False" ReadOnly="True" SortExpression="cod_sancion">
                                                <HeaderStyle HorizontalAlign="Center" Width="80px" />
                                                <ItemStyle HorizontalAlign="Center" Width="80px" />
                                            </asp:BoundField>
                                            <asp:TemplateField SortExpression="cod_empresa">
                                                <EditItemTemplate>
                                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("cod_empresa") %>' 
                                                        Visible="False"></asp:TextBox>
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("cod_empresa") %>' 
                                                        Visible="False"></asp:Label>
                                                </ItemTemplate>
                                                <HeaderStyle HorizontalAlign="Center" />
                                                <ItemStyle HorizontalAlign="Center" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Descripción" SortExpression="descripcion">
                                                <EditItemTemplate>
                                                    <table>
                                                        <tr>
                                                            <td>
                                                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("descripcion") %>' 
                                                                    Width="250px"></asp:TextBox>
                                                            </td>
                                                            <td>
                                                                <asp:RequiredFieldValidator ID="rv_descripcion_edit" runat="server" 
                                                                    ControlToValidate="TextBox2" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("descripcion") %>'></asp:Label>
                                                </ItemTemplate>
                                                <HeaderStyle HorizontalAlign="Left" />
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
                        <br />
                    </td>
                </tr>
            </table>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

