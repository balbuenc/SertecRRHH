Imports System.Data.SqlClient

Partial Class rpt_empleados_obreros_semestral
    Inherits System.Web.UI.Page

    'constantes
    Const RENDER_COMMAND As String = "&rs:Command=Render"
    Const TOOLBAR As String = "&rc:Toolbar="
    Const ZOOM As String = "&rc:Zoom="

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            'rb_tipo_planilla1.SelectedIndex = 0
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
        'Dim v_empresa As String
        Dim v_semestre As String
        Dim v_año As String


        'se genera la url
        Dim url As String
        If rb_tipo_planilla.SelectedValue = "1" Then
            v_semestre = 1
            url = lb_server.Text + "?" + _
            "/planillas/" + "Reg_Emp_Obreros_semestral" + _
            RENDER_COMMAND
        ElseIf rb_tipo_planilla.SelectedValue = "2" Then
            v_semestre = 2
            url = lb_server.Text + "?" + _
            "/planillas/" + "Reg_Emp_Obreros_semestral" + _
            RENDER_COMMAND
        End If

        'v_empresa = Session("sv_empresa").ToString
        v_año = txt_año.Text
        v_semestre = rb_tipo_planilla.SelectedValue

        url += "&p_semestre=" + v_semestre + "&p_anho=" + v_año

        Dim sb As System.Text.StringBuilder = New System.Text.StringBuilder()
        sb.Append("window.open('")
        sb.Append(url + "',")
        sb.Append("'mywindow', 'channelmode=1, toolbar=0, location=0, status=0, menubar=0, scrollbars=0, resizable=0'")
        sb.Append(");")
        'ClientScript.RegisterStartupScript(GetType(String), "NewWinScript", sb.ToString(), True)

        ScriptManager.RegisterClientScriptBlock(Me.UpdatePanel1, Me.UpdatePanel1.GetType(), "NewWinScript", sb.ToString(), True)
    End Sub
End Class
