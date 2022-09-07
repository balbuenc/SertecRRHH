Imports System.Data.SqlClient
Imports System.Data

Partial Class borrar_liquidacion
    Inherits System.Web.UI.Page

    Protected Sub ImageButton2_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton2.Click
        'Variables de conexion a datos
        Dim conexion As SqlConnection
        Dim comando As SqlCommand

        'Variables de parametros
        Dim v_fecha As Date
        Dim v_empresa As String

        v_fecha = dd_fecha.Value
        v_empresa = Session("sv_empresa").ToString

        'Se establece la conexion
        conexion = New SqlConnection(historial_conceptos_con.ConnectionString)
        conexion.Open()

        comando = New SqlCommand()
        comando.CommandType = Data.CommandType.StoredProcedure
        comando.Connection = conexion
        comando.CommandText = "usp_borrar_liquidacion"

        comando.Parameters.AddWithValue("@p_cod_empresa", v_empresa)
        comando.Parameters.AddWithValue("@p_fecha_liq", v_fecha)

        Dim v_mensaje As SqlParameter = New SqlParameter("@mensaje", Data.SqlDbType.VarChar, 100)
        v_mensaje.Direction = ParameterDirection.Output
        comando.Parameters.Add(v_mensaje)

        comando.ExecuteNonQuery()
        lb_mensaje.Text = comando.Parameters.Item(2).Value
        conexion.Close()



        'Elimino las cuotas del mes para el pago de prestamos
        'Se establece la conexion

        conexion.Open()

        comando = New SqlCommand()
        comando.CommandType = Data.CommandType.StoredProcedure
        comando.Connection = conexion
        comando.CommandText = "sp_anular_cuotas_prestamos"


        comando.Parameters.AddWithValue("@p_fecha_liquidacion", v_fecha)

        

        comando.ExecuteNonQuery()
        conexion.Close()
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            dd_fecha.Value = Date.Today
        End If
    End Sub
End Class
