Imports System.Data.SqlClient
Imports System.Data

Partial Class Default2
    Inherits System.Web.UI.Page

    'constantes
    Const RENDER_COMMAND As String = "&rs:Command=Render"
    Const TOOLBAR As String = "&rc:Toolbar="
    Const ZOOM As String = "&rc:Zoom="

    'Variable en la cual se carga la existencia o no de una 
    'fecha de liquidacion seleccionada..
    Dim existe As Boolean

    Protected Sub ImageButton2_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton2.Click

        'Call verificar_liquidacion()
        existe = True

        If existe = False Then
            lb_mensaje.Text = "No se registra Liquidación para la Fecha seleccionada!"
            Exit Sub
        End If

        If rb_formato.SelectedValue = "P" Then

            Call llama_reporte()

        ElseIf rb_formato.SelectedValue = "D" Then

            Call genera_procedure_diskette()

            Response.Clear()
            Response.ClearContent()
            Response.ClearHeaders()
            Response.AppendHeader("content-disposition", "attachment;filename=IPS.TXT")
            Response.ContentType = "text/plain"
            Response.WriteFile("E:\Sistemas\rrhh\sertec\diskettes\IPS.TXT")
            Response.End()

        End If

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            dd_fecha.Value = Date.Today
            rb_orden.SelectedValue = "L"
            rb_formato.SelectedValue = "P"
            Call obtener_servidor_reporte()
        End If
        lb_mensaje.Text = ""
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

    Private Sub genera_procedure_diskette()
        'Variables de conexion a datos
        Dim conexion As SqlConnection
        Dim comando As SqlCommand

        'Variables de parametros
        Dim v_fecha As Date
        Dim v_orden As String
        Dim v_empresa As String

        v_fecha = dd_fecha.Value
        v_empresa = Session("sv_empresa").ToString
        v_orden = rb_orden.SelectedValue

        'Se establece la conexion
        conexion = New SqlConnection(historial_conceptos_con.ConnectionString)
        conexion.Open()

        comando = New SqlCommand()
        comando.CommandType = Data.CommandType.StoredProcedure
        comando.Connection = conexion
        comando.CommandText = "usp_listar_planilla_IPS_texto"

        comando.Parameters.AddWithValue("@p_cod_empresa", v_empresa)
        comando.Parameters.AddWithValue("@p_fecha_liq", v_fecha)
        comando.Parameters.AddWithValue("@p_orden", v_orden)

        'Dim v_mensaje As SqlParameter = New SqlParameter("@mensaje", Data.SqlDbType.VarChar, 100)
        'v_mensaje.Direction = ParameterDirection.Output
        'comando.Parameters.Add(v_mensaje)

        comando.CommandTimeout = 0
        comando.ExecuteNonQuery()

        'lb_mensaje.Text = comando.Parameters.Item(4).Value
        conexion.Close()
    End Sub

    Private Sub llama_reporte()

        Dim v_empresa As String
        Dim v_fecha As Date
        Dim v_orden As String

        'se genera la url
        Dim url As String

        url = lb_server.Text + "?/EnigmaSSRS/Planilla_Mensual_ips" + RENDER_COMMAND

        v_empresa = Session("sv_empresa").ToString
        v_fecha = dd_fecha.Value
        v_orden = rb_orden.SelectedValue

        url += "&p_cod_empresa=" + v_empresa + "&p_fecha_liq=" + v_fecha + "&p_orden=" + v_orden

        Dim sb As System.Text.StringBuilder = New System.Text.StringBuilder()
        sb.Append("window.open('")
        sb.Append(url + "',")
        sb.Append("'mywindow', 'channelmode=1, toolbar=0, location=0, status=0, menubar=0, scrollbars=0, resizable=0'")
        sb.Append(");")
        ClientScript.RegisterStartupScript(GetType(String), "NewWinScript", sb.ToString(), True)
    End Sub

    Private Sub verificar_liquidacion()

        existe = True

        Dim v_fecha As Date
        v_fecha = dd_fecha.Value

        Dim conexion As SqlConnection
        Dim comando As SqlCommand
        Dim dr As SqlDataReader

        conexion = New SqlConnection(historial_conceptos_con.ConnectionString)
        conexion.Open()
        comando = New SqlCommand("Select cod_funcionario From historial_conceptos " + _
                                    "Where cod_tipo_liquidacion = 1 " + _
                                    "AND cod_empresa=@p_cod_empresa " + _
                                    "AND fecha = @p_fecha_liq", conexion)

        comando.Parameters.AddWithValue("@p_cod_empresa", Session("sv_empresa").ToString)
        comando.Parameters.AddWithValue("@p_fecha_liq", v_fecha)

        dr = comando.ExecuteReader()

        If dr.Read() Then
            existe = True
        Else
            existe = False
        End If

        dr.Close()
        conexion.Close()
    End Sub

End Class



