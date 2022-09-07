<%@ Page Title="" Language="VB" MasterPageFile="~/menu_master.master" AutoEventWireup="false" CodeFile="man_causas_egresos.aspx.vb" Inherits="man_causas_egresos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
        }
        .style9
        {
            width: 66%;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <table align="center" class="style3">
                <tr>
                    <td colspan="2">
                        <table align="left" width="100%">
                            <tr>
                                <td 
                            
                            
                            
                            
                            style="font-family: 'Trebuchet MS'; font-size: large; font-weight: bolder; text-align: center;" 
                            valign="top">
                                    Causas Egresos</td>
                                <td style="text-align: right" align="right" 
                            width="100px">
                                    <asp:ImageButton ID="ImageButton1" runat="server" 
                                ImageUrl="~/images/controles/salir32.png" PostBackUrl="~/home.aspx" 
                                ToolTip="Volver al Menu Principal" />
                                </td>
                            </tr>
                        </table>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td align="center" valign="top" width="450">
                        <br />
                        <asp:FormView ID="form_causas_egresos" runat="server" DataKeyNames="cod_causa_egreso" 
                    DataSourceID="causas_egresos_con" Width="90%" 
                    DefaultMode="Insert" style="text-align: center">
                            <EditItemTemplate>
                                cod_causa_egreso:
                                <asp:Label ID="cod_causa_egresoLabel1" runat="server" 
                            Text='<%# Eval("cod_causa_egreso") %>' />
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
                            style="font-family: 'Trebuchet MS'; font-size: small" width="100%">
                                    <tr>
                                        <td width="80">
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Descripción:</td>
                                        <td style="text-align: left">
                                            <asp:TextBox ID="descripcionTextBox" runat="server" 
                                        Text='<%# Bind("descripcion") %>' Width="98%" />
                                        </td>
                                        <td style="text-align: left" width="5">
                                            <asp:RequiredFieldValidator ID="rv_descripcion" runat="server" 
                                                ControlToValidate="descripcionTextBox" Enabled="False" 
                                        ErrorMessage="*"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                </table>
                                <br />
                                <br />
                                <table align="center" class="style9">
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
                                cod_causa_egreso:
                                <asp:Label ID="cod_causa_egresoLabel" runat="server" 
                            Text='<%# Eval("cod_causa_egreso") %>' />
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
                        <asp:SqlDataSource ID="causas_egresos_con" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
                    DeleteCommand="DELETE FROM [causas_egresos] WHERE [cod_causa_egreso] = @cod_causa_egreso" 
                    InsertCommand="INSERT INTO [causas_egresos] ([descripcion]) VALUES (@descripcion)" 
                    SelectCommand="SELECT cod_causa_egreso, descripcion FROM causas_egresos WHERE (descripcion LIKE @descripcion + '%')" 
                    
                    
                    
                            UpdateCommand="UPDATE [causas_egresos] SET [descripcion] = @descripcion WHERE [cod_causa_egreso] = @cod_causa_egreso">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="txt_descripcion" Name="descripcion" 
                            PropertyName="Text" />
                            </SelectParameters>
                            <DeleteParameters>
                                <asp:Parameter Name="cod_causa_egreso" Type="Int16" />
                            </DeleteParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="descripcion" Type="String" />
                                <asp:Parameter Name="cod_causa_egreso" Type="Int16" />
                            </UpdateParameters>
                            <InsertParameters>
                                <asp:Parameter Name="descripcion" Type="String" />
                            </InsertParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td style="text-align: center" valign="top">
                        <br />
                        <table 
                    style="font-family: 'Trebuchet MS'; font-size: small">
                            <tr>
                                <td>
                                    Busque por Descripción:</td>
                                <td>
                                    <asp:TextBox ID="txt_descripcion" runat="server" Height="20px" 
                                style="text-align: left" Width="200px" 
                                AutoPostBack="True"></asp:TextBox>
                                </td>
                                <td style="text-align: left">
                                    <asp:ImageButton ID="ImageButton2" runat="server" 
                                ImageUrl="~/images/controles/find.png" ToolTip="Buscar" />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3" 
                            style="font-family: 'Trebuchet MS'; font-size: small">
                                    <asp:GridView ID="grid_causas_egresos" runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" 
                    BorderWidth="1px" CellPadding="2" DataKeyNames="cod_causa_egreso" 
                    DataSourceID="causas_egresos_con" ForeColor="Black" GridLines="None" 
                    Width="100%">
                                        <Columns>
                                            <asp:TemplateField ShowHeader="False">
                                                <EditItemTemplate>
                                                    <asp:ImageButton ID="ImageButton3" runat="server" 
                                    CausesValidation="True" CommandName="Update" 
                                    ImageUrl="~/images/controles/b_grabar.gif" Text="Update" ToolTip="Modificar" />
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
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="cod_causa_egreso" HeaderText="Código" 
                            InsertVisible="False" ReadOnly="True" SortExpression="cod_causa_egreso" >
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

