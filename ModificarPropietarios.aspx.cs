using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LP3_Desemp1
{
    public partial class ModificarPropietarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            if (txtApellido.Text != string.Empty && txtNombre.Text != string.Empty)
            {
                SqlDataSource1.Update();
                StreamWriter arch = new StreamWriter(this.Server.MapPath(".") + "/OperacionesABM.txt", true);
                arch.WriteLine("Modificación Propietario");
                arch.WriteLine("Nombre:" + this.txtNombre.Text);
                arch.WriteLine("Apellido:" + this.txtApellido.Text);
                arch.WriteLine("------------------");
                arch.Close();
                this.lblResultado.Text = "Datos Modificados";

                txtApellido.Text = string.Empty;
                txtNombre.Text = string.Empty;
            }
            else
            {
                lblResultado.Text = "No puede dejar campos en blanco";
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtNombre.Text = GridView1.SelectedRow.Cells[1].Text;
            txtApellido.Text = GridView1.SelectedRow.Cells[2].Text;
        }
    }
}