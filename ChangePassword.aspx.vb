Imports System.Data.SqlClient
Imports System.Data

Partial Class ChangePassword
    Inherits System.Web.UI.Page


    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        'Variables de conexion a datos
        Dim conexion As SqlConnection
        Dim comando As SqlCommand
        Dim DB_CORE_Settings As ConnectionStringSettings = ConfigurationManager.ConnectionStrings("payrollConnectionString")

        Try
            'Se establece la conexion
            conexion = New SqlConnection(DB_CORE_Settings.ToString())
            conexion.Open()

            comando = New SqlCommand()
            comando.Connection = conexion
            comando.CommandType = CommandType.StoredProcedure
            comando.CommandText = "sp_cambiar_password"

            comando.Parameters.AddWithValue("p_usuario", UsuarioText.Text)
            comando.Parameters.AddWithValue("p_old_password", OldPasswordText.Text)

            comando.Parameters.AddWithValue("p_new_password", NewPasswordText.Text)

            Dim v_mensaje As SqlParameter = New SqlParameter("@p_result", Data.SqlDbType.VarChar, 100)

            comando.Parameters.Add(v_mensaje)
            v_mensaje.Direction = ParameterDirection.Output





            comando.CommandTimeout = 0
            comando.ExecuteNonQuery()

            ResultText.Text = v_mensaje.Value

            

        Catch ex As Exception
            Response.Redirect("ChangePassword.aspx")
        End Try


    End Sub

End Class
