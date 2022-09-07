Imports System.Data.SqlClient
Imports System.Data

Partial Class man_pagos_manuales
    Inherits System.Web.UI.Page

   
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Request.QueryString("cod_funcionario") Is Nothing Then
            hf_cod_funcionario.Value = ""
        Else
            Me.hf_cod_funcionario.Value = Request.QueryString("cod_funcionario").ToString()
        End If


    End Sub

   
    
    Protected Sub GenerarDiskettButton_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles GenerarDiskettButton.Click
        'Variables de parametros

        Dim v_empresa As String



        v_empresa = Session("sv_empresa").ToString

        Try

            'Variables de conexion a datos
            Dim conexion As SqlConnection
            Dim comando As SqlCommand

            'Se establece la conexion
            conexion = New SqlConnection(DSPagosManuales.ConnectionString)
            conexion.Open()

            comando = New SqlCommand()
            comando.CommandType = Data.CommandType.StoredProcedure
            comando.Connection = conexion
            comando.CommandText = "usp_listar_diskette_gs_pagos_manuales_sudameris"


            comando.Parameters.AddWithValue("@p_cod_empresa", v_empresa)            
            comando.Parameters.AddWithValue("@p_fecha_liq", FechaAcreditacionCalendar.SelectedDate)
            comando.Parameters.AddWithValue("@p_fecha_credito", FechaAcreditacionCalendar.SelectedDate)
            comando.Parameters.AddWithValue("@p_comentario", "")


            

            comando.CommandTimeout = 0
            comando.ExecuteNonQuery()



            conexion.Close()

            

        Catch ex As Exception
            Response.Write(ex.Message)
        End Try

        Try

            'Variables de conexion a datos
            Dim conexion As SqlConnection
            Dim comando As SqlCommand

            'Se establece la conexion
            conexion = New SqlConnection(DSPagosManuales.ConnectionString)
            conexion.Open()

            comando = New SqlCommand()
            comando.CommandType = Data.CommandType.StoredProcedure
            comando.Connection = conexion
            comando.CommandText = "usp_listar_diskette_gs_pagos_manuales_atlas"


            comando.Parameters.AddWithValue("@p_cod_empresa", v_empresa)
            comando.Parameters.AddWithValue("@p_fecha_liq", FechaAcreditacionCalendar.SelectedDate)
            comando.Parameters.AddWithValue("@p_fecha_credito", FechaAcreditacionCalendar.SelectedDate)
            comando.Parameters.AddWithValue("@p_comentario", "")




            comando.CommandTimeout = 0
            comando.ExecuteNonQuery()



            conexion.Close()


        Catch ex As Exception
            Response.Write(ex.Message)
        End Try

        Try

            'Variables de conexion a datos
            Dim conexion As SqlConnection
            Dim comando As SqlCommand

            'Se establece la conexion
            conexion = New SqlConnection(DSPagosManuales.ConnectionString)
            conexion.Open()

            comando = New SqlCommand()
            comando.CommandType = Data.CommandType.StoredProcedure
            comando.Connection = conexion
            comando.CommandText = "usp_listar_diskette_gs_pagos_manuales_bbva"


            comando.Parameters.AddWithValue("@p_cod_empresa", v_empresa)
            comando.Parameters.AddWithValue("@p_fecha_liq", FechaAcreditacionCalendar.SelectedDate)
            comando.Parameters.AddWithValue("@p_fecha_credito", FechaAcreditacionCalendar.SelectedDate)
            comando.Parameters.AddWithValue("@p_comentario", "")




            comando.CommandTimeout = 0
            comando.ExecuteNonQuery()



            conexion.Close()


        Catch ex As Exception
            Response.Write(ex.Message)
        End Try

        'Modifico el estado de cada pago luego de la generacion de los diskkets
        Try

            Dim conexion As SqlConnection
            Dim comando As SqlCommand

            'Se establece la conexion
            conexion = New SqlConnection(DSPagosManuales.ConnectionString)
            conexion.Open()

            comando = New SqlCommand()
            comando.CommandType = Data.CommandType.Text

            comando.Connection = conexion
            comando.CommandText = "UPDATE [dbo].[pagos_manuales] SET [pendiente] = 0 WHERE [pendiente] = 1"
            comando.CommandTimeout = 0
            comando.ExecuteNonQuery()

            conexion.Close()

            GridView1.DataBind()

        Catch ex As Exception
            Response.Write(ex.Message)
        End Try



    End Sub

    Protected Sub GuaraniesBBVALink_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles GuaraniesBBVALink.Click
        Response.Clear()
        Response.ClearContent()
        Response.ClearHeaders()
        Response.AppendHeader("content-disposition", "attachment;filename=BANCO_BBVA_PAGOS_MANUALES_GS.txt")
        Response.ContentType = "text/plain"
        Response.WriteFile("E:\Sistemas\rrhh\sertec\diskettes\BANCO_BBVA_PAGOS_MANUALES_GS.txt")
        Response.End()
    End Sub

    Protected Sub GuaraniesAtlasLink_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles GuaraniesAtlasLink.Click
        Response.Clear()
        Response.ClearContent()
        Response.ClearHeaders()
        Response.AppendHeader("content-disposition", "attachment;filename=BANCO_ATLAS_PAGOS_MANUALES_GS.txt")
        Response.ContentType = "text/plain"
        Response.WriteFile("E:\Sistemas\rrhh\sertec\diskettes\BANCO_ATLAS_PAGOS_MANUALES_GS.txt")
        Response.End()
    End Sub

    Protected Sub GuaraniesSudameriosLink_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles GuaraniesSudameriosLink.Click
        Response.Clear()
        Response.ClearContent()
        Response.ClearHeaders()
        Response.AppendHeader("content-disposition", "attachment;filename=BANCO_SUDAMERIS_PAGOS_MANUALES_GS.txt")
        Response.ContentType = "text/plain"
        Response.WriteFile("E:\Sistemas\rrhh\sertec\diskettes\BANCO_SUDAMERIS_MANUALES_GS.txt")
        Response.End()
    End Sub

    Protected Sub GuaraniesBBVAUSDLink_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles GuaraniesBBVAUSDLink.Click
        Response.Clear()
        Response.ClearContent()
        Response.ClearHeaders()
        Response.AppendHeader("content-disposition", "attachment;filename=BANCO_BBVA_PAGOS_MANUALES_USD.txt")
        Response.ContentType = "text/plain"
        Response.WriteFile("E:\Sistemas\rrhh\sertec\diskettes\BANCO_BBVA_PAGOS_MANUALES_USD.txt")
        Response.End()
    End Sub

    Protected Sub GuaraniesAtlasUSDLink_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles GuaraniesAtlasUSDLink.Click
        Response.Clear()
        Response.ClearContent()
        Response.ClearHeaders()
        Response.AppendHeader("content-disposition", "attachment;filename=BANCO_ATLAS_PAGOS_MANUALES_USD.txt")
        Response.ContentType = "text/plain"
        Response.WriteFile("E:\Sistemas\rrhh\sertec\diskettes\BANCO_ATLAS_PAGOS_MANUALES_USD.txt")
        Response.End()
    End Sub

    Protected Sub GuaraniesSudamerisUSDLink_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles GuaraniesSudamerisUSDLink.Click
        Response.Clear()
        Response.ClearContent()
        Response.ClearHeaders()
        Response.AppendHeader("content-disposition", "attachment;filename=BANCO_SUDAMERIS_MANUALES_USD.txt")
        Response.ContentType = "text/plain"
        Response.WriteFile("E:\Sistemas\rrhh\sertec\diskettes\BANCO_SUDAMERIS_MANUALES_USD.txt")
        Response.End()
    End Sub
End Class
