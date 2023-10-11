using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LP3_Desemp1
{
    public partial class AltaAlquileres : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAlta_Click(object sender, EventArgs e)
        {
            if (txtMonto.Text != string.Empty && drPropiedad.SelectedValue != string.Empty)
            {
                SqlDataSource2.Insert();
                StreamWriter arch = new StreamWriter(this.Server.MapPath(".") + "/OperacionesABM.txt", true);
                arch.WriteLine("Alta Alquiler");
                arch.WriteLine("Monto:" + this.txtMonto.Text);
                arch.WriteLine("Propiedad:" + this.drPropiedad.SelectedValue.ToString());
                arch.WriteLine("------------------");
                arch.Close();
                this.lblResultado.Text = "Datos registrados";

                txtMonto.Text = string.Empty;
               
            }
            else
            {
                lblResultado.Text = "No puede dejar campos en blanco";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlDataSource2.FilterExpression = "idPropietario= " + DropDownList1.SelectedValue;

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlDataSource2.FilterExpression = string.Empty;
            SqlDataSource2.FilterParameters.Clear();
        }
    }
}