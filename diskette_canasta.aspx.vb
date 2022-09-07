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


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Not Page.IsPostBack Then
            dd_fecha.Value = Date.Today
            dd_fecha_credito.Value = Date.Today
        End If
        lb_mensaje.Text = ""
    End Sub


    Protected Sub ImageButton2_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton2.Click

        Call verificar_liquidacion()
      

        If existe = False Then
            lb_mensaje.Text = "No se registra Liquidación para la Fecha seleccionada!"
            Exit Sub
        Else
			genera_procedure_diskette()

			  Response.Clear()
            Response.ClearContent()
            Response.ClearHeaders()
            Response.AppendHeader("content-disposition", "attachment;filename=TICKET_CANASTA.txt")
            Response.ContentType = "text/plain"
            Response.WriteFile("E:\Sistemas\rrhh\sertec\diskettes\TICKET_CANASTA.txt")
            Response.End()
		End If

       

    End Sub



	'Verifica si existe la liquidacion para la fecha seleccionada
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

    Private Sub genera_procedure_diskette()

        'Variables de conexion a datos
        Dim conexion As SqlConnection
        Dim comando As SqlCommand

        'Variables de parametros
        Dim v_fecha As Date
        Dim v_fecha_credito As Date
        Dim v_acreditacion As String
        Dim v_comentario As String

       

        v_fecha = dd_fecha.Value
        v_fecha_credito = dd_fecha_credito.Value
        v_comentario = txt_comentario.Text
		v_acreditacion = txt_acreditacion.Text

        'Se establece la conexion
        conexion = New SqlConnection(historial_conceptos_con.ConnectionString)
        conexion.Open()

        comando = New SqlCommand()
        comando.CommandType = Data.CommandType.StoredProcedure
        comando.Connection = conexion

     
            comando.CommandText = "usp_listar_diskette_canasta"

            comando.Parameters.AddWithValue("@p_fecha", v_fecha)
            comando.Parameters.AddWithValue("@p_fecha_pago", v_fecha_credito)
            comando.Parameters.AddWithValue("@p_descripcion", v_comentario)
			comando.Parameters.AddWithValue("@p_acreditacion", v_acreditacion)

      

       
        comando.CommandTimeout = 0
        comando.ExecuteNonQuery()

        
        conexion.Close()

		
    End Sub

   

End Class
