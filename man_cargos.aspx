<%@ Page Title="" Language="VB" MasterPageFile="~/menu_master.master" AutoEventWireup="false" CodeFile="man_cargos.aspx.vb" Inherits="man_cargos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
        }
        .style4
        {
            width: 100%;
            margin-bottom: 0px;
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
                                <td align="center" 
                            
                            
                            
                                    style="font-family: 'Trebuchet MS'; font-size: large; font-weight: bolder; text-align: right;" 
                                    width="220">
                                    &nbsp;</td>
                                <td align="center" 
                            
                            style="font-family: 'Trebuchet MS'; font-size: large; font-weight: bolder; text-align: center;" 
                            valign="top">
                                    Cargos</td>
                                <td align="center" 
                            
                            
                            
                                    style="font-family: 'Trebuchet MS'; font-size: large; font-weight: bolder; text-align: right;">
                                    <asp:ImageButton ID="ImageButton1" runat="server" 
                                ImageUrl="~/images/controles/salir32.png" PostBackUrl="~/home.aspx" 
                                ToolTip="Volver al Menu Principal" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center" valign="top">
                        <asp:FormView ID="form_cargos" runat="server" DataKeyNames="cod_cargo" 
                    DataSourceID="cargos_con" DefaultMode="Insert" 
                    Width="100%">
                            <EditItemTemplate>
                                cod_cargo:
                                <asp:Label ID="cod_cargoLabel1" runat="server" 
                            Text='<%# Eval("cod_cargo") %>' />
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
                                <table align="center" 
                            style="font-family: 'Trebuchet MS'; font-size: small; width: 385px;">
                                    <tr>
                                        <td 
                                    style="text-align: right; font-family: 'Trebuchet MS'; font-size: small;" 
                                            width="60">
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
                                        Text='<%# Bind("descripcion") %>' Width="350px" />
                                        </td>
                                        <td style="text-align: left" width="5">
                                            <asp:RequiredFieldValidator ID="rv_cargo" runat="server" 
                                                ControlToValidate="descripcionTextBox" Enabled="False" 
                                        ErrorMessage="*"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                </table>
                                <br />
                                <br />
                                <table align="center" style="width: 220px">
                                    <tr>
                                        <td style="text-align: right">
                                            <asp:ImageButton ID="InsertButton" runat="server" CausesValidation="True" 
                                        CommandName="Insert" Text="Insert" ImageUrl="~/images/controles/add.png" 
                                        ToolTip="Agregar" onclick="InsertButton_Click" />
                                        </td>
                                        <td width="150">
                                            &nbsp;</td>
                                        <td>
                                            <asp:ImageButton ID="InsertCancelButton" runat="server" CausesValidation="False" 
                                        CommandName="Cancel" Text="Cancel" 
                                        ImageUrl="~/images/controles/cancel.png" ToolTip="Cancelar" 
                                        style="margin-bottom: 0px" />
                                        </td>
                                    </tr>
                                </table>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                cod_cargo:
                                <asp:Label ID="cod_cargoLabel" runat="server" Text='<%# Eval("cod_cargo") %>' />
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
                        <asp:SqlDataSource ID="cargos_con" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
                    DeleteCommand="DELETE FROM [cargos] WHERE [cod_cargo] = @cod_cargo" 
                    InsertCommand="INSERT INTO [cargos] ([descripcion],[cod_empresa] ) VALUES (@descripcion, @cod_empresa)" 
                    SelectCommand="SELECT cod_cargo, descripcion FROM cargos WHERE (descripcion LIKE @descripcion + '%') and cod_empresa = @cod_empresa" 
                    
                    
                    
                            UpdateCommand="UPDATE [cargos] SET [descripcion] = @descripcion WHERE [cod_cargo] = @cod_cargo">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="txt_descripcion" Name="descripcion" PropertyName="Text" />
								<asp:SessionParameter DefaultValue="" Name="cod_empresa" SessionField="sv_empresa" />
                            </SelectParameters>
                            <DeleteParameters>
                                <asp:Parameter Name="cod_cargo" Type="Int16" />
                            </DeleteParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="descripcion" Type="String" />
                                <asp:Parameter Name="cod_cargo" Type="Int16" />
                            </UpdateParameters>
                            <InsertParameters>
                                <asp:Parameter Name="descripcion" Type="String" />
                                <asp:SessionParameter DefaultValue="" Name="cod_empresa" SessionField="sv_empresa" />
                            </InsertParameters>
                        </asp:SqlDataSource>
                        <br />
                        <br />
                    </td>
                    <td style="text-align: center" valign="top">
                        <table align="center" 
                    style="font-family: 'Trebuchet MS'; font-size: small">
                            <tr>
                                <td>
                                    Busque por Descripción:
                                </td>
                                <td style="text-align: left">
                                    <asp:TextBox ID="txt_descripcion" runat="server" AutoPostBack="True" 
                                Width="250px"></asp:TextBox>
                                </td>
                                <td style="text-align: left">
                                    <asp:ImageButton ID="ImageButton2" runat="server" 
                                ImageUrl="~/images/controles/find.png" ToolTip="Buscar" />
                                </td>
                            </tr>
                            <tr>
                                <td 
                            style="text-align: left; font-family: 'Trebuchet MS'; font-size: small;" 
                            colspan="3">
                                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" 
                    BorderWidth="1px" CellPadding="2" DataKeyNames="cod_cargo" 
                    DataSourceID="cargos_con" ForeColor="Black" GridLines="None" Width="100%" 
                                        style="text-align: center">
                                        <RowStyle HorizontalAlign="Left" />
                                        <Columns>
                                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                            ButtonType="Image" CancelImageUrl="~/images/controles/b_cancelar.gif" 
                            DeleteImageUrl="~/images/controles/b_eliminar.gif" 
                            EditImageUrl="~/images/controles/b_modificar.gif" 
                            UpdateImageUrl="~/images/controles/b_grabar.gif" />
                                            <asp:BoundField DataField="cod_cargo" HeaderText="Código" InsertVisible="False" 
                            ReadOnly="True" SortExpression="cod_cargo" >
                                                <ItemStyle HorizontalAlign="Center" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="descripcion" HeaderText="Descripción" 
                            SortExpression="descripcion" >
                                                <HeaderStyle HorizontalAlign="Left" />
                                            </asp:BoundField>
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
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        <br />
                        <br />
                        <br />
                    </td>
                </tr>
            </table>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

