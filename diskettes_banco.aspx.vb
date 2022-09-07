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

        If rb_monedas.SelectedValue = "DS" And rb_formato.SelectedValue = "D" Then

            Call genera_procedure_diskette("DS")

            Response.Clear()
            Response.ClearContent()
            Response.ClearHeaders()
            Response.AppendHeader("content-disposition", "attachment;filename=BANCOUSD.TXT")
            Response.ContentType = "text/plain"
            Response.WriteFile("E:\Sistemas\rrhh\sertec\diskettes\BANCOUSD.TXT")
            Response.End()

            
        ElseIf rb_monedas.SelectedValue = "GS" And rb_formato.SelectedValue = "DG" Then

            Call genera_procedure_diskette("GS")

            'Prueba si direcciona
            Response.Clear()
            Response.ClearContent()
            Response.ClearHeaders()
            Response.AppendHeader("content-disposition", "attachment;filename=BANCOS_GERENTES.txt")
            Response.ContentType = "text/plain"
            Response.WriteFile("E:\Sistemas\rrhh\sertec\diskettes\BANCO_ATLAS_GERENTES_GS.txt")
            Response.End()

        ElseIf rb_monedas.SelectedValue = "DS" And rb_formato.SelectedValue = "P" Then

            Call llama_reporte("DS")

        ElseIf rb_monedas.SelectedValue = "GS" And rb_formato.SelectedValue = "D" Then

            Call genera_procedure_diskette("GS")

            Response.Clear()
            Response.ClearContent()
            Response.ClearHeaders()
            Response.AppendHeader("content-disposition", "attachment;filename=BANCOS.TXT")
            Response.ContentType = "text/plain"
            Response.WriteFile("E:\Sistemas\rrhh\sertec\diskettes\BANCO_SUDAMERIS_GS.TXT")
            Response.End()

        ElseIf rb_monedas.SelectedValue = "GS" And rb_formato.SelectedValue = "P" Then

            Call llama_reporte("GS")

        End If

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Not Page.IsPostBack Then
            dd_fecha.Value = Date.Today
            dd_fecha_credito.Value = Date.Today

            rb_monedas.SelectedValue = "DS"
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

    Private Sub genera_procedure_diskette(ByVal v_moneda As String)

        'Variables de conexion a datos
        Dim conexion As SqlConnection
        Dim comando As SqlCommand

        'Variables de parametros
        Dim v_fecha As Date
        Dim v_fecha_credito As Date
        Dim v_empresa As String
        Dim v_comentario As String

        v_empresa = Session("sv_empresa").ToString
        v_fecha = dd_fecha.Value
        v_fecha_credito = dd_fecha_credito.Value
        v_comentario = txt_comentario.Text

        'Se establece la conexion
        conexion = New SqlConnection(historial_conceptos_con.ConnectionString)
        conexion.Open()

        comando = New SqlCommand()
        comando.CommandType = Data.CommandType.StoredProcedure
        comando.Connection = conexion

        If v_moneda = "DS" Then
            comando.CommandText = "usp_listar_diskette_dolares"

            comando.Parameters.AddWithValue("@p_cod_empresa", v_empresa)
            comando.Parameters.AddWithValue("@p_fecha_liq", v_fecha)
            comando.Parameters.AddWithValue("@p_fecha_credito", v_fecha_credito)

        ElseIf v_moneda = "GS" Then
            comando.CommandText = "usp_listar_diskette_guaranies"

            comando.Parameters.AddWithValue("@p_cod_empresa", v_empresa)
            comando.Parameters.AddWithValue("@p_fecha_liq", v_fecha)
            comando.Parameters.AddWithValue("@p_fecha_credito", v_fecha_credito)
            comando.Parameters.AddWithValue("@p_comentario", v_comentario)
        End If

        'Dim v_mensaje As SqlParameter = New SqlParameter("@mensaje", Data.SqlDbType.VarChar, 100)
        'v_mensaje.Direction = ParameterDirection.Output
        'comando.Parameters.Add(v_mensaje)

        comando.CommandTimeout = 0
        comando.ExecuteNonQuery()

        'lb_mensaje.Text = comando.Parameters.Item(4).Value
        conexion.Close()
    End Sub

    Private Sub llama_reporte(ByVal v_moneda As String)

        Dim v_empresa As String
        Dim v_fecha As Date

        'se genera la url
        Dim url As String

        If v_moneda = "DS" Then

            url = lb_server.Text + "?/EnigmaSSRS/Listado_banco_2Ds" + RENDER_COMMAND

        ElseIf v_moneda = "GS" Then

            url = lb_server.Text + "?" + "/EnigmaSSRS/" + "Listado_banco_2Gs" + RENDER_COMMAND

        End If

        v_empresa = Session("sv_empresa").ToString
        v_fecha = dd_fecha.Value

        url += "&p_cod_empresa=" + v_empresa + "&p_fecha_liq=" + v_fecha + "&p_fecha_credito=" + v_fecha

        Dim sb As System.Text.StringBuilder = New System.Text.StringBuilder()
        sb.Append("window.open('")
        sb.Append(url + "',")
        sb.Append("'mywindow', 'channelmode=1, toolbar=0, location=0, status=0, menubar=0, scrollbars=0, resizable=0'")
        sb.Append(");")
        ClientScript.RegisterStartupScript(GetType(String), "NewWinScript", sb.ToString(), True)
    End Sub

    Protected Sub GuaraniesLink_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles GuaraniesLink.Click
        Response.Clear()
        Response.ClearContent()
        Response.ClearHeaders()
        Response.AppendHeader("content-disposition", "attachment;filename=BANCO_BBVA_GS.TXT")
        Response.ContentType = "text/plain"
        Response.WriteFile("E:\Sistemas\rrhh\sertec\diskettes\BANCO_BBVA_GS.TXT")
        Response.End()
    End Sub

    Protected Sub DolaresLink_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles DolaresLink.Click
        Response.Clear()
        Response.ClearContent()
        Response.ClearHeaders()
        Response.AppendHeader("content-disposition", "attachment;filename=BANCO_BBVA_USD.TXT")
        Response.ContentType = "text/plain"
        Response.WriteFile("E:\Sistemas\rrhh\sertec\diskettes\BANCO_BBVA_USD.TXT")
        Response.End()
    End Sub

    Protected Sub GourmetLink_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles GourmetLink.Click
        Response.Clear()
        Response.ClearContent()
        Response.ClearHeaders()
        Response.AppendHeader("content-disposition", "attachment;filename=GOURMET_BBVA_GS.TXT")
        Response.ContentType = "text/plain"
        Response.WriteFile("E:\Sistemas\rrhh\sertec\diskettes\GOURMET_BBVA_GS.txt")
        Response.End()
    End Sub

    Protected Sub GuaraniesGerentesLink_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles GuaraniesGerentesLink.Click
        Response.Clear()
        Response.ClearContent()
        Response.ClearHeaders()
        Response.AppendHeader("content-disposition", "attachment;filename=BANCO_BBVA_GERENTES_GS.txt")
        Response.ContentType = "text/plain"
        Response.WriteFile("E:\Sistemas\rrhh\sertec\diskettes\BANCO_BBVA_GERENTES_GS.txt")
        Response.End()
    End Sub

    Protected Sub GuaraniesAtlasLink_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles GuaraniesAtlasLink.Click
        Response.Clear()
        Response.ClearContent()
        Response.ClearHeaders()
        Response.AppendHeader("content-disposition", "attachment;filename=BANCO_ATLAS_GS.txt")
        Response.ContentType = "text/plain"
        Response.WriteFile("E:\Sistemas\rrhh\sertec\diskettes\BANCO_ATLAS_GS.txt")
        Response.End()
    End Sub

    Protected Sub DolaresAtlasLink_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles DolaresAtlasLink.Click
        Response.Clear()
        Response.ClearContent()
        Response.ClearHeaders()
        Response.AppendHeader("content-disposition", "attachment;filename=BANCO_ATLAS_USD.txt")
        Response.ContentType = "text/plain"
        Response.WriteFile("E:\Sistemas\rrhh\sertec\diskettes\BANCO_ATLAS_USD.txt")
        Response.End()
    End Sub

    Protected Sub GuaraniesGerentesAtlasLink_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles GuaraniesGerentesAtlasLink.Click
        Response.Clear()
        Response.ClearContent()
        Response.ClearHeaders()
        Response.AppendHeader("content-disposition", "attachment;filename=BANCO_ATLAS_GERENTES_GS.txt")
        Response.ContentType = "text/plain"
        Response.WriteFile("E:\Sistemas\rrhh\sertec\diskettes\BANCO_ATLAS_GERENTES_GS.txt")
        Response.End()
    End Sub

    Protected Sub GuaraniesSuddameriosLink_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles GuaraniesSuddameriosLink.Click
        Response.Clear()
        Response.ClearContent()
        Response.ClearHeaders()
        Response.AppendHeader("content-disposition", "attachment;filename=BANCO_SUDAMERIS_GS.txt")
        Response.ContentType = "text/plain"
        Response.WriteFile("E:\Sistemas\rrhh\sertec\diskettes\BANCO_SUDAMERIS_GS.txt")
        Response.End()
    End Sub

    Protected Sub AguinaldoDolares_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles AguinaldoDolares.Click
        Response.Clear()
        Response.ClearContent()
        Response.ClearHeaders()
        Response.AppendHeader("content-disposition", "attachment;filename=AGUINALDO_BBVA_USD.txt")
        Response.ContentType = "text/plain"
        Response.WriteFile("E:\Sistemas\rrhh\sertec\diskettes\AGUINALDO_BBVA_USD.txt")
        Response.End()
    End Sub

    Protected Sub AguinaldoDolaresAtlas_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles AguinaldoDolaresAtlas.Click
        Response.Clear()
        Response.ClearContent()
        Response.ClearHeaders()
        Response.AppendHeader("content-disposition", "attachment;filename=AGUINALDO_ATLAS_USDtxt")
        Response.ContentType = "text/plain"
        Response.WriteFile("E:\Sistemas\rrhh\sertec\diskettes\AGUINALDO_ATLAS_USD.txt")
        Response.End()
    End Sub

    Protected Sub AguinaldoDolaresDiferenciaTipoCambioAtlas_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles AguinaldoDolaresDiferenciaTipoCambioAtlas.Click
        Response.Clear()
        Response.ClearContent()
        Response.ClearHeaders()
        Response.AppendHeader("content-disposition", "attachment;filename=AGUI_DIF_TIPO_CAMBIO_ATLAS.txt")
        Response.ContentType = "text/plain"
        Response.WriteFile("E:\Sistemas\rrhh\sertec\diskettes\AGUI_DIF_TIPO_CAMBIO_ATLAS.txt")
        Response.End()
    End Sub

   
    Protected Sub AguinaldoDolaresDiferenciaTipoCambioBBVA_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles AguinaldoDolaresDiferenciaTipoCambioBBVA.Click
        Response.Clear()
        Response.ClearContent()
        Response.ClearHeaders()
        Response.AppendHeader("content-disposition", "attachment;filename=AGUI_DIF_TIPO_CAMBIO_BBVA.txt")
        Response.ContentType = "text/plain"
        Response.WriteFile("E:\Sistemas\rrhh\sertec\diskettes\AGUI_DIF_TIPO_CAMBIO_BBVA.txt")
        Response.End()
    End Sub

    Protected Sub AguinaldoDTCBBVA_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles AguinaldoDTCBBVA.Click
        Response.Clear()
        Response.ClearContent()
        Response.ClearHeaders()
        Response.AppendHeader("content-disposition", "attachment;filename=AGUINALDO_DTC_BBVA.txt")
        Response.ContentType = "text/plain"
        Response.WriteFile("E:\Sistemas\rrhh\sertec\diskettes\AGUI_DTC_BBVA.txt")
        Response.End()
    End Sub

  
    Protected Sub AguinaldoDTCAtlas_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles AguinaldoDTCAtlas.Click
        Response.Clear()
        Response.ClearContent()
        Response.ClearHeaders()
        Response.AppendHeader("content-disposition", "attachment;filename=AGUINALDO_DTC_ATLAS.txt")
        Response.ContentType = "text/plain"
        Response.WriteFile("E:\Sistemas\rrhh\sertec\diskettes\AGUI_DTC_ATLAS.txt")
        Response.End()
    End Sub

    Protected Sub AguinaldoBBVGs_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles AguinaldoBBVGs.Click
        Response.Clear()
        Response.ClearContent()
        Response.ClearHeaders()
        Response.AppendHeader("content-disposition", "attachment;filename=AGUINALDO_BBVA.txt")
        Response.ContentType = "text/plain"
        Response.WriteFile("E:\Sistemas\rrhh\sertec\diskettes\AGUINALDO_BBVA.txt")
        Response.End()
    End Sub

    Protected Sub AguinaldoAtlasGs_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles AguinaldoAtlasGs.Click
        Response.Clear()
        Response.ClearContent()
        Response.ClearHeaders()
        Response.AppendHeader("content-disposition", "attachment;filename=AGUINALDO_ATLAS.txt")
        Response.ContentType = "text/plain"
        Response.WriteFile("E:\Sistemas\rrhh\sertec\diskettes\AGUINALDO_ATLAS.txt")
        Response.End()
    End Sub

    Protected Sub AguinaldoSudameriGs_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles AguinaldoSudameriGs.Click
        Response.Clear()
        Response.ClearContent()
        Response.ClearHeaders()
        Response.AppendHeader("content-disposition", "attachment;filename=AGUINALDO_SUDAMERIS.txt")
        Response.ContentType = "text/plain"
        Response.WriteFile("E:\Sistemas\rrhh\sertec\diskettes\AGUINALDO_SUDAMERIS.txt")
        Response.End()
    End Sub

    Protected Sub SetLink_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles SetLink.Click

        'Variables de conexion a datos
        Dim conexion As SqlConnection
        Dim comando As SqlCommand


        'Se establece la conexion
        conexion = New SqlConnection(historial_conceptos_con.ConnectionString)
        conexion.Open()

        comando = New SqlCommand()
        comando.CommandType = Data.CommandType.StoredProcedure
        comando.Connection = conexion

        comando.CommandText = "[dbo].[usp_listar_diskette_set]"

        comando.Parameters.AddWithValue("@year", SetTextBox.Text)
       

        comando.CommandTimeout = 0
        comando.ExecuteNonQuery()

        'lb_mensaje.Text = comando.Parameters.Item(4).Value
        conexion.Close()


        Response.Clear()
        Response.ClearContent()
        Response.ClearHeaders()
        Response.AppendHeader("content-disposition", "attachment;filename=80017437_IRP_" + SetTextBox.Text + ".txt")
        Response.ContentType = "text/plain"
        Response.WriteFile("E:\Sistemas\rrhh\sertec\diskettes\80017437_IRP_" + SetTextBox.Text + ".txt")
        Response.End()
    End Sub

End Class
