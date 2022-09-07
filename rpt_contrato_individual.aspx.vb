﻿Imports System.Data.SqlClient

Partial Class rpt_contrato_individual
    Inherits System.Web.UI.Page

    'constantes
    Const RENDER_COMMAND As String = "&rs:Command=Render"
    Const TOOLBAR As String = "&rc:Toolbar="
    Const ZOOM As String = "&rc:Zoom="

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Call obtener_servidor_reporte()

        If Not Page.IsPostBack Then
            Call obtener_servidor_reporte()
        End If

        If Request.QueryString("cod_funcionario") Is Nothing Then
            hf_cod_funcionario.Value = ""
        Else
            Me.hf_cod_funcionario.Value = Request.QueryString("cod_funcionario").ToString()
        End If

    End Sub

    Protected Sub img_generar_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles img_generar.Click
        Dim v_empresa As String
        'Dim v_fecha As Date
        Dim v_funcionario As String
        Dim v_dias_pruebas As String
        Dim v_dias_habiles As String
        Dim v_hora_entrada As String
        Dim v_hora_salida As String
        Dim v_hora_inicio As String
        Dim v_hora_fin As String



        'se genera la url
        Dim url As String
        url = lb_server.Text + "?" + _
            "/contratos/" + "contratoindividual" + _
            RENDER_COMMAND

        v_empresa = Session("sv_empresa").ToString
        v_dias_pruebas = txt_dias_prueba.Text
        v_dias_habiles = txt_dias_habiles.Text
        v_hora_entrada = txt_hora_entrada.Text
        v_hora_salida = txt_hora_salida.Text
        v_hora_inicio = txt_hora_inicio.Text
        v_hora_fin = txt_hora_fin.Text

        v_funcionario = hf_cod_funcionario.Value
        url += "&p_cod_funcionario=" + v_funcionario + "&p_cod_empresa=" + v_empresa + "&p_cod_empresa=" + v_empresa + "&p_dias_prueba=" + v_dias_pruebas + "&p_dias_habiles=" + v_dias_habiles + "&p_hora_entrada=" + v_hora_entrada + "&p_hora_salida=" + v_hora_salida + "&p_hora_inicio=" + v_hora_inicio + "&p_hora_fin=" + v_hora_fin

        Dim sb As System.Text.StringBuilder = New System.Text.StringBuilder()
        sb.Append("window.open('")
        sb.Append(url + "',")
        sb.Append("'mywindow', 'channelmode=1, toolbar=0, location=0, status=0, menubar=0, scrollbars=0, resizable=0'")
        sb.Append(");")

        'ClientScript.RegisterStartupScript(GetType(String), "NewWinScript", sb.ToString(), True)

        ScriptManager.RegisterClientScriptBlock(Me.UpdatePanel1, Me.UpdatePanel1.GetType(), "NewWinScript", sb.ToString(), True)
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

End Class
