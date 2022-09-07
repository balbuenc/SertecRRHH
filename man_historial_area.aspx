<%@ Page Title="" Language="VB" MasterPageFile="~/menu_master.master" AutoEventWireup="false" CodeFile="man_historial_area.aspx.vb" Inherits="man_historial_cambios_area" %>

<%@ Register assembly="ComponentArt.Web.UI" namespace="ComponentArt.Web.UI" tagprefix="ComponentArt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style3
        {
            width: 100%;
        }
        .style4
        {
            width: 88%;
        }
        .style22
        {
            width: 90%;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <table align="center" class="style3">
                <tr>
                    <td align="center" style="text-align: right">
                        <asp:ImageButton ID="ImageButton3" runat="server" Height="32px" 
                            ImageUrl="~/images/controles/salir32.png" Width="32px" />
                    </td>
                </tr>
                <tr>
                    <td align="center">
                        <table align="center" width="590">
                            <tr>
                                <td align="center" 
                                    style="font-family: 'Trebuchet MS'; font-size: large; font-weight: bolder">
                                    Historial de Areas</td>
                                <td style="text-align: center">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td align="center" style="font-family: 'Trebuchet MS'; font-size: x-large">
                                    <asp:FormView ID="FormView2" runat="server" DataSourceID="funcionarios_con" 
                                        Width="100%">
                                        <EditItemTemplate>
                                            funcionario:
                                            <asp:TextBox ID="funcionarioTextBox" runat="server" 
                                                Text='<%# Bind("funcionario") %>' />
                                            <br />
                                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                                                CommandName="Update" Text="Update" />
                                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                                                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            funcionario:
                                            <asp:TextBox ID="funcionarioTextBox" runat="server" 
                                                Text='<%# Bind("funcionario") %>' />
                                            <br />
                                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                                                CommandName="Insert" Text="Insert" />
                                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                                                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="funcionarioLabel" runat="server" ForeColor="#0066FF" 
                                                Text='<%# Bind("funcionario") %>' Width="100%" />
                                            <br />
                                        </ItemTemplate>
                                    </asp:FormView>
                                </td>
                                <td style="text-align: center">
                                    <asp:ImageButton ID="ImageButton1" runat="server" 
                                        ImageUrl="~/images/controles/find.png" 
                                        onclientclick="var wBusqueda = window.open('busca_funcionarios_historial_areas.aspx','wBusqeuda','width=500,height=500, left = 262, top = 134');return false" />
                                </td>
                            </tr>
                            <tr>
                                <td align="center" style="font-family: 'Trebuchet MS'; font-size: small" 
                                    width="525">
                                    &nbsp;</td>
                                <td style="text-align: center">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td align="center" height="30" 
                                    style="font-family: 'Trebuchet MS'; font-size: small; text-align: center;" 
                                    valign="top" width="525">
                                    <asp:Label ID="lb_mensaje" runat="server" ForeColor="#FF3300" Width="100%"></asp:Label>
                                </td>
                                <td style="text-align: center">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td align="center" 
                                    style="font-family: 'Trebuchet MS'; font-size: small; text-align: center;" 
                                    width="525">
                                    Inserte nuevo Registro:</td>
                                <td style="text-align: center">
                                    &nbsp;</td>
                            </tr>
                        </table>
                        <table align="center" class="style4">
                            <tr>
                                <td style="font-family: 'Trebuchet MS'; font-size: small">
                                    <asp:FormView ID="form_historial_areas" runat="server" 
                                        DataKeyNames="cod_funcionario,fecha,a_cod_area" 
                                        DataSourceID="historial_areas_con" DefaultMode="Insert" Width="100%">
                                        <EditItemTemplate>
                                            cod_funcionario:
                                            <asp:Label ID="cod_funcionarioLabel1" runat="server" 
                                                Text='<%# Eval("cod_funcionario") %>' />
                                            <br />
                                            fecha:
                                            <asp:Label ID="fechaLabel1" runat="server" Text='<%# Eval("fecha") %>' />
                                            <br />
                                            a_cod_area:
                                            <asp:Label ID="a_cod_areaLabel1" runat="server" 
                                                Text='<%# Eval("a_cod_area") %>' />
                                            <br />
                                            a_cod_gerencia:
                                            <asp:TextBox ID="a_cod_gerenciaTextBox" runat="server" 
                                                Text='<%# Bind("a_cod_gerencia") %>' />
                                            <br />
                                            motivo:
                                            <asp:TextBox ID="motivoTextBox" runat="server" Text='<%# Bind("motivo") %>' />
                                            <br />
                                            <asp:ImageButton ID="UpdateButton0" runat="server" CausesValidation="True" 
                                                CommandName="Update" Text="Update" />
                                            &nbsp;<asp:ImageButton ID="UpdateCancelButton0" runat="server" 
                                                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <table align="center" width="100%">
                                                <tr>
                                                    <td height="30" style="text-align: right" width="100">
                                                        Gerencia:</td>
                                                    <td style="text-align: left" width="360">
                                                        <asp:DropDownList ID="ddl_gerencia" runat="server" AutoPostBack="True" 
                                                            DataSourceID="gerencias_con_simple" DataTextField="descripcion" 
                                                            DataValueField="cod_gerencia" SelectedValue='<%# Bind("cod_gerencia") %>' 
                                                            Width="350px">
                                                        </asp:DropDownList>
                                                    </td>
                                                    <td width="5">
                                                        <asp:RequiredFieldValidator ID="rv_gerencia" runat="server" 
                                                            ControlToValidate="ddl_gerencia" Enabled="False" ErrorMessage="*" 
                                                            Font-Size="X-Small"></asp:RequiredFieldValidator>
                                                    </td>
                                                    <td style="text-align: right" width="50">
                                                        Area:</td>
                                                    <td style="text-align: left" width="360">
                                                        <asp:DropDownList ID="ddl_area" runat="server" DataSourceID="areas_con_simple" 
                                                            DataTextField="descripcion" DataValueField="cod_area" 
                                                            SelectedValue='<%# devuelve_cadena (DataBinder.Eval (Container.DataItem, "cod_area")) %>' 
                                                            Width="350px">
                                                        </asp:DropDownList>
                                                    </td>
                                                    <td style="text-align: left" width="50">
                                                        <asp:RequiredFieldValidator ID="rv_area" runat="server" 
                                                            ControlToValidate="ddl_area" Enabled="False" ErrorMessage="*" 
                                                            Font-Size="X-Small"></asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td height="30" style="text-align: right">
                                                        Fecha:</td>
                                                    <td style="text-align: left">
                                                        <asp:TextBox ID="fechaTextBox" runat="server" Text='<%# Bind("fecha") %>' 
                                                            Width="80px" />
                                                    </td>
                                                    <td width="5">
                                                        <asp:RequiredFieldValidator ID="rv_fecha" runat="server" 
                                                            ControlToValidate="fechaTextBox" Enabled="False" ErrorMessage="*" 
                                                            Font-Size="X-Small"></asp:RequiredFieldValidator>
                                                    </td>
                                                    <td style="text-align: right">
                                                        Motivo:</td>
                                                    <td style="text-align: left" width="270">
                                                        <asp:TextBox ID="motivoTextBox" runat="server" Text='<%# Bind("motivo") %>' 
                                                            Width="346px" />
                                                    </td>
                                                    <td style="text-align: left">
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td style="text-align: right">
                                                        &nbsp;</td>
                                                    <td style="text-align: left" width="270px">
                                                        <asp:TextBox ID="cod_funcionarioTextBox" runat="server" Height="16px" 
                                                            Text='<%# Bind("cod_funcionario") %>' Visible="False" />
                                                    </td>
                                                    <td width="5">
                                                        &nbsp;</td>
                                                    <td style="text-align: right">
                                                        &nbsp;</td>
                                                    <td style="text-align: left">
                                                        &nbsp;</td>
                                                    <td style="text-align: left">
                                                        &nbsp;</td>
                                                </tr>
                                            </table>
                                            <table align="center">
                                                <tr>
                                                    <td>
                                                        <asp:ImageButton ID="InsertButton_insert" runat="server" 
                                                            CausesValidation="True" CommandName="Insert" 
                                                            ImageUrl="~/images/controles/add.png" onclick="InsertButton_insert_Click" />
                                                    </td>
                                                    <td width="200">
                                                        &nbsp;</td>
                                                    <td>
                                                        <asp:ImageButton ID="InsertCancelButton0" runat="server" 
                                                            CausesValidation="False" CommandName="Cancel" 
                                                            ImageUrl="~/images/controles/cancel.png" Text="Cancel" />
                                                    </td>
                                                </tr>
                                            </table>
                                            <table align="center">
                                                <tr>
                                                    <td>
                                                        <asp:SqlDataSource ID="gerencias_con_simple" runat="server" 
                                                            ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
                                                            SelectCommand="SELECT [cod_gerencia], [descripcion] FROM [gerencias]">
                                                        </asp:SqlDataSource>
                                                    </td>
                                                    <td>
                                                        <asp:SqlDataSource ID="areas_con_simple" runat="server" 
                                                            ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
                                                            SelectCommand="SELECT cod_area, descripcion FROM areas WHERE (cod_gerencia = @cod_gerencia)">
                                                            <SelectParameters>
                                                                <asp:ControlParameter ControlID="ddl_gerencia" DefaultValue="" 
                                                                    Name="cod_gerencia" PropertyName="SelectedValue" />
                                                            </SelectParameters>
                                                        </asp:SqlDataSource>
                                                    </td>
                                                </tr>
                                            </table>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            cod_funcionario:
                                            <asp:Label ID="cod_funcionarioLabel" runat="server" 
                                                Text='<%# Eval("cod_funcionario") %>' />
                                            <br />
                                            fecha:
                                            <asp:Label ID="fechaLabel" runat="server" Text='<%# Eval("fecha") %>' />
                                            <br />
                                            a_cod_area:
                                            <asp:Label ID="a_cod_areaLabel" runat="server" 
                                                Text='<%# Eval("a_cod_area") %>' />
                                            <br />
                                            a_cod_gerencia:
                                            <asp:Label ID="a_cod_gerenciaLabel" runat="server" 
                                                Text='<%# Bind("a_cod_gerencia") %>' />
                                            <br />
                                            motivo:
                                            <asp:Label ID="motivoLabel" runat="server" Text='<%# Bind("motivo") %>' />
                                            <br />
                                            <asp:ImageButton ID="EditButton" runat="server" CausesValidation="False" 
                                                CommandName="Edit" Text="Edit" />
                                            &nbsp;<asp:ImageButton ID="DeleteButton" runat="server" CausesValidation="False" 
                                                CommandName="Delete" Text="Delete" />
                                            &nbsp;<asp:ImageButton ID="NewButton" runat="server" CausesValidation="False" 
                                                CommandName="New" Text="New" />
                                        </ItemTemplate>
                                    </asp:FormView>
                                    <asp:HiddenField ID="hf_gerencia" runat="server" />
                                </td>
                            </tr>
                            <tr>
                                <td style="font-family: 'Trebuchet MS'; font-size: small">
                                    <asp:GridView ID="grid_historial_areas" runat="server" 
                                        AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" 
                                        BorderWidth="1px" CellPadding="2" DataKeyNames="cod_funcionario,fecha,cod_area" 
                                        DataSourceID="historial_areas_con" ForeColor="Black" GridLines="None" 
                                        Width="100%">
                                        <Columns>
                                            <asp:TemplateField ShowHeader="False">
                                                <ItemTemplate>
                                                    <asp:ImageButton ID="ImageButton1" runat="server" CausesValidation="False" 
                                                        CommandName="Delete" ImageUrl="~/images/controles/b_eliminar.gif" 
                                                        onclientclick="return confirm('Está Seguro que desea eliminar el registro?')" 
                                                        Text="Delete" ToolTip="Eliminar" />
                                                </ItemTemplate>
                                                <HeaderStyle Width="10px" />
                                                <ItemStyle Width="10px" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Fecha" SortExpression="fecha">
                                                <EditItemTemplate>
                                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("fecha", "{0:d}") %>'></asp:Label>
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("fecha", "{0:d}") %>'></asp:Label>
                                                </ItemTemplate>
                                                <HeaderStyle HorizontalAlign="Center" Width="50px" />
                                                <ItemStyle HorizontalAlign="Center" Width="50px" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Area" SortExpression="cod_area">
                                                <EditItemTemplate>
                                                    <asp:Label ID="ldl_grilla_area_edit" runat="server" Text='<%# Eval("area") %>' 
                                                        Width="250px"></asp:Label>
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="lbl_grilla_area" runat="server" Text='<%# Bind("area") %>' 
                                                        Width="250px"></asp:Label>
                                                </ItemTemplate>
                                                <HeaderStyle HorizontalAlign="Left" Width="250px" />
                                                <ItemStyle HorizontalAlign="Left" Width="250px" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Gerencia" SortExpression="cod_gerencia">
                                                <EditItemTemplate>
                                                    <asp:Label ID="lbl_grilla_gerencia_edit" runat="server" 
                                                        Text='<%# Bind("gerencia") %>'></asp:Label>
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="lbl_grilla_gerencia" runat="server" 
                                                        Text='<%# Bind("gerencia") %>' Width="250px"></asp:Label>
                                                </ItemTemplate>
                                                <HeaderStyle HorizontalAlign="Left" Width="380px" />
                                                <ItemStyle HorizontalAlign="Left" Width="380px" />
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="motivo" HeaderText="Motivo" SortExpression="motivo">
                                                <HeaderStyle HorizontalAlign="Left" Width="130px" />
                                                <ItemStyle HorizontalAlign="Left" Width="130px" />
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
                        <br />
                        <table class="style22">
                            <tr>
                                <td>
                                    <asp:SqlDataSource ID="historial_areas_con" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
                                        DeleteCommand="DELETE FROM [historial_areas] WHERE [cod_funcionario] = @cod_funcionario AND [fecha] = @fecha AND [cod_area] = @cod_area" 
                                        InsertCommand="INSERT INTO [historial_areas] ([cod_funcionario], [fecha], [cod_area], [cod_gerencia], [motivo]) VALUES (@cod_funcionario, @fecha, @cod_area, @cod_gerencia, @motivo)" 
                                        SelectCommand="SELECT historial_areas.cod_funcionario, historial_areas.fecha, ISNULL(historial_areas.cod_area, 0) AS cod_area, ISNULL(historial_areas.cod_gerencia, 0) AS cod_gerencia, historial_areas.motivo, gerencias.descripcion AS gerencia, areas.descripcion AS area FROM historial_areas INNER JOIN gerencias ON historial_areas.cod_gerencia = gerencias.cod_gerencia INNER JOIN areas ON historial_areas.cod_area = areas.cod_area AND gerencias.cod_gerencia = areas.cod_gerencia WHERE (historial_areas.cod_funcionario LIKE @campo)" 
                                        UpdateCommand="UPDATE [historial_areas] SET cod_gerencia] = @cod_gerencia, [motivo] = @motivo WHERE [cod_funcionario] = @cod_funcionario AND [fecha] = @fecha AND [cod_area] = @cod_area">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="hf_cod_funcionario" Name="campo" 
                                                PropertyName="Value" />
                                        </SelectParameters>
                                        <DeleteParameters>
                                            <asp:Parameter Name="cod_funcionario" Type="Int16" />
                                            <asp:Parameter Name="fecha" Type="DateTime" />
                                            <asp:Parameter Name="cod_area" />
                                        </DeleteParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="cod_gerencia" />
                                            <asp:Parameter Name="motivo" Type="String" />
                                            <asp:Parameter Name="cod_funcionario" Type="Int16" />
                                            <asp:Parameter Name="fecha" Type="DateTime" />
                                            <asp:Parameter Name="cod_area" />
                                        </UpdateParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="cod_funcionario" Type="Int16" />
                                            <asp:Parameter Name="fecha" Type="DateTime" />
                                            <asp:Parameter Name="cod_area" />
                                            <asp:Parameter Name="cod_gerencia" />
                                            <asp:Parameter Name="motivo" Type="String" />
                                        </InsertParameters>
                                    </asp:SqlDataSource>
                                </td>
                                <td>
                                    <asp:SqlDataSource ID="funcionarios_con" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" SelectCommand="SELECT apellidos + ' , ' + nombres AS funcionario FROM funcionarios 
WHERE funcionarios.cod_funcionario LIKE @campo
">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="hf_cod_funcionario" Name="campo" 
                                                PropertyName="Value" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </td>
                                <td>
                                    <asp:SqlDataSource ID="gerencias_con" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
                                        SelectCommand="SELECT 0 AS cod_gerencia, 'No Asignado' AS descripcion UNION SELECT cod_gerencia, descripcion FROM gerencias">
                                    </asp:SqlDataSource>
                                </td>
                                <td>
                                    <asp:SqlDataSource ID="areas_con" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
                                        SelectCommand="SELECT 0 AS cod_area, 'No Asignado' AS descripcion UNION SELECT cod_area, descripcion FROM areas WHERE (cod_gerencia = @cod_gerencia)">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="hf_gerencia" DefaultValue="" 
                                                Name="cod_gerencia" PropertyName="Value" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:HiddenField ID="hf_cod_funcionario" runat="server" />
                                </td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
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

