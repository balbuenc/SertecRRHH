<%@ Page Title="" Language="VB" MasterPageFile="~/menu_master.master" AutoEventWireup="false" CodeFile="man_parametros.aspx.vb" Inherits="man_parametros" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style3
        {
            text-align: right;
        }
        .style4
        {
            border: 1px dotted gray;
            width: 350px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <table class="style1">
                            <tr>
                                <td align="center" style="font-family: 'Trebuchet MS'; font-size: large" 
                                    width="100%">
                                    Parámetros del Sistema</td>
                                <td>
                                    <asp:ImageButton ID="ImageButton1" runat="server" 
                                        ImageUrl="~/images/controles/salir32.png" PostBackUrl="~/home.aspx" 
                                        ToolTip="Voler al Menu Principal" />
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2">
                                    <table class="label">
                                        <tr>
                                            <td>
                                                Busque por Campo:</td>
                                            <td>
                                                <asp:TextBox ID="txt_campo" runat="server" AutoPostBack="True" Width="200px"></asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:ImageButton ID="ImageButton2" runat="server" 
                                                    ImageUrl="~/images/controles/find.png" ToolTip="Buscar" />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2">
                                    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" 
                                        BorderColor="Gray" BorderWidth="1px" CellPadding="4" CssClass="label" 
                                        DataKeyNames="cod_empresa,campo" DataSourceID="parametros_con" 
                                        ForeColor="#333333" Height="200px" style="text-align: left" TabIndex="1" 
                                        Width="600px">
                                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                                        <EditItemTemplate>
                                            <table align="left">
                                                <tr>
                                                    <td class="style3">
                                                        Empresa:</td>
                                                    <td class="style3">
                                                        &nbsp;</td>
                                                    <td>
                                                        <asp:Label ID="cod_empresaLabel1" runat="server" 
                                                            Text='<%# Eval("descripcion") %>' />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style3">
                                                        Campo:</td>
                                                    <td class="style3">
                                                        &nbsp;</td>
                                                    <td>
                                                        <asp:Label ID="campoLabel1" runat="server" Text='<%# Eval("campo") %>' />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style3">
                                                        Valor Numérico:</td>
                                                    <td class="style3">
                                                        &nbsp;</td>
                                                    <td>
                                                        <asp:TextBox ID="v_nroTextBox" runat="server" Text='<%# Bind("v_nro") %>' 
                                                            Width="350px" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style3">
                                                        Valor Cadena:</td>
                                                    <td class="style3">
                                                        &nbsp;</td>
                                                    <td>
                                                        <asp:TextBox ID="v_cadenaTextBox" runat="server" Text='<%# Bind("v_cadena") %>' 
                                                            Width="350px" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style3">
                                                        Valor Fecha:</td>
                                                    <td class="style3">
                                                        &nbsp;</td>
                                                    <td>
                                                        <asp:TextBox ID="v_fechaTextBox" runat="server" Text='<%# Bind("v_fecha") %>' 
                                                            Width="350px" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="center" colspan="3">
                                                        <br />
                                                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                                                            CommandName="Update" Text="Grabar" />
                                                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                                                            CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
                                                    </td>
                                                </tr>
                                            </table>
                                            <br />
                                            <br />
                                            <br />
                                            <br />
                                            <br />
                                            <br />
                                            <br />
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <table>
                                                <tr>
                                                    <td class="style3">
                                                        &nbsp;Empresa:</td>
                                                    <td width="4">
                                                        &nbsp;</td>
                                                    <td>
                                                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="empresas_con" 
                                                            DataTextField="descripcion" DataValueField="cod_empresa" 
                                                            SelectedValue='<%# Bind("cod_empresa") %>'>
                                                        </asp:DropDownList>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style3">
                                                        Campo:</td>
                                                    <td width="4">
                                                        &nbsp;</td>
                                                    <td>
                                                        <asp:TextBox ID="campoTextBox" runat="server" Text='<%# Bind("campo") %>' 
                                                            Width="350px" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style3">
                                                        Valor Numérico:</td>
                                                    <td width="4">
                                                        &nbsp;</td>
                                                    <td>
                                                        <asp:TextBox ID="v_nroTextBox0" runat="server" Text='<%# Bind("v_nro") %>' 
                                                            Width="350px" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style3">
                                                        Valor Cadena:</td>
                                                    <td width="4">
                                                        &nbsp;</td>
                                                    <td>
                                                        <asp:TextBox ID="v_cadenaTextBox0" runat="server" 
                                                            Text='<%# Bind("v_cadena") %>' Width="350px" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style3">
                                                        Valor Fecha:</td>
                                                    <td width="4">
                                                        &nbsp;</td>
                                                    <td>
                                                        <asp:TextBox ID="v_fechaTextBox0" runat="server" Text='<%# Bind("v_fecha") %>' 
                                                            Width="350px" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="center" colspan="3">
                                                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                                                            CommandName="Insert" Text="Insertar" />
                                                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                                                            CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
                                                    </td>
                                                </tr>
                                            </table>
                                            <br />
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <table class="style5">
                                                <tr>
                                                    <td align="center" style="text-align: left">
                                                        <table>
                                                            <tr>
                                                                <td class="style3">
                                                                    Empresa:</td>
                                                                <td>
                                                                    &nbsp;</td>
                                                                <td class="style4">
                                                                    <asp:Label ID="cod_empresaLabel" runat="server" Height="100%" 
                                                                        Text='<%# Eval("descripcion") %>' Width="100%" />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="style3">
                                                                    Campo:</td>
                                                                <td>
                                                                    &nbsp;</td>
                                                                <td class="style4">
                                                                    <asp:Label ID="campoLabel" runat="server" Text='<%# Eval("campo") %>' 
                                                                        Width="100%" />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="style3">
                                                                    Valor Numérico:</td>
                                                                <td>
                                                                    &nbsp;</td>
                                                                <td class="style4">
                                                                    <asp:Label ID="v_nroLabel" runat="server" Text='<%# Bind("v_nro") %>' 
                                                                        Width="100%" />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="style3">
                                                                    Valor Cadena:</td>
                                                                <td>
                                                                    &nbsp;</td>
                                                                <td class="style4">
                                                                    <asp:Label ID="v_cadenaLabel" runat="server" Text='<%# Bind("v_cadena") %>' 
                                                                        Width="100%" />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="style3">
                                                                    Valor Fecha:</td>
                                                                <td>
                                                                    &nbsp;</td>
                                                                <td class="style4">
                                                                    <asp:Label ID="v_fechaLabel" runat="server" Text='<%# Bind("v_fecha") %>' 
                                                                        Width="100%" />
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="center">
                                                        <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                                                            CommandName="Edit" Text="Editar" />
                                                        &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                                                            CommandName="Delete" 
                                                            OnClientClick="return confirm('La eliminación de este parámetro puede alterar el correcto funcionamiento del Sistema.')" 
                                                            Text="Eliminar" />
                                                        &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                                                            CommandName="New" Text="Nuevo" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </ItemTemplate>
                                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                    </asp:FormView>
                                </td>
                            </tr>
                        </table>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </td>
        </tr>
        <tr>
            <td>
                <asp:SqlDataSource ID="parametros_con" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
                    DeleteCommand="DELETE FROM [parametros] WHERE [cod_empresa] = @cod_empresa AND [campo] = @campo" 
                    InsertCommand="INSERT INTO [parametros] ([cod_empresa], [campo], [v_nro], [v_cadena], [v_fecha]) VALUES (@cod_empresa, @campo, @v_nro, @v_cadena, @v_fecha)" 
                    SelectCommand="SELECT parametros.cod_empresa, parametros.campo, parametros.v_nro, parametros.v_cadena, parametros.v_fecha, empresas.descripcion FROM parametros INNER JOIN empresas ON parametros.cod_empresa = empresas.cod_empresa WHERE (parametros.campo LIKE + @campo + '%')" 
                    
                    
                    UpdateCommand="UPDATE [parametros] SET [v_nro] = @v_nro, [v_cadena] = @v_cadena, [v_fecha] = @v_fecha WHERE [cod_empresa] = @cod_empresa AND [campo] = @campo">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="txt_campo" Name="campo" PropertyName="Text" />
                    </SelectParameters>
                    <DeleteParameters>
                        <asp:Parameter Name="cod_empresa" Type="Int16" />
                        <asp:Parameter Name="campo" Type="String" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="v_nro" Type="Int32" />
                        <asp:Parameter Name="v_cadena" Type="String" />
                        <asp:Parameter Name="v_fecha" Type="DateTime" />
                        <asp:Parameter Name="cod_empresa" Type="Int16" />
                        <asp:Parameter Name="campo" Type="String" />
                    </UpdateParameters>
                    <InsertParameters>
                        <asp:Parameter Name="cod_empresa" Type="Int16" />
                        <asp:Parameter Name="campo" Type="String" />
                        <asp:Parameter Name="v_nro" Type="Int32" />
                        <asp:Parameter Name="v_cadena" Type="String" />
                        <asp:Parameter Name="v_fecha" Type="DateTime" />
                    </InsertParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="empresas_con" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
                    SelectCommand="SELECT [cod_empresa], [descripcion] FROM [empresas]">
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

