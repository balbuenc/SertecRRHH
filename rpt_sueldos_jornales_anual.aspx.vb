Imports System.Data.SqlClient

Partial Class rpt_sueldos_jornales_anual
    Inherits System.Web.UI.Page

    'constantes
    Const RENDER_COMMAND As String = "&rs:Command=Render"
    Const TOOLBAR As String = "&rc:Toolbar="
    Const ZOOM As String = "&rc:Zoom="

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            Call obtener_servidor_reporte()
        End If
    End Sub

    Private Sub obtener_servidor_reporte()

        Dim conexion As SqlConnection
        Dim comando As SqlCommand
        Dim dr As SqlDataReader

        conexion = New SqlConnection(historial_conceptos_con.ConnectionString)
        conexion.Open()
        comando = New SqlCommand("select * from parametros where cod_empresa=@cod_empresa and campo=@campo", conexion)

        comando.Parameters.AddWithValue("@cod_empresa", Session("sv_empresa").ToString)
        comando.Parameters.AddWithValue("@campo", "Servidor de Reportes")

        dr = comando.ExecuteReader()

        If dr.Read() Then
            lb_server.Text = dr("v_cadena")
        Else
            lb_server.Text = "No se ha especificado un Servidor de Reportes."
        End If

        dr.Close()
        conexion.Close()
    End Sub

    Protected Sub img_procesar_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles img_procesar.Click
        Dim v_empresa As String
        Dim v_anho As String
		  'Variables de conexion a datos
        Dim conexion As SqlConnection
        Dim comando As SqlCommand



        'se genera la url
        Dim url As String

        url = lb_server.Text _
              + "?" _
              + "/EnigmaSSRS/" _
              + "MJT-RegistroSueldosJornales" _
              + RENDER_COMMAND

        v_empresa = Session("sv_empresa").ToString

        v_anho = txt_año.Text

        url += "&p_anho=" + v_anho



        Dim DB_CORE_Settings As ConnectionStringSettings = ConfigurationManager.ConnectionStrings("payrollConnectionString")



        '' Genera la Planilla para el Ministerio MJT - Carga la tabla MJT
        '      Try
        '          'Se establece la conexion
        '          conexion = New SqlConnection(DB_CORE_Settings.ToString())
        '          conexion.Open()

        '	comando = New SqlCommand()
        '	comando.CommandType = Data.CommandType.StoredProcedure
        '	comando.Connection = conexion
        '	comando.CommandText = "proc_tabular_Sueldos_Jornales_MJT"
        '	comando.Parameters.AddWithValue("@p_anho", v_anho)

        '	comando.CommandTimeout = 0
        '          comando.ExecuteNonQuery()


        '          comando = New SqlCommand()
        '          comando.CommandType = Data.CommandType.StoredProcedure
        '          comando.Connection = conexion
        '          comando.CommandText = "sp_migrar_mjt"
        '          comando.Parameters.AddWithValue("@p_anho", v_anho)

        '          comando.CommandTimeout = 0
        '          comando.ExecuteNonQuery()

        '          conexion.Close()



        'Catch ex As Exception
        '	Response.Write(ex.Message)
        '	return
        'End Try






        Dim sb As System.Text.StringBuilder = New System.Text.StringBuilder()
        sb.Append("window.open('")
        sb.Append("http://app.enigmatech.biz/ReportServer/Pages/ReportViewer.aspx?/EnigmaSSRS/MJT-RegistroSueldosJornales&rs:Command=Render" + "',")
        sb.Append("'mywindow', 'channelmode=1, toolbar=0, location=0, status=0, menubar=0, scrollbars=0, resizable=0'")
        sb.Append(");")


        ScriptManager.RegisterClientScriptBlock(Me.UpdatePanel1, Me.UpdatePanel1.GetType(), "NewWinScript", sb.ToString(), True)

        Dim sb1 As System.Text.StringBuilder = New System.Text.StringBuilder()
        sb1.Append("window.open('")
        sb1.Append("http://app.enigmatech.biz/ReportServer/Pages/ReportViewer.aspx?/EnigmaSSRS/MJT-RegistroEmpleadosObreros&rs:Command=Render" + "',")
        sb1.Append("'mywindow', 'channelmode=1, toolbar=0, location=0, status=0, menubar=0, scrollbars=0, resizable=0'")
        sb1.Append(");")

        ScriptManager.RegisterClientScriptBlock(Me.UpdatePanel1, Me.UpdatePanel1.GetType(), "NewWinScript", sb1.ToString(), True)


        Dim sb2 As System.Text.StringBuilder = New System.Text.StringBuilder()
        sb2.Append("window.open('")
        sb2.Append("http://app.enigmatech.biz/ReportServer/Pages/ReportViewer.aspx?/EnigmaSSRS/MJT-RegistroPersonasOcupadas&rs:Command=Render" + "',")
        sb2.Append("'mywindow', 'channelmode=1, toolbar=0, location=0, status=0, menubar=0, scrollbars=0, resizable=0'")
        sb2.Append(");")

        ScriptManager.RegisterClientScriptBlock(Me.UpdatePanel1, Me.UpdatePanel1.GetType(), "NewWinScript", sb2.ToString(), True)


    End Sub
End Class
