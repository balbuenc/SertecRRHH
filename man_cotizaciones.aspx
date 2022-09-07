<%@ Page Title="" Language="VB" MasterPageFile="~/menu_master.master" AutoEventWireup="false" CodeFile="man_cotizaciones.aspx.vb" Inherits="man_cotizaciones" %>

<%@ Register assembly="Infragistics35.WebUI.WebDateChooser.v8.3, Version=8.3.20083.1009, Culture=neutral, PublicKeyToken=7dd5c3163f2cd0cb" namespace="Infragistics.WebUI.WebSchedule" tagprefix="igsch" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
            height: 603px;
        }
        .style4
        {
            width: 100%;
        }
        .style5
        {
            width: 508px;
            text-align: right;
        }
        .style12
        {
            width: 50%;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                <ContentTemplate>
                    <table align="center" class="style3">
                        <tr>
                            <td colspan="2">
                                <table align="center" class="style4">
                                    <tr>
                                        <td class="style5" 
                            style="font-family: 'Trebuchet MS'; font-size: large; font-weight: bolder" 
                            valign="top">
                                            &nbsp;Cotizaciones</td>
                                        <td style="text-align: right">
                                            <asp:ImageButton ID="ImageButton1" runat="server" 
                                ImageUrl="~/images/controles/salir32.png" 
                                PostBackUrl="~/home.aspx" ToolTip="Volver al Menu Principal" />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td 
                style="text-align: center; font-family: 'Trebuchet MS'; font-size: small;" 
                valign="top">
                                <asp:FormView ID="form_cotizaciones" runat="server" DataKeyNames="cod_moneda,fecha" 
                    DataSourceID="cotizaciones_con" DefaultMode="Insert" Width="85%">
                                    <EditItemTemplate>
                                        cod_moneda:
                                        <asp:Label ID="cod_monedaLabel1" runat="server" 
                            Text='<%# Eval("cod_moneda") %>' />
                                        <br />
                                        fecha:
                                        <asp:Label ID="fechaLabel1" runat="server" Text='<%# Eval("fecha") %>' />
                                        <br />
                                        monto:
                                        <asp:TextBox ID="montoTextBox" runat="server" Text='<%# Bind("monto") %>' />
                                        <br />
                                        <asp:ImageButton ID="UpdateButton" runat="server" CausesValidation="True" 
                            CommandName="Update" Text="Update" />
                                        &nbsp;<asp:ImageButton ID="UpdateCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                    </EditItemTemplate>
                                    <InsertItemTemplate>
                                        <br />
                                        <table align="center" 
                            
                            style="font-family: 'Trebuchet MS'; font-size: small; height: 80px; width: 100%;">
                                            <tr>
                                                <td style="font-family: 'Trebuchet MS'; font-size: small; text-align: right;">
                                                    Monedas:</td>
                                                <td style="text-align: left" width="210">
                                                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="monedas_con" 
                                        DataTextField="descripcion" DataValueField="cod_moneda" 
                                        SelectedValue='<%# Bind("cod_moneda") %>' Width="206px">
                                                    </asp:DropDownList>
                                                </td>
                                                <td style="text-align: left" width="80">
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td style="text-align: right">
                                                    Fecha:</td>
                                                <td style="text-align: left">
                                                    <asp:TextBox ID="fechaTextBox" runat="server" Text='<%# Bind("fecha") %>' 
                                        Width="200px" />
                                                </td>
                                                <td style="text-align: left">
                                                    <asp:RequiredFieldValidator ID="fecha" runat="server" 
                                        ControlToValidate="fechaTextBox" Enabled="False" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="text-align: right">
                                                    Monto:</td>
                                                <td style="text-align: left">
                                                    <asp:TextBox ID="montoTextBox" runat="server" Text='<%# Bind("monto") %>' 
                                        Width="200px" />
                                                </td>
                                                <td style="text-align: left">
                                                    <asp:RequiredFieldValidator ID="rv_monto" runat="server" 
                                        ControlToValidate="montoTextBox" ErrorMessage="*" Enabled="False"></asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                        </table>
                                        <br />
                                        <br />
                                        <table align="center" style="width: 252px; height: 54px">
                                            <tr>
                                                <td>
                                                    <asp:ImageButton ID="InsertButton" runat="server" CausesValidation="True" 
                                        CommandName="Insert" Text="Insert" ImageUrl="~/images/controles/add.png" 
                                        ToolTip="Agregar" onclick="InsertButton_Click" />
                                                </td>
                                                <td width="100">
                                                    &nbsp;</td>
                                                <td style="text-align: right">
                                                    <asp:ImageButton ID="InsertCancelButton" runat="server" CausesValidation="False" 
                                        CommandName="Cancel" Text="Cancel" 
                                        ImageUrl="~/images/controles/cancel.png" ToolTip="Cancelar Inserción" Height="48px" 
                                        Width="48px" />
                                                </td>
                                            </tr>
                                        </table>
                                    </InsertItemTemplate>
                                    <ItemTemplate>
                                        cod_moneda:
                                        <asp:Label ID="cod_monedaLabel" runat="server" 
                            Text='<%# Eval("cod_moneda") %>' />
                                        <br />
                                        fecha:
                                        <asp:Label ID="fechaLabel" runat="server" Text='<%# Eval("fecha") %>' />
                                        <br />
                                        monto:
                                        <asp:Label ID="montoLabel" runat="server" Text='<%# Bind("monto") %>' />
                                        <br />
                                        <asp:ImageButton ID="EditButton" runat="server" CausesValidation="False" 
                            CommandName="Edit" Text="Edit" />
                                        &nbsp;<asp:ImageButton ID="DeleteButton" runat="server" CausesValidation="False" 
                            CommandName="Delete" Text="Delete" />
                                        &nbsp;<asp:ImageButton ID="NewButton" runat="server" CausesValidation="False" 
                            CommandName="New" Text="New" />
                                    </ItemTemplate>
                                </asp:FormView>
                                <asp:SqlDataSource ID="cotizaciones_con" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
                    DeleteCommand="DELETE FROM [cotizaciones] WHERE [cod_moneda] = @cod_moneda AND [fecha] = @fecha" 
                    InsertCommand="INSERT INTO [cotizaciones] ([cod_moneda], [fecha], [monto]) VALUES (@cod_moneda, @fecha, @monto)" 
                    SelectCommand="SELECT [cod_moneda], [fecha], [monto] FROM [cotizaciones]" 
                    
                    
                    
                                    
                                    
                                    UpdateCommand="UPDATE [cotizaciones] SET [monto] = @monto WHERE [cod_moneda] = @cod_moneda AND [fecha] = @fecha">
                                    <DeleteParameters>
                                        <asp:Parameter Name="cod_moneda" Type="Int16" />
                                        <asp:Parameter Name="fecha" Type="DateTime" />
                                    </DeleteParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="monto" Type="Decimal" />
                                        <asp:Parameter Name="cod_moneda" Type="Int16" />
                                        <asp:Parameter Name="fecha" Type="DateTime" />
                                    </UpdateParameters>
                                    <InsertParameters>
                                        <asp:Parameter Name="cod_moneda" Type="Int16" />
                                        <asp:Parameter Name="fecha" Type="DateTime" />
                                        <asp:Parameter Name="monto" Type="Decimal" />
                                    </InsertParameters>
                                </asp:SqlDataSource>
                                <asp:SqlDataSource ID="monedas_con" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
                    SelectCommand="SELECT [descripcion], [cod_moneda] FROM [monedas]"></asp:SqlDataSource>
                            </td>
                            <td style="text-align: center; font-family: 'Trebuchet MS'; font-size: small;" 
                valign="top">
                                <table align="center" class="style12">
                                </table>
                                <table align="center" style="width: 414px">
                                    <tr>
                                        <td style="text-align: right" width="120">
                                            Busque por Fecha:</td>
                                        <td style="text-align: center" width="200">
                                            <asp:TextBox ID="txt_busca" runat="server" AutoPostBack="True" Width="200px"></asp:TextBox>
                                        </td>
                                        <td style="text-align: right" width="50">
                                            <asp:ImageButton ID="ImageButton2" runat="server" 
                                ImageUrl="~/images/controles/find.png" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="3">
                                            <asp:GridView ID="grid_cotizaciones" runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" 
                    BorderWidth="1px" CellPadding="2" DataKeyNames="cod_moneda,fecha" 
                    DataSourceID="cotizaciones_con" ForeColor="Black" GridLines="None" 
                    Width="100%">
                                                <Columns>
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
                                    onclientclick="return confirm('Está Seguro que desea eliminar el registro?')" 
                                    Text="Delete" ToolTip="Eliminar" />
                                                        </ItemTemplate>
                                                        <HeaderStyle HorizontalAlign="Left" />
                                                        <ItemStyle HorizontalAlign="Left" />
                                                    </asp:TemplateField>
                                                    <asp:BoundField DataField="cod_moneda" HeaderText="Código" ReadOnly="True" 
                            SortExpression="cod_moneda" >
                                                        <HeaderStyle HorizontalAlign="Center" />
                                                        <ItemStyle HorizontalAlign="Center" />
                                                    </asp:BoundField>
                                                    <asp:TemplateField HeaderText="Fecha" 
                            SortExpression="fecha">
                                                        <EditItemTemplate>
                                                            <asp:Label ID="Label1" runat="server" 
                                    Text='<%# Eval("fecha", "{0:d}") %>'></asp:Label>
                                                        </EditItemTemplate>
                                                        <ItemTemplate>
                                                            <asp:Label ID="Label3" runat="server" 
                                    Text='<%# Bind("fecha", "{0:d}") %>'></asp:Label>
                                                        </ItemTemplate>
                                                        <HeaderStyle HorizontalAlign="Center" />
                                                        <ItemStyle HorizontalAlign="Center" />
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Monto" 
                            SortExpression="monto">
                                                        <EditItemTemplate>
                                                            <asp:TextBox ID="TextBox2" runat="server" 
                                    Text='<%# Bind("monto", "{0:N}") %>'></asp:TextBox>
                                                        </EditItemTemplate>
                                                        <ItemTemplate>
                                                            <asp:Label ID="Label2" runat="server" 
                                    Text='<%# Bind("monto", "{0:N}") %>'></asp:Label>
                                                        </ItemTemplate>
                                                        <HeaderStyle HorizontalAlign="Right" />
                                                        <ItemStyle HorizontalAlign="Right" />
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
                                <br />
                                <asp:HiddenField ID="hf_fecha" runat="server" />
                            </td>
                        </tr>
                    </table>
                </ContentTemplate>
            </asp:UpdatePanel>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

