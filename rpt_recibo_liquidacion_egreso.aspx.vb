Imports System.Data.SqlClient

Partial Class rpt_recibo_liquidacion
    Inherits System.Web.UI.Page

    'constantes
    Const RENDER_COMMAND As String = "&rs:Command=Render"
    Const TOOLBAR As String = "&rc:Toolbar="
    Const ZOOM As String = "&rc:Zoom="

   

    Protected Sub ck_todos_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ck_todos.CheckedChanged
        grilla_funcionarios.Enabled = Not grilla_funcionarios.Enabled
        ib_buscar.Enabled = Not ib_buscar.Enabled
        txt_campo.Enabled = Not txt_campo.Enabled
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Not Page.IsPostBack Then
            dd_fecha.Value = Date.Today
            Call obtener_servidor_reporte()
        End If

        If Len(txt_campo.Text.Trim) = 0 Then
            txt_campo.Text = "%"
        End If

        If Len(lb_mensaje.Text.Trim) > 0 Then
            lb_mensaje.Text = ""
        End If

    End Sub

    Private Sub obtener_servidor_reporte()

        Dim conexion As SqlConnection
        Dim comando As SqlCommand
        Dim dr As SqlDataReader

        conexion = New SqlConnection(funcionarios_con.ConnectionString)
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

    Protected Sub ImageButton2_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton2.Click
        Dim v_empresa As String
        Dim v_fecha As Date
        Dim v_funcionario As String

        'se genera la url
        Dim url As String
        url = lb_server.Text + "?" + "/EnigmaSSRS/" + "recibo_finiquito" + RENDER_COMMAND

        v_empresa = Session("sv_empresa").ToString
        v_fecha = dd_fecha.Value

        If ck_todos.Checked = True Then
            'url += "&p_cod_funcionario=0" + "&p_fecha_liq=" + v_fecha
        ElseIf ck_todos.Checked = False Then
            If grilla_funcionarios.SelectedIndex = -1 Then
                lb_mensaje.Text = "Por favor seleccione un Funcionario."
                Exit Sub
            Else
                v_funcionario = grilla_funcionarios.SelectedDataKey.Value.ToString
                url += "&p_cod_empresa=" + v_empresa + "&p_cod_funcionario=" + v_funcionario + "&p_fecha_liq=" + v_fecha
            End If
        End If

        Dim sb As System.Text.StringBuilder = New System.Text.StringBuilder()
        sb.Append("window.open('")
        sb.Append(url + "',")
        sb.Append("'mywindow', 'channelmode=1, toolbar=0, location=0, status=0, menubar=0, scrollbars=0, resizable=0'")
        sb.Append(");")
        ClientScript.RegisterStartupScript(GetType(String), "NewWinScript", sb.ToString(), True)
    End Sub

End Class