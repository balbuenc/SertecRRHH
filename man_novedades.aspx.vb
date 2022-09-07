
Imports System.Data.SqlClient

Partial Class man_novedades
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs)

        Dim conexion As SqlConnection
        Dim comando As SqlCommand

        Dim DB_BI_Settings As ConnectionStringSettings = ConfigurationManager.ConnectionStrings("payrollConnectionString")

        If Me.FileUpload.HasFile Then
            Me.FileUpload.PostedFile.SaveAs("D:\Sistemas\rrhh\sertec\Novedades\" + Me.FileUpload.FileName)


            '' Procesa el Job de importacion de novedades desde archivos excel
            Try
                'Se establece la conexion
                conexion = New SqlConnection(DB_BI_Settings.ToString())
                conexion.Open()

                comando = New SqlCommand()
                comando.CommandType = Data.CommandType.StoredProcedure
                comando.Connection = conexion
                comando.CommandText = "[dbo].[sp_start_importar_novedades_job]"



                comando.CommandTimeout = 0
                comando.ExecuteNonQuery()
            Catch ex As Exception
                Response.Write(ex.Message)
            End Try

            Me.MessageLabel.Text = "El Archivo se proceso con Éxito"
        End If
    End Sub
End Class
