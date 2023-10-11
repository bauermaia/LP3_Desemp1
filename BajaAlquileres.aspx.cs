using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LP3_Desemp1
{
    public partial class BajaAlquileres : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            StreamWriter arch = new StreamWriter(this.Server.MapPath(".") + "/OperacionesABM.txt", true);
            arch.WriteLine("Eliminación de Alquiler");
            arch.WriteLine("id Alquiler:" + this.GridView1.SelectedRow.Cells[0].Text);
            arch.WriteLine("Propiedad:" + this.GridView1.SelectedRow.Cells[2].Text);
            arch.WriteLine("------------------");
            arch.Close();
            SqlDataSource1.Delete();
            this.lblResultado.Text = "Datos Eliminados";
        }

        
    }
}