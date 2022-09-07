<%@ Page Language="VB" MasterPageFile="~/menu_master.master" AutoEventWireup="false" CodeFile="man_send_mail.aspx.vb" Inherits="man_send_mail" title="Envio de mails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
        }
        .style4
        {
            width: 54px;
        }
        .style5
        {
            width: 831px;
        }
        .style6
        {
            width: 54px;
            height: 57px;
        }
        .style7
        {
            width: 831px;
            height: 57px;
        }
        .style8
        {
            height: 57px;
        }
    </style>
</asp:Content>


<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">

              <table class="style3">
                  <tr>
                      <td class="style4">
                          &nbsp;</td>
                      <td class="style5">
                          &nbsp;</td>
                      <td>
                          &nbsp;</td>
                  </tr>
                  <tr>
                      <td class="style4">
                          &nbsp;</td>
                      <td class="style5">
                          <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                              AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
                              DataKeyNames="codigo" DataSourceID="SqlDataSource1" ForeColor="#333333" 
                              GridLines="None" style="margin-left: 0px" Width="100%">
                              <RowStyle BackColor="#EFF3FB" />
                              <Columns>
                                  <asp:CommandField ShowEditButton="True" />
                                  <asp:BoundField DataField="codigo" HeaderText="codigo" ReadOnly="True" 
                                      SortExpression="codigo" >
                                      <ItemStyle HorizontalAlign="Left" />
                                  </asp:BoundField>
                                  <asp:BoundField DataField="funcionario" HeaderText="funcionario" 
                                      ReadOnly="True" SortExpression="funcionario" >
                                      <ItemStyle HorizontalAlign="Left" />
                                  </asp:BoundField>
                                  <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" >
                                      <ItemStyle HorizontalAlign="Left" />
                                  </asp:BoundField>
                                  <asp:TemplateField HeaderText="enabled" SortExpression="enabled">
                                      <EditItemTemplate>
                                          <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("enabled") %>'></asp:TextBox>
                                      </EditItemTemplate>
                                      <ItemTemplate>
                                          <asp:Label ID="Label1" runat="server" Text='<%# Bind("enabled") %>'></asp:Label>
                                          
                                      </ItemTemplate>
                                  </asp:TemplateField>
                              </Columns>
                              <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                              <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                              <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                              <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                              <EditRowStyle BackColor="#2461BF" />
                              <AlternatingRowStyle BackColor="White" />
                          </asp:GridView>
                          <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                              ConnectionString="<%$ ConnectionStrings:ReportServer$SQL2008ConnectionString %>" 
                              DeleteCommand="DELETE FROM [mails] WHERE [codigo] = @codigo" 
                              InsertCommand="INSERT INTO [mails] ([codigo], [funcionario], [email], [enabled], [cod_funcionario]) VALUES (@codigo, @funcionario, @email, @enabled, @cod_funcionario)" 
                              SelectCommand="SELECT [codigo], [funcionario], [email], [enabled], [cod_funcionario] FROM [mails]" 
                              UpdateCommand="UPDATE [mails] SET [email] = @email, [enabled] = @enabled WHERE [codigo] = @codigo">
                              <DeleteParameters>
                                  <asp:Parameter Name="codigo" Type="Int32" />
                              </DeleteParameters>
                              <UpdateParameters>
                                  
                                  <asp:Parameter Name="email" Type="String" />
                                  <asp:Parameter Name="enabled" Type="Int16" />
                                  
                                  <asp:Parameter Name="codigo" Type="Int32" />
                              </UpdateParameters>
                              <InsertParameters>
                                  <asp:Parameter Name="codigo" Type="Int32" />
                                  <asp:Parameter Name="funcionario" Type="String" />
                                  <asp:Parameter Name="email" Type="String" />
                                  <asp:Parameter Name="enabled" Type="Int16" />
                                  <asp:Parameter Name="cod_funcionario" Type="Int16" />
                              </InsertParameters>
                          </asp:SqlDataSource>
                      </td>
                      <td>
                          &nbsp;</td>
                  </tr>
                  <tr>
                      <td class="style6">
                          </td>
                      <td class="style7">
                          <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                              DataSourceID="SqlDataSource2" DataTextField="informe" 
                              DataValueField="id_informe" Width="322px">
                          </asp:DropDownList>
                          <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                              ConnectionString="<%$ ConnectionStrings:ReportServer$SQL2008ConnectionString %>" 
                              SelectCommand="SELECT [id_informe], [informe] FROM [mails_informes]">
                          </asp:SqlDataSource>
                      </td>
                      <td class="style8">
                          </td>
                  </tr>
                  <tr>
                      <td class="style4">
                          &nbsp;</td>
                      <td class="style5">
                          <asp:DropDownList ID="DropDownList2" runat="server" 
                              DataSourceID="SqlDataSource3" DataTextField="subject" 
                              DataValueField="periodo" Width="317px">
                          </asp:DropDownList>
                          <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                              ConnectionString="<%$ ConnectionStrings:ReportServer$SQL2008ConnectionString %>" 
                              SelectCommand="SELECT [id_informe], [periodo], [subject], [fecha_liquidacion] FROM [mails_periodos] WHERE ([id_informe] = @id_informe)">
                              <SelectParameters>
                                  <asp:ControlParameter ControlID="DropDownList1" Name="id_informe" 
                                      PropertyName="SelectedValue" Type="Int16" />
                              </SelectParameters>
                          </asp:SqlDataSource>
                      </td>
                      <td>
                          &nbsp;</td>
                  </tr>
                  <tr>
                      <td class="style4">
                          &nbsp;</td>
                      <td class="style5">
                          <asp:Button ID="SendMailsBtn" runat="server" Text="Enviar Informes" />
                      </td>
                      <td>
                          &nbsp;</td>
                  </tr>
              </table>
</asp:Content>



