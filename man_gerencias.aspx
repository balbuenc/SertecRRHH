<%@ Page Title="" Language="VB" MasterPageFile="~/menu_master.master" AutoEventWireup="false" CodeFile="man_gerencias.aspx.vb" Inherits="man_gerencias" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
            height: 372px;
        }
        .style4
        {
            width: 100%;
            height: 1px;
        }
        .style40
        {
            height: 50px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <table align="center" class="style3">
                <tr>
                    <td colspan="2" style="text-align: center" class="style40">
                        <table align="center" class="style4">
                            <tr>
                                <td style="font-family: 'Trebuchet MS'; font-size: large; font-weight: bolder; text-align: right;" 
                                    width="20">
                                </td>
                                <td style="font-family: 'Trebuchet MS'; font-size: large; font-weight: bolder; text-align: center;" 
                            valign="top">
                                    Gerencias</td>
                                <td style="font-family: 'Trebuchet MS'; font-size: large; font-weight: bolder; text-align: right;" 
                                    width="150">
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
                valign="top" width="450">
                        <br />
                        <asp:FormView ID="form_gerencias" runat="server" DataKeyNames="cod_gerencia" 
                    DataSourceID="Gerencias" DefaultMode="Insert">
                            <EditItemTemplate>
                                <table align="center" class="style18">
                                    <tr>
                                        <td class="style19">
                                            cod_gerencia:
                                        </td>
                                        <td class="style20">
                                            <asp:Label ID="cod_gerenciaLabel1" runat="server" 
                                        Text='<%# Eval("cod_gerencia") %>' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style19">
                                            cod_centro_costo:
                                        </td>
                                        <td class="style20">
                                            <asp:DropDownList ID="DropDownList1" runat="server" 
                                        DataSourceID="centro_costo_con" DataTextField="descripcion" 
                                        DataValueField="cod_centro_costo" Height="16px" 
                                        SelectedValue='<%# Bind("cod_centro_costo") %>' Width="175px">
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style19">
                                            descripcion:
                                        </td>
                                        <td class="style20">
                                            <asp:TextBox ID="descripcionTextBox" runat="server" 
                                        Text='<%# Bind("descripcion") %>' />
                                        </td>
                                    </tr>
                                </table>
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <asp:ImageButton ID="UpdateButton" runat="server" CausesValidation="True" 
                            CommandName="Update" Text="Update" />
                                &nbsp;<asp:ImageButton ID="UpdateCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <table align="center" 
                            style="font-family: 'Trebuchet MS'; font-size: small">
                                    <tr>
                                        <td style="text-align: right">
                                            &nbsp;</td>
                                        <td width="250">
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right">
                                            Descripción:</td>
                                        <td style="text-align: left">
                                            <asp:TextBox ID="descripcionTextBox" runat="server" 
                                        Text='<%# Bind("descripcion") %>' Width="244px" />
                                        </td>
                                        <td style="text-align: left" width="5">
                                            <asp:RequiredFieldValidator ID="rv_descripcion" runat="server" 
                                                ControlToValidate="descripcionTextBox" Enabled="False" 
                                        ErrorMessage="*"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Centro de Costo:</td>
                                        <td style="text-align: left">
                                            <asp:DropDownList ID="DropDownList3" runat="server" 
                                                DataSourceID="centro_costo_con" DataTextField="descripcion" 
                                                DataValueField="cod_centro_costo" 
                                                SelectedValue='<%# Bind("cod_centro_costo") %>' Width="250px">
                                            </asp:DropDownList>
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                </table>
                                <br />
                                <table align="center" class="style16">
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
                                <br />
                                <table align="center" class="style21">
                                    <tr>
                                        <td class="style22">
                                            cod_gerencia:
                                        </td>
                                        <td>
                                            <asp:Label ID="cod_gerenciaLabel" runat="server" 
                                        Text='<%# Eval("cod_gerencia") %>' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style22">
                                            cod_centro_costo:
                                        </td>
                                        <td>
                                            <asp:Label ID="centro_costoLabel" runat="server" 
                                        Text='<%# Bind("centro_costo") %>' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style22">
                                            descripcion:
                                        </td>
                                        <td>
                                            <asp:Label ID="descripcionLabel" runat="server" 
                                        Text='<%# Bind("descripcion") %>' />
                                        </td>
                                    </tr>
                                </table>
                                <br />
                                <br />
                                <asp:ImageButton ID="EditButton" runat="server" CausesValidation="False" 
                            CommandName="Edit" Text="Edit" />
                                &nbsp;<asp:ImageButton ID="DeleteButton" runat="server" CausesValidation="False" 
                            CommandName="Delete" Text="Delete" />
                                &nbsp;<asp:ImageButton ID="NewButton" runat="server" CausesValidation="False" 
                            CommandName="New" Text="New" />
                            </ItemTemplate>
                        </asp:FormView>
                        <asp:SqlDataSource ID="Gerencias" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
                    DeleteCommand="DELETE FROM [gerencias] WHERE [cod_gerencia] = @cod_gerencia" 
                    InsertCommand="INSERT INTO [gerencias] ([cod_centro_costo], [descripcion], [cod_empresa]) VALUES (CASE @cod_centro_costo WHEN 0 THEN NULL ELSE @cod_centro_costo END, @descripcion, 1)" 
                    SelectCommand="SELECT gerencias.cod_gerencia, 
									ISNULL(gerencias.cod_centro_costo, 0) AS cod_centro_costo, 
									gerencias.descripcion, centros_costos.descripcion AS centro_costo 
									FROM gerencias LEFT OUTER JOIN 
									centros_costos ON gerencias.cod_centro_costo = centros_costos.cod_centro_costo 
									WHERE (gerencias.descripcion LIKE @descripcion + '%'
									and gerencias.cod_empresa = @cod_empresa)" 
                    UpdateCommand="UPDATE [gerencias] 
									SET [cod_centro_costo] = CASE @cod_centro_costo WHEN 0 THEN NULL ELSE @cod_centro_costo END, 
									[descripcion] = @descripcion 
									WHERE [cod_gerencia] = @cod_gerencia">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="txt_descripcion" Name="descripcion" PropertyName="Text" />
								<asp:SessionParameter DefaultValue="" Name="cod_empresa" SessionField="sv_empresa" />
                            </SelectParameters>
                            <DeleteParameters>
                                <asp:Parameter Name="cod_gerencia" Type="Int16" />
                            </DeleteParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="cod_centro_costo" Type="Int16" />
                                <asp:Parameter Name="descripcion" Type="String" />
                                <asp:Parameter Name="cod_gerencia" Type="Int16" />
                            </UpdateParameters>
                            <InsertParameters>
                                <asp:Parameter Name="cod_centro_costo" Type="Int16" />
                                <asp:Parameter Name="descripcion" Type="String" />
                            </InsertParameters>
                        </asp:SqlDataSource>
                        <asp:SqlDataSource ID="centro_costo_con" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
                    
                    
                    SelectCommand="Select 0 as cod_centro_costo, 'No asignado' AS descripcion, cod_empresa from centros_costos
UNION
Select cod_centro_costo, descripcion, cod_empresa from centros_costos"></asp:SqlDataSource>
                    </td>
                    <td align="center" valign="top" 
                style="font-family: 'Trebuchet MS'; font-size: small; text-align: left;">
                        <br />
                        <table align="center" 
                    style="font-family: 'Trebuchet MS'; font-size: small">
                            <tr>
                                <td style="text-align: left">
                                    Busque por Descripción:</td>
                                <td align="center">
                                    <asp:TextBox ID="txt_descripcion" runat="server" Width="300px" 
                                        AutoPostBack="True"></asp:TextBox>
                                </td>
                                <td style="text-align: left">
                                    <asp:ImageButton ID="ImageButton2" runat="server" 
                                ImageUrl="~/images/controles/find.png" ToolTip="Buscar" />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3">
                                    <asp:DetailsView ID="grid_gerencias" runat="server" AllowPaging="True" 
                    AutoGenerateRows="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" 
                    BorderWidth="1px" CellPadding="2" DataKeyNames="cod_gerencia" 
                    DataSourceID="Gerencias" ForeColor="Black" GridLines="None" 
                    Width="100%" HorizontalAlign="Left" style="text-align: right">
                                        <FooterStyle BackColor="Tan" />
                                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                        HorizontalAlign="Left" />
                                        <Fields>
                                            <asp:TemplateField HeaderText="Código:" InsertVisible="False" 
                            SortExpression="cod_gerencia">
                                                <EditItemTemplate>
                                                    <table align="left" class="style31">
                                                        <tr>
                                                            <td>
                                                                &nbsp;</td>
                                                            <td>
                                                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("cod_gerencia") %>'></asp:Label>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <table align="left" class="style31">
                                                        <tr>
                                                            <td align="left" style="font-family: 'Trebuchet MS'; font-size: small">
                                                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("cod_gerencia") %>'></asp:Label>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </ItemTemplate>
                                                <FooterStyle HorizontalAlign="Left" />
                                                <HeaderStyle HorizontalAlign="Left" Width="80px" />
                                                <ItemStyle HorizontalAlign="Left" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Descripción:" SortExpression="descripcion">
                                                <EditItemTemplate>
                                                    <asp:TextBox ID="txt_descripcion_edit" runat="server" 
                                                        Text='<%# Bind("descripcion") %>' Width="300px"></asp:TextBox>
                                                </EditItemTemplate>
                                                <InsertItemTemplate>
                                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("descripcion") %>'></asp:TextBox>
                                                </InsertItemTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("descripcion") %>'></asp:Label>
                                                </ItemTemplate>
                                                <FooterStyle HorizontalAlign="Left" />
                                                <HeaderStyle HorizontalAlign="Left" />
                                                <ItemStyle HorizontalAlign="Left" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Centro Costo:" SortExpression="centro_costo">
                                                <EditItemTemplate>
                                                    <asp:DropDownList ID="ddl_grid_centro_costo_edit" runat="server" 
                                                        DataSourceID="centro_costo_con" DataTextField="descripcion" 
                                                        DataValueField="cod_centro_costo" 
                                                        SelectedValue='<%# Bind("cod_centro_costo") %>' Width="306px">
                                                    </asp:DropDownList>
                                                </EditItemTemplate>
                                                <InsertItemTemplate>
                                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("centro_costo") %>'></asp:TextBox>
                                                </InsertItemTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("centro_costo") %>'></asp:Label>
                                                </ItemTemplate>
                                                <FooterStyle HorizontalAlign="Left" />
                                                <HeaderStyle HorizontalAlign="Left" />
                                                <ItemStyle HorizontalAlign="Left" />
                                            </asp:TemplateField>
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
                                                <ItemStyle HorizontalAlign="Left" />
                                            </asp:TemplateField>
                                            <asp:TemplateField>
                                                <HeaderStyle HorizontalAlign="Right" />
                                                <ItemStyle HorizontalAlign="Left" Width="335px" Wrap="False" />
                                            </asp:TemplateField>
                                        </Fields>
                                        <HeaderStyle BackColor="Tan" Font-Bold="True" />
                                        <EditRowStyle BackColor="LightGoldenrodYellow" ForeColor="Black" 
                        HorizontalAlign="Left" />
                                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                                    </asp:DetailsView>
                                </td>
                            </tr>
                        </table>
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

