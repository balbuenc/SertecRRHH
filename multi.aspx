<%@ Page Title="" Language="VB" MasterPageFile="~/menu_master.master" AutoEventWireup="false" CodeFile="multi.aspx.vb" Inherits="multi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style3">
        <tr>
            <td>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:FormView ID="FormView1" runat="server" CellPadding="4" DataKeyNames="id" 
                    DataSourceID="tabs_con" ForeColor="#333333">
                            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                            <EditItemTemplate>
                                <table class="style3">
                                    <tr>
                                        <td>
                                            <asp:Menu ID="Menu_tab_insert" runat="server" 
                                        BackColor="#FFFBD6" CssClass="label" DynamicHorizontalOffset="2" 
                                        Font-Names="Verdana" Font-Size="0.8em" ForeColor="#990000" 
                                        onmenuitemclick="Menu_tab_insert_MenuItemClick" Orientation="Horizontal" 
                                        StaticSubMenuIndent="10px" style="font-size: medium">
                                                <%--<StaticSelectedStyle BackColor="#FFCC66" />--%>
                                                <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                                                <DynamicHoverStyle BackColor="#990000" ForeColor="White" />
                                                <DynamicMenuStyle BackColor="#FFFBD6" />
                                                <DynamicSelectedStyle BackColor="#FFCC66" />
                                                <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                                                <StaticHoverStyle BackColor="#990000" ForeColor="White" />
                                                <Items>
                                                    <asp:MenuItem Value="0" ImageUrl="~/images/menu/Empresa_1.gif" Text=" "></asp:MenuItem>
                                                    <asp:MenuItem Value="1" ImageUrl="~/images/menu/Personales_1.gif" Text=" "></asp:MenuItem>
                                                    <asp:MenuItem Text=" " Value="2" ImageUrl="~/images/menu/Personales_1.gif" 
                                                        ToolTip=" "></asp:MenuItem>
                                                </Items>
                                            </asp:Menu>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:MultiView ID="mv_editar" runat="server" 
                                        ActiveViewIndex="0">
                                                <br />
                                                <asp:View ID="View1" runat="server">
                                                    <table class="style3">
                                                        <tr>
                                                            <td>
                                                                id:</td>
                                                            <td>
                                                                <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                campo1:</td>
                                                            <td>
                                                                <asp:TextBox ID="campo1TextBox" runat="server" Text='<%# Bind("campo1") %>' />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                campo2:</td>
                                                            <td>
                                                                <asp:TextBox ID="campo2TextBox" runat="server" Text='<%# Bind("campo2") %>' />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </asp:View>
                                                <br />
                                                <br />
                                                <asp:View ID="View2" runat="server">
                                                    <table class="style3">
                                                        <tr>
                                                            <td>
                                                                campo3:</td>
                                                            <td>
                                                                <asp:TextBox ID="campo3TextBox" runat="server" Text='<%# Bind("campo3") %>' />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                campo4:</td>
                                                            <td>
                                                                <asp:TextBox ID="campo4TextBox" runat="server" Text='<%# Bind("campo4") %>' />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </asp:View>
                                                <br />
                                                <asp:View ID="View3" runat="server">
                                                    olimpia
                                                </asp:View>
                                                <br />
                                                <br />
                                            </asp:MultiView>
                                        </td>
                                    </tr>
                                </table>
                                <br />
                                &nbsp;<br />
                                &nbsp;<br />
                                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                            CommandName="Update" Text="Update" />
                                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                id:
                                <asp:TextBox ID="idTextBox" runat="server" Text='<%# Bind("id") %>' />
                                <br />
                                campo1:
                                <asp:TextBox ID="campo1TextBox0" runat="server" Text='<%# Bind("campo1") %>' />
                                <br />
                                campo2:
                                <asp:TextBox ID="campo2TextBox0" runat="server" Text='<%# Bind("campo2") %>' />
                                <br />
                                campo3:
                                <asp:TextBox ID="campo3TextBox0" runat="server" Text='<%# Bind("campo3") %>' />
                                <br />
                                campo4:
                                <asp:TextBox ID="campo4TextBox0" runat="server" Text='<%# Bind("campo4") %>' />
                                <br />
                                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                            CommandName="Insert" Text="Insert" />
                                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </InsertItemTemplate>
                            <ItemTemplate>
                                id:
                                <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                                <br />
                                campo1:
                                <asp:Label ID="campo1Label" runat="server" Text='<%# Bind("campo1") %>' />
                                <br />
                                campo2:
                                <asp:Label ID="campo2Label" runat="server" Text='<%# Bind("campo2") %>' />
                                <br />
                                campo3:
                                <asp:Label ID="campo3Label" runat="server" Text='<%# Bind("campo3") %>' />
                                <br />
                                campo4:
                                <asp:Label ID="campo4Label" runat="server" Text='<%# Bind("campo4") %>' />
                                <br />
                                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                            CommandName="Edit" Text="Edit" />
                                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                            CommandName="Delete" Text="Delete" />
                                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                            CommandName="New" Text="New" />
                            </ItemTemplate>
                            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        </asp:FormView>
                        <asp:Button ID="Button1" runat="server" Text="Button" />
                        <br />
                        <br />
                        <br />
                        <asp:FormView ID="FormView2" runat="server" AllowPaging="True" 
                            DataKeyNames="cod_funcionario" DataSourceID="SqlDataSource1">
                            <EditItemTemplate>
                                cod_funcionario:
                                <asp:Label ID="cod_funcionarioLabel1" runat="server" 
                                    Text='<%# Eval("cod_funcionario") %>' />
                                <br />
                                codigo:
                                <asp:TextBox ID="codigoTextBox" runat="server" Text='<%# Bind("codigo") %>' />
                                <br />
                                cod_departamento:
                                <br />
                                <asp:DropDownList ID="DropDownList1" runat="server" 
                                    DataSourceID="SqlDataSource2" DataTextField="descripcion" 
                                    DataValueField="cod_departamento" 
                                    SelectedValue='<%# Bind("cod_departamento") %>'>
                                    <asp:ListItem Value="0">nulo</asp:ListItem>
                                </asp:DropDownList>
                                <br />
                                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                                    CommandName="Update" Text="Update" />
                                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                codigo:
                                <asp:TextBox ID="codigoTextBox" runat="server" Text='<%# Bind("codigo") %>' />
                                <br />
                                cod_departamento:
                                <asp:TextBox ID="cod_departamentoTextBox" runat="server" 
                                    Text='<%# Bind("cod_departamento") %>' />
                                <br />
                                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                                    CommandName="Insert" Text="Insert" />
                                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </InsertItemTemplate>
                            <ItemTemplate>
                                cod_funcionario:
                                <asp:Label ID="cod_funcionarioLabel" runat="server" 
                                    Text='<%# Eval("cod_funcionario") %>' />
                                <br />
                                codigo:
                                <asp:Label ID="codigoLabel" runat="server" Text='<%# Bind("codigo") %>' />
                                <br />
                                cod_departamento:
                                <asp:Label ID="cod_departamentoLabel" runat="server" 
                                    Text='<%# Bind("cod_departamento") %>' />
                                <br />
                                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                                    CommandName="Edit" Text="Edit" />
                                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                                    CommandName="Delete" Text="Delete" />
                                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                                    CommandName="New" Text="New" />
                            </ItemTemplate>
                        </asp:FormView>
                        <asp:Menu ID="Menu1" runat="server" BackColor="#FFFBD6" 
                            DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" 
                            ForeColor="#990000" Orientation="Horizontal" StaticSubMenuIndent="10px">
                            <StaticSelectedStyle BackColor="#FFCC66" />
                            <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                            <DynamicHoverStyle BackColor="#990000" ForeColor="White" />
                            <DynamicMenuStyle BackColor="#FFFBD6" />
                            <DynamicSelectedStyle BackColor="#FFCC66" />
                            <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                            <StaticHoverStyle BackColor="#990000" ForeColor="White" />
                            <Items>
                                <asp:MenuItem Text="12" Value="12"></asp:MenuItem>
                                <asp:MenuItem Text="878" Value="878"></asp:MenuItem>
                            </Items>
                        </asp:Menu>
                        <br />
                    </ContentTemplate>
                </asp:UpdatePanel>
            </td>
        </tr>
        <tr>
            <td>
                <asp:SqlDataSource ID="tabs_con" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
                    DeleteCommand="DELETE FROM [tabs] WHERE [id] = @id" 
                    InsertCommand="INSERT INTO [tabs] ([id], [campo1], [campo2], [campo3], [campo4]) VALUES (@id, @campo1, @campo2, @campo3, @campo4)" 
                    SelectCommand="SELECT [id], [campo1], [campo2], [campo3], [campo4] FROM [tabs]" 
                    UpdateCommand="UPDATE [tabs] SET [campo1] = @campo1, [campo2] = @campo2, [campo3] = @campo3, [campo4] = @campo4 WHERE [id] = @id">
                    <DeleteParameters>
                        <asp:Parameter Name="id" Type="Int32" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="campo1" Type="String" />
                        <asp:Parameter Name="campo2" Type="String" />
                        <asp:Parameter Name="campo3" Type="String" />
                        <asp:Parameter Name="campo4" Type="String" />
                        <asp:Parameter Name="id" Type="Int32" />
                    </UpdateParameters>
                    <InsertParameters>
                        <asp:Parameter Name="id" Type="Int32" />
                        <asp:Parameter Name="campo1" Type="String" />
                        <asp:Parameter Name="campo2" Type="String" />
                        <asp:Parameter Name="campo3" Type="String" />
                        <asp:Parameter Name="campo4" Type="String" />
                    </InsertParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
                    DeleteCommand="DELETE FROM [funcionarios] WHERE [cod_funcionario] = @cod_funcionario" 
                    InsertCommand="INSERT INTO [funcionarios] ([codigo], [cod_departamento]) VALUES (@codigo, @cod_departamento)" 
                    SelectCommand="SELECT cod_funcionario, codigo, ISNULL(cod_departamento, 0) AS cod_departamento FROM funcionarios" 
                    UpdateCommand="UPDATE [funcionarios] SET [codigo] = @codigo, [cod_departamento] = @cod_departamento WHERE [cod_funcionario] = @cod_funcionario">
                    <DeleteParameters>
                        <asp:Parameter Name="cod_funcionario" Type="Int16" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="codigo" Type="Int32" />
                        <asp:Parameter Name="cod_departamento" Type="Int16" />
                        <asp:Parameter Name="cod_funcionario" Type="Int16" />
                    </UpdateParameters>
                    <InsertParameters>
                        <asp:Parameter Name="codigo" Type="Int32" />
                        <asp:Parameter Name="cod_departamento" Type="Int16" />
                    </InsertParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
                    SelectCommand="SELECT 0 AS cod_departamento, 'Nulo' AS descripcion UNION SELECT cod_departamento, descripcion FROM departamentos">
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

