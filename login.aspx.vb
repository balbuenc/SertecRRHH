Imports System.Data.SqlClient
Imports System.Data

Partial Class login
    Inherits System.Web.UI.Page

    Protected Sub LoginButton_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        
    End Sub

    Protected Sub Login1_Authenticate(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.AuthenticateEventArgs) Handles Login1.Authenticate
        

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
            comando.CommandText = "select * from usuarios where usuario = @p_user and password= @p_password"

            comando.Parameters.AddWithValue("p_user", Login1.UserName)
            comando.Parameters.AddWithValue("p_password", Login1.Password)




            comando.CommandTimeout = 0
            If comando.ExecuteScalar() > 0 Then
                e.Authenticated = True
            Else
                e.Authenticated = False

            End If


        Catch ex As Exception
            e.Authenticated = False
        End Try


    End Sub

   
End Class
