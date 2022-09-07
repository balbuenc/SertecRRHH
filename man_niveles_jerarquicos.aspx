<%@ Page Title="" Language="VB" MasterPageFile="~/menu_master.master" AutoEventWireup="false" CodeFile="man_niveles_jerarquicos.aspx.vb" Inherits="man_niveles_jerarquicos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <table align="center" width="90%">
                <tr>
                    <td colspan="2">
                        <table align="center" width="100%">
                            <tr>
                                <td style="text-align: right; font-family: 'Trebuchet MS'; font-size: large; font-weight: bolder;" 
                                    width="80">
                                    &nbsp;</td>
                                <td style="text-align: center; font-family: 'Trebuchet MS'; font-size: large; font-weight: bolder;" 
                            valign="top">
                                    Niveles Jerarquicos</td>
                                <td style="text-align: right; font-family: 'Trebuchet MS'; font-size: large; font-weight: bolder;" 
                                    width="180">
                                    <asp:ImageButton ID="ImageButton3" runat="server" 
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
                        <asp:FormView ID="form_niveles_jerarquicos" runat="server" 
                            DataKeyNames="cod_nivel_jerarquico" DataSourceID="niveles_jerarquicos_con" 
                            DefaultMode="Insert" style="text-align: center">
                            <EditItemTemplate>
                                cod_nivel_jerarquico:
                                <asp:Label ID="cod_nivel_jerarquicoLabel1" runat="server" 
                                    Text='<%# Eval("cod_nivel_jerarquico") %>' />
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
                                <table align="center" width="100%">
                                    <tr>
                                        <td style="text-align: right">
                                            &nbsp;</td>
                                        <td width="201" height="10">
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right">
                                            Descripción:
                                        </td>
                                        <td width="201">
                                            <asp:TextBox ID="descripcionTextBox" runat="server" 
                                                Text='<%# Bind("descripcion") %>' Width="200px" />
                                        </td>
                                        <td>
                                            <asp:RequiredFieldValidator ID="rv_descripcion" runat="server" 
                                                ControlToValidate="descripcionTextBox" Enabled="False" ErrorMessage="*" 
                                                Font-Size="X-Small"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            <asp:TextBox ID="cod_empresaTextBox" runat="server" 
                                                Text='<%# Bind("cod_empresa") %>' Height="16px" Visible="False" />
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                </table>
                                <br />
                                <table align="center">
                                    <tr>
                                        <td>
                                            <asp:ImageButton ID="InsertButton" runat="server" CausesValidation="True" 
                                                CommandName="Insert" ImageUrl="~/images/controles/add.png" 
                                                onclick="InsertButton_Click" Text="Insert" />
                                        </td>
                                        <td width="100">
                                            &nbsp;</td>
                                        <td>
                                            <asp:ImageButton ID="InsertCancelButton" runat="server" 
                                                CausesValidation="False" CommandName="Cancel" 
                                                ImageUrl="~/images/controles/cancel.png" Text="Cancel" />
                                        </td>
                                    </tr>
                                </table>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                cod_nivel_jerarquico:
                                <asp:Label ID="cod_nivel_jerarquicoLabel" runat="server" 
                                    Text='<%# Eval("cod_nivel_jerarquico") %>' />
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
                        <asp:SqlDataSource ID="niveles_jerarquicos_con" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
                    SelectCommand="SELECT cod_nivel_jerarquico, cod_empresa, descripcion FROM niveles_jerarquicos WHERE (cod_empresa = @cod_empresa) AND (descripcion LIKE @txt_busca + '%')" 
                            DeleteCommand="DELETE FROM [niveles_jerarquicos] WHERE [cod_nivel_jerarquico] = @cod_nivel_jerarquico" 
                            InsertCommand="INSERT INTO [niveles_jerarquicos] ([cod_empresa], [descripcion]) VALUES (@cod_empresa, @descripcion)" 
                            
                            UpdateCommand="UPDATE niveles_jerarquicos SET cod_empresa = @cod_empresa, descripcion = @descripcion WHERE (cod_nivel_jerarquico = @cod_nivel_jerarquico) AND (cod_empresa = @cod_empresa)">
                            <SelectParameters>
                                <asp:SessionParameter Name="cod_empresa" SessionField="sv_empresa" />
                                <asp:ControlParameter ControlID="txt_busca" Name="txt_busca" 
                                    PropertyName="Text" />
                            </SelectParameters>
                            <DeleteParameters>
                                <asp:Parameter Name="cod_nivel_jerarquico" Type="Int16" />
                            </DeleteParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="cod_empresa" Type="Int16" />
                                <asp:Parameter Name="descripcion" Type="String" />
                                <asp:Parameter Name="cod_nivel_jerarquico" Type="Int16" />
                            </UpdateParameters>
                            <InsertParameters>
                                <asp:Parameter Name="cod_empresa" Type="Int16" />
                                <asp:Parameter Name="descripcion" Type="String" />
                            </InsertParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td style="text-align: center; font-family: 'Trebuchet MS'; font-size: small;" 
                valign="top" align="center">
                        <table align="center">
                            <tr>
                                <td align="center" style="text-align: left">
                                    Busque por Descripción:</td>
                                <td align="left">
                                    <asp:TextBox ID="txt_busca" runat="server" Width="200px" AutoPostBack="True"></asp:TextBox>
                                </td>
                                <td style="text-align: left; font-family: 'Trebuchet MS'; font-size: small;">
                                    <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/controles/find.png" 
                                style="margin-left: 0px" ToolTip="Buscar" />
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="3">
                                    <asp:GridView ID="grid_niveles_jerarquicos" runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" 
                    BorderWidth="1px" CellPadding="2" DataKeyNames="cod_nivel_jerarquico" 
                    DataSourceID="niveles_jerarquicos_con" ForeColor="Black" GridLines="None" Width="100%">
                                        <Columns>
                                            <asp:TemplateField ShowHeader="False">
                                                <EditItemTemplate>
                                                    <asp:ImageButton ID="ImageButton1_grid" runat="server" CausesValidation="True" 
                                                        CommandName="Update" ImageUrl="~/images/controles/b_grabar.gif" 
                                                        onclick="ImageButton1_grid_Click" Text="Update" ToolTip="Guardar" />
                                                    &nbsp;<asp:ImageButton ID="ImageButton2" runat="server" CausesValidation="False" 
                                                        CommandName="Cancel" ImageUrl="~/images/controles/b_cancelar.gif" 
                                                        Text="Cancel" />
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <asp:ImageButton ID="ImageButton1" runat="server" CausesValidation="False" 
                                                        CommandName="Edit" ImageUrl="~/images/controles/b_modificar.gif" Text="Edit" />
                                                    &nbsp;<asp:ImageButton ID="ImageButton2" runat="server" CausesValidation="False" 
                                                        CommandName="Delete" ImageUrl="~/images/controles/b_eliminar.gif" 
                                                        Text="Delete" />
                                                </ItemTemplate>
                                                <HeaderStyle HorizontalAlign="Left" Width="60px" />
                                                <ItemStyle HorizontalAlign="Left" Width="60px" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Código" InsertVisible="False" 
                                                SortExpression="cod_nivel_jerarquico">
                                                <EditItemTemplate>
                                                    <asp:Label ID="lbl_cod_nivel_jerarquico_edit" runat="server" 
                                                        Text='<%# Eval("cod_nivel_jerarquico") %>'></asp:Label>
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="Label1" runat="server" 
                                                        Text='<%# Bind("cod_nivel_jerarquico") %>'></asp:Label>
                                                </ItemTemplate>
                                                <HeaderStyle HorizontalAlign="Center" />
                                                <ItemStyle HorizontalAlign="Center" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="cod_empresa" ShowHeader="False" 
                                                SortExpression="cod_empresa" Visible="False">
                                                <EditItemTemplate>
                                                    <asp:TextBox ID="txt_empresa_edit" runat="server" 
                                                        Text='<%# Bind("cod_empresa") %>' Visible="False"></asp:TextBox>
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("cod_empresa") %>' 
                                                        Visible="False"></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Descripción" SortExpression="descripcion">
                                                <EditItemTemplate>
                                                    <table>
                                                        <tr>
                                                            <td>
                                                                <asp:TextBox ID="txt_descripcion_edit" runat="server" 
                                                                    Text='<%# Bind("descripcion") %>'></asp:TextBox>
                                                            </td>
                                                            <td>
                                                                <asp:RequiredFieldValidator ID="rv_grid_descripcion" runat="server" 
                                                                    ControlToValidate="txt_descripcion_edit" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("descripcion") %>'></asp:Label>
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
                    </td>
                </tr>
            </table>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

