Imports System.Data.SqlClient
Imports System.Data

Partial Class man_historial_ausencias
    Inherits System.Web.UI.Page


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Request.QueryString("cod_funcionario") Is Nothing Then
            hf_cod_funcionario.Value = ""
        Else
            Me.hf_cod_funcionario.Value = Request.QueryString("cod_funcionario").ToString()

        End If

        lb_mensaje.Text = ""




    End Sub

   



  

    Protected Sub Page_PreRenderComplete(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.PreRenderComplete


        If hf_cod_funcionario.Value = "" Then
            Button1.Enabled = False
            lb_mensaje.Text = "Seleccione un Funcionario"
        Else
            Button1.Enabled = True
        End If
    End Sub

   
    
    
   
   
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Try
            'Verifica si las campos estan cargados, si es no entonces habilita el RequiredFieldValidator 
            'Sino procede al calculo de dias de inasistencia de acuerdo a las fechas ingresadas.
            If desdeTextBox.Text.Trim = "" Or hastaTextBox.Text.Trim = "" Then
                rv_desde.Enabled = True
                rv_hasta.Enabled = True
                rv_periodo.Enabled = True
            Else
                hf_periodo.Value = PeriodoTextBox.Text

                'Ingreso el registro de vacaciones a la base de datos
                Dim conexion As SqlConnection
                Dim comando As SqlCommand

                'Se establece la conexion
                conexion = New SqlConnection(historial_vacaciones_tomadas_con.ConnectionString)
                conexion.Open()

                comando = New SqlCommand()
                comando.CommandType = Data.CommandType.StoredProcedure
                comando.Connection = conexion
                comando.CommandText = "sp_ingresar_vacaciones_funcioario"

                comando.Parameters.AddWithValue("@p_cod_funcionario", hf_cod_funcionario.Value)
                comando.Parameters.AddWithValue("@p_periodo", hf_periodo.Value)
                comando.Parameters.AddWithValue("@p_desde", CDate(desdeTextBox.Text))
                comando.Parameters.AddWithValue("@p_hasta", CDate(hastaTextBox.Text))

                comando.ExecuteNonQuery()
                conexion.Close()

                historial_vacaciones_tomadas_con.DataBind()
                grid_historial_ausencias.DataBind()

                'Response.Redirect("man_historial_vacaciones.aspx?cod_funcionario=" + Request.QueryString("cod_funcionario").ToString())

            End If

        Catch ex As Exception
            Response.Write(ex.Message)
        End Try
    End Sub
End Class
