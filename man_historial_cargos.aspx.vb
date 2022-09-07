Imports System.Data.SqlClient
Imports System.Data

Partial Class man_historial_cargos
    Inherits System.Web.UI.Page

    Dim fecha_rv As RequiredFieldValidator
    Dim cargo_rv As RequiredFieldValidator

    Protected Sub form_historial_cargos_ItemInserted(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.FormViewInsertedEventArgs) Handles form_historial_cargos.ItemInserted
        fecha_rv = CType(form_historial_cargos.Row.FindControl("rv_fecha"), RequiredFieldValidator)
        cargo_rv = CType(form_historial_cargos.Row.FindControl("rv_cargos"), RequiredFieldValidator)

        fecha_rv.Enabled = False
        cargo_rv.Enabled = False
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Request.QueryString("cod_funcionario") Is Nothing Then
            hf_cod_funcionario.Value = ""
        Else
            Me.hf_cod_funcionario.Value = Request.QueryString("cod_funcionario").ToString()
        End If

        lb_mensaje.Text = ""

    End Sub

    Protected Sub grid_historial_cargos_RowDeleting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewDeleteEventArgs) Handles grid_historial_cargos.RowDeleting

        Dim txt_cod_funcionario As TextBox = CType(form_historial_cargos.Row.FindControl("cod_funcionarioTextBox"), TextBox)
        txt_cod_funcionario.Text = hf_cod_funcionario.Value

        'Consulta si la fila seleccionada es el ultimo registro si es SI entonces ejecuta el procedimiento siguiente
        If grid_historial_cargos.Rows.Count = e.RowIndex + 1 Then

            Dim conexion As SqlConnection
            Dim comando As SqlCommand

            'Se establece la conexion
            conexion = New SqlConnection(historial_cargos_con.ConnectionString)
            conexion.Open()

            'Aqui realiza la actualización en el maestro funcionario colocando Null en el cargo del funcionario seleccionado
            comando = New SqlCommand()
            comando.CommandType = Data.CommandType.Text
            comando.Connection = conexion
            comando.CommandText = "UPDATE funcionarios " + _
                                    "SET cod_cargo = NULL " + _
                                    "WHERE cod_funcionario = @cod_funcionario"

            'Carga, de la variable que contiene el codigo de Funcionario seleccionado a la variable del procedimiento.
            comando.Parameters.AddWithValue("@cod_funcionario", txt_cod_funcionario.Text)

            comando.ExecuteNonQuery()
            conexion.Close()

        End If

    End Sub

    Protected Sub ImageButton2_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton2.Click

        Response.Redirect("home.aspx")

    End Sub

    Protected Sub Page_PreRenderComplete(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.PreRenderComplete
        Dim boton_inserta As ImageButton = CType(form_historial_cargos.Row.FindControl("InsertButton_insert"), ImageButton)

        If hf_cod_funcionario.Value = "" Then
            boton_inserta.Enabled = False
            lb_mensaje.Text = "Seleccione un Funcionario"
        Else
            boton_inserta.Enabled = True
        End If

    End Sub

    Protected Sub InsertButton_insert_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs)
        'Si los campos de Seleccion de Cargo y fecha no estan cargadas entonces se activa el RequiredFieldValidator
        fecha_rv = CType(form_historial_cargos.Row.FindControl("rv_fecha"), RequiredFieldValidator)
        cargo_rv = CType(form_historial_cargos.Row.FindControl("rv_cargos"), RequiredFieldValidator)

        fecha_rv.Enabled = True
        cargo_rv.Enabled = True

        'Esta función carga en una variable  de tipo TextBox el codigo del funcionario seleccionado en el buscador 
        'y lo carga al campo al momento de realizar la inserción.
        Dim txt_cod_funcionario As TextBox = CType(form_historial_cargos.Row.FindControl("cod_funcionarioTextBox"), TextBox)
        txt_cod_funcionario.Text = hf_cod_funcionario.Value


        'Esta función se encarga de llamar a un procedimiento almacenado que actualiza el cargo en el maestro
        'de funcionarios.
        'Variables de conexion a datos
        Dim conexion As SqlConnection
        Dim comando As SqlCommand

        'Variables de parametros
        Dim cod_cargo As DropDownList = CType(form_historial_cargos.Row.FindControl("ddl_form_cargos"), DropDownList)
        hf_cargos.Value = cod_cargo.SelectedValue

        'Se establece la conexion
        conexion = New SqlConnection(historial_cargos_con.ConnectionString)
        conexion.Open()

        comando = New SqlCommand()
        comando.CommandType = Data.CommandType.Text
        comando.Connection = conexion
        comando.CommandText = "UPDATE funcionarios " + _
                                "SET cod_cargo = @cod_cargo " + _
                                "WHERE cod_funcionario = @cod_funcionario"

        comando.Parameters.AddWithValue("@cod_funcionario", txt_cod_funcionario.Text)
        comando.Parameters.AddWithValue("@cod_cargo", hf_cargos.Value)

        comando.ExecuteNonQuery()
        conexion.Close()
    End Sub
End Class
