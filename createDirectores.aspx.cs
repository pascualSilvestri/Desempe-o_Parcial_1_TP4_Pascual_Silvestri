using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Desempeño_Parcial_1_TP4_Pascual_Silvestri
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String nombre = TextBoxNombre.Text;
            String apellido = TextBoxApellido.Text;

            String cadena = System.Configuration.ConfigurationManager.ConnectionStrings["cadena"].ConnectionString;
            SqlConnection conexion = new SqlConnection(cadena);
            conexion.Open();
            string query = $"INSERT INTO Directores ( apellido, nombre ) VALUES ('{apellido}', '{nombre}')";

            SqlCommand cmd = new SqlCommand(query, conexion);
            cmd.ExecuteNonQuery();
            conexion.Close();
        }
    }
}