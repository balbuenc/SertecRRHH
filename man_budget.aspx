<%@ Page Title="" Language="VB" MasterPageFile="~/menu_master.master" AutoEventWireup="false" CodeFile="man_budget.aspx.vb" Inherits="man_budget" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
        }
        .style9
        {
            width: 59%;
        }
        .style13
        {
            width: 208px;
        }
        .style14
        {
            width: 354px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <table align="center" class="style3">
                <tr>
                    <td colspan="2" style="text-align: center">
                        <table align="center" class="style3">
                            <tr>
                                <td class="style14">
                                    &nbsp;</td>
                                <td class="style13" 
                            
                            style="font-family: 'Trebuchet MS'; font-size: large; font-weight: bolder;" 
                            valign="top">
                                    Budget</td>
                                <td style="text-align: right">
                                    <asp:ImageButton ID="ImageButton2" runat="server" 
                                ImageUrl="~/images/controles/salir32.png" PostBackUrl="~/home.aspx" 
                                ToolTip="Volver al Menu Principal" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center" width="500">
                        <br />
                        <asp:FormView ID="form_budget" runat="server" 
                    DataKeyNames="año,cod_gerencia,cod_area" DataSourceID="budget_con" 
                    DefaultMode="Insert" Width="100%">
                            <EditItemTemplate>
                                año:
                                <asp:Label ID="añoLabel1" runat="server" Text='<%# Eval("año") %>' />
                                <br />
                                cod_gerencia:
                                <asp:Label ID="cod_gerenciaLabel1" runat="server" 
                            Text='<%# Eval("cod_gerencia") %>' />
                                <br />
                                cod_area:
                                <asp:Label ID="cod_areaLabel1" runat="server" Text='<%# Eval("cod_area") %>' />
                                <br />
                                contrato_normal:
                                <asp:TextBox ID="contrato_normalTextBox" runat="server" 
                            Text='<%# Bind("contrato_normal") %>' />
                                <br />
                                pasante:
                                <asp:TextBox ID="pasanteTextBox" runat="server" Text='<%# Bind("pasante") %>' />
                                <br />
                                tercerizado:
                                <asp:TextBox ID="tercerizadoTextBox" runat="server" 
                            Text='<%# Bind("tercerizado") %>' />
                                <br />
                                total:
                                <asp:TextBox ID="totalTextBox" runat="server" Text='<%# Bind("total") %>' />
                                <br />
                                <asp:ImageButton ID="UpdateButton" runat="server" CausesValidation="True" 
                            CommandName="Update" Text="Update" />
                                &nbsp;<asp:ImageButton ID="UpdateCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <br />
                                <table align="center" 
                            style="font-family: 'Trebuchet MS'; font-size: small; height: 200px;">
                                    <tr>
                                        <td style="text-align: right">
                                            Año:</td>
                                        <td style="text-align: left" width="306">
                                            <asp:TextBox ID="añoTextBox" runat="server" 
                                        Text='<%# Bind("año") %>' Width="50px" />
                                        </td>
                                        <td style="text-align: left">
                                            <asp:RequiredFieldValidator ID="rv_año" runat="server" 
                                        ControlToValidate="añoTextBox" ErrorMessage="*" Enabled="False"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right">
                                            Gerencia:</td>
                                        <td style="text-align: left">
                                            <asp:DropDownList ID="ddl_gerencias" runat="server" 
                                        DataSourceID="gerencias_con" DataTextField="descripcion" 
                                        DataValueField="cod_gerencia" 
                                        SelectedValue='<%# Bind("cod_gerencia") %>' Width="306px" 
                                        AutoPostBack="True">
                                            </asp:DropDownList>
                                        </td>
                                        <td style="text-align: left">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right">
                                            Area:</td>
                                        <td style="text-align: left">
                                            <asp:DropDownList ID="ddl_areas" runat="server" 
                                        DataSourceID="areas_con" DataTextField="descripcion" 
                                        DataValueField="cod_area" SelectedValue='<%# devuelve_cadena (DataBinder.Eval (Container.DataItem, "cod_area")) %>' 
                                        Width="306px">
                                            </asp:DropDownList>
                                        </td>
                                        <td style="text-align: left">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right">
                                            Contrato Normal:</td>
                                        <td style="text-align: left">
                                            <asp:TextBox ID="contrato_normalTextBox" runat="server" 
                                        Text='<%# Bind("contrato_normal") %>' Width="300px" />
                                        </td>
                                        <td style="text-align: left">
                                            <asp:RequiredFieldValidator ID="rv_contrato" runat="server" 
                                        ControlToValidate="contrato_normalTextBox" ErrorMessage="*" Enabled="False"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right">
                                            Pasante:</td>
                                        <td style="text-align: left">
                                            <asp:TextBox ID="pasanteTextBox" runat="server" Text='<%# Bind("pasante") %>' 
                                        Width="300px" />
                                        </td>
                                        <td style="text-align: left">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right">
                                            Tercerizado:</td>
                                        <td style="text-align: left">
                                            <asp:TextBox ID="tercerizadoTextBox" runat="server" 
                                        Text='<%# Bind("tercerizado") %>' Width="300px" />
                                        </td>
                                        <td style="text-align: left">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right">
                                            Total:</td>
                                        <td style="text-align: left">
                                            <asp:TextBox ID="totalTextBox" runat="server" Text='<%# Bind("total") %>' 
                                        Width="300px" />
                                        </td>
                                        <td style="text-align: left">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right">
                                            &nbsp;</td>
                                        <td style="text-align: left">
                                            <asp:TextBox ID="txt_empresa" runat="server" Text='<%# Bind("cod_empresa") %>' 
                                                Visible="False"></asp:TextBox>
                                        </td>
                                        <td style="text-align: left">
                                            &nbsp;</td>
                                    </tr>
                                </table>
                                &nbsp;<table align="center" class="style9">
                                    <tr>
                                        <td>
                                            <asp:ImageButton ID="InsertButton_form" runat="server" CausesValidation="True" 
                                        CommandName="Insert" Text="Insert" ImageUrl="~/images/controles/add.png" 
                                        ToolTip="Agregar" onclick="InsertButton_form_Click" />
                                        </td>
                                        <td width="150">
                                            &nbsp;</td>
                                        <td>
                                            <asp:ImageButton ID="InsertCancelButton_form" runat="server" CausesValidation="False" 
                                        CommandName="Cancel" Text="Cancel" 
                                        ImageUrl="~/images/controles/cancel.png" ToolTip="Cancelar Inserción" />
                                        </td>
                                    </tr>
                                </table>
                                <table align="center">
                                    <tr>
                                        <td>
                                            <asp:SqlDataSource ID="areas_con" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
                                        
                                        
                                                SelectCommand="SELECT cod_area, descripcion FROM areas WHERE (cod_gerencia = @cod_gerencia)">
                                                <SelectParameters>
                                                    <asp:ControlParameter ControlID="ddl_gerencias" Name="cod_gerencia" 
                                                PropertyName="SelectedValue" />
                                                </SelectParameters>
                                            </asp:SqlDataSource>
                                        </td>
                                        <td>
                                            <asp:SqlDataSource ID="gerencias_con" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
                                        SelectCommand="SELECT [cod_gerencia], [descripcion] FROM [gerencias]">
                                            </asp:SqlDataSource>
                                        </td>
                                    </tr>
                                </table>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                año:
                                <asp:Label ID="añoLabel" runat="server" Text='<%# Eval("año") %>' />
                                <br />
                                cod_gerencia:
                                <asp:Label ID="cod_gerenciaLabel" runat="server" 
                            Text='<%# Eval("cod_gerencia") %>' />
                                <br />
                                cod_area:
                                <asp:Label ID="cod_areaLabel" runat="server" Text='<%# Eval("cod_area") %>' />
                                <br />
                                contrato_normal:
                                <asp:Label ID="contrato_normalLabel" runat="server" 
                            Text='<%# Bind("contrato_normal") %>' />
                                <br />
                                pasante:
                                <asp:Label ID="pasanteLabel" runat="server" Text='<%# Bind("pasante") %>' />
                                <br />
                                tercerizado:
                                <asp:Label ID="tercerizadoLabel" runat="server" 
                            Text='<%# Bind("tercerizado") %>' />
                                <br />
                                total:
                                <asp:Label ID="totalLabel" runat="server" Text='<%# Bind("total") %>' />
                                <br />
                                <asp:ImageButton ID="EditButton" runat="server" CausesValidation="False" 
                            CommandName="Edit" Text="Edit" />
                                &nbsp;<asp:ImageButton ID="DeleteButton" runat="server" CausesValidation="False" 
                            CommandName="Delete" Text="Delete" />
                                &nbsp;<asp:ImageButton ID="NewButton" runat="server" CausesValidation="False" 
                            CommandName="New" Text="New" />
                            </ItemTemplate>
                        </asp:FormView>
                        <asp:SqlDataSource ID="budget_con" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
                    DeleteCommand="DELETE FROM [budget] WHERE [año] = @año AND [cod_gerencia] = @cod_gerencia AND [cod_area] = @cod_area" 
                    InsertCommand="INSERT INTO [budget] ([año], [cod_gerencia], [cod_area], [contrato_normal], [pasante], [tercerizado], [total], cod_empresa) VALUES (@año, @cod_gerencia, @cod_area, @contrato_normal, @pasante, @tercerizado, @total, @cod_empresa)" 
                    SelectCommand="SELECT budget.año, budget.cod_gerencia, budget.cod_area, budget.contrato_normal, budget.pasante, budget.tercerizado, budget.total, gerencias_1.descripcion AS gerencia, areas.descripcion AS area, budget.cod_empresa FROM budget INNER JOIN areas ON budget.cod_area = areas.cod_area LEFT OUTER JOIN gerencias AS gerencias_1 ON areas.cod_gerencia = gerencias_1.cod_gerencia AND budget.cod_gerencia = gerencias_1.cod_gerencia
WHERE (budget.cod_empresa = @cod_empresa) 
AND (budget.cod_gerencia = @cod_gerencia) 
AND (budget.cod_area = @cod_area)
" 
                    
                    
                    UpdateCommand="UPDATE [budget] 
SET [contrato_normal] = @contrato_normal, 
[pasante] = @pasante, 
[tercerizado] = @tercerizado, 
[total] = @total
WHERE [año] = @año AND [cod_gerencia] = @cod_gerencia AND [cod_area] = @cod_area
AND [cod_empresa] = @cod_empresa">
                            <SelectParameters>
                                <asp:SessionParameter Name="cod_empresa" SessionField="sv_empresa" />
                                <asp:ControlParameter ControlID="hf_gerencia_busca" Name="cod_gerencia" 
                                    PropertyName="Value" />
                                <asp:ControlParameter ControlID="hf_areas_busca" Name="cod_area" 
                                    PropertyName="Value" />
                            </SelectParameters>
                            <DeleteParameters>
                                <asp:Parameter Name="año" Type="Int16" />
                                <asp:Parameter Name="cod_gerencia" Type="Int16" />
                                <asp:Parameter Name="cod_area" Type="Int16" />
                            </DeleteParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="contrato_normal" Type="Decimal" />
                                <asp:Parameter Name="pasante" Type="Decimal" />
                                <asp:Parameter Name="tercerizado" Type="Decimal" />
                                <asp:Parameter Name="total" Type="Decimal" />
                                <asp:Parameter Name="año" Type="Int16" />
                                <asp:Parameter Name="cod_gerencia" Type="Int16" />
                                <asp:Parameter Name="cod_area" Type="Int16" />
                                <asp:Parameter Name="cod_empresa" />
                            </UpdateParameters>
                            <InsertParameters>
                                <asp:Parameter Name="año" Type="Int16" />
                                <asp:Parameter Name="cod_gerencia" Type="Int16" />
                                <asp:Parameter Name="cod_area" Type="Int16" />
                                <asp:Parameter Name="contrato_normal" Type="Decimal" />
                                <asp:Parameter Name="pasante" Type="Decimal" />
                                <asp:Parameter Name="tercerizado" Type="Decimal" />
                                <asp:Parameter Name="total" Type="Decimal" />
                                <asp:Parameter Name="cod_empresa" />
                            </InsertParameters>
                        </asp:SqlDataSource>
                        <asp:HiddenField ID="hf_gerencia" runat="server" />
                        <asp:HiddenField ID="hf_areas_busca" runat="server" />
                        <asp:HiddenField ID="hf_gerencia_busca" runat="server" />
                        <asp:SqlDataSource ID="areas_busca" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
                            SelectCommand="SELECT [cod_area], [descripcion] FROM [areas] WHERE cod_gerencia = @cod_gerencia">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="ddl_gerencia_busca" Name="cod_gerencia" 
                                    PropertyName="SelectedValue" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:SqlDataSource ID="gerencias_busca" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
                            SelectCommand="SELECT [cod_gerencia], [descripcion] FROM [gerencias]">
                        </asp:SqlDataSource>
                    </td>
                    <td style="text-align: center; font-family: 'Trebuchet MS'; font-size: small;" 
                valign="top">
                        <br />
                        <table align="center">
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    Filtre por:
                                </td>
                                <td rowspan="4">
                                    <asp:ImageButton ID="ImageButton3" runat="server" 
                                        ImageUrl="~/images/controles/find.png" />
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: right">
                                    Año:</td>
                                <td style="text-align: left">
                                    <asp:TextBox ID="txt_año" runat="server" Width="50px" AutoPostBack="True"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: right">
                                    Gerencia:</td>
                                <td style="text-align: left">
                                    <asp:DropDownList ID="ddl_gerencia_busca" runat="server" AutoPostBack="True" 
                                        DataSourceID="gerencias_busca" DataTextField="descripcion" 
                                        DataValueField="cod_gerencia" Width="300px">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: right">
                                    Area:</td>
                                <td style="text-align: left">
                                    <asp:DropDownList ID="ddl_area_busca" runat="server" DataSourceID="areas_busca" 
                                        DataTextField="descripcion"  
                                        DataValueField="cod_area" 
                                        Width="300px" AutoPostBack="True">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                        </table>
                        <br />
                        <asp:DetailsView ID="grid_budget" runat="server" AllowPaging="True" 
                            AutoGenerateRows="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" 
                            BorderWidth="1px" CellPadding="2" DataKeyNames="año,cod_gerencia,cod_area" 
                            DataSourceID="budget_con" ForeColor="Black" GridLines="None" Height="50px" 
                            Width="450px">
                            <FooterStyle BackColor="Tan" />
                            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                                HorizontalAlign="Center" />
                            <EmptyDataTemplate>
                                <asp:Label ID="Label6" runat="server" ForeColor="#FF3300" 
                                    Text="No se encuantra el registro"></asp:Label>
                            </EmptyDataTemplate>
                            <Fields>
                                <asp:BoundField DataField="año" HeaderText="Año:" ReadOnly="True" 
                                    SortExpression="año">
                                    <HeaderStyle HorizontalAlign="Left" />
                                    <ItemStyle HorizontalAlign="Left" />
                                </asp:BoundField>
                                <asp:TemplateField HeaderText="Gerencia:" SortExpression="gerencia">
                                    <EditItemTemplate>
                                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("gerencia") %>'></asp:Label>
                                    </EditItemTemplate>
                                    <InsertItemTemplate>
                                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("gerencia") %>'></asp:TextBox>
                                    </InsertItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("gerencia") %>'></asp:Label>
                                    </ItemTemplate>
                                    <HeaderStyle HorizontalAlign="Left" />
                                    <ItemStyle HorizontalAlign="Left" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Area:" SortExpression="area">
                                    <EditItemTemplate>
                                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("area") %>'></asp:Label>
                                    </EditItemTemplate>
                                    <InsertItemTemplate>
                                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("area") %>'></asp:TextBox>
                                    </InsertItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("area") %>'></asp:Label>
                                    </ItemTemplate>
                                    <HeaderStyle HorizontalAlign="Left" />
                                    <ItemStyle HorizontalAlign="Left" />
                                </asp:TemplateField>
                                <asp:BoundField DataField="contrato_normal" HeaderText="Contrato Normal:" 
                                    SortExpression="contrato_normal">
                                    <HeaderStyle HorizontalAlign="Left" Width="110px" />
                                    <ItemStyle HorizontalAlign="Left" />
                                </asp:BoundField>
                                <asp:BoundField DataField="pasante" HeaderText="Pasante:" 
                                    SortExpression="pasante">
                                    <HeaderStyle HorizontalAlign="Left" />
                                    <ItemStyle HorizontalAlign="Left" />
                                </asp:BoundField>
                                <asp:BoundField DataField="tercerizado" HeaderText="Tercerizado:" 
                                    SortExpression="tercerizado">
                                    <HeaderStyle HorizontalAlign="Left" />
                                    <ItemStyle HorizontalAlign="Left" />
                                </asp:BoundField>
                                <asp:BoundField DataField="total" HeaderText="Total:" SortExpression="total">
                                    <HeaderStyle HorizontalAlign="Left" />
                                    <ItemStyle HorizontalAlign="Left" />
                                </asp:BoundField>
                                <asp:TemplateField SortExpression="cod_empresa">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("cod_empresa") %>' 
                                            Visible="False"></asp:TextBox>
                                    </EditItemTemplate>
                                    <InsertItemTemplate>
                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("cod_empresa") %>' 
                                            Visible="False"></asp:TextBox>
                                    </InsertItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("cod_empresa") %>' 
                                            Visible="False"></asp:Label>
                                    </ItemTemplate>
                                    <HeaderStyle HorizontalAlign="Left" />
                                    <ItemStyle HorizontalAlign="Left" />
                                </asp:TemplateField>
                                <asp:CommandField ButtonType="Image" 
                                    CancelImageUrl="~/images/controles/b_cancelar.gif" 
                                    DeleteImageUrl="~/images/controles/b_eliminar.gif" 
                                    EditImageUrl="~/images/controles/b_modificar.gif" ShowDeleteButton="True" 
                                    ShowEditButton="True" UpdateImageUrl="~/images/controles/b_grabar.gif">
                                    <ItemStyle HorizontalAlign="Left" />
                                </asp:CommandField>
                            </Fields>
                            <HeaderStyle BackColor="Tan" Font-Bold="True" />
                            <EditRowStyle BackColor="LightGoldenrodYellow" ForeColor="Black" />
                            <AlternatingRowStyle BackColor="PaleGoldenrod" />
                        </asp:DetailsView>
                    </td>
                </tr>
            </table>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

