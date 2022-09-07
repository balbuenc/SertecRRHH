Imports System.Data.SqlClient
Imports System.Data

Partial Class man_historial_cambios_area
    Inherits System.Web.UI.Page

    Dim gerencia_rv As RequiredFieldValidator
    Dim area_rv As RequiredFieldValidator
    Dim fecha_rv As RequiredFieldValidator

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Request.QueryString("cod_funcionario") Is Nothing Then
            hf_cod_funcionario.Value = ""
        Else
            Me.hf_cod_funcionario.Value = Request.QueryString("cod_funcionario").ToString()
        End If

        lb_mensaje.Text = ""

    End Sub

    Protected Sub form_historial_areas_ItemInserted(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.FormViewInsertedEventArgs) Handles form_historial_areas.ItemInserted
        gerencia_rv = CType(form_historial_areas.Row.FindControl("rv_gerencia"), RequiredFieldValidator)
        area_rv = CType(form_historial_areas.Row.FindControl("rv_area"), RequiredFieldValidator)
        fecha_rv = CType(form_historial_areas.Row.FindControl("rv_fecha"), RequiredFieldValidator)

        gerencia_rv.Enabled = False
        area_rv.Enabled = False
        fecha_rv.Enabled = False


    End Sub

    Protected Sub Page_PreRenderComplete(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.PreRenderComplete
        
        Dim ddl1 As DropDownList = form_historial_areas.Row.FindControl("ddl_gerencia")
        Dim ddl_area As DropDownList = form_historial_areas.Row.FindControl("ddl_area")

        If ddl1.Items.Count > 0 And hf_gerencia.Value <> "" Then

            ddl1.SelectedValue = hf_gerencia.Value

        End If


        Dim boton_inserta As ImageButton = CType(form_historial_areas.Row.FindControl("InsertButton_insert"), ImageButton)

        If hf_cod_funcionario.Value = "" Then
            boton_inserta.Enabled = False
            lb_mensaje.Text = "Seleccione un Funcionario"
        Else
            boton_inserta.Enabled = True

        End If

    End Sub

    Protected Sub ImageButton3_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton3.Click
        Response.Redirect("home.aspx")
    End Sub

    Protected Sub grid_historial_areas_RowDeleting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewDeleteEventArgs) Handles grid_historial_areas.RowDeleting
        'Aqui carga el codigo del funcionario seleccionado.
        Dim txt_cod_funcionario As TextBox = CType(form_historial_areas.Row.FindControl("cod_funcionarioTextBox"), TextBox)
        txt_cod_funcionario.Text = hf_cod_funcionario.Value

        'Consulta si la fila seleccionada es el ultimo registro si es SI entonces ejecuta el procedimiento siguiente
        If grid_historial_areas.Rows.Count = e.RowIndex + 1 Then

            Dim conexion As SqlConnection
            Dim comando As SqlCommand

            'Se establece la conexion
            conexion = New SqlConnection(historial_areas_con.ConnectionString)
            conexion.Open()

            'Aqui realiza la actualización en el maestro funcionario colocando Null en el cargo del funcionario seleccionado
            comando = New SqlCommand()
            comando.CommandType = Data.CommandType.Text
            comando.Connection = conexion
            comando.CommandText = "UPDATE funcionarios " + _
                                    "SET cod_area = NULL, cod_gerencia = NULL " + _
                                    "WHERE cod_funcionario = @cod_funcionario"

            'Carga, de la variable que contiene el codigo de Funcionario seleccionado a la variable del procedimiento.
            comando.Parameters.AddWithValue("@cod_funcionario", txt_cod_funcionario.Text)

            comando.ExecuteNonQuery()
            conexion.Close()
        End If
    End Sub

    Protected Sub InsertButton_insert_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs)
        'Esta función habilita RequiredFieldValidator en los campos Fecha y Salario
        gerencia_rv = CType(form_historial_areas.Row.FindControl("rv_gerencia"), RequiredFieldValidator)
        area_rv = CType(form_historial_areas.Row.FindControl("rv_area"), RequiredFieldValidator)
        fecha_rv = CType(form_historial_areas.Row.FindControl("rv_fecha"), RequiredFieldValidator)

        gerencia_rv.Enabled = True
        area_rv.Enabled = True
        fecha_rv.Enabled = True

        'Esta función carga en una variable  de tipo TextBox el codigo del funcionario seleccionado en el buscador 
        'y lo carga al campo al momento de realizar la inserción.
        Dim txt_cod_funcionario As TextBox = CType(form_historial_areas.Row.FindControl("cod_funcionarioTextBox"), TextBox)
        txt_cod_funcionario.Text = hf_cod_funcionario.Value

        Dim conexion As SqlConnection
        Dim comando As SqlCommand

        'Se establece la conexion
        conexion = New SqlConnection(historial_areas_con.ConnectionString)
        conexion.Open()

        'Variables de Procedimiento
        Dim gerencia As DropDownList = CType(form_historial_areas.FindControl("ddl_gerencia"), DropDownList)
        Dim area As DropDownList = CType(form_historial_areas.FindControl("ddl_area"), DropDownList)

        'Aqui realiza la actualización en el maestro funcionario colocando Null en el cargo del funcionario seleccionado
        comando = New SqlCommand()
        comando.CommandType = Data.CommandType.Text
        comando.Connection = conexion
        comando.CommandText = "UPDATE funcionarios " + _
                                "SET cod_gerencia = @cod_gerencia, cod_area = @cod_area " + _
                                "WHERE cod_funcionario = @cod_funcionario"

        'Carga, de las variables que contienen el código de Funcionario seleccionado, gerencia y área
        'a la variable del procedimiento.
        comando.Parameters.AddWithValue("@cod_funcionario", txt_cod_funcionario.Text)
        comando.Parameters.AddWithValue("@cod_gerencia", gerencia.SelectedValue)
        comando.Parameters.AddWithValue("@cod_area", area.SelectedValue)

        comando.ExecuteNonQuery()
        conexion.Close()

    End Sub

    Function devuelve_cadena(ByVal a As String) As String

        Return a

    End Function

    Protected Sub form_historial_areas_ItemInserting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.FormViewInsertEventArgs) Handles form_historial_areas.ItemInserting

        Dim d1 As DropDownList = CType(form_historial_areas.Row.FindControl("ddl_area"), DropDownList)

        e.Values("cod_area") = d1.SelectedValue

    End Sub

    Protected Sub form_historial_areas_ItemUpdating(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.FormViewUpdateEventArgs) Handles form_historial_areas.ItemUpdating

        Dim d1 As DropDownList = CType(form_historial_areas.Row.FindControl("ddl_area"), DropDownList)

        e.NewValues("cod_area") = d1.SelectedValue

    End Sub

    Protected Sub form_historial_areas_PageIndexChanging(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.FormViewPageEventArgs) Handles form_historial_areas.PageIndexChanging

    End Sub
End Class
