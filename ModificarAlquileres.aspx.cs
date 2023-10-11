using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LP3_Desemp1
{
    public partial class ModificarAlquileres : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtMonto.Text = GridView1.SelectedRow.Cells[3].Text;
            drPropiedad.SelectedValue = GridView1.SelectedRow.Cells[1].Text;
        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            if (txtMonto.Text != string.Empty && drPropiedad.SelectedValue != string.Empty)
            {
                SqlDataSource1.Update();
                StreamWriter arch = new StreamWriter(this.Server.MapPath(".") + "/OperacionesABM.txt", true);
                arch.WriteLine("Modificación Alquiler");
                arch.WriteLine("Calle:" + this.txtMonto.Text);
                arch.WriteLine("Propiedad:" + this.drPropiedad.SelectedValue.ToString());
                arch.WriteLine("------------------");
                arch.Close();
                this.lblResultado.Text = "Datos Modificados";

                txtMonto.Text = string.Empty;
                
            }
            else
            {
                lblResultado.Text = "No puede dejar campos en blanco";
            }
        }
    }
}