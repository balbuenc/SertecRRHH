<%@ Page Title="" Language="VB" MasterPageFile="~/menu_master.master" AutoEventWireup="false" CodeFile="man_empresas.aspx.vb" Inherits="man_empresas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
            height: 432px;
        }
        .style4
        {
            width: 100%;
        }
        .style5
        {
            height: 80px;
        }
        .style11
        {
            width: 218px;
        }
        .style16
        {
            width: 414px;
        }
        .style18
        {
            text-align: right;
        }
        .style19
        {
            width: 74px;
        }
        .style20
        {
            width: 106px;
            text-align: right;
        }
        .style21
        {
            width: 50%;
        }
        .style22
        {
            width: 512px;
            text-align: center;
        }
        .style23
        {
            width: 261px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style3">
        <tr>
            <td colspan="2">
                <table align="center" class="style4">
                    <tr>
                        <td align="center" 
                            
                            
                            style="text-align: right; font-family: 'Trebuchet MS'; font-size: large; font-weight: bolder;" 
                            width="150">
                            &nbsp;</td>
                        <td align="center" 
                            
                            
                            style="text-align: center; font-family: 'Trebuchet MS'; font-size: large; font-weight: bolder;" 
                            valign="top">
                            Empresas</td>
                        <td align="center" 
                            
                            style="text-align: right; font-family: 'Trebuchet MS'; font-size: medium; font-weight: bolder;">
                            <asp:ImageButton ID="ImageButton1" runat="server" 
                                ImageUrl="~/images/controles/salir32.png" 
                                PostBackUrl="~/home.aspx" ToolTip="Volver al Menu Principal" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td style="text-align: center" align="left" valign="top" width="500">
                <asp:FormView ID="form_empresas" runat="server" DataKeyNames="cod_empresa" 
                    DataSourceID="empresas_con" DefaultMode="Insert" Width="90%">
                    <EditItemTemplate>
                        cod_empresa:
                        <asp:Label ID="cod_empresaLabel1" runat="server" 
                            Text='<%# Eval("cod_empresa") %>' />
                        <br />
                        descripcion:
                        <asp:TextBox ID="descripcionTextBox" runat="server" 
                            Text='<%# Bind("descripcion") %>' />
                        <br />
                        ruc:
                        <asp:TextBox ID="rucTextBox" runat="server" Text='<%# Bind("ruc") %>' />
                        <br />
                        telefono:
                        <asp:TextBox ID="telefonoTextBox" runat="server" 
                            Text='<%# Bind("telefono") %>' />
                        <br />
                        fax:
                        <asp:TextBox ID="faxTextBox" runat="server" Text='<%# Bind("fax") %>' />
                        <br />
                        direccion:
                        <asp:TextBox ID="direccionTextBox" runat="server" 
                            Text='<%# Bind("direccion") %>' />
                        <br />
                        registro_ips:
                        <asp:TextBox ID="registro_ipsTextBox" runat="server" 
                            Text='<%# Bind("registro_ips") %>' />
                        <br />
                        registro_mjt:
                        <asp:TextBox ID="registro_mjtTextBox" runat="server" 
                            Text='<%# Bind("registro_mjt") %>' />
                        <br />
                        numero_decreto:
                        <asp:TextBox ID="numero_decretoTextBox" runat="server" 
                            Text='<%# Bind("numero_decreto") %>' />
                        <br />
                        firmante_documentos:
                        <asp:TextBox ID="firmante_documentosTextBox" runat="server" 
                            Text='<%# Bind("firmante_documentos") %>' />
                        <br />
                        <asp:ImageButton ID="UpdateButton" runat="server" CausesValidation="True" 
                            CommandName="Update" Text="Update" />
                        &nbsp;<asp:ImageButton ID="UpdateCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <table align="center">
                            <tr>
                                <td class="style18" style="font-family: 'Trebuchet MS'; font-size: small">
                                    Descripción:</td>
                                <td style="text-align: left">
                                    <asp:TextBox ID="descripcionTextBox" runat="server" 
                                        Text='<%# Bind("descripcion") %>' Width="200px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="style18" style="font-family: 'trebuchet MS'; font-size: small">
                                    R.UC.:</td>
                                <td style="text-align: left">
                                    <asp:TextBox ID="rucTextBox" runat="server" Text='<%# Bind("ruc") %>' 
                                        Width="200px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="style18" style="font-family: 'Trebuchet MS'; font-size: small">
                                    Teléfono:</td>
                                <td style="text-align: left">
                                    <asp:TextBox ID="telefonoTextBox" runat="server" Text='<%# Bind("telefono") %>' 
                                        Width="200px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="style18" style="font-family: 'Trebuchet MS'; font-size: small">
                                    FAX:</td>
                                <td style="text-align: left">
                                    <asp:TextBox ID="faxTextBox" runat="server" Text='<%# Bind("fax") %>' 
                                        Width="200px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="style18" style="font-family: 'Trebuchet MS'; font-size: small">
                                    Dirección:</td>
                                <td style="text-align: left">
                                    <asp:TextBox ID="direccionTextBox" runat="server" 
                                        Text='<%# Bind("direccion") %>' Width="200px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="style18" style="font-family: 'Trebuchet MS'; font-size: small">
                                    Registro de IPS:</td>
                                <td style="text-align: left">
                                    <asp:TextBox ID="registro_ipsTextBox" runat="server" 
                                        Text='<%# Bind("registro_ips") %>' Width="200px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="style18" style="font-family: 'Trebuchet MS'; font-size: small">
                                    Registro de MJT:</td>
                                <td style="text-align: left">
                                    <asp:TextBox ID="registro_mjtTextBox" runat="server" 
                                        Text='<%# Bind("registro_mjt") %>' Width="200px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="style18" style="font-family: 'Trebuchet MS'; font-size: small">
                                    Decreto:</td>
                                <td style="text-align: left">
                                    <asp:TextBox ID="numero_decretoTextBox" runat="server" 
                                        Text='<%# Bind("numero_decreto") %>' Width="200px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="style18" style="font-family: 'Trebuchet MS'; font-size: small">
                                    Firmante Documentos:</td>
                                <td style="text-align: left">
                                    <asp:TextBox ID="firmante_documentosTextBox" runat="server" 
                                        Text='<%# Bind("firmante_documentos") %>' Width="200px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="style18" style="font-family: 'Trebuchet MS'; font-size: small">
                                    &nbsp;</td>
                                <td style="text-align: left">
                                    &nbsp;</td>
                            </tr>
                        </table>
                        <table align="center" class="style11">
                            <tr>
                                <td>
                                    <asp:ImageButton ID="InsertButton" runat="server" CausesValidation="True" 
                                        CommandName="Insert" Text="Insert" ImageUrl="~/images/controles/add.png" 
                                        ToolTip="Agregar" />
                                </td>
                                <td width="100">
                                    &nbsp;</td>
                                <td style="text-align: right">
                                    <asp:ImageButton ID="InsertCancelButton" runat="server" CausesValidation="False" 
                                        CommandName="Cancel" Text="Cancel" 
                                        ImageUrl="~/images/controles/cancel.png" ToolTip="Cancelar" />
                                </td>
                            </tr>
                        </table>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        cod_empresa:
                        <asp:Label ID="cod_empresaLabel" runat="server" 
                            Text='<%# Eval("cod_empresa") %>' />
                        <br />
                        descripcion:
                        <asp:Label ID="descripcionLabel" runat="server" 
                            Text='<%# Bind("descripcion") %>' />
                        <br />
                        ruc:
                        <asp:Label ID="rucLabel" runat="server" Text='<%# Bind("ruc") %>' />
                        <br />
                        telefono:
                        <asp:Label ID="telefonoLabel" runat="server" Text='<%# Bind("telefono") %>' />
                        <br />
                        fax:
                        <asp:Label ID="faxLabel" runat="server" Text='<%# Bind("fax") %>' />
                        <br />
                        direccion:
                        <asp:Label ID="direccionLabel" runat="server" Text='<%# Bind("direccion") %>' />
                        <br />
                        registro_ips:
                        <asp:Label ID="registro_ipsLabel" runat="server" 
                            Text='<%# Bind("registro_ips") %>' />
                        <br />
                        registro_mjt:
                        <asp:Label ID="registro_mjtLabel" runat="server" 
                            Text='<%# Bind("registro_mjt") %>' />
                        <br />
                        numero_decreto:
                        <asp:Label ID="numero_decretoLabel" runat="server" 
                            Text='<%# Bind("numero_decreto") %>' />
                        <br />
                        firmante_documentos:
                        <asp:Label ID="firmante_documentosLabel" runat="server" 
                            Text='<%# Bind("firmante_documentos") %>' />
                        <br />
                        <asp:ImageButton ID="EditButton" runat="server" CausesValidation="False" 
                            CommandName="Edit" Text="Edit" />
                        &nbsp;<asp:ImageButton ID="DeleteButton" runat="server" CausesValidation="False" 
                            CommandName="Delete" Text="Delete" />
                        &nbsp;<asp:ImageButton ID="NewButton" runat="server" CausesValidation="False" 
                            CommandName="New" Text="New" />
                    </ItemTemplate>
                </asp:FormView>
            </td>
            <td align="center" valign="top" 
                style="font-family: 'Trebuchet MS'; font-size: small">
                <asp:DetailsView ID="grilla_empresa" runat="server" AllowPaging="True" 
                    AutoGenerateRows="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" 
                    BorderWidth="1px" CellPadding="2" DataKeyNames="cod_empresa" 
                    DataSourceID="empresas_con" ForeColor="Black" GridLines="None" Height="50px" 
                    Width="351px" HorizontalAlign="Left">
                    <FooterStyle BackColor="Tan" />
                    <RowStyle HorizontalAlign="Left" />
                    <FieldHeaderStyle HorizontalAlign="Left" />
                    <EmptyDataRowStyle HorizontalAlign="Right" />
                    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                        HorizontalAlign="Left" />
                    <Fields>
                        <asp:BoundField DataField="cod_empresa" HeaderText="Código:" 
                            InsertVisible="False" SortExpression="cod_empresa" >
                        <HeaderStyle HorizontalAlign="Left" />
                        <ItemStyle HorizontalAlign="Left" />
                        </asp:BoundField>
                        <asp:TemplateField HeaderText="Descripcion:" SortExpression="descripcion">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("descripcion") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("descripcion") %>'></asp:TextBox>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <table align="center" class="style21">
                                </table>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("descripcion") %>'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Left" />
                            <ItemStyle HorizontalAlign="Left" />
                        </asp:TemplateField>
                        <asp:BoundField DataField="ruc" HeaderText="RUC:" SortExpression="ruc" >
                        <HeaderStyle HorizontalAlign="Left" />
                        <ItemStyle HorizontalAlign="Left" />
                        </asp:BoundField>
                        <asp:BoundField DataField="telefono" HeaderText="Teléfono:" 
                            SortExpression="telefono" >
                        <HeaderStyle HorizontalAlign="Left" />
                        <ItemStyle HorizontalAlign="Left" />
                        </asp:BoundField>
                        <asp:BoundField DataField="fax" HeaderText="FAX:" SortExpression="fax" >
                        <HeaderStyle HorizontalAlign="Left" />
                        <ItemStyle HorizontalAlign="Left" />
                        </asp:BoundField>
                        <asp:BoundField DataField="direccion" HeaderText="Dirección:" 
                            SortExpression="direccion" >
                        <HeaderStyle HorizontalAlign="Left" />
                        <ItemStyle HorizontalAlign="Left" />
                        </asp:BoundField>
                        <asp:BoundField DataField="registro_ips" HeaderText="Reg. de IPS:" 
                            SortExpression="registro_ips" >
                        <HeaderStyle HorizontalAlign="Left" />
                        <ItemStyle HorizontalAlign="Left" />
                        </asp:BoundField>
                        <asp:BoundField DataField="registro_mjt" HeaderText="Reg. de MJT:" 
                            SortExpression="registro_mjt" >
                        <HeaderStyle HorizontalAlign="Left" />
                        <ItemStyle HorizontalAlign="Left" />
                        </asp:BoundField>
                        <asp:BoundField DataField="numero_decreto" HeaderText="Decreto:" 
                            SortExpression="numero_decreto" >
                        <HeaderStyle HorizontalAlign="Left" />
                        <ItemStyle HorizontalAlign="Left" />
                        </asp:BoundField>
                        <asp:BoundField DataField="firmante_documentos" HeaderText="Firmante de Doc.:" 
                            SortExpression="firmante_documentos" >
                        <HeaderStyle HorizontalAlign="Left" />
                        <ItemStyle HorizontalAlign="Left" />
                        </asp:BoundField>
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
                            <HeaderStyle HorizontalAlign="Left" />
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <FooterStyle Height="200px" HorizontalAlign="Left" />
                            <HeaderStyle HorizontalAlign="Left" Width="110px" />
                            <ItemStyle HorizontalAlign="Left" />
                        </asp:TemplateField>
                    </Fields>
                    <HeaderStyle BackColor="Tan" Font-Bold="True" />
                    <EditRowStyle BackColor="LightGoldenrodYellow" ForeColor="Black" 
                        HorizontalAlign="Left" />
                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                </asp:DetailsView>
            </td>
        </tr>
        <tr>
            <td class="style5" colspan="2">
                <asp:SqlDataSource ID="empresas_con" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
                    DeleteCommand="DELETE FROM [empresas] WHERE [cod_empresa] = @cod_empresa" 
                    InsertCommand="INSERT INTO [empresas] ([descripcion], [ruc], [telefono], [fax], [direccion], [registro_ips], [registro_mjt], [numero_decreto], [firmante_documentos]) VALUES (@descripcion, @ruc, @telefono, @fax, @direccion, @registro_ips, @registro_mjt, @numero_decreto, @firmante_documentos)" 
                    SelectCommand="SELECT * FROM [empresas]" 
                    
                    UpdateCommand="UPDATE [empresas] SET [descripcion] = @descripcion, [ruc] = @ruc, [telefono] = @telefono, [fax] = @fax, [direccion] = @direccion, [registro_ips] = @registro_ips, [registro_mjt] = @registro_mjt, [numero_decreto] = @numero_decreto, [firmante_documentos] = @firmante_documentos WHERE [cod_empresa] = @cod_empresa">
                    <DeleteParameters>
                        <asp:Parameter Name="cod_empresa" Type="Int16" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="descripcion" Type="String" />
                        <asp:Parameter Name="ruc" Type="String" />
                        <asp:Parameter Name="telefono" Type="String" />
                        <asp:Parameter Name="fax" Type="String" />
                        <asp:Parameter Name="direccion" Type="String" />
                        <asp:Parameter Name="registro_ips" Type="String" />
                        <asp:Parameter Name="registro_mjt" Type="String" />
                        <asp:Parameter Name="numero_decreto" Type="String" />
                        <asp:Parameter Name="firmante_documentos" Type="String" />
                        <asp:Parameter Name="cod_empresa" Type="Int16" />
                    </UpdateParameters>
                    <InsertParameters>
                        <asp:Parameter Name="descripcion" Type="String" />
                        <asp:Parameter Name="ruc" Type="String" />
                        <asp:Parameter Name="telefono" Type="String" />
                        <asp:Parameter Name="fax" Type="String" />
                        <asp:Parameter Name="direccion" Type="String" />
                        <asp:Parameter Name="registro_ips" Type="String" />
                        <asp:Parameter Name="registro_mjt" Type="String" />
                        <asp:Parameter Name="numero_decreto" Type="String" />
                        <asp:Parameter Name="firmante_documentos" Type="String" />
                    </InsertParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

