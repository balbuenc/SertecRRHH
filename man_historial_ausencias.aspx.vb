
Partial Class man_historial_ausencias
    Inherits System.Web.UI.Page

    Dim fechainicio_rv As RequiredFieldValidator
    Dim fechafin_rv As RequiredFieldValidator
    Dim tipo_rv As RequiredFieldValidator

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Request.QueryString("cod_funcionario") Is Nothing Then
            hf_cod_funcionario.Value = ""
        Else
            Me.hf_cod_funcionario.Value = Request.QueryString("cod_funcionario").ToString()
        End If

        If Len(txt_año.Text.Trim) = 0 Then
            txt_año.Text = "%"
        End If

        lb_mensaje.Text = ""
    End Sub

    Protected Sub InsertButton_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs)
        'Esta función habilita RequiredFieldValidator en los campos Fecha Inicio, Fecha fin y Tipo de inasistencia
        fechainicio_rv = CType(form_historial_ausencias.Row.FindControl("rv_fecha_inicio"), RequiredFieldValidator)
        fechafin_rv = CType(form_historial_ausencias.Row.FindControl("rv_fecha_fin"), RequiredFieldValidator)
        tipo_rv = CType(form_historial_ausencias.Row.FindControl("rv_tipo"), RequiredFieldValidator)

        'Obtiene el codigo del funcionarios seleccionado para la inserción de registro de ausencia
        Dim cod_funcionario As TextBox = CType(form_historial_ausencias.Row.FindControl("cod_funcionarioTextBox"), TextBox)
        cod_funcionario.Text = hf_cod_funcionario.Value

        'Para el cálculo de Cantidad de Dias de Ausencia
        Dim cantidad As TextBox = CType(form_historial_ausencias.Row.FindControl("cantidadTextBox"), TextBox)
        Dim fecha_inicio As TextBox = CType(form_historial_ausencias.Row.FindControl("fecha_inicioTextBox"), TextBox)
        Dim fecha_fin As TextBox = CType(form_historial_ausencias.Row.FindControl("fecha_finTextBox"), TextBox)


        'Verifica si las campos estan cargados, si es no entonces habilita el RequiredFieldValidator 
        'Sino procede al calculo de dias de inasistencia de acuerdo a las fechas ingresadas.
        If fecha_inicio.Text.Trim = "" Or fecha_fin.Text.Trim = "" Then
            fechainicio_rv.Enabled = True
            fechafin_rv.Enabled = True
            tipo_rv.Enabled = True
        Else
            Dim fecha1 As Date = CDate(fecha_inicio.Text)
            Dim fecha2 As Date = CDate(fecha_fin.Text)
            Dim dias As Long = DateDiff(DateInterval.Day, fecha1, fecha2)
            cantidad.Text = dias + 1
        End If
    End Sub

    Protected Sub form_historial_ausencias_ItemInserted(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.FormViewInsertedEventArgs) Handles form_historial_ausencias.ItemInserted
        fechainicio_rv = CType(form_historial_ausencias.Row.FindControl("rv_fecha_inicio"), RequiredFieldValidator)
        fechafin_rv = CType(form_historial_ausencias.Row.FindControl("rv_fecha_fin"), RequiredFieldValidator)

        fechainicio_rv.Enabled = False
        fechafin_rv.Enabled = False
        tipo_rv.Enabled = False

    End Sub

    Protected Sub ImageButton1_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs)
        'Calculo de dias del modo de edición de la Grilla historial de Ausencias
        Dim v_indice As Integer
        v_indice = grid_historial_ausencias.EditIndex

        Dim fecha_inicio As TextBox = CType(grid_historial_ausencias.Rows(v_indice).FindControl("txt_fecha_inicio_edit"), TextBox)
        Dim fecha_fin As TextBox = CType(grid_historial_ausencias.Rows(v_indice).FindControl("txt_fecha_fin_edit"), TextBox)
        Dim cantidad As HiddenField = CType(grid_historial_ausencias.Rows(v_indice).FindControl("hf_cantidad_edit"), HiddenField)

        Dim fecha1 As Date = CDate(fecha_inicio.Text)
        Dim fecha2 As Date = CDate(fecha_fin.Text)
        Dim dias As Long = DateDiff(DateInterval.Day, fecha1, fecha2)
        cantidad.Value = dias + 1

    End Sub

    Protected Sub Page_PreRenderComplete(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.PreRenderComplete
        Dim boton_inserta As ImageButton = CType(form_historial_ausencias.Row.FindControl("InsertButton"), ImageButton)

        If hf_cod_funcionario.Value = "" Then
            boton_inserta.Enabled = False
            lb_mensaje.Text = "Seleccione un Funcionario"
        Else
            boton_inserta.Enabled = True
        End If
    End Sub
End Class
