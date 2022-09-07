Imports System.Web.Security.Roles
Imports System.Data.SqlClient
Imports System.Data
Imports System.Web.UI




Partial Class menu_master
    Inherits System.Web.UI.MasterPage

    Protected Sub ImageButton1_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton1.Click
        Session.Abandon()
        Response.Redirect("elegir_empresa.aspx")
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'Variables de conexion a datos
        Dim conexion As SqlConnection
        Dim comando As SqlCommand
        Dim url As String


        Dim DB_BI_Settings As ConnectionStringSettings = ConfigurationManager.ConnectionStrings("payrollConnectionString")

        If Not Page.IsPostBack Then



            'verifico que se haya selecionado la empresa abrir cualquier ventana.
            If (Session("sv_empresa") Is Nothing) Then
                Response.Redirect("elegir_empresa.aspx")
            End If

            ''Verifico que el usuario no sea el restrongido
            'If Page.User.Identity.Name = "nahir" Then
            '    UltraWebMenu1.Enabled = False
            '    ButtonRestringed.Visible = True                
            'Else
            '    UltraWebMenu1.Enabled = True
            '    ButtonRestringed.Visible = False
            'End If

            'Muestra el nombre del usuario y la empresa actual
            lb_user.Text = Page.User.Identity.Name + "@" + Session("sv_empresa_descri").ToString

            'If (Roles.IsUserInRole(Page.User.Identity.Name, "dbo_owner")) Then

            '    UltraWebMenu1.Items.Item(1).Hidden = True

            'End If


            '' Codigo de Exportacion de Data al Servidor Data Wharehouse
            If Request.Params.Get("accion") = "exportar" Then
                Try
                    'Se establece la conexion
                    'conexion = New SqlConnection("Data Source=asusisv-rrhh\sql2008;Initial Catalog=payroll_bi;Uid=olap; Pwd=Password2010")
                    conexion = New SqlConnection(DB_BI_Settings.ToString())
                    comando = New SqlCommand()
                    comando.CommandType = Data.CommandType.StoredProcedure
                    comando.Connection = conexion
                    comando.CommandText = "sp_update_database"



                    comando.CommandTimeout = 0
                    comando.ExecuteNonQuery()
                Catch ex As Exception
                    Response.Write(ex.Message)
                End Try


                '' Procesa Los cubos en el Data Wharehouse
                Try
                    'Se establece la conexion
                    conexion = New SqlConnection(DB_BI_Settings.ToString())
                    conexion.Open()

                    comando = New SqlCommand()
                    comando.CommandType = Data.CommandType.StoredProcedure
                    comando.Connection = conexion
                    comando.CommandText = "sp_start_bi_process_job"



                    comando.CommandTimeout = 0
                    comando.ExecuteNonQuery()
                Catch ex As Exception
                    Response.Write(ex.Message)
                End Try
            ElseIf Request.Params.Get("accion") = "novedades" Then

                '' Procesa el Job de importacion de novedades desde archivos excel
                Try
                    'Se establece la conexion
                    conexion = New SqlConnection(DB_BI_Settings.ToString())
                    conexion.Open()

                    comando = New SqlCommand()
                    comando.CommandType = Data.CommandType.StoredProcedure
                    comando.Connection = conexion
                    comando.CommandText = "sp_start_importar_novedades_job"



                    comando.CommandTimeout = 0
                    comando.ExecuteNonQuery()
                Catch ex As Exception
                    Response.Write(ex.Message)
                End Try
            ElseIf Request.Params.Get("accion") = "mails" Then
                '' Procesa el Job de importacion de novedades desde archivos excel
                Try
                    'Se establece la conexion
                    conexion = New SqlConnection(DB_BI_Settings.ToString())
                    conexion.Open()

                    comando = New SqlCommand()
                    comando.CommandType = Data.CommandType.StoredProcedure
                    comando.Connection = conexion
                    comando.CommandText = "sp_send_mails"

                    comando.Parameters.AddWithValue("@p_informe", "DatosPersonales")

                    comando.CommandTimeout = 0
                    comando.ExecuteNonQuery()


                Catch ex As Exception
                    Response.Write(ex.Message)
                End Try
            ElseIf Request.Params.Get("accion") = "dotacion" Then
                url = "http://app.enigmatech.biz/ReportServer/Pages/ReportViewer.aspx?%2fPayrollSSRS%2fDotacionGeneral&rs:Command=Render"

                Dim sb As System.Text.StringBuilder = New System.Text.StringBuilder()
                sb.Append("window.open('")
                sb.Append(url + "',")
                sb.Append("'mywindow', 'channelmode=1, toolbar=0, location=0, status=0, menubar=0, scrollbars=0, resizable=0'")
                sb.Append(");")
                'ClientScript.RegisterStartupScript(GetType(String), "NewWinScript", sb.ToString(), True)


                url = "<script>window.open('http://www.google.com');</script>"


                Response.Redirect(url)



            End If

        End If
    End Sub

    Protected Sub ButtonRestringed_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles ButtonRestringed.Click
        Response.Redirect("man_funcionarios_tab_update.aspx")
    End Sub
End Class

