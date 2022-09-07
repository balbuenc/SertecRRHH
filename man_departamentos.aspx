<%@ Page Title="" Language="VB" MasterPageFile="~/menu_master.master" AutoEventWireup="false" CodeFile="man_departamentos.aspx.vb" Inherits="man_departamentos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
            height: 399px;
        }
        .style23
        {
            width: 41px;
        }
        .style24
        {
            width: 108px;
            text-align: right;
        }
        .style26
        {
        }
        .style31
        {
            width: 178px;
        }
        .style37
        {
            width: 863px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <table align="center" class="style3">
                <tr>
                    <td colspan="2" style="text-align: center">
                        <table align="center">
                            <tr>
                                <td 
                            style="font-family: 'Trebuchet MS'; font-size: large; font-weight: bolder">
                                    &nbsp;</td>
                                <td 
                            style="font-family: 'Trebuchet MS'; font-size: large; font-weight: bolder" 
                            width="100%">
                                    Departamentos&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                </td>
                                <td style="text-align: right" valign="top">
                                    <asp:ImageButton ID="ImageButton3" runat="server" 
                                ImageUrl="~/images/controles/salir32.png" 
                                PostBackUrl="~/home.aspx" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td valign="top" style="text-align: center" align="center" width="450">
                        <asp:FormView ID="form_departamentos" runat="server" DataKeyNames="cod_departamento" 
                    DataSourceID="departamentos_con" Width="90%" DefaultMode="Insert" 
                    style="text-align: center">
                            <EditItemTemplate>
                                cod_departamento:
                                <asp:Label ID="cod_departamentoLabel1" runat="server" 
                            Text='<%# Eval("cod_departamento") %>' />
                                <br />
                                descripcion:
                                <asp:TextBox ID="descripcionTextBox" runat="server" 
                            Text='<%# Bind("descripcion") %>' />
                                <br />
                                <asp:ImageButton ID="UpdateButton" runat="server" CausesValidation="True" 
                            CommandName="Update" Text="Update" ImageUrl="~/images/add.png" />
                                &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:ImageButton ID="UpdateCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="Cancel" 
                            ImageUrl="~/images/cancel.png" />
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <table align="center" style="font-family: 'Trebuchet MS'; font-size: small" 
                            width="100%">
                                    <tr>
                                        <td style="font-family: 'Trebuchet MS'; font-size: small">
                                            &nbsp;</td>
                                        <td style="text-align: left">
                                            &nbsp;</td>
                                        <td style="text-align: left">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="font-family: 'Trebuchet MS'; font-size: small" width="80">
                                            Descripción:</td>
                                        <td style="text-align: left">
                                            <asp:TextBox ID="descripcionTextBox" runat="server" 
                                        Text='<%# Bind("descripcion") %>' Width="98%" />
                                        </td>
                                        <td style="text-align: left" width="5">
                                            <asp:RequiredFieldValidator ID="rv_descripcion" runat="server" 
                                        ControlToValidate="descripcionTextBox" Enabled="False" ErrorMessage="*"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                </table>
                                <br />
                                <br />
                                <table align="center" style="width: 252px">
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
                                        ImageUrl="~/images/controles/cancel.png" ToolTip="Cancelar Inserción"/>
                                        </td>
                                    </tr>
                                </table>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                cod_departamento:
                                <asp:Label ID="cod_departamentoLabel" runat="server" 
                            Text='<%# Eval("cod_departamento") %>' />
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
                        <asp:SqlDataSource ID="departamentos_con" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
                    DeleteCommand="DELETE FROM [departamentos] WHERE [cod_departamento] = @cod_departamento" 
                    InsertCommand="INSERT INTO [departamentos] ([descripcion]) VALUES (@descripcion)" 
                    SelectCommand="SELECT cod_departamento, descripcion FROM departamentos WHERE (descripcion LIKE @descripcion + '%')" 
                    
                    
                    
                            UpdateCommand="UPDATE [departamentos] SET [descripcion] = @descripcion WHERE [cod_departamento] = @cod_departamento">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="txt_descripcion" Name="descripcion" 
                            PropertyName="Text" />
                            </SelectParameters>
                            <DeleteParameters>
                                <asp:Parameter Name="cod_departamento" Type="Int16" />
                            </DeleteParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="descripcion" Type="String" />
                                <asp:Parameter Name="cod_departamento" Type="Int16" />
                            </UpdateParameters>
                            <InsertParameters>
                                <asp:Parameter Name="descripcion" Type="String" />
                            </InsertParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td valign="top">
                        <table align="center" 
                    
                    
                    style="font-family: 'Trebuchet MS'; font-size: small; height: 46px; width: 433px;">
                            <tr>
                                <td style="text-align: right">
                                    Busque por Descripción:
                                </td>
                                <td style="text-align: center">
                                    <asp:TextBox ID="txt_descripcion" runat="server" Width="200px" 
                                AutoPostBack="True"></asp:TextBox>
                                </td>
                                <td style="text-align: left">
                                    <asp:ImageButton ID="ImageButton2" runat="server" 
                                ImageUrl="~/images/controles/find.png" ToolTip="Buscar" />
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: left" colspan="3">
                                    <asp:GridView ID="grilla_departamentos" runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" 
                    BorderWidth="1px" CellPadding="2" DataKeyNames="cod_departamento" 
                    DataSourceID="departamentos_con" ForeColor="Black" GridLines="None" Width="100%" 
                                style="text-align: center">
                                        <Columns>
                                            <asp:TemplateField ShowHeader="False">
                                                <EditItemTemplate>
                                                    <asp:ImageButton ID="ImageButton1" runat="server" CausesValidation="True" 
                                    CommandName="Update" ImageUrl="~/images/controles/b_grabar.gif" 
                                    Text="Update" ToolTip="Guardar" />
                                                    &nbsp;<asp:ImageButton ID="ImageButton4" runat="server" CausesValidation="False" 
                                    CommandName="Cancel" ImageUrl="~/images/controles/b_cancelar.gif" 
                                    Text="Cancel" ToolTip="Cancelar" />
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <asp:ImageButton ID="ImageButton5" runat="server" CausesValidation="False" 
                                    CommandName="Edit" ImageUrl="~/images/controles/b_modificar.gif" Text="Edit" 
                                    ToolTip="Modificar" />
                                                    &nbsp;<asp:ImageButton ID="ImageButton6" runat="server" CausesValidation="False" 
                                    CommandName="Delete" ImageUrl="~/images/controles/b_eliminar.gif" 
                                    onclientclick="return confirm('Está Seguro que desea eliminar este registro ?')" 
                                    Text="Delete" ToolTip="Eliminar" />
                                                </ItemTemplate>
                                                <HeaderStyle HorizontalAlign="Left" />
                                                <ItemStyle HorizontalAlign="Left" />
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="cod_departamento" HeaderText="Código" 
                            InsertVisible="False" ReadOnly="True" SortExpression="cod_departamento" >
                                                <HeaderStyle HorizontalAlign="Center" />
                                                <ItemStyle HorizontalAlign="Center" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="descripcion" HeaderText="Descripción" 
                            SortExpression="descripcion" >
                                                <HeaderStyle HorizontalAlign="Left" />
                                                <ItemStyle HorizontalAlign="Left" />
                                            </asp:BoundField>
                                        </Columns>
                                        <FooterStyle BackColor="Tan" />
                                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                        HorizontalAlign="Center" />
                                        <EmptyDataTemplate>
                                            <asp:Label ID="Label1" runat="server" ForeColor="Red" 
                                                Text="No se ha encontrado coincidencias."></asp:Label>
                                        </EmptyDataTemplate>
                                        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                                        <HeaderStyle BackColor="Tan" Font-Bold="True" />
                                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                                    </asp:GridView>
                                </td>
                            </tr>
                        </table>
                        <br />
                    </td>
                </tr>
            </table>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

