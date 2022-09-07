<%@ Page Title="" Language="VB" MasterPageFile="~/menu_master.master" AutoEventWireup="false" CodeFile="man_contratos.aspx.vb" Inherits="man_contratos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
            height: 426px;
        }
        .style4
        {
            width: 100%;
            height: 49px;
        }
        .style17
        {
            width: 40px;
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
                                    width="150">
                                    &nbsp;</td>
                                <td style="text-align: center; font-family: 'Trebuchet MS'; font-size: large; font-weight: bolder;" 
                            valign="top">
                                    Contratos</td>
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
                    <td align="right" valign="top" 
                style="text-align: center" width="450">
                        <br />
                        <asp:FormView ID="form_contratos" runat="server" DataKeyNames="cod_contrato" 
                    DataSourceID="contratos_con" DefaultMode="Insert" Width="100%" 
                            style="text-align: center">
                            <EditItemTemplate>
                                cod_contrato:
                                <asp:Label ID="cod_contratoLabel1" runat="server" 
                            Text='<%# Eval("cod_contrato") %>' />
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
                            style="font-family: 'Trebuchet MS'; font-size: small; width: 272px;" width="100%">
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right; font-family: 'Trebuchet MS'; font-size: small;">
                                            Descripción:
                                        </td>
                                        <td style="text-align: left" width="300px">
                                            <asp:TextBox ID="descripcionTextBox" runat="server" 
                                        Text='<%# Bind("descripcion") %>' Width="300px" />
                                        </td>
                                        <td style="text-align: left" width="5">
                                            <asp:RequiredFieldValidator ID="rv_descripcion" runat="server" 
                                                ControlToValidate="descripcionTextBox" Enabled="False" 
                                        ErrorMessage="*"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                </table>
                                <br />
                                <table align="center">
                                    <tr>
                                        <td style="text-align: right">
                                            <asp:ImageButton ID="InsertButton" runat="server" CausesValidation="True" 
                                        CommandName="Insert" Text="Insert" ImageUrl="~/images/controles/add.png" 
                                        ToolTip="Agregar" Width="48px" 
                                        onclick="InsertButton_Click" />
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
                                cod_contrato:
                                <asp:Label ID="cod_contratoLabel" runat="server" 
                            Text='<%# Eval("cod_contrato") %>' />
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
                        <asp:SqlDataSource ID="contratos_con" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
                    DeleteCommand="DELETE FROM [contratos] WHERE [cod_contrato] = @cod_contrato" 
                    InsertCommand="INSERT INTO [contratos] ([descripcion]) VALUES (@descripcion)" 
                    SelectCommand="SELECT cod_contrato, descripcion FROM contratos WHERE (descripcion LIKE @descripcion + '%') and cod_empresa = @cod_empresa" 
                    
                    
                    
                            UpdateCommand="UPDATE [contratos] SET [descripcion] = @descripcion WHERE [cod_contrato] = @cod_contrato">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="txt_descripcion" Name="descripcion" PropertyName="Text" />
								<asp:SessionParameter DefaultValue="" Name="cod_empresa" SessionField="sv_empresa" />

                            </SelectParameters>
                            <DeleteParameters>
                                <asp:Parameter Name="cod_contrato" Type="Int16" />
                            </DeleteParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="descripcion" Type="String" />
                                <asp:Parameter Name="cod_contrato" Type="Int16" />
                            </UpdateParameters>
                            <InsertParameters>
                                <asp:Parameter Name="descripcion" Type="String" />
                            </InsertParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td align="center" valign="top" 
                style="font-family: 'Trebuchet MS'; font-size: small">
                        <br />
                        <table align="center" 
                    style="font-family: 'Trebuchet MS'; font-size: small; height: 54px;">
                            <tr>
                                <td align="center">
                                    Busque por Descripción:</td>
                                <td>
                                    <asp:TextBox ID="txt_descripcion" runat="server" AutoPostBack="True" 
                                Width="195px"></asp:TextBox>
                                </td>
                                <td class="style17" valign="top">
                                    <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/controles/find.png" 
                                style="margin-left: 0px" Width="48px" ToolTip="Buscar" Height="48px" />
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="3">
                                    <asp:GridView ID="grid_contratos" runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" 
                    BorderWidth="1px" CellPadding="2" DataKeyNames="cod_contrato" 
                    DataSourceID="contratos_con" ForeColor="Black" GridLines="None" 
                    Width="100%" style="text-align: center" Height="253px">
                                        <Columns>
                                            <asp:CommandField ShowEditButton="True" 
                            ButtonType="Image" CancelImageUrl="~/images/controles/b_cancelar.gif" 
                            DeleteImageUrl="~/images/controles/b_eliminar.gif" 
                            EditImageUrl="~/images/controles/b_modificar.gif" 
                            UpdateImageUrl="~/images/controles/b_grabar.gif" >
                                                <HeaderStyle HorizontalAlign="Left" Width="50px" />
                                                <ItemStyle HorizontalAlign="Left" Width="50px" />
                                            </asp:CommandField>
                                            <asp:BoundField DataField="cod_contrato" HeaderText="Código" 
                            InsertVisible="False" ReadOnly="True" SortExpression="cod_contrato" >
                                                <HeaderStyle HorizontalAlign="Center" Width="100px" />
                                                <ItemStyle HorizontalAlign="Center" Width="100px" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="descripcion" HeaderText="Descripción" 
                            SortExpression="descripcion" >
                                                <HeaderStyle HorizontalAlign="Left" />
                                                <ItemStyle HorizontalAlign="Left" />
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
                        <br />
                        <br />
                        <br />
                    </td>
                </tr>
            </table>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

