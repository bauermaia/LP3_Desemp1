using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LP3_Desemp1
{
    public partial class AltaPropiedades : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAlta_Click(object sender, EventArgs e)
        {
            if (txtAltura.Text != string.Empty && txtCalle.Text != string.Empty)
            {
                SqlDataSource1.Insert();
                StreamWriter arch = new StreamWriter(this.Server.MapPath(".") + "/OperacionesABM.txt", true);
                arch.WriteLine("Alta Propiedad");
                arch.WriteLine("Calle:" + this.txtCalle.Text);
                arch.WriteLine("Altura:" + this.txtAltura.Text);
                arch.WriteLine("------------------");
                arch.Close();
                this.lblResultado.Text = "Datos registrados";

                txtAltura.Text = string.Empty;
                txtCalle.Text = string.Empty;
            }
            else
            {
                lblResultado.Text = "No puede dejar campos en blanco";
            }
        }
    }
}