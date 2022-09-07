<%@ Page Title="" Language="VB" MasterPageFile="~/menu_master.master" AutoEventWireup="false" CodeFile="man_categorias_mjt.aspx.vb" Inherits="man_categorias_mjt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
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
                    <td colspan="2" 
                
                
                style="font-family: 'Trebuchet MS'; font-size: large; text-align: center; font-weight: bolder;" 
                valign="top">
                        Categorias Ministerio de Justicia y Trabajo&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                    <td style="text-align: right" valign="top">
                        <asp:ImageButton ID="ImageButton1" runat="server" 
                    ImageUrl="~/images/controles/salir32.png" style="text-align: right" 
                    PostBackUrl="~/home.aspx" 
                    ToolTip="Volver al Menu Principal" />
                    </td>
                </tr>
                <tr>
                    <td 
                style="font-family: 'Trebuchet MS'; font-size: small; text-align: center;" 
                valign="top" width="400">
                        <br />
                        <br />
                        <asp:FormView ID="form_categorias" runat="server" DataKeyNames="cod_categoria_mjt" 
                    DataSourceID="categorias_mjt_con" DefaultMode="Insert" Width="100%" 
                            style="text-align: center">
                            <EditItemTemplate>
                                cod_categoria_mjt:
                                <asp:Label ID="cod_categoria_mjtLabel1" runat="server" 
                            Text='<%# Eval("cod_categoria_mjt") %>' />
                                <br />
                                descripcion:
                                <asp:TextBox ID="descripcionTextBox" runat="server" 
                            Text='<%# Bind("descripcion") %>' />
                                <br />
                                simbolo:
                                <asp:TextBox ID="simboloTextBox" runat="server" Text='<%# Bind("simbolo") %>' />
                                <br />
                                <asp:ImageButton ID="UpdateButton" runat="server" CausesValidation="True" 
                            CommandName="Update" Text="Update" />
                                &nbsp;<asp:ImageButton ID="UpdateCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <table align="center" width="100%">
                                    <tr>
                                        <td style="text-align: right" width="80">
                                            Descripción:
                                        </td>
                                        <td style="text-align: left" width="100%">
                                            <asp:TextBox ID="descripcionTextBox" runat="server" 
                                        Text='<%# Bind("descripcion") %>' Width="98%" />
                                        </td>
                                        <td style="text-align: left" width="5">
                                            <asp:RequiredFieldValidator ID="rv_descripcion" runat="server" 
                                                ControlToValidate="simboloTextBox" Enabled="False" 
                                        ErrorMessage="*"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right">
                                            Símbolo:
                                        </td>
                                        <td style="text-align: left">
                                            <asp:TextBox ID="simboloTextBox" runat="server" 
                                        Text='<%# Bind("simbolo") %>' Width="98%" 
                                                />
                                        </td>
                                        <td style="text-align: left">
                                            <asp:RequiredFieldValidator ID="rv_simbolo" runat="server" 
                                                ControlToValidate="simboloTextBox" ErrorMessage="*" Enabled="False"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                </table>
                                &nbsp;<table align="center">
                                    <tr>
                                        <td>
                                            <asp:ImageButton ID="InsertButton" runat="server" 
                                        CausesValidation="True" CommandName="Insert" 
                                        ImageUrl="~/images/controles/add.png" onclick="InsertButton_Click" 
                                        Text="Insert" ToolTip="Agregar" />
                                        </td>
                                        <td width="100">
                                            &nbsp;</td>
                                        <td>
                                            <asp:ImageButton ID="InsertCancelButton" runat="server" 
                                        CausesValidation="False" CommandName="Cancel" 
                                        ImageUrl="~/images/controles/cancel.png" Text="Cancel" 
                                        ToolTip="Cancelar Inserción" />
                                        </td>
                                    </tr>
                                </table>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                cod_categoria_mjt:
                                <asp:Label ID="cod_categoria_mjtLabel" runat="server" 
                            Text='<%# Eval("cod_categoria_mjt") %>' />
                                <br />
                                descripcion:
                                <asp:Label ID="descripcionLabel" runat="server" 
                            Text='<%# Bind("descripcion") %>' />
                                <br />
                                simbolo:
                                <asp:Label ID="simboloLabel" runat="server" Text='<%# Bind("simbolo") %>' />
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
                        <asp:SqlDataSource ID="categorias_mjt_con" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
                    DeleteCommand="DELETE FROM [categorias_mjt] WHERE [cod_categoria_mjt] = @cod_categoria_mjt" 
                    InsertCommand="INSERT INTO [categorias_mjt] ([descripcion]) VALUES (@descripcion)" 
                    SelectCommand="SELECT cod_categoria_mjt, descripcion, simbolo FROM categorias_mjt" 
                    
                    
                    
                            UpdateCommand="UPDATE [categorias_mjt] SET [descripcion] = @descripcion WHERE [cod_categoria_mjt] = @cod_categoria_mjt">
                            <DeleteParameters>
                                <asp:Parameter Name="cod_categoria_mjt" Type="Int16" />
                            </DeleteParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="descripcion" Type="String" />
                                <asp:Parameter Name="cod_categoria_mjt" Type="Int16" />
                            </UpdateParameters>
                            <InsertParameters>
                                <asp:Parameter Name="descripcion" Type="String" />
                            </InsertParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td style="font-family: 'Trebuchet MS'; font-size: small" align="center" 
                valign="top">
                        <table align="center">
                            <tr>
                                <td style="text-align: center; font-family: 'Trebuchet MS'; font-size: small;" 
                            valign="top">
                                    <br />
                                    <br />
                                    <asp:GridView ID="grid_categorias" runat="server" AllowPaging="True" 
                                AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" 
                                BorderWidth="1px" CellPadding="2" DataKeyNames="cod_categoria_mjt" 
                                DataSourceID="categorias_mjt_con" ForeColor="Black" GridLines="None" 
                                Width="350px">
                                        <Columns>
                                            <asp:TemplateField ShowHeader="False">
                                                <EditItemTemplate>
                                                    <asp:ImageButton ID="ImageButton3" runat="server" 
                                                CausesValidation="True" CommandName="Update" 
                                                ImageUrl="~/images/controles/b_grabar.gif" Text="Update" ToolTip="Guardar" />
                                                    &nbsp;<asp:ImageButton ID="ImageButton2" runat="server" 
                                                CausesValidation="False" CommandName="Cancel" 
                                                ImageUrl="~/images/controles/b_cancelar.gif" Text="Cancel" ToolTip="Cancelar" />
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <asp:ImageButton ID="ImageButton4" runat="server" 
                                                CausesValidation="False" CommandName="Edit" 
                                                ImageUrl="~/images/controles/b_modificar.gif" Text="Edit" ToolTip="Modificar" />
                                                    &nbsp;<asp:ImageButton ID="ImageButton5" runat="server" 
                                                CausesValidation="False" CommandName="Delete" 
                                                ImageUrl="~/images/controles/b_eliminar.gif" 
                                                onclientclick="return confirm('Está Seguro que desea eliminar esta categoria?')" 
                                                Text="Delete" ToolTip="Eliminar" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="cod_categoria_mjt" HeaderText="Código" 
                                        InsertVisible="False" ReadOnly="True" SortExpression="cod_categoria_mjt">
                                                <HeaderStyle HorizontalAlign="Center" />
                                                <ItemStyle HorizontalAlign="Center" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="descripcion" HeaderText="Descripción" 
                                        SortExpression="descripcion">
                                                <HeaderStyle HorizontalAlign="Center" />
                                                <ItemStyle HorizontalAlign="Center" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="simbolo" HeaderText="Simbolo" 
                                        SortExpression="simbolo">
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
                    </td>
                </tr>
            </table>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

