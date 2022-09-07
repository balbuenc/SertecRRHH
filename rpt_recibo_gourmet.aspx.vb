Imports System.Data.SqlClient
Imports System.Data

Partial Class rpt_recibo_gourmet
    Inherits System.Web.UI.Page

    'constantes
    Const RENDER_COMMAND As String = "&rs:Command=Render"
    Const TOOLBAR As String = "&rc:Toolbar="
    Const ZOOM As String = "&rc:Zoom="


    Dim existe As Boolean


    Protected Sub ck_todos_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ck_todos.CheckedChanged

        rb_orden.Enabled = Not rb_orden.Enabled
        grilla_funcionarios.Enabled = Not grilla_funcionarios.Enabled
        txt_campo.Enabled = Not txt_campo.Enabled
        ib_buscar.Enabled = Not ib_buscar.Enabled

        If ck_todos.Checked = False Then

            'Dim scriptManager As ScriptManager
            'scriptManager = scriptManager.GetCurrent(Me.Page)
            'scriptManager.SetFocus(txt_campo.ClientID)

            scriptManager.RegisterStartupScript(Me, Me.GetType(), "selectAndFocus", "$get('" + txt_campo.ClientID + "').focus();$get('" + txt_campo.ClientID + "').select();", True)

        End If

    End Sub

    Protected Sub Page_PreLoad(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.PreLoad

        If Len(txt_campo.Text.Trim) = 0 Then
            txt_campo.Text = "%"
        End If

        If Len(lb_mensaje.Text.Trim) > 0 Then
            lb_mensaje.Text = ""
        End If


        If Not Page.IsPostBack Then

            grilla_funcionarios.Enabled = False
            txt_campo.Enabled = False
            ib_buscar.Enabled = False

            ck_todos.Checked = True
            rb_orden.SelectedValue = "L"

            dd_fecha.Value = Date.Today
            dd_fecha_credito.Value = Date.Today

            Call obtener_servidor_reporte()

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

        Call verificar_liquidacion()

        If existe = False Then
            lb_mensaje.Text = "No se registra Liquidación para la Fecha seleccionada!"
            Exit Sub
        End If




        Dim v_empresa As String
        Dim v_fecha As Date
        Dim v_fecha_credito As Date
        Dim v_funcionario As String
        Dim v_orden As String


        'se genera la url
        Dim url As String
        url = lb_server.Text + "?" + "/EnigmaSSRS/" + "Billetera_gourmet" + RENDER_COMMAND

        v_empresa = Session("sv_empresa").ToString
        v_fecha = dd_fecha.Value
        v_fecha_credito = dd_fecha_credito.Value

        v_orden = rb_orden.SelectedValue

        If ck_todos.Checked = True Then
            url += "&p_cod_empresa=" + v_empresa + "&p_fecha_liq=" + v_fecha + "&p_fecha_credito=" + v_fecha_credito + "&p_opcion=T" + "&p_opcion_orden=" + v_orden + "&p_cod_funcionario=0"
        ElseIf ck_todos.Checked = False Then
            If grilla_funcionarios.SelectedIndex = -1 Then
                lb_mensaje.Text = "Por favor seleccione un Funcionario."
                Exit Sub
            Else
                v_funcionario = grilla_funcionarios.SelectedDataKey.Value.ToString
                url += "&p_cod_empresa=" + v_empresa + "&p_fecha_liq=" + v_fecha + "&p_fecha_credito=" + v_fecha_credito + "&p_opcion=U" + "&p_opcion_orden=N" + "&p_cod_funcionario=" + v_funcionario
            End If
        End If

        Dim sb As System.Text.StringBuilder = New System.Text.StringBuilder()
        sb.Append("window.open('")
        sb.Append(url + "',")
        sb.Append("'mywindow', 'channelmode=1, toolbar=0, location=0, status=0, menubar=0, scrollbars=0, resizable=0'")
        sb.Append(");")

        ScriptManager.RegisterClientScriptBlock(Me.UpdatePanel1, Me.UpdatePanel1.GetType(), "NewWinScript", sb.ToString(), True)

    End Sub

    Private Sub verificar_liquidacion()

        existe = True

        Dim v_fecha As Date
        v_fecha = dd_fecha.Value

        Dim conexion As SqlConnection
        Dim comando As SqlCommand
        Dim dr As SqlDataReader

        conexion = New SqlConnection(funcionarios_con.ConnectionString)
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
