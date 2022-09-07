Imports System.Data.SqlClient
Imports System.Data

Partial Class generar_liquidacion
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Not Page.IsPostBack Then
            dd_fecha.Value = Date.Today
        End If

        If Len(txt_campo.Text.Trim) = 0 Then
            txt_campo.Text = "%"
        End If

        If Len(lb_mensaje.Text.Trim) > 0 Then
            lb_mensaje.Text = ""
        End If

    End Sub

    Protected Sub ImageButton2_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton2.Click

        'Variables de conexion a datos
        Dim conexion As SqlConnection
        Dim comando As SqlCommand

        'Variables de parametros
        Dim v_fecha As Date
        Dim v_opcion As String
        Dim v_empresa As String
        Dim v_funcionario As String
        Dim v_motivo As String

        v_fecha = dd_fecha.Value
        v_empresa = Session("sv_empresa").ToString
        v_opcion = ddl_t_finiquito.SelectedValue
        v_funcionario = ""
        v_motivo = txt_motivo.Text

        If grilla_funcionarios.SelectedIndex = -1 Then
            lb_mensaje.Text = "Por favor seleccione un Funcionario."
            Exit Sub
        Else
            v_funcionario = grilla_funcionarios.SelectedDataKey.Value.ToString
        End If

        'Se establece la conexion
        conexion = New SqlConnection(funcionarios_con.ConnectionString)
        conexion.Open()

        comando = New SqlCommand()
        comando.CommandType = Data.CommandType.StoredProcedure
        comando.Connection = conexion
        comando.CommandText = "usp_liquidacion_egreso"

        comando.Parameters.AddWithValue("@cod_empresa", v_empresa)
        comando.Parameters.AddWithValue("@cod_funcionario", v_funcionario)
        comando.Parameters.AddWithValue("@fecha_liq", v_fecha)
        comando.Parameters.AddWithValue("@tipo_finiquito", v_opcion)
        comando.Parameters.AddWithValue("@motivo", v_motivo)

        Dim v_mensaje As SqlParameter = New SqlParameter("@msj", Data.SqlDbType.VarChar, 100)
        v_mensaje.Direction = ParameterDirection.Output
        comando.Parameters.Add(v_mensaje)

        comando.CommandTimeout = 0
        comando.ExecuteNonQuery()


        lb_mensaje.Text = comando.Parameters.Item(5).Value
        conexion.Close()

    End Sub
End Class
