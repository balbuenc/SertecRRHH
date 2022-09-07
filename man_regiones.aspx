<%@ Page Title="" Language="VB" MasterPageFile="~/menu_master.master" AutoEventWireup="false" CodeFile="man_regiones.aspx.vb" Inherits="man_regiones" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
        }
        .style8
        {
            width: 21px;
            text-align: left;
        }
        .style28
        {
            height: 68px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <table class="style3">
                <tr>
                    <td colspan="2" class="style28">
                        <table align="center" width="100%">
                            <tr>
                                <td align="center" 
                            
                            
                            style="font-family: 'Trebuchet MS'; font-size: large; font-weight: bolder; text-align: right;" 
                            valign="top" width="200">
                                    &nbsp;</td>
                                <td align="center" 
                            style="font-family: 'Trebuchet MS'; font-size: large; font-weight: bolder" 
                            valign="top">
                                    Regiones</td>
                                <td align="center" 
                            
                            
                            
                                    style="font-family: 'Trebuchet MS'; font-size: large; font-weight: bolder; text-align: right;">
                                    <asp:ImageButton ID="ImageButton2" runat="server" 
                                ImageUrl="~/images/controles/salir32.png" 
                                PostBackUrl="~/home.aspx" ToolTip="Volver al Menu Principal" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td valign="top" 
                style="font-family: 'Trebuchet MS'; font-size: small; text-align: center;" 
                align="center" width="500">
                        <asp:FormView ID="form_regiones" runat="server" DataKeyNames="cod_region" 
                    DataSourceID="regiones_con" Width="90%" 
                    DefaultMode="Insert" style="text-align: center">
                            <EditItemTemplate>
                                cod_region:
                                <asp:Label ID="cod_regionLabel1" runat="server" 
                            Text='<%# Eval("cod_region") %>' />
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
                                <table align="center">
                                    <tr>
                                        <td style="font-family: 'trebuchet MS'; font-size: small">
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                        <td style="text-align: left">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="font-family: 'trebuchet MS'; font-size: small">
                                            Descripción:</td>
                                        <td class="style8">
                                            <asp:TextBox ID="descripcionTextBox" runat="server" 
                                        style="text-align: left" Text='<%# Bind("descripcion") %>' Width="230px" />
                                        </td>
                                        <td style="text-align: left">
                                            <asp:RequiredFieldValidator ID="rv_descripcion" runat="server" 
                                                ControlToValidate="descripcionTextBox" Enabled="False" 
                                        ErrorMessage="*"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                </table>
                                <br />
                                <table align="center" style="width: 231px">
                                    <tr>
                                        <td>
                                            <asp:ImageButton ID="InsertButton" runat="server" CausesValidation="True" 
                                        CommandName="Insert" ImageUrl="~/images/controles/add.png" Text="Insert" 
                                        ToolTip="Agregar" onclick="InsertButton_Click" />
                                        </td>
                                        <td width="100">
                                            &nbsp;</td>
                                        <td style="text-align: right">
                                            <asp:ImageButton ID="InsertCancelButton" runat="server" 
                                        CausesValidation="False" CommandName="Cancel" ImageUrl="~/images/controles/cancel.png" 
                                        Text="Cancel" ToolTip="Cancelar Inserción" />
                                        </td>
                                    </tr>
                                </table>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <br />
                                <table align="center" class="style6">
                                    <tr>
                                        <td class="style7" style="font-family: 'Trebuchet MS'; font-size: small">
                                            Código:</td>
                                        <td class="style8">
                                            &nbsp;</td>
                                        <td style="text-align: left">
                                            <asp:Label ID="cod_regionLabel" runat="server" 
                                        Text='<%# Eval("cod_region") %>' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style7">
                                            &nbsp;</td>
                                        <td class="style8">
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style7" style="font-family: 'Trebuchet MS'; font-size: small">
                                            Descripción:</td>
                                        <td class="style8">
                                            &nbsp;</td>
                                        <td style="text-align: left">
                                            <asp:Label ID="descripcionLabel" runat="server" 
                                        Text='<%# Bind("descripcion") %>' />
                                        </td>
                                    </tr>
                                </table>
                                <br />
                                <asp:ImageButton ID="NewButton" runat="server" CausesValidation="False" 
                            CommandName="New" Text="New" ImageUrl="~/images/new.png" />
                            </ItemTemplate>
                        </asp:FormView>
                        <asp:SqlDataSource ID="regiones_con" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
                    DeleteCommand="DELETE FROM [regiones] WHERE [cod_region] = @cod_region" 
                    InsertCommand="INSERT INTO [regiones] ([descripcion]) VALUES (@descripcion)" 
                    SelectCommand="SELECT * FROM [regiones]" 
                    
                    
                    
                    
                            UpdateCommand="UPDATE [regiones] SET [descripcion] = @descripcion WHERE [cod_region] = @cod_region">
                            <DeleteParameters>
                                <asp:Parameter Name="cod_region" Type="Int16" />
                            </DeleteParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="descripcion" Type="String" />
                                <asp:Parameter Name="cod_region" Type="Int16" />
                            </UpdateParameters>
                            <InsertParameters>
                                <asp:Parameter Name="descripcion" Type="String" />
                            </InsertParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td style="text-align: center; font-family: 'Trebuchet MS'; font-size: small;" 
                valign="top">
                        <table align="center" 
                    style="font-family: 'Trebuchet MS'; font-size: small; width: 423px;">
                            <tr>
                                <td width="115">
                                    Busque por Región:</td>
                                <td width="200" style="text-align: left">
                                    <asp:TextBox ID="txt_descripcion" runat="server" AutoPostBack="True" 
                                        Width="220px"></asp:TextBox>
                                </td>
                                <td style="text-align: right" width="50">
                                    <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/images/controles/find.png" 
                                style="text-align: left" ToolTip="Buscar" />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3">
                                    <table>
                                    </table>
                                    <asp:GridView ID="grilla_regiones" runat="server" AllowPaging="True" 
                                        AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" 
                                        BorderWidth="1px" CellPadding="2" DataKeyNames="cod_region" 
                                        DataSourceID="regiones_con" ForeColor="Black" GridLines="None" 
                                        style="text-align: left" Width="100%">
                                        <RowStyle HorizontalAlign="Left" />
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
                                                <HeaderStyle HorizontalAlign="Left" Width="80px" />
                                                <ItemStyle HorizontalAlign="Left" Width="80px" />
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="cod_region" HeaderText="Código" 
                                                InsertVisible="False" ReadOnly="True" SortExpression="cod_region">
                                                <HeaderStyle HorizontalAlign="Center" Width="80px" />
                                                <ItemStyle HorizontalAlign="Center" Width="80px" />
                                            </asp:BoundField>
                                            <asp:TemplateField HeaderText="Región" SortExpression="descripcion">
                                                <EditItemTemplate>
                                                    <table>
                                                        <tr>
                                                            <td>
                                                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("descripcion") %>'></asp:TextBox>
                                                            </td>
                                                            <td>
                                                                <asp:RequiredFieldValidator ID="rv_descripcion_edit" runat="server" 
                                                                    ControlToValidate="TextBox1" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("descripcion") %>'></asp:Label>
                                                </ItemTemplate>
                                                <HeaderStyle HorizontalAlign="Left" Width="200px" />
                                                <ItemStyle HorizontalAlign="Left" Width="200px" />
                                            </asp:TemplateField>
                                        </Columns>
                                        <FooterStyle BackColor="Tan" />
                                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                                            HorizontalAlign="Left" />
                                        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                                        <HeaderStyle BackColor="Tan" Font-Bold="True" HorizontalAlign="Left" />
                                        <EditRowStyle BorderColor="White" HorizontalAlign="Left" />
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

