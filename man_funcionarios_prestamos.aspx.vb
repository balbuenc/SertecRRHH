Imports System.Data.SqlClient
Imports System.Data

Partial Class man_funcionarios_prestamos
    Inherits System.Web.UI.Page

    
  
   
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Request.QueryString("cod_funcionario") Is Nothing Then
            hf_cod_funcionario.Value = ""
        Else
            Me.hf_cod_funcionario.Value = Request.QueryString("cod_funcionario").ToString()
        End If

        lb_mensaje.Text = ""
    End Sub

    

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs)
      
        PrestamoFuncionarioFormView.ChangeMode(FormViewMode.Insert)
        
    End Sub

    Protected Sub PrestamoFuncionarioFormView_ItemInserting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.FormViewInsertEventArgs) Handles PrestamoFuncionarioFormView.ItemInserting
        Dim control As DropDownList = PrestamoFuncionarioFormView.FindControl("DropDownList1")
        e.Values("cod_prestamo") = control.SelectedValue
    End Sub

    

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        PrestamoFuncionarioFormView.ChangeMode(FormViewMode.Insert)
    End Sub

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        'Variables de conexion a datos
        Dim conexion As SqlConnection
        Dim comando As SqlCommand

        Try
            'Se establece la conexion
            conexion = New SqlConnection(funcionarios_con.ConnectionString)
            conexion.Open()

            comando = New SqlCommand()
            comando.CommandType = Data.CommandType.StoredProcedure
            comando.Connection = conexion
            comando.CommandText = "sp_generar_cuotas_funcionario"

            comando.Parameters.AddWithValue("@p_nro_prestamo", PrestamoFuncionarioFormView.SelectedValue)

            Dim control As TextBox = PrestamoFuncionarioFormView.FindControl("FechaPrimerVencimientoTB")
            comando.Parameters.AddWithValue("@p_fecha_primer_vencimiento", control.Text)

            comando.CommandTimeout = 0
            comando.ExecuteNonQuery()

            grid_cuotas.DataBind()


        Catch ex As Exception
            Response.Write(ex.Message)
        End Try

        

    End Sub
End Class
