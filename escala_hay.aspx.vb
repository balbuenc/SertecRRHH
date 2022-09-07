Imports System.Data.SqlClient

Partial Class escala_hay
    Inherits System.Web.UI.Page

    Protected Sub AgergarEscalaBtn_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles AgergarEscalaBtn.Click

        'Variables de conexion a datos
        Dim conexion As SqlConnection
        Dim comando As SqlCommand

        'Se establece la conexion
        conexion = New SqlConnection(SqlDataSourceHHRR.ConnectionString)
        conexion.Open()
        Try

            comando = New SqlCommand()
            comando.CommandType = Data.CommandType.Text
            comando.Connection = conexion
            comando.CommandText = "INSERT INTO [escala_grados_hay]([grado_hay],[incentivo],[minimo],[maximo],[punto_medio]) VALUES (@grado_hay,@incentivo,@minimo,@maximo,@punto_medio)"

            comando.Parameters.AddWithValue("@grado_hay", GradoHayTextBox.Text)
            comando.Parameters.AddWithValue("@incentivo", IncentivoDDL.SelectedValue)
            comando.Parameters.AddWithValue("@minimo", MinTextBox.Text)
            comando.Parameters.AddWithValue("@maximo", MaxTextBox.Text)
            comando.Parameters.AddWithValue("@punto_medio", PMTextBox.Text)


            comando.ExecuteNonQuery()

        Catch ex As Exception
            Response.Write(ex.Message)
        End Try


        GradoHayTextBox.Text = ""
        IncentivoDDL.SelectedIndex = 1
        MinTextBox.Text = ""
        MaxTextBox.Text = ""
        PMTextBox.Text = ""

        conexion.Close()
        GridView1.DataBind()
        GridView1.SelectedIndex = -1
    End Sub
End Class
