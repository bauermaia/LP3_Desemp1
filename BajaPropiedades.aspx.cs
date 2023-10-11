using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LP3_Desemp1
{
    public partial class BajaPropiedades : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            StreamWriter arch = new StreamWriter(this.Server.MapPath(".") + "/OperacionesABM.txt", true);
            arch.WriteLine("Eliminación de Propiedad");
            arch.WriteLine("Calle:" + this.GridView1.SelectedRow.Cells[1].Text);
            arch.WriteLine("Altura:" + this.GridView1.SelectedRow.Cells[2].Text);
            arch.WriteLine("------------------");
            arch.Close();
            SqlDataSource1.Delete();
            this.lblResultado.Text = "Datos Eliminados";
        }
    }
}