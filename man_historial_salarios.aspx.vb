Imports System.Data.SqlClient
Imports System.Data

Partial Class man_historial_funcionarios
    Inherits System.Web.UI.Page

    Dim fecha_rv As RequiredFieldValidator
    Dim salario_rv As RequiredFieldValidator


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Request.QueryString("cod_funcionario") Is Nothing Then
            hf_cod_funcionario.Value = ""
        Else
            Me.hf_cod_funcionario.Value = Request.QueryString("cod_funcionario").ToString()
        End If

        lb_mensaje.Text = ""
    End Sub

    Protected Sub form_historial_salario_ItemInserted(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.FormViewInsertedEventArgs) Handles form_historial_salario.ItemInserted
        fecha_rv = CType(form_historial_salario.Row.FindControl("rv_fecha"), RequiredFieldValidator)
        salario_rv = CType(form_historial_salario.Row.FindControl("rv_salario"), RequiredFieldValidator)

        fecha_rv.Enabled = False
        salario_rv.Enabled = False
    End Sub

    Protected Sub grid_historial_salarios_RowDeleting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewDeleteEventArgs) Handles grid_historial_salarios.RowDeleting
        Dim txt_cod_funcionario As TextBox = CType(form_historial_salario.Row.FindControl("cod_funcionarioTextBox"), TextBox)
        txt_cod_funcionario.Text = hf_cod_funcionario.Value

        If grid_historial_salarios.Rows.Count = e.RowIndex + 1 Then

            Dim conexion As SqlConnection
            Dim comando As SqlCommand

            'Se establece la conexion
            conexion = New SqlConnection(historial_salarios_con.ConnectionString)
            conexion.Open()

            comando = New SqlCommand()
            comando.CommandType = Data.CommandType.Text
            comando.Connection = conexion
            comando.CommandText = "UPDATE funcionarios " + _
                                    "SET salario = NULL, cod_moneda = NULL " + _
                                    "WHERE cod_funcionario = @cod_funcionario "

            comando.Parameters.AddWithValue("@cod_funcionario", txt_cod_funcionario.Text)
            
            comando.ExecuteNonQuery()
            conexion.Close()

        End If

    End Sub

    Protected Sub InsertButton_insert_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs)
        'Esta función habilita RequiredFieldValidator en los campos Fecha y Salario
        fecha_rv = CType(form_historial_salario.Row.FindControl("rv_fecha"), RequiredFieldValidator)
        salario_rv = CType(form_historial_salario.Row.FindControl("rv_salario"), RequiredFieldValidator)

        fecha_rv.Enabled = True
        salario_rv.Enabled = True

        'Esta función carga en una variable  de tipo TextBox el codigo del funcionario seleccionado en el buscador 
        'y lo carga al campo al momento de realizar la inserción.
        Dim txt_cod_funcionario As TextBox = CType(form_historial_salario.Row.FindControl("cod_funcionarioTextBox"), TextBox)
        txt_cod_funcionario.Text = hf_cod_funcionario.Value

        'Variables de conexion a datos
        Dim conexion As SqlConnection
        Dim comando As SqlCommand

        Dim cod_funcionario As TextBox = CType(form_historial_salario.Row.FindControl("cod_funcionarioTextBox"), TextBox)
        Dim v_salario As TextBox = CType(form_historial_salario.Row.FindControl("salario_actualTextBox"), TextBox)
        Dim moneda As DropDownList = CType(form_historial_salario.Row.FindControl("ddl_moneda"), DropDownList)

        'Verifica si las variables estan cargadas, si es no entonces sale y evita la ejecución del procedimiento
        If cod_funcionario.Text.Trim = "" Or v_salario.Text.Trim = "" Then
            Exit Sub
        End If

        'Se establece la conexion
        conexion = New SqlConnection(historial_salarios_con.ConnectionString)
        conexion.Open()

        comando = New SqlCommand()
        comando.CommandType = Data.CommandType.StoredProcedure
        comando.Connection = conexion
        comando.CommandText = "usp_update_salarios"

        comando.Parameters.AddWithValue("@cod_funcionario", cod_funcionario.Text)
        comando.Parameters.AddWithValue("@salario", v_salario.Text)
        comando.Parameters.AddWithValue("@cod_moneda", moneda.SelectedValue)

        Dim v_mensaje As SqlParameter = New SqlParameter("@msg", Data.SqlDbType.VarChar, 100)
        v_mensaje.Direction = ParameterDirection.Output
        comando.Parameters.Add(v_mensaje)

        comando.ExecuteNonQuery()

        lb_mensaje.Text = comando.Parameters.Item(3).Value
        conexion.Close()
    End Sub

    Protected Sub Page_PreRenderComplete(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.PreRenderComplete
        Dim boton_inserta As ImageButton = CType(form_historial_salario.Row.FindControl("InsertButton_insert"), ImageButton)

        If hf_cod_funcionario.Value = "" Then
            boton_inserta.Enabled = False
            lb_mensaje.Text = "Seleccione un Funcionario"
        Else
            boton_inserta.Enabled = True
        End If

    End Sub

  
End Class
