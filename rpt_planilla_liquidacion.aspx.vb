Imports System.Data.SqlClient

Partial Class rpt_planilla_liquidacion
    Inherits System.Web.UI.Page

    'constantes
    Const RENDER_COMMAND As String = "&rs:Command=Render"
    Const TOOLBAR As String = "&rc:Toolbar="
    Const ZOOM As String = "&rc:Zoom="

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            dd_fecha.Value = Date.Today
            rb_monedas.SelectedIndex = 0
            Call obtener_servidor_reporte()
        End If
    End Sub

    Protected Sub ImageButton2_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton2.Click
        Dim v_empresa As String
        Dim v_fecha As Date

        'se genera la url
        Dim url As String
        If rb_monedas.SelectedValue = "DS" Then
            url = lb_server.Text + "?" + _
            "/EnigmaSSRS/" + "Planilla_Ds" + _
            RENDER_COMMAND
        ElseIf rb_monedas.SelectedValue = "GS" Then
            url = lb_server.Text + "?" + _
            "/EnigmaSSRS/" + "Planilla_Gs" + _
            RENDER_COMMAND
        End If

        v_empresa = Session("sv_empresa").ToString
        v_fecha = dd_fecha.Value

        url += "&p_cod_empresa=" + v_empresa + "&p_fecha_liq=" + v_fecha

        Dim sb As System.Text.StringBuilder = New System.Text.StringBuilder()
        sb.Append("window.open('")
        sb.Append(url + "',")
        sb.Append("'mywindow', 'channelmode=1, toolbar=0, location=0, status=0, menubar=0, scrollbars=0, resizable=0'")
        sb.Append(");")
        ClientScript.RegisterStartupScript(GetType(String), "NewWinScript", sb.ToString(), True)
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

End Class
