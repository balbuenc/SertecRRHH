Imports System.Data.SqlClient
Imports System.Data

Partial Class Default2
    Inherits System.Web.UI.Page

    'constantes
    Const RENDER_COMMAND As String = "&rs:Command=Render"
    Const TOOLBAR As String = "&rc:Toolbar="
    Const ZOOM As String = "&rc:Zoom="

    

    Protected Sub ImageButton2_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton2.Click


        If rb_monedas.SelectedValue = "DS" And rb_formato.SelectedValue = "D" Then

            Call genera_procedure_diskette("DS")

            Response.Clear()
            Response.ClearContent()
            Response.ClearHeaders()
            Response.AppendHeader("content-disposition", "attachment;filename=BANCOUSD.TXT")
            Response.ContentType = "text/plain"
            Response.WriteFile("E:\Sistemas\rrhh\sertec\diskettes\AGUINALDODS.TXT")
            Response.End()

     

        ElseIf rb_monedas.SelectedValue = "GS" And rb_formato.SelectedValue = "D" Then

            Call genera_procedure_diskette("GS")

            Response.Clear()
            Response.ClearContent()
            Response.ClearHeaders()
            Response.AppendHeader("content-disposition", "attachment;filename=BANCOS.TXT")
            Response.ContentType = "text/plain"
            Response.WriteFile("E:\Sistemas\rrhh\sertec\diskettes\AGUINALDO.TXT")
            Response.End()

       
        End If

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Not Page.IsPostBack Then
            dd_fecha.Value = Date.Today
            dd_fecha_credito.Value = Date.Today

            rb_monedas.SelectedValue = "GS"
            rb_formato.SelectedValue = "D"



        End If
        lb_mensaje.Text = ""
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
            lb_mensaje.Text = "No esta implementada La generacion de aguinaldos en Dolares..."
            Return

        ElseIf v_moneda = "GS" Then
            comando.CommandText = "usp_listar_diskette_guaranies_aguinaldo_bancos"

            comando.Parameters.AddWithValue("@p_cod_empresa", v_empresa)
            comando.Parameters.AddWithValue("@p_fecha_liq", v_fecha)
            comando.Parameters.AddWithValue("@p_fecha_credito", v_fecha_credito)
            comando.Parameters.AddWithValue("@p_comentario", v_comentario)
        End If

      

        comando.CommandTimeout = 0
        comando.ExecuteNonQuery()


        conexion.Close()
    End Sub

   

End Class
