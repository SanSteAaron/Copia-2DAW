using System;
using System.Collections.Generic;
using System.Globalization;
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

        protected void ComprobarAntigüedad()
        {
            DateTime dtHoy = System.DateTime.Now;
            TimeSpan diferencia = dtHoy - CalIngreso.SelectedDate;
            DateTime fechamin = new DateTime(1, 1, 1);
            txtAños.Text = ((fechamin + diferencia).Year - 1).ToString();
            txtMeses.Text = ((fechamin + diferencia).Month - 1).ToString();
            txtDías.Text = ((fechamin + diferencia).Day).ToString();
        }

        protected bool ComprobarFechas(string FNacimiento,string FIngreso)
        {
            bool F_valida= false;

            DateTime nacimiento = Convert.ToDateTime(FNacimiento).Date;
            DateTime ingreso = Convert.ToDateTime(FIngreso).Date;
            DateTime hoy = System.DateTime.Now;
            lblError1.Visible = false;
            lblError2.Visible = false;
            lblError3.Visible = false;

            if (nacimiento > ingreso)
            {
                lblError1.Visible = true;
                lblError1.Text = "ERROR la fecha de ingreso es menor que la fecha de nacimiento.";
            }

            if(hoy < ingreso)
            {
                lblError2.Visible = true;
                lblError2.Text = "ERROR la fecha de ingreso es superior a la fecha de hoy.";
            }

            if(nacimiento > hoy)
            {
                lblError3.Visible = true;
                lblError3.Text = "ERROR la fecha de nacimiento es superior a la fecha de hoy.";
            }
            
            if(lblError3.Visible == false && lblError2.Visible == false && lblError1.Visible == false)
            {
                F_valida = true;             
            }
            return F_valida;
        }

        protected void CalNacimiento_SelectionChanged(object sender, EventArgs e)
        {
            DateTime dthoy = System.DateTime.Now;
            string hoy = dthoy.ToShortDateString();
            string nacimiento = CalNacimiento.SelectedDate.ToShortDateString();
            string ingreso = CalIngreso.SelectedDate.ToShortDateString();
            txtFnaEmp.Text = nacimiento;
            txtDías.Text = "";
            txtAños.Text = "";
            txtMeses.Text = "";
            if (txtFinEmp.Text != "")
            {
                ComprobarFechas(nacimiento, ingreso);
                if(ComprobarFechas(nacimiento, ingreso) == true)
                {
                    ComprobarAntigüedad();
                }
            }
        }

        protected void CalIngreso_SelectionChanged(object sender, EventArgs e)
        {
            DateTime dthoy = System.DateTime.Now;
            string hoy = dthoy.ToShortDateString();
            string nacimiento = CalNacimiento.SelectedDate.ToShortDateString();
            string ingreso = CalIngreso.SelectedDate.ToShortDateString();
            txtFinEmp.Text = ingreso;
            txtDías.Text = "";
            txtAños.Text = "";
            txtMeses.Text = "";
            if (txtFnaEmp.Text != "")
            {
                ComprobarFechas(nacimiento, ingreso);
                if (ComprobarFechas(nacimiento, ingreso) == true)
                {
                    ComprobarAntigüedad();
                }
            }       
        }

        protected void txtFnaEmp_TextChanged(object sender, EventArgs e)
        {
            CalNacimiento.SelectedDate = Convert.ToDateTime(txtFnaEmp.Text);
            CalNacimiento.VisibleDate = Convert.ToDateTime(txtFnaEmp.Text);
            DateTime dthoy = System.DateTime.Now;
            string hoy = dthoy.ToShortDateString();
            string nacimiento = CalNacimiento.SelectedDate.ToShortDateString();
            string ingreso = CalIngreso.SelectedDate.ToShortDateString();
            txtDías.Text = "";
            txtAños.Text = "";
            txtMeses.Text = "";
            if (txtFnaEmp.Text != "")
            {
                ComprobarFechas(nacimiento, ingreso);
                if (ComprobarFechas(nacimiento, ingreso) == true)
                {
                    ComprobarAntigüedad();
                }
            }
        }

        protected void txtFinEmp_TextChanged(object sender, EventArgs e)
        {
            CalIngreso.SelectedDate = Convert.ToDateTime(txtFinEmp.Text);
            CalIngreso.VisibleDate = Convert.ToDateTime(txtFinEmp.Text);
            DateTime dthoy = System.DateTime.Now;
            string hoy = dthoy.ToShortDateString();
            string nacimiento = CalNacimiento.SelectedDate.ToShortDateString();
            string ingreso = CalIngreso.SelectedDate.ToShortDateString();
            txtDías.Text = "";
            txtAños.Text = "";
            txtMeses.Text = "";
            if (txtFnaEmp.Text != "")
            {
                ComprobarFechas(nacimiento, ingreso);
                if (ComprobarFechas(nacimiento, ingreso) == true)
                {
                    ComprobarAntigüedad();
                }
            }
        }
    }
}