﻿Imports System.Data.SqlClient


Partial Class certificado_comisiones
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

    Protected Sub img_generar_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles img_generar.Click
        Dim v_empresa As String
        Dim v_funcionario As String
        Dim v_meses As String


        'se genera la url
        Dim url As String
        url = lb_server.Text + "?" + _
            "/certificados/" + "certificado_com" + _
            RENDER_COMMAND

        v_empresa = Session("sv_empresa").ToString
        v_meses = txt_meses.Text

        v_funcionario = hf_cod_funcionario.Value
        url += "&p_cod_funcionario=" + v_funcionario + "&p_cod_empresa=" + v_empresa + "&p_cod_empresa=" + v_empresa + "&p_numero_mes=" + v_meses

        Dim sb As System.Text.StringBuilder = New System.Text.StringBuilder()
        sb.Append("window.open('")
        sb.Append(url + "',")
        sb.Append("'mywindow', 'channelmode=1, toolbar=0, location=0, status=0, menubar=0, scrollbars=0, resizable=0'")
        sb.Append(");")

        'ClientScript.RegisterStartupScript(GetType(String), "NewWinScript", sb.ToString(), True)

        ScriptManager.RegisterClientScriptBlock(Me.UpdatePanel1, Me.UpdatePanel1.GetType(), "NewWinScript", sb.ToString(), True)
    End Sub

    Protected Sub Page_PreRender(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.PreRender
        If hf_cod_funcionario.Value = "" Then
            img_generar.Enabled = False
            lb_mensaje.Text = "Seleccione un Funcionario"
        Else
            img_generar.Enabled = True
        End If
    End Sub
End Class
