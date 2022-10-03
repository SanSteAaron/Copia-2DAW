using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GesPresta
{
    public partial class EmpleadosCalendar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtCodEmp.Focus();
        }

        protected void cdmEnviar_Click(object sender, EventArgs e)
        {
            lblValores.Visible = true;
            lblValores.Text = "VALORES DEL FORMULARIO" +
            "<br/> Código Empleado: " + txtCodEmp.Text +
            "<br/> NIF: " + txtNifEmp.Text +
            "<br/> Apellidos y Nombre: " + txtNomEmp.Text +
            "<br/> Dirección: " + txtDirEmp.Text +
            "<br/> Ciudad: " + txtCiuEmp.Text +
            "<br/> Teléfonos: " + txtTelEmp.Text +
            "<br/> Fecha de Nacimiento: " + txtFnaEmp.Text +
            "<br/> Fecha de Incorporación: " + txtFinEmp.Text +
            "<br/> Sexo: " + rblSexEmp.SelectedItem.Value +
            "<br/> Departamento: " + ddlDepEmp.Text;
        }

        public bool ComprobarFechas(string FNacimiento,string FIngreso,string FHoy)
        {
            bool comprobar = true;
            DateTime nacimiento = Convert.ToDateTime(FNacimiento);
            DateTime ingreso = Convert.ToDateTime(FIngreso);
            DateTime hoy = Convert.ToDateTime(FHoy);
        }

        protected void CalNacimiento_SelectionChanged(object sender, EventArgs e)
        {
            string nacimiento = CalNacimiento.SelectedDate.ToShortDateString();
            txtFnaEmp.Text = nacimiento;
        }

        protected void CalIngreso_SelectionChanged(object sender, EventArgs e)
        {
            DateTime dthoy = System.DateTime.Now;
            string hoy = dthoy.ToShortDateString();
            string nacimiento = CalNacimiento.SelectedDate.ToShortDateString();
            string ingreso = CalIngreso.SelectedDate.ToShortDateString();
            txtFinEmp.Text = ingreso;
        }
    }
}