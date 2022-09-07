<%@ Page Title="" Language="VB" MasterPageFile="~/menu_master.master" AutoEventWireup="false" CodeFile="man_centros_costos.aspx.vb" Inherits="man_centros_costos" %>

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
                                <td style="text-align: right; font-family: 'Trebuchet MS'; font-size: large; font-weight: bolder;" 
                                    width="100">
                                    &nbsp;</td>
                                <td style="text-align: center; font-family: 'Trebuchet MS'; font-size: large; font-weight: bolder;" 
                            valign="top">
                                    Centros de Costos</td>
                                <td style="text-align: right; font-family: 'Trebuchet MS'; font-size: large; font-weight: bolder;">
                                    <asp:ImageButton ID="ImageButton1" runat="server" 
                                ImageUrl="~/images/controles/salir32.png" PostBackUrl="~/home.aspx" 
                                ToolTip="Volver al Menu Principal" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center; font-family: 'Trebuchet MS'; font-size: small;" 
                valign="top" width="450">
                        <br />
                        <asp:FormView ID="form_centro_costo" runat="server" DataKeyNames="cod_centro_costo" 
                    DataSourceID="centros_costos_con" Width="90%" 
                    DefaultMode="Insert">
                            <EditItemTemplate>
                                cod_centro_costo:
                                <asp:Label ID="cod_centro_costoLabel1" runat="server" 
                            Text='<%# Eval("cod_centro_costo") %>' />
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
                                <table align="center" width="100%">
                                    <tr>
                                        <td width="60">
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="font-family: 'Trebuchet MS'; font-size: small; text-align: right;">
                                            Descripción:</td>
                                        <td style="text-align: left">
                                            <asp:TextBox ID="descripcionTextBox" runat="server" 
                                        Text='<%# Bind("descripcion") %>' Width="300px" />
                                        </td>
                                        <td style="text-align: left" width="5">
                                            <asp:RequiredFieldValidator ID="descripcion_rv" runat="server" 
                                                ControlToValidate="descripcionTextBox" ErrorMessage="*"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                </table>
                                <br />
                                <table align="center">
                                    <tr>
                                        <td>
                                            <asp:ImageButton ID="InsertButton" runat="server" CausesValidation="True" 
                                        CommandName="Insert" Text="Insert" ImageUrl="~/images/controles/add.png" 
                                        ToolTip="Agregar" onclick="InsertButton_Click" />
                                        </td>
                                        <td width="100">
                                            &nbsp;</td>
                                        <td style="text-align: left">
                                            <asp:ImageButton ID="InsertCancelButton" runat="server" CausesValidation="False" 
                                        CommandName="Cancel" Text="Cancel" 
                                        ImageUrl="~/images/controles/cancel.png" ToolTip="Cancelar Inserción" />
                                        </td>
                                    </tr>
                                </table>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                cod_centro_costo:
                                <asp:Label ID="cod_centro_costoLabel" runat="server" 
                            Text='<%# Eval("cod_centro_costo") %>' />
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
                        <asp:SqlDataSource ID="centros_costos_con" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
                    DeleteCommand="DELETE FROM [centros_costos] WHERE [cod_centro_costo] = @cod_centro_costo" 
                    InsertCommand="INSERT INTO [centros_costos] ([descripcion]) VALUES (@descripcion)" 
                    SelectCommand="SELECT cod_centro_costo, descripcion FROM centros_costos WHERE (descripcion LIKE @descripcion + '%')" 
                    
                    
                    
                            UpdateCommand="UPDATE [centros_costos] SET [descripcion] = @descripcion WHERE [cod_centro_costo] = @cod_centro_costo">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="txt_descripcion" Name="descripcion" 
                            PropertyName="Text" />
                            </SelectParameters>
                            <DeleteParameters>
                                <asp:Parameter Name="cod_centro_costo" Type="Int16" />
                            </DeleteParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="descripcion" Type="String" />
                                <asp:Parameter Name="cod_centro_costo" Type="Int16" />
                            </UpdateParameters>
                            <InsertParameters>
                                <asp:Parameter Name="descripcion" Type="String" />
                            </InsertParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td valign="top">
                        <br />
                        <table align="center" 
                    style="font-family: 'Trebuchet MS'; font-size: small">
                            <tr>
                                <td 
                            style="text-align: left; font-family: 'Trebuchet MS'; font-size: small;">
                                    Busque por Descripción:</td>
                                <td style="text-align: center">
                                    <asp:TextBox ID="txt_descripcion" runat="server" Width="202px" 
                                        AutoPostBack="True"></asp:TextBox>
                                </td>
                                <td style="text-align: left">
                                    <asp:ImageButton ID="ImageButton2" runat="server" 
                                ImageUrl="~/images/controles/find.png" ToolTip="Buscar" />
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: left" align="center" colspan="3">
                                    <asp:GridView ID="grid_centro_costo" runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" 
                    BorderWidth="1px" CellPadding="2" DataKeyNames="cod_centro_costo" 
                    DataSourceID="centros_costos_con" ForeColor="Black" GridLines="None" 
                                style="margin-left: 0px" Width="100%">
                                        <Columns>
                                            <asp:TemplateField ShowHeader="False">
                                                <EditItemTemplate>
                                                    <asp:ImageButton ID="ImageButton1" runat="server" CausesValidation="True" 
                                                        CommandName="Update" ImageUrl="~/images/controles/b_grabar.gif" Text="Update" 
                                                        ToolTip="Guardar" />
                                                    &nbsp;<asp:ImageButton ID="ImageButton2" runat="server" CausesValidation="False" 
                                                        CommandName="Cancel" ImageUrl="~/images/controles/b_cancelar.gif" Text="Cancel" 
                                                        ToolTip="Cancelar" />
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
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="cod_centro_costo" HeaderText="Código" 
                            InsertVisible="False" ReadOnly="True" SortExpression="cod_centro_costo" >
                                                <HeaderStyle HorizontalAlign="Center" />
                                                <ItemStyle HorizontalAlign="Center" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="descripcion" HeaderText="Descripción" 
                            SortExpression="descripcion" >
                                                <HeaderStyle HorizontalAlign="Center" />
                                                <ItemStyle HorizontalAlign="Center" />
                                            </asp:BoundField>
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
                        <br />
                    </td>
                </tr>
            </table>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

