Imports System.Data.SqlClient
Imports System.Data

Partial Class cargar_conceptos_manuales
    Inherits System.Web.UI.Page

    Protected Sub ImageButton2_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton2.Click
        Dim carga As FileUpload
        Dim tipo As String

        lb_mensaje.ForeColor = Drawing.Color.Red

        carga = CType(FileUpload1, FileUpload)

        If carga.HasFile = True Then
            tipo = carga.PostedFile.ContentType
            tipo = Mid$(tipo, 17, 50)

            ' Verifico que sea del archivo del tipo excel 2007.
            'If tipo = "openxmlformats-officedocument.spreadsheetml.sheet" Then

            'Si es valido se levanta en el servidor el archivo.
            carga.SaveAs(Server.MapPath("~/xlsx/conceptos.xlsx"))
            'Se dispara el procedimiento almacenado de migracion de los conceptos manuales
            Call migrar_conceptos()

            'Else
            'lb_mensaje.Text = "El archivo debe ser del tipo Excel 2007."
            'End If
        Else
            lb_mensaje.Text = "Especifique una ruta de archivo valida."
        End If
    End Sub

   

    Private Sub migrar_conceptos()
        'Variables de conexion a datos
        Dim conexion As SqlConnection
        Dim comando As SqlCommand

        'Variables de parametros
        Dim v_empresa As String

        v_empresa = Session("sv_empresa").ToString

        'Se establece la conexion
        conexion = New SqlConnection(historial_conceptos_con.ConnectionString)
        conexion.Open()

        comando = New SqlCommand()
        comando.CommandType = Data.CommandType.StoredProcedure
        comando.Connection = conexion
        comando.CommandText = "usp_migrar_conceptos_manuales"

        comando.Parameters.AddWithValue("@p_cod_empresa", v_empresa)

        Dim v_mensaje As SqlParameter = New SqlParameter("@mensaje", Data.SqlDbType.VarChar, 100)
        v_mensaje.Direction = ParameterDirection.Output
        comando.Parameters.Add(v_mensaje)

        Dim v_tipo As SqlParameter = New SqlParameter("@tipo", Data.SqlDbType.VarChar, 1)
        v_tipo.Direction = ParameterDirection.Output
        comando.Parameters.Add(v_tipo)

        comando.CommandTimeout = 0
        comando.ExecuteNonQuery()

        If comando.Parameters.Item(2).Value = "S" Then
            lb_mensaje.ForeColor = Drawing.Color.DarkBlue
        End If

        lb_mensaje.Text = comando.Parameters.Item(1).Value
        conexion.Close()
    End Sub
End Class
