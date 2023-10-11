using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LP3_Desemp1
{
    public partial class ModificarPropiedades : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtCalle.Text = GridView1.SelectedRow.Cells[1].Text;
            txtAltura.Text = GridView1.SelectedRow.Cells[2].Text;
        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            if (txtAltura.Text != string.Empty && txtCalle.Text != string.Empty)
            {
                SqlDataSource1.Update();
                StreamWriter arch = new StreamWriter(this.Server.MapPath(".") + "/OperacionesABM.txt", true);
                arch.WriteLine("Modificación Propiedad");
                arch.WriteLine("Calle:" + this.txtCalle.Text);
                arch.WriteLine("Altura:" + this.txtAltura.Text);
                arch.WriteLine("------------------");
                arch.Close();
                this.lblResultado.Text = "Datos Modificados";

                txtCalle.Text = string.Empty;
                txtAltura.Text = string.Empty;
            }
            else
            {
                lblResultado.Text = "No puede dejar campos en blanco";
            }
        }
    }
}