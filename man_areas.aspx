<%@ Page Title="" Language="VB" MasterPageFile="~/menu_master.master" AutoEventWireup="false" CodeFile="man_areas.aspx.vb" Inherits="man_areas" %>

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
        .style6
        {
            width: 77px;
            text-align: right;
        }
        .style10
        {
            width: 422px;
        }
        .style13
        {
            width: 703px;
        }
        .style17
        {
            width: 248px;
        }
        .style18
        {
            width: 85px;
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
                                <td class="style18">
                                    &nbsp;</td>
                                <td style="font-family: 'Trebuchet MS'; font-size: large; font-weight: bolder; text-align: center;" 
                            class="style13" valign="top">
                                    &nbsp;Areas</td>
                                <td style="text-align: right">
                                    <asp:ImageButton ID="ImageButton2_salir" runat="server" 
                                ImageUrl="~/images/controles/salir32.png" 
                                PostBackUrl="~/home.aspx" ToolTip="Volver al Menu Principal" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td align="center" valign="top">
                        <br />
                        <br />
                        <asp:FormView ID="form_areas" runat="server" DataKeyNames="cod_area" 
                    DataSourceID="areas_con" DefaultMode="Insert" Width="100%">
                            <EditItemTemplate>
                                cod_area:
                                <asp:Label ID="cod_areaLabel1" runat="server" Text='<%# Eval("cod_area") %>' />
                                <br />
                                descripcion:
                                <asp:TextBox ID="descripcionTextBox" runat="server" 
                            Text='<%# Bind("descripcion") %>' />
                                <br />
                                cod_gerencia:
                                <asp:TextBox ID="cod_gerenciaTextBox" runat="server" 
                            Text='<%# Bind("cod_gerencia") %>' />
                                <br />
                                <asp:ImageButton ID="UpdateButton" runat="server" CausesValidation="True" 
                            CommandName="Update" Text="Update" />
                                &nbsp;<asp:ImageButton ID="UpdateCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <table align="center" 
                            style="font-family: 'Trebuchet MS'; font-size: small; height: 60px;" width="100%">
                                    <tr>
                                        <td class="style6">
                                            Descripción:</td>
                                        <td style="text-align: left">
                                            <asp:TextBox ID="descripcionTextBox" runat="server" 
                                        Text='<%# Bind("descripcion") %>' Width="98%" />
                                        </td>
                                        <td style="text-align: left" width="5">
                                            <asp:RequiredFieldValidator ID="rv_descripcion" runat="server" 
                                                ControlToValidate="descripcionTextBox" ErrorMessage="*" Enabled="False"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style6">
                                            Gerencia:</td>
                                        <td style="text-align: left">
                                            <asp:DropDownList ID="gerencias" runat="server" DataSourceID="gerencias_con" 
                                        DataTextField="descripcion" DataValueField="cod_gerencia" 
                                        SelectedValue='<%# Bind("cod_gerencia") %>' Width="100%">
                                            </asp:DropDownList>
                                        </td>
                                        <td style="text-align: left">
                                            &nbsp;</td>
                                    </tr>
                                </table>
                                <br />
                                <table align="center">
                                    <tr>
                                        <td>
                                            <asp:ImageButton ID="InsertButton" runat="server" 
                                        CausesValidation="True" CommandName="Insert" Height="48px" 
                                        ImageUrl="~/images/controles/add.png" Text="Insert" ToolTip="Agregar" 
                                        Width="48px" onclick="InsertButton_Click" />
                                        </td>
                                        <td width="150">
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
                                cod_area:
                                <asp:Label ID="cod_areaLabel" runat="server" Text='<%# Eval("cod_area") %>' />
                                <br />
                                descripcion:
                                <asp:Label ID="descripcionLabel" runat="server" 
                            Text='<%# Bind("descripcion") %>' />
                                <br />
                                cod_gerencia:
                                <asp:Label ID="cod_gerenciaLabel" runat="server" 
                            Text='<%# Bind("cod_gerencia") %>' />
                                <br />
                                <asp:ImageButton ID="EditButton" runat="server" CausesValidation="False" 
                            CommandName="Edit" Text="Edit" />
                                &nbsp;<asp:ImageButton ID="DeleteButton" runat="server" CausesValidation="False" 
                            CommandName="Delete" Text="Delete" />
                                &nbsp;<asp:ImageButton ID="NewButton" runat="server" CausesValidation="False" 
                            CommandName="New" Text="New" />
                            </ItemTemplate>
                        </asp:FormView>
                        <asp:SqlDataSource ID="areas_con" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
                    DeleteCommand="DELETE FROM [areas] WHERE [cod_area] = @cod_area" 
                    InsertCommand="INSERT INTO [areas] ([descripcion], [cod_gerencia], [cod_empresa]) VALUES (@descripcion, @cod_gerencia, @cod_empresa)" 
                    SelectCommand="SELECT areas.cod_area, areas.descripcion, areas.cod_gerencia, gerencias.descripcion AS gerencia FROM areas INNER JOIN gerencias ON areas.cod_gerencia = gerencias.cod_gerencia WHERE (areas.descripcion LIKE @descripcion + '%'
					and areas.cod_empresa = @cod_empresa)" 
                    
                    
                    
                            UpdateCommand="UPDATE [areas] SET [descripcion] = @descripcion, [cod_gerencia] = @cod_gerencia WHERE [cod_area] = @cod_area">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="txt_descripcion" Name="descripcion" PropertyName="Text" />
								<asp:SessionParameter DefaultValue="" Name="cod_empresa" SessionField="sv_empresa" />
                            </SelectParameters>
                            <DeleteParameters>
                                <asp:Parameter Name="cod_area" Type="Int16" />
                            </DeleteParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="descripcion" Type="String" />
                                <asp:Parameter Name="cod_gerencia" Type="Int16" />
                                <asp:Parameter Name="cod_area" Type="Int16" />
                            </UpdateParameters>
                            <InsertParameters>
                                <asp:Parameter Name="descripcion" Type="String" />
                                <asp:Parameter Name="cod_gerencia" Type="Int16" />
                                <asp:SessionParameter Name="cod_empresa" Type="Int16" SessionField="sv_empresa" /> 
                            </InsertParameters>
                        </asp:SqlDataSource>
                        <asp:SqlDataSource ID="gerencias_con" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
                    SelectCommand="SELECT [cod_gerencia], [descripcion] FROM [gerencias] where [cod_empresa] = @cod_empresa">
                            <SelectParameters>
                            <asp:SessionParameter Name="cod_empresa" Type="Int16" SessionField="sv_empresa" /> 
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <br />
                    </td>
                    <td align="center" valign="top" 
                style="font-family: 'Trebuchet MS'; font-size: small">
                        <br />
                        <table align="center" style="font-family: 'Trebuchet MS'; font-size: small">
                            <tr>
                                <td>
                                    Busque por Area:</td>
                                <td style="text-align: left">
                                    <asp:TextBox ID="txt_descripcion" runat="server" AutoPostBack="True" 
                                Width="300px"></asp:TextBox>
                                </td>
                                <td style="text-align: left">
                                    <asp:ImageButton ID="ImageButton1" runat="server" 
                                ImageUrl="~/images/controles/find.png" ToolTip="Buscar" />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3">
                                    <asp:DetailsView ID="vista_detalle_areas" runat="server" AutoGenerateRows="False" 
                    BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
                    CellPadding="2" DataKeyNames="cod_area" DataSourceID="areas_con" 
                    ForeColor="Black" GridLines="None" Height="50px" Width="100%" 
                    AllowPaging="True" style="text-align: center">
                                        <FooterStyle BackColor="Tan" />
                                        <CommandRowStyle HorizontalAlign="Left" />
                                        <RowStyle HorizontalAlign="Left" />
                                        <FieldHeaderStyle HorizontalAlign="Left" />
                                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                        HorizontalAlign="Left" />
                                        <Fields>
                                            <asp:BoundField DataField="cod_area" HeaderText="Código:" InsertVisible="False" 
                            ReadOnly="True" SortExpression="cod_area" >
                                                <HeaderStyle HorizontalAlign="Left" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="descripcion" HeaderText="Descripción:" 
                            SortExpression="descripcion" >
                                                <HeaderStyle HorizontalAlign="Left" />
                                            </asp:BoundField>
                                            <asp:TemplateField HeaderText="Gerencia:" SortExpression="gerencia">
                                                <EditItemTemplate>
                                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("gerencia") %>'></asp:Label>
                                                </EditItemTemplate>
                                                <InsertItemTemplate>
                                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("gerencia") %>'></asp:TextBox>
                                                </InsertItemTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("gerencia") %>'></asp:Label>
                                                </ItemTemplate>
                                                <HeaderStyle HorizontalAlign="Left" />
                                            </asp:TemplateField>
                                            <asp:TemplateField ShowHeader="False">
                                                <EditItemTemplate>
                                                    <asp:ImageButton ID="ImageButton3" runat="server" CausesValidation="True" 
                                    CommandName="Update" ImageUrl="~/images/controles/b_grabar.gif" 
                                    Text="Update" ToolTip="Guardar" />
                                                    &nbsp;<asp:ImageButton ID="ImageButton4" runat="server" CausesValidation="False" 
                                    CommandName="Cancel" ImageUrl="~/images/controles/b_cancelar.gif" 
                                    Text="Cancel" />
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <asp:ImageButton ID="ImageButton5" runat="server" CausesValidation="False" 
                                    CommandName="Edit" ImageUrl="~/images/controles/b_modificar.gif" 
                                    Text="Edit" />
                                                    &nbsp;<asp:ImageButton ID="ImageButton6" runat="server" CausesValidation="False" 
                                    CommandName="Delete" ImageUrl="~/images/controles/b_eliminar.gif" 
                                    Text="Delete" 
                                    onclientclick="return confirm('Está Seguro que desea eliminar esta Area?')" 
                                    ToolTip="Eliminar" />
                                                </ItemTemplate>
                                                <FooterStyle HorizontalAlign="Left" />
                                                <HeaderStyle HorizontalAlign="Left" />
                                            </asp:TemplateField>
                                            <asp:TemplateField>
                                                <HeaderStyle Width="80px" />
                                            </asp:TemplateField>
                                        </Fields>
                                        <HeaderStyle BackColor="Tan" Font-Bold="True" HorizontalAlign="Left" />
                                        <EditRowStyle BackColor="LightGoldenrodYellow" ForeColor="Black" 
                        HorizontalAlign="Left" />
                                        <AlternatingRowStyle BackColor="PaleGoldenrod" HorizontalAlign="Left" />
                                    </asp:DetailsView>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

