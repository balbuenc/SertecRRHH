<%@ Page Title="" Language="VB" MasterPageFile="~/menu_master.master" AutoEventWireup="false" CodeFile="man_nacionalidades.aspx.vb" Inherits="man_nacionalidades" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
                
        {
            width: 100%;
        }
        
        {
            width: 85px;
        }
        
        {
            width: 146px;
            text-align: right;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <table align="center" width="100%">
                <tr>
                    <td colspan="2">
                        <table align="center" width="100%">
                            <tr>
                                <td align="center" 
                            
                            
                            style="font-family: 'Trebuchet MS'; font-size: large; font-weight: bolder; text-align: center;" 
                            valign="top">
                                    Nacionalidades</td>
                                <td align="center" 
                            
                            
                            
                                    style="font-family: 'Trebuchet MS'; font-size: large; font-weight: bolder; text-align: right;" 
                                    width="150">
                                    <asp:ImageButton ID="ImageButton1" runat="server" 
                                ImageUrl="~/images/controles/salir32.png" ToolTip="Volver al Menu Principal" 
                                PostBackUrl="~/home.aspx" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td align="center" valign="top" width="450">
                        <br />
                        <asp:FormView ID="form_nacionalidades" runat="server" DataKeyNames="cod_nacionalidad" 
                    DataSourceID="nacionalidades_con" DefaultMode="Insert" Width="330px" 
                    style="text-align: center">
                            <EditItemTemplate>
                                cod_nacionalidad:
                                <asp:Label ID="cod_nacionalidadLabel1" runat="server" 
                            Text='<%# Eval("cod_nacionalidad") %>' />
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
                                        <td 
                                    style="text-align: right; font-family: 'Trebuchet MS'; font-size: small;">
                                            &nbsp;</td>
                                        <td style="text-align: left">
                                            &nbsp;</td>
                                        <td style="text-align: left">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td 
                                    style="text-align: right; font-family: 'Trebuchet MS'; font-size: small;">
                                            Descripción:</td>
                                        <td style="text-align: left">
                                            <asp:TextBox ID="descripcionTextBox" runat="server" 
                                        Text='<%# Bind("descripcion") %>' Width="200px" />
                                        </td>
                                        <td style="text-align: left">
                                            <asp:RequiredFieldValidator ID="rv_descripcion" runat="server" 
                                                ControlToValidate="descripcionTextBox" ErrorMessage="*" Enabled="False" 
                                                Font-Size="X-Small"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                </table>
                                <br />
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
                                cod_nacionalidad:
                                <asp:Label ID="cod_nacionalidadLabel" runat="server" 
                            Text='<%# Eval("cod_nacionalidad") %>' />
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
                        <asp:SqlDataSource ID="nacionalidades_con" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
                    DeleteCommand="DELETE FROM [nacionalidades] WHERE [cod_nacionalidad] = @cod_nacionalidad" 
                    InsertCommand="INSERT INTO [nacionalidades] ([descripcion]) VALUES (@descripcion)" 
                    SelectCommand="SELECT cod_nacionalidad, descripcion FROM nacionalidades WHERE (descripcion LIKE @descripcion + '%')" 
                    
                    
                    
                            UpdateCommand="UPDATE [nacionalidades] SET [descripcion] = @descripcion WHERE [cod_nacionalidad] = @cod_nacionalidad">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="txt_descripcion" Name="descripcion" 
                            PropertyName="Text" />
                            </SelectParameters>
                            <DeleteParameters>
                                <asp:Parameter Name="cod_nacionalidad" Type="Int16" />
                            </DeleteParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="descripcion" Type="String" />
                                <asp:Parameter Name="cod_nacionalidad" Type="Int16" />
                            </UpdateParameters>
                            <InsertParameters>
                                <asp:Parameter Name="descripcion" Type="String" />
                            </InsertParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td align="center" valign="top" 
                style="font-family: 'Trebuchet MS'; font-size: small; text-align: left;">
                        <br />
                        <table align="center">
                            <tr>
                                <td width="140">
                                    Busque por Descripción:</td>
                                <td width="155">
                                    <asp:TextBox ID="txt_descripcion" runat="server" Width="150px" 
                                        AutoPostBack="True"></asp:TextBox>
                                </td>
                                <td style="text-align: left">
                                    <asp:ImageButton ID="ImageButton2" runat="server" 
                                ImageUrl="~/images/controles/find.png" ToolTip="Buscar" />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3" 
                            style="font-family: 'Trebuchet MS'; font-size: small">
                                    <asp:GridView ID="grilla_nacionalidades" runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" 
                    BorderWidth="1px" CellPadding="2" DataKeyNames="cod_nacionalidad" 
                    DataSourceID="nacionalidades_con" ForeColor="Black" GridLines="None" 
                                style="text-align: center" Width="100%">
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
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="cod_nacionalidad" HeaderText="Código" 
                            InsertVisible="False" ReadOnly="True" SortExpression="cod_nacionalidad" >
                                                <HeaderStyle HorizontalAlign="Center" />
                                                <ItemStyle HorizontalAlign="Center" />
                                            </asp:BoundField>
                                            <asp:TemplateField HeaderText="Descripción" SortExpression="descripcion">
                                                <EditItemTemplate>
                                                    <table>
                                                        <tr>
                                                            <td>
                                                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("descripcion") %>' 
                                                                    Width="110px"></asp:TextBox>
                                                            </td>
                                                            <td>
                                                                <asp:RequiredFieldValidator ID="rv_grid_descripcion" runat="server" 
                                                                    ControlToValidate="TextBox1" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("descripcion") %>'></asp:Label>
                                                </ItemTemplate>
                                                <HeaderStyle HorizontalAlign="Center" />
                                                <ItemStyle HorizontalAlign="Center" />
                                            </asp:TemplateField>
                                        </Columns>
                                        <FooterStyle BackColor="Tan" />
                                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                        HorizontalAlign="Left" />
                                        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                                        <HeaderStyle BackColor="Tan" Font-Bold="True" HorizontalAlign="Left" />
                                        <EditRowStyle HorizontalAlign="Left" />
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

