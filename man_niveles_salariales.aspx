<%@ Page Title="" Language="VB" MasterPageFile="~/menu_master.master" AutoEventWireup="false" CodeFile="man_niveles_salariales.aspx.vb" Inherits="man_niveles_salariales" %>

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
        .style5
        {
        }
        .style13
        {
            width: 153px;
            text-align: right;
        }
        .style14
        {
            text-align: left;
        }
        .style17
        {
            width: 15%;
        }
        .style18
        {
            width: 398px;
        }
        .style19
        {
            width: 246px;
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
                                <td style="font-family: 'Trebuchet MS'; font-size: large; font-weight: bolder; text-align: right;" 
                            width="100">
                                    &nbsp;</td>
                                <td 
                            style="font-family: 'Trebuchet MS'; font-size: large; font-weight: bolder; text-align: center;" 
                            valign="top">
                                    Niveles Salariales</td>
                                <td style="text-align: right" width="200">
                                    <asp:ImageButton ID="ImageButton1" runat="server" 
                                ImageUrl="~/images/controles/salir32.png" PostBackUrl="~/home.aspx" 
                                ToolTip="Volver al Menu Principal" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td align="center" valign="top" width="500">
                        <asp:FormView ID="form_nivel_salarial" runat="server" DataKeyNames="cod_nivel_salarial" 
                    DataSourceID="niveles_salariales_con" Width="95%" DefaultMode="Insert">
                            <EditItemTemplate>
                                <table align="center" class="style9">
                                    <tr>
                                        <td class="style10">
                                            cod_nivel_salarial:
                                        </td>
                                        <td class="style11">
                                            <asp:Label ID="cod_nivel_salarialLabel1" runat="server" 
                                        Text='<%# Eval("cod_nivel_salarial") %>' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style10">
                                            cod_empresa:
                                        </td>
                                        <td class="style11">
                                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="empresas_con" 
                                        DataTextField="descripcion" DataValueField="cod_empresa" 
                                        SelectedValue='<%# Bind("cod_empresa") %>' Width="130px">
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style10">
                                            cod_moneda:
                                        </td>
                                        <td class="style11">
                                            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="monedas_con" 
                                        DataTextField="descripcion" DataValueField="cod_moneda" 
                                        SelectedValue='<%# Bind("cod_moneda") %>' Width="130px">
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style10">
                                            descripcion:
                                        </td>
                                        <td class="style11">
                                            <asp:TextBox ID="descripcionTextBox" runat="server" 
                                        Text='<%# Bind("descripcion") %>' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style10">
                                            monto_minimo_local:
                                        </td>
                                        <td class="style11">
                                            <asp:TextBox ID="monto_minimo_localTextBox" runat="server" 
                                        Text='<%# Bind("monto_minimo_local") %>' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style10">
                                            monto_maximo_local:
                                        </td>
                                        <td class="style11">
                                            <asp:TextBox ID="monto_maximo_localTextBox" runat="server" 
                                        Text='<%# Bind("monto_maximo_local") %>' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style10">
                                            monto_minimo_extranjera:
                                        </td>
                                        <td class="style11">
                                            <asp:TextBox ID="monto_minimo_extranjeraTextBox" runat="server" 
                                        Text='<%# Bind("monto_minimo_extranjera") %>' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style10">
                                            monto_maximo_extranjera:
                                        </td>
                                        <td class="style11">
                                            <asp:TextBox ID="monto_maximo_extranjeraTextBox" runat="server" 
                                        Text='<%# Bind("monto_maximo_extranjera") %>' />
                                        </td>
                                    </tr>
                                </table>
                                <br />
                                <br />
                                <asp:ImageButton ID="UpdateButton" runat="server" CausesValidation="True" 
                            CommandName="Update" Text="Update" />
                                &nbsp;<asp:ImageButton ID="UpdateCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <table align="center">
                                    <tr>
                                        <td style="font-family: 'Trebuchet MS'; font-size: small">
                                            &nbsp;</td>
                                        <td class="style14">
                                            &nbsp;</td>
                                        <td class="style14">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style13" style="font-family: 'Trebuchet MS'; font-size: small">
                                            Moneda:</td>
                                        <td class="style14">
                                            <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="monedas_con" 
                                        DataTextField="descripcion" DataValueField="cod_moneda" 
                                        SelectedValue='<%# Bind("cod_moneda") %>' Width="205px">
                                            </asp:DropDownList>
                                        </td>
                                        <td class="style14">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style13" style="font-family: 'Trebuchet MS'; font-size: small">
                                            Descripción:</td>
                                        <td>
                                            <asp:TextBox ID="descripcionTextBox" runat="server" 
                                        Text='<%# Bind("descripcion") %>' Width="200px" />
                                        </td>
                                        <td>
                                            <asp:RequiredFieldValidator ID="rv_descripcion" runat="server" 
                                        ControlToValidate="descripcionTextBox" Enabled="False" ErrorMessage="*" 
                                        Font-Size="X-Small" Width="5px"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style13" style="font-family: 'Trebuchet MS'; font-size: small">
                                            Monto Minimo Local:</td>
                                        <td>
                                            <asp:TextBox ID="monto_minimo_localTextBox" runat="server" 
                                        Text='<%# Bind("monto_minimo_local") %>' Width="200px" />
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style13" style="font-family: 'Trebuchet MS'; font-size: small">
                                            Monto Máximo Local:</td>
                                        <td>
                                            <asp:TextBox ID="monto_maximo_localTextBox" runat="server" 
                                        Text='<%# Bind("monto_maximo_local") %>' Width="200px" />
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style13" style="font-family: 'Trebuchet MS'; font-size: small">
                                            Monto Mín. Extranjera:</td>
                                        <td>
                                            <asp:TextBox ID="monto_minimo_extranjeraTextBox" runat="server" 
                                        Text='<%# Bind("monto_minimo_extranjera") %>' Width="200px" />
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style13" style="font-family: 'Trebuchet MS'; font-size: small">
                                            Monto Máx. Extranjera:</td>
                                        <td>
                                            <asp:TextBox ID="monto_maximo_extranjeraTextBox" runat="server" 
                                        Text='<%# Bind("monto_maximo_extranjera") %>' Width="200px" />
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="font-family: 'Trebuchet MS'; font-size: small">
                                            &nbsp;</td>
                                        <td>
                                            <asp:TextBox ID="txt_empresa" runat="server" Text='<%# Bind("cod_empresa") %>' 
                                        Visible="False"></asp:TextBox>
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                </table>
                                <br />
                                <table align="center">
                                    <tr>
                                        <td style="text-align: right">
                                            <asp:ImageButton ID="InsertButton" runat="server" CausesValidation="True" 
                                        CommandName="Insert" Text="Insert" ImageUrl="~/images/controles/add.png" 
                                        ToolTip="Agregar" onclick="InsertButton_Click" />
                                        </td>
                                        <td width="100">
                                            &nbsp;</td>
                                        <td style="text-align: right">
                                            <asp:ImageButton ID="InsertCancelButton" runat="server" CausesValidation="False" 
                                        CommandName="Cancel" Text="Cancel" 
                                        ImageUrl="~/images/controles/cancel.png" ToolTip="Cancelar Inserción" 
                                        style="margin-left: 34px" />
                                        </td>
                                    </tr>
                                </table>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <table align="center" class="style6">
                                    <tr>
                                        <td class="style7">
                                            cod_nivel_salarial:
                                        </td>
                                        <td class="style8">
                                            <asp:Label ID="cod_nivel_salarialLabel" runat="server" 
                                        Text='<%# Eval("cod_nivel_salarial") %>' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style7">
                                            cod_empresa:
                                        </td>
                                        <td class="style8">
                                            <asp:Label ID="empresaLabel" runat="server" Text='<%# Bind("empresa") %>' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style7">
                                            cod_moneda</td>
                                        <td class="style8">
                                            <asp:Label ID="cod_monedaLabel" runat="server" Text='<%# Bind("moneda") %>' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style7">
                                            descripcion:
                                        </td>
                                        <td class="style8">
                                            <asp:Label ID="descripcionLabel" runat="server" 
                                        Text='<%# Bind("descripcion") %>' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style7">
                                            monto_minimo_local:
                                        </td>
                                        <td class="style8">
                                            <asp:Label ID="monto_minimo_localLabel" runat="server" 
                                        Text='<%# Bind("monto_minimo_local") %>' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style7">
                                            monto_maximo_local:
                                        </td>
                                        <td class="style8">
                                            <asp:Label ID="monto_maximo_localLabel" runat="server" 
                                        Text='<%# Bind("monto_maximo_local") %>' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style7">
                                            monto_minimo_extranjera:
                                        </td>
                                        <td class="style8">
                                            <asp:Label ID="monto_minimo_extranjeraLabel" runat="server" 
                                        Text='<%# Bind("monto_minimo_extranjera") %>' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style7">
                                            monto_maximo_extranjera:
                                        </td>
                                        <td class="style8">
                                            <asp:Label ID="monto_maximo_extranjeraLabel" runat="server" 
                                        Text='<%# Bind("monto_maximo_extranjera") %>' />
                                        </td>
                                    </tr>
                                </table>
                                <br />
                                &nbsp;<br />
                                <asp:ImageButton ID="EditButton" runat="server" CausesValidation="False" 
                            CommandName="Edit" Text="Edit" />
                                &nbsp;<asp:ImageButton ID="DeleteButton" runat="server" CausesValidation="False" 
                            CommandName="Delete" Text="Delete" />
                                &nbsp;<asp:ImageButton ID="NewButton" runat="server" CausesValidation="False" 
                            CommandName="New" Text="New" />
                            </ItemTemplate>
                        </asp:FormView>
                        <asp:SqlDataSource ID="niveles_salariales_con" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
                    DeleteCommand="DELETE FROM [niveles_salariales] WHERE [cod_nivel_salarial] = @cod_nivel_salarial" 
                    InsertCommand="INSERT INTO [niveles_salariales] ([cod_empresa], [cod_moneda], [descripcion], [monto_minimo_local], [monto_maximo_local], [monto_minimo_extranjera], [monto_maximo_extranjera]) VALUES (@cod_empresa, @cod_moneda, @descripcion, @monto_minimo_local, @monto_maximo_local, @monto_minimo_extranjera, @monto_maximo_extranjera)" 
                    SelectCommand="SELECT niveles_salariales.cod_nivel_salarial, niveles_salariales.cod_empresa, niveles_salariales.cod_moneda, niveles_salariales.descripcion, niveles_salariales.monto_minimo_local, niveles_salariales.monto_maximo_local, niveles_salariales.monto_minimo_extranjera, niveles_salariales.monto_maximo_extranjera, empresas.descripcion AS empresa, monedas.descripcion AS moneda FROM niveles_salariales LEFT OUTER JOIN monedas ON niveles_salariales.cod_moneda = monedas.cod_moneda LEFT OUTER JOIN empresas ON niveles_salariales.cod_empresa = empresas.cod_empresa" 
                    
                    
                            UpdateCommand="UPDATE [niveles_salariales] SET [cod_empresa] = @cod_empresa, [cod_moneda] = @cod_moneda, [descripcion] = @descripcion, [monto_minimo_local] = @monto_minimo_local, [monto_maximo_local] = @monto_maximo_local, [monto_minimo_extranjera] = @monto_minimo_extranjera, [monto_maximo_extranjera] = @monto_maximo_extranjera WHERE [cod_nivel_salarial] = @cod_nivel_salarial">
                            <DeleteParameters>
                                <asp:Parameter Name="cod_nivel_salarial" Type="Int16" />
                            </DeleteParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="cod_empresa" Type="Int16" />
                                <asp:Parameter Name="cod_moneda" Type="Int16" />
                                <asp:Parameter Name="descripcion" Type="String" />
                                <asp:Parameter Name="monto_minimo_local" Type="Decimal" />
                                <asp:Parameter Name="monto_maximo_local" Type="Decimal" />
                                <asp:Parameter Name="monto_minimo_extranjera" Type="Decimal" />
                                <asp:Parameter Name="monto_maximo_extranjera" Type="Decimal" />
                                <asp:Parameter Name="cod_nivel_salarial" Type="Int16" />
                            </UpdateParameters>
                            <InsertParameters>
                                <asp:Parameter Name="cod_empresa" Type="Int16" />
                                <asp:Parameter Name="cod_moneda" Type="Int16" />
                                <asp:Parameter Name="descripcion" Type="String" />
                                <asp:Parameter Name="monto_minimo_local" Type="Decimal" />
                                <asp:Parameter Name="monto_maximo_local" Type="Decimal" />
                                <asp:Parameter Name="monto_minimo_extranjera" Type="Decimal" />
                                <asp:Parameter Name="monto_maximo_extranjera" Type="Decimal" />
                            </InsertParameters>
                        </asp:SqlDataSource>
                        <asp:SqlDataSource ID="empresas_con" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
                    SelectCommand="SELECT [cod_empresa], [descripcion] FROM [empresas]">
                        </asp:SqlDataSource>
                        <asp:SqlDataSource ID="monedas_con" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
                    SelectCommand="SELECT [cod_moneda], [descripcion] FROM [monedas]">
                        </asp:SqlDataSource>
                    </td>
                    <td align="center" valign="top" 
                style="font-family: 'Trebuchet MS'; font-size: small">
                        <table align="center">
                            <tr>
                                <td>
                                    <br />
                                    <asp:DetailsView ID="grid_niveles_salariales" runat="server" AllowPaging="True" 
                    AutoGenerateRows="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" 
                    BorderWidth="1px" CellPadding="2" DataKeyNames="cod_nivel_salarial" 
                    DataSourceID="niveles_salariales_con" ForeColor="Black" GridLines="None" Width="500px" 
                                HorizontalAlign="Left">
                                        <FooterStyle BackColor="Tan" />
                                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                        HorizontalAlign="Center" />
                                        <Fields>
                                            <asp:BoundField DataField="cod_nivel_salarial" HeaderText="Código:" 
                            InsertVisible="False" ReadOnly="True" SortExpression="cod_nivel_salarial" >
                                                <HeaderStyle HorizontalAlign="Left" />
                                                <ItemStyle HorizontalAlign="Left" />
                                            </asp:BoundField>
                                            <asp:TemplateField HeaderText="Empresa:" SortExpression="empresa">
                                                <EditItemTemplate>
                                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("cod_empresa") %>' 
                                    Width="128px"></asp:Label>
                                                </EditItemTemplate>
                                                <InsertItemTemplate>
                                                    <asp:TextBox ID="txt_empresa_grid" runat="server" 
                                    Text='<%# Bind("cod_empresa") %>'></asp:TextBox>
                                                </InsertItemTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("empresa") %>'></asp:Label>
                                                </ItemTemplate>
                                                <HeaderStyle HorizontalAlign="Left" />
                                                <ItemStyle HorizontalAlign="Left" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Moneda:" SortExpression="moneda">
                                                <EditItemTemplate>
                                                    <asp:DropDownList ID="DropDownList5" runat="server" DataSourceID="monedas_con" 
                                    DataTextField="descripcion" DataValueField="cod_moneda" 
                                    SelectedValue='<%# Bind("cod_moneda") %>' Width="130px">
                                                    </asp:DropDownList>
                                                </EditItemTemplate>
                                                <InsertItemTemplate>
                                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("moneda") %>'></asp:TextBox>
                                                </InsertItemTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("moneda") %>'></asp:Label>
                                                </ItemTemplate>
                                                <HeaderStyle HorizontalAlign="Left" />
                                                <ItemStyle HorizontalAlign="Left" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Descripción:" SortExpression="descripcion">
                                                <EditItemTemplate>
                                                    <table>
                                                        <tr>
                                                            <td>
                                                                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("descripcion") %>'></asp:TextBox>
                                                            </td>
                                                            <td>
                                                                <asp:RequiredFieldValidator ID="rv_edit_descripcion" runat="server" 
                                                ControlToValidate="TextBox4" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </EditItemTemplate>
                                                <InsertItemTemplate>
                                                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("descripcion") %>'></asp:TextBox>
                                                </InsertItemTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("descripcion") %>'></asp:Label>
                                                </ItemTemplate>
                                                <HeaderStyle HorizontalAlign="Left" />
                                                <ItemStyle HorizontalAlign="Left" />
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="monto_minimo_local" HeaderText="Monto Mín. Local:" 
                            SortExpression="monto_minimo_local" >
                                                <HeaderStyle HorizontalAlign="Left" />
                                                <ItemStyle HorizontalAlign="Left" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="monto_maximo_local" HeaderText="Monto Máx. Local:" 
                            SortExpression="monto_maximo_local" >
                                                <HeaderStyle HorizontalAlign="Left" />
                                                <ItemStyle HorizontalAlign="Left" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="monto_minimo_extranjera" 
                            HeaderText="Monto Mín. Extranjera:" 
                            SortExpression="monto_minimo_extranjera" >
                                                <HeaderStyle HorizontalAlign="Left" />
                                                <ItemStyle HorizontalAlign="Left" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="monto_maximo_extranjera" 
                            HeaderText="Monto Máx Extranjera:" 
                            SortExpression="monto_maximo_extranjera" >
                                                <HeaderStyle HorizontalAlign="Left" />
                                                <ItemStyle HorizontalAlign="Left" />
                                            </asp:BoundField>
                                            <asp:TemplateField ShowHeader="False">
                                                <EditItemTemplate>
                                                    <asp:ImageButton ID="ImageButton1_edit" runat="server" CausesValidation="True" 
                                    CommandName="Update" ImageUrl="~/images/controles/b_grabar.gif" 
                                     style="height: 14px" Text="Update" />
                                                    &nbsp;<asp:ImageButton ID="ImageButton2" runat="server" CausesValidation="False" 
                                    CommandName="Cancel" ImageUrl="~/images/controles/b_cancelar.gif" 
                                    Text="Cancel" />
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <asp:ImageButton ID="ImageButton3" runat="server" CausesValidation="False" 
                                    CommandName="Edit" ImageUrl="~/images/controles/b_modificar.gif" 
                                    Text="Edit" />
                                                    &nbsp;<asp:ImageButton ID="ImageButton4" runat="server" CausesValidation="False" 
                                    CommandName="Delete" ImageUrl="~/images/controles/b_eliminar.gif" 
                                    Text="Delete" 
                                    
                                    onclientclick="return confirm('Está Seguro que desea eliminar este registro ?')" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField>
                                                <HeaderStyle Width="150px" />
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
                    </td>
                </tr>
                <tr>
                    <td align="center" class="style5" valign="top" colspan="2">
                        <table align="center" class="style17">
                            <tr>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

