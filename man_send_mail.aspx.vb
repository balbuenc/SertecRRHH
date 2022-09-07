Imports System.Data.SqlClient

Partial Class man_send_mail
    Inherits System.Web.UI.Page



    Protected Sub SqlDataSource3_Selecting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.SqlDataSourceSelectingEventArgs) Handles SqlDataSource3.Selecting

    End Sub

    Protected Sub SendMailsBtn_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles SendMailsBtn.Click
        'Variables de conexion a datos
        Dim conexion As SqlConnection
        Dim comando As SqlCommand
        Dim job As SqlCommand

        'Se establece la conexion
        conexion = New SqlConnection(SqlDataSource1.ConnectionString)
        conexion.Open()

        comando = New SqlCommand()
        comando.CommandType = Data.CommandType.Text
        comando.Connection = conexion
        comando.CommandText = "insert into [dbo].[mails_job_execution] (id_informe, periodo)values (@p_id_informe, @p_periodo)"

        comando.Parameters.AddWithValue("@p_id_informe", DropDownList1.Items(DropDownList1.SelectedIndex).Value)
        comando.Parameters.AddWithValue("@p_periodo", DropDownList2.Items(DropDownList2.SelectedIndex).Value)


        job = New SqlCommand()
        job.Connection = conexion
        job.CommandType = Data.CommandType.Text
        job.CommandText = "EXEC msdb.dbo.sp_start_job 'EnvioMails';"

        Try
            comando.ExecuteNonQuery()
            job.ExecuteNonQuery()

        Catch ex As Exception
            Response.Write(ex.Message)
        End Try




        conexion.Close()
    End Sub

    
End Class
