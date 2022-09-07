<%@ Page Title="" Language="VB" MasterPageFile="~/menu_master.master" AutoEventWireup="false" CodeFile="man_bancos.aspx.vb" Inherits="man_bancos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
        }
        .style4
        {
            width: 100%;
            height: 54px;
        }
        .style11
        {
            width: 307px;
        }
        .style12
        {
            width: 226px;
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
                                <td align="center" 
                            
                            style="font-family: 'Trebuchet MS'; font-size: large; font-weight: bolder; text-align: right;" 
                            class="style11">
                                    &nbsp;</td>
                                <td align="center" 
                            style="font-family: 'Trebuchet MS'; font-size: large; font-weight: bolder" 
                            class="style12" valign="top">
                                    Bancos</td>
                                <td align="center" 
                            
                            
                            
                                    style="font-family: 'Trebuchet MS'; font-size: large; font-weight: bolder; text-align: right;">
                                    <asp:ImageButton ID="ImageButton1" runat="server" 
                                ImageUrl="~/images/controles/salir32.png" PostBackUrl="~/home.aspx" 
                                ToolTip="Volver al Menu Principal" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td align="center" valign="top">
                        <asp:FormView ID="form_bancos" runat="server" DataKeyNames="cod_banco" 
                    DataSourceID="bancos_con" DefaultMode="Insert" style="text-align: center" 
                            Width="100%">
                            <EditItemTemplate>
                                cod_banco:
                                <asp:Label ID="cod_bancoLabel1" runat="server" 
                            Text='<%# Eval("cod_banco") %>' />
                                <br />
                                descripcion:
                                <asp:TextBox ID="descripcionTextBox" runat="server" Height="23px" 
                            Text='<%# Bind("descripcion") %>' Width="150px" />
                                <br />
                                <asp:ImageButton ID="UpdateButton" runat="server" CausesValidation="True" 
                            CommandName="Update" Text="Update" />
                                &nbsp;<asp:ImageButton ID="UpdateCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <table align="center" 
                            style="font-family: 'Trebuchet MS'; font-size: small; width: 333px;">
                                    <tr>
                                        <td width="80">
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right">
                                            Descripción:</td>
                                        <td style="text-align: left">
                                            <asp:TextBox ID="descripcionTextBox" runat="server" 
                                        Text='<%# Bind("descripcion") %>' Width="95%" />
                                        </td>
                                        <td style="text-align: left" width="5">
                                            <asp:RequiredFieldValidator ID="rv_bancos" runat="server" 
                                                ControlToValidate="descripcionTextBox" Enabled="False" 
                                        ErrorMessage="*"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                </table>
                                <br />
                                <table align="center">
                                    <tr>
                                        <td>
                                            <asp:ImageButton ID="InsertButton" runat="server" CausesValidation="True" 
                                        CommandName="Insert" Text="Insert" ImageUrl="~/images/controles/add.png" 
                                        ToolTip="Agregar" onclick="InsertButton_Click" />
                                        </td>
                                        <td style="font-family: 'Trebuchet MS'; font-size: small" width="150">
                                            &nbsp;</td>
                                        <td>
                                            <asp:ImageButton ID="InsertCancelButton" runat="server" CausesValidation="False" 
                                        CommandName="Cancel" Text="Cancel" 
                                        ImageUrl="~/images/controles/cancel.png" ToolTip="Cancelar Inserción" />
                                        </td>
                                    </tr>
                                </table>
                                <br />
                            </InsertItemTemplate>
                            <ItemTemplate>
                                cod_banco:
                                <asp:Label ID="cod_bancoLabel" runat="server" Text='<%# Eval("cod_banco") %>' />
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
                        <asp:SqlDataSource ID="bancos_con" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
                    DeleteCommand="DELETE FROM [bancos] WHERE [cod_banco] = @cod_banco" 
                    InsertCommand="INSERT INTO [bancos] ([descripcion]) VALUES (@descripcion)" 
                    SelectCommand="SELECT cod_banco, descripcion FROM bancos WHERE (descripcion LIKE @descripcion + '%')" 
                    
                    
                    
                            UpdateCommand="UPDATE [bancos] SET [descripcion] = @descripcion WHERE [cod_banco] = @cod_banco">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="txt_descripcion" Name="descripcion" 
                            PropertyName="Text" />
                            </SelectParameters>
                            <DeleteParameters>
                                <asp:Parameter Name="cod_banco" Type="Int16" />
                            </DeleteParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="descripcion" Type="String" />
                                <asp:Parameter Name="cod_banco" Type="Int16" />
                            </UpdateParameters>
                            <InsertParameters>
                                <asp:Parameter Name="descripcion" Type="String" />
                            </InsertParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td align="center" valign="top" 
                style="font-family: 'Trebuchet MS'; font-size: small">
                        <table align="center" 
                    style="font-family: 'Trebuchet MS'; font-size: small; width: 435px;">
                            <tr>
                                <td style="text-align: left" width="170">
                                    Busque por Descripción:
                                </td>
                                <td style="text-align: left">
                                    <asp:TextBox ID="txt_descripcion" runat="server" 
                                style="text-align: left" Width="200px"></asp:TextBox>
                                </td>
                                <td style="text-align: right" width="80">
                                    <asp:ImageButton ID="ImageButton2" runat="server" 
                                ImageUrl="~/images/controles/find.png" />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3">
                                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" 
                    BorderWidth="1px" CellPadding="2" DataKeyNames="cod_banco" 
                    DataSourceID="bancos_con" ForeColor="Black" GridLines="None" Width="100%" 
                                HorizontalAlign="Left">
                                        <RowStyle HorizontalAlign="Left" />
                                        <Columns>
                                            <asp:TemplateField ShowHeader="False">
                                                <EditItemTemplate>
                                                    <asp:ImageButton ID="ImageButton1" runat="server" CausesValidation="True" 
                                                        CommandName="Update" ImageUrl="~/images/controles/b_grabar.gif" Text="Update" 
                                                        ToolTip="Guardar" />
                                                    &nbsp;<asp:ImageButton ID="ImageButton2" runat="server" CausesValidation="False" 
                                                        CommandName="Cancel" ImageUrl="~/images/controles/b_cancelar.gif" 
                                                        Text="Cancel" />
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <asp:ImageButton ID="ImageButton1" runat="server" CausesValidation="False" 
                                                        CommandName="Edit" ImageUrl="~/images/controles/b_modificar.gif" Text="Edit" 
                                                        ToolTip="Modificar" />
                                                    &nbsp;<asp:ImageButton ID="ImageButton2" runat="server" CausesValidation="False" 
                                                        CommandName="Delete" ImageUrl="~/images/controles/b_eliminar.gif" 
                                                        onclientclick="return confirm('Está Seguro que desea eliminar el Banco?')" 
                                                        Text="Delete" ToolTip="Eliminar" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="cod_banco" HeaderText="          Código" 
                            InsertVisible="False" ReadOnly="True" SortExpression="cod_banco" >
                                                <FooterStyle HorizontalAlign="Left" />
                                                <HeaderStyle HorizontalAlign="Center" />
                                                <ItemStyle HorizontalAlign="Center" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="descripcion" HeaderText="Descripción" 
                            SortExpression="descripcion" />
                                        </Columns>
                                        <FooterStyle BackColor="Tan" />
                                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                        HorizontalAlign="Center" />
                                        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                                        <HeaderStyle BackColor="Tan" Font-Bold="True" HorizontalAlign="Left" />
                                        <EditRowStyle HorizontalAlign="Left" />
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

